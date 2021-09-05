#Titulo referente ao que vai ser realizado durante o teste (boa pratica)
*Settings*
Documentation       Suite de Teste do cadastro de personagens na API da Marvel

#Comandos de importacao das bibliotecas que forem utilizadas 
Library     RequestsLibrary
#Realiza a importacao do arquivo Thanos.py como uma biblioteca atraves do caminho relativo
Library     ${EXECDIR}/factories/Thanos.py

#Descricao do que sera feito durante o case especifico (cadastro de personagem)
*Test Cases*
Deve cadastrar um personagem

    Account And Set Headers     lucas.pdsantos11@gmail.com

    &{personagem}       Factory Thanos

    #Linhas de comando para a requisicao desejada
    ${response}     POST
    ...             http://marvel.qaninja.academy/characters
    ...             json=${personagem}
    ...             headers=${headers}

    #Chamada que valida se a resposta da API veio como o esperado
    Status Should Be        200     ${response}

*Keywords*
Account And Set Headers
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