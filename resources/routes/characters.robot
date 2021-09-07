*Settings*
Documentation       Acoes da rota /characters

*Keywords*
POST New Character

    [Arguments]     ${payload}

    #Linhas de comando para a requisicao desejada, chama o header desejado e o status da requisicao
    ${response}     POST
    ...             ${API_URL}/characters
    ...             json=${payload}
    ...             headers=${HEADERS}
    ...             expected_status=any

    [return]        ${response}     

GET Character By Id 

    [Arguments]     ${character_id}

    ${response}     GET
    ...             ${API_URL}/characters/${character_id}
    ...             headers=${HEADERS}
    ...             expected_status=any

    [return]        ${response} 

DELETE Character By Id 

    [Arguments]     ${character_id}

    ${response}     DELETE
    ...             ${API_URL}/characters/${character_id}
    ...             headers=${HEADERS}
    ...             expected_status=any

    [return]        ${response} 