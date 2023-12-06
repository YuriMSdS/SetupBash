#Função para criar usuários!
criar_usuario (){
    username=$1
    password=$2
    useradd -m -p ${openssl psswr -1 $password}
}

#Função para criar grupos de usuários!!!
criar_grupo{
    groupname=$1
    groupname $groupname
}

#Função para atribuir usuário a um grupo :D
add_user_to_group() {
    username=$1
    groupname=$2
    usermod -aG $groupname $username
}

#Agora um exemplo do uso das funções ;)
create_user_with_permission (){
    directory=$1
    permissions=$2
    mkdir -p $directory
    chmod $permissions $directory
}

#Por fim, a conclusão :3
echo "Configuração concluída"