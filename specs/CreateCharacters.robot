#Titulo referente ao que vai ser realizado durante o teste (boa pratica)
*Settings*
Documentation       Suite de Teste do cadastro dos personagens na API da Marvel

#Palavra reservada para importacao do arquivo base.robot que contem a request de login/outras importacoes
Resource    ${EXECDIR}/resources/base.robot
#Realiza a importacao do arquivo Thanos.py como uma biblioteca atraves do caminho relativo
Library     ${EXECDIR}/resources/factories/avengers.py

Suite Setup     Super Setup     lucas.pdsantos11@gmail.com

*Test Cases*
Deve cadastrar um personagem

    &{personagem}   Factory TonyStark
    ${response}     POST New Character  ${personagem}

    #Chamada que valida se a resposta da API veio como o esperado
    Status Should Be        200     ${response}

Nao deve cadastrar o personagem

    #[Tags]          dup 
    #Tag que me permite executar apenas um dos casos de teste
    # Dado que o personagem inserido ja existe no sistema
    ${personagem}   Factory PeterParker
    ${response}     POST New Character  ${personagem}

    #Quando faco a requisicao para a rota /characters
    ${response}     POST New Character  ${personagem}

    #Entao o status code deve retornar 409
    Status Should Be        409     ${response}
    #E exibir a mensagem Character already exists :(
    Should Be Equal         ${response.json()}[error]      Character already exists :(    