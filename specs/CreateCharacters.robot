#Titulo referente ao que vai ser realizado durante o teste (boa pratica)
*Settings*
Documentation       Suite de Teste do cadastro de personagens na API da Marvel

#Palavra reservada para importacao do arquivo base.robot que contem a request de login/outras importacoes
Resource    ${EXECDIR}/resources/base.robot
#Realiza a importacao do arquivo Thanos.py como uma biblioteca atraves do caminho relativo
Library     ${EXECDIR}/resources/factories/Thanos.py

#Descricao do que sera feito durante o case especifico (cadastro de personagem)
*Test Cases*
Deve cadastrar um personagem

    Set Client Key      lucas.pdsantos11@gmail.com

    &{personagem}       Factory Thanos

    #Linhas de comando para a requisicao desejada
    ${response}     POST
    ...             http://marvel.qaninja.academy/characters
    ...             json=${personagem}
    ...             headers=${headers}

    #Chamada que valida se a resposta da API veio como o esperado
    Status Should Be        200     ${response}
