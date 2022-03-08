#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "isabelle@yahool.com" e "qaninja"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input         | senha_input | mensagem_output                  |
            | isabelle@yahool.com | qaaan       | Usuário e/ou senha inválidos.    |
            | isabelle@bool.com   | qaninja     | Usuário e/ou senha inválidos.    |
            | isabel$ao.com       | qaninja     | Oops. Informe um email válido!   |
            |                     | qaninja     | Oops. Informe um email válido!   |
            | isabelle@yahool.com |             | Oops. Informe sua senha secreta! |

