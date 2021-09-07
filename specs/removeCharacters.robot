*Settings* 
Documentation       Suite de Teste de exclusão dos personagens na API da Marvel

#Palavra reservada para importacao do arquivo base.robot que contem a request de login/outras importacoes
Resource    ${EXECDIR}/resources/base.robot
#Realiza a importacao do arquivo Thanos.py como uma biblioteca atraves do caminho relativo
Library     ${EXECDIR}/resources/factories/avengers.py

Suite Setup     Super Setup     lucas.pdsantos11@gmail.com

*Test Cases*
Deve remover um personagem por Id 

    #Realiza o cadastro de um personagem que vai ser cadastrado na minha massa de dados
    ${personagem}       Factory WandaDjango
    ${wanda}            POST New Character      ${personagem}

    #Armazena em steve_id a informacao solicitada dentro dos [], o id para esse caso
    ${wanda_id}         Set Variable            ${wanda.json()}[_id]
    ${response}         DELETE Character By Id  ${wanda_id}

    Status Should Be    204                     ${response}

    ${response}         GET Character By Id     ${wanda_id}

    Status Should Be    404                     ${response}