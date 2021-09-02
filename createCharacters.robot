*Settings*
Documentation   Suite de Testes do cadastro de personagens da API Marvel

Library     RequestsLibrary
Library     ${EXECDIR}/factories/thanos.py

*Test Cases*
Deve cadastrar um personagem

    &{usuario}      Create Dictionary   email=lucas.pdsantos11@gmail.com

    ${response}     POST
...                 http://marvel.qaninja.academy/accounts     
...                 json=${usuario}

    ${client_key}   Set Variable        ${response.json()}[client_key]
    &{headers}      Create Dictionary   client_key=${client_key}

    ${personagem}   Factory Thanos

    ${response}     POST    
...                 http://marvel.qaninja.academy/characters
...                 json={personagem}
...                 headers=${headers}
