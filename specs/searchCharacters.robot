*Settings* 
Documentation       Suite de Teste de busca dos personagens na API da Marvel

#Palavra reservada para importacao do arquivo base.robot que contem a request de login/outras importacoes
Resource    ${EXECDIR}/resources/base.robot
#Realiza a importacao do arquivo Thanos.py como uma biblioteca atraves do caminho relativo
Library     ${EXECDIR}/resources/factories/avengers.py

Suite Setup     Super Setup     lucas.pdsantos11@gmail.com

*Test Cases*
Deve buscar um personagem por Id 

    #Realiza o cadastro de um personagem que vai ser cadastrado na minha massa de dados
    ${personagem}       Factory SteveRogers
    ${steve}            POST New Character      ${personagem}

    #Armazena em steve_id a informacao solicitada dentro dos [], o id para esse caso
    ${steve_id}         Set Variable            ${steve.json()}[_id]
    ${response}         GET Character By Id     ${steve_id}

    Status Should Be    200                     ${response}
    
Nao deve encontrar o personagem com o Id 

    ${personagem_id}    GET Character By Id     6137b4081088a7001610d967
    
    Status Should Be    404                     ${personagem_id}