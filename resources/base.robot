*Settings*
Documentation       Iniciando as coisas realmente

#Comandos de importacao das bibliotecas que forem utilizadas 
Library             RequestsLibrary
Resource            routes/characters.robot

*Variables*
#Setando a URL padrao da API utilizada
${API_URL}          http://marvel.qaninja.academy

*Keywords*
Super Setup
    [Arguments]         ${email}
    #Funciona como um gancho permitindo que a client_key seja usada em varios testes/especificos
    Set Client Key      ${email}
    Back To The Past

Set Client Key
    [Arguments]         ${email}

    #Permite a criacao de uma super variavel atraves do comando Create Dictionary
    #&= Dicionario com informacao
    #$= Super Variavel
    &{usuario}          Create Dictionary       email=${email}

    #Realiza a requisicao do endpoint solicitado 
    ${response}         POST
    ...                 ${API_URL}/accounts
    ...                 json=${usuario}

    #Recupera o valor que retorna no code 200 e armazena em uma variavel
    ${client_key}       Set Variable            ${response.json()}[client_key]
    &{HEADERS}          Create Dictionary       client_key=${client_key}

    Set Suite Variable      ${HEADERS}

#Funciona como um ponto no tempo onde o banco de dados ainda nao havia sido populado com informacoes
Back To The Past 
    DELETE              ${API_URL}/delorean     headers=${HEADERS}     