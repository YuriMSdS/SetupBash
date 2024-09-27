criar_usuario() {
    username=$1
    password=$2
    useradd -m -p $(openssl passwd -1 $password) $username
}

criar_grupo() {
    groupname=$1
    groupadd $groupname
}

add_user_to_group() {
    username=$1
    groupname=$2
    usermod -aG $groupname $username
}

create_directory_with_permission() {
    directory=$1
    permissions=$2
    mkdir -p $directory
    chmod $permissions $directory
}

criar_usuario "usuario1" "senha123"
criar_grupo "grupo1"
add_user_to_group "usuario1" "grupo1"
create_directory_with_permission "/home/usuario1/diretorio" 755

echo "Configuração concluída"