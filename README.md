
# Gerenciamento de Usuários e Grupos

Este script oferece uma solução simples para criar e gerenciar usuários, grupos e permissões de diretórios em sistemas Linux. É uma ferramenta útil para administradores de sistemas ou desenvolvedores que precisam automatizar tarefas relacionadas à criação de contas de usuários e organização de permissões.

## Funcionalidades

- **Criação de Usuários**: Adiciona novos usuários ao sistema, gerando senhas criptografadas.
- **Criação de Grupos**: Cria novos grupos de usuários.
- **Atribuição de Usuários a Grupos**: Adiciona usuários a grupos específicos, facilitando o controle de permissões.
- **Criação de Diretórios com Permissões**: Gera diretórios com permissões específicas (como o popular `755`), controlando quem pode ler, escrever ou executar.


### Pré-requisitos

Certifique-se de que você tem permissões administrativas (root) para rodar o script, já que ele usa comandos como `useradd`, `groupadd` e `usermod`, que exigem privilégios elevados.

### Executando o Script

1. Clone o repositório ou baixe o script para seu sistema.
   
   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio
   ```

2. Dê permissão de execução ao arquivo:

   ```bash
   chmod +x script.sh
   ```

3. Execute o script:

   ```bash
   sudo ./script.sh
   ```

### Exemplo de Uso

Aqui está um exemplo simples de como você pode usar as funções do script:

```bash
# Criar um usuário com uma senha
criar_usuario "nome_do_usuario" "senha_secreta"

# Criar um grupo
criar_grupo "nome_do_grupo"

# Atribuir o usuário criado ao grupo
add_user_to_group "nome_do_usuario" "nome_do_grupo"

# Criar um diretório e configurar as permissões
create_directory_with_permission "/caminho/do/diretorio" 755
```

### Estrutura do Script

- **criar_usuario**: Recebe um nome de usuário e uma senha, e adiciona um novo usuário ao sistema com a senha criptografada.
- **criar_grupo**: Cria um novo grupo com o nome especificado.
- **add_user_to_group**: Atribui um usuário a um grupo existente.
- **create_directory_with_permission**: Cria um diretório com permissões específicas (por exemplo, `755`).


## Personalização

Caso precise modificar o comportamento do script para seu cenário específico, basta ajustar as funções conforme necessário. Por exemplo, você pode mudar o esquema de permissões ou adicionar outras verificações antes da criação de usuários e grupos.