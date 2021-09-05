*Settings*
Documentation       Acoes da rota /characters

*Keywords*
POST New Character

    [Arguments]     ${payload}

    #Linhas de comando para a requisicao desejada
    ${response}     POST
    ...             ${API_URL}/characters
    ...             json=${payload}
    ...             headers=${headers}
    ...             expected_status=any

    [return]        ${response}     
