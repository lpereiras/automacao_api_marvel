*Settings*
Documentation       Iniciando as coisas realmente

#Comandos de importacao das bibliotecas que forem utilizadas 
Library             RequestsLibrary

*Keywords*
Set Client Key
    [Arguments]         ${email}

    #Permite a criacao de uma super variavel atraves do comando Create Dictionary
    #&= Dicionario com informacao
    #$= Super Variavel
    &{usuario}          Create Dictionary       email=${email}

    #Realiza a requisicao do endpoint solicitado 
    ${response}         POST
    ...                 http://marvel.qaninja.academy/accounts
    ...                 json=${usuario}

    #Recupera o valor que retorna no code 200 e armazena em uma variavel
    ${client_key}       Set Variable            ${response.json()}[client_key]
    &{HEADERS}          Create Dictionary       client_key=${client_key}

    Set Suite Variable      ${HEADERS}