*** Settings ***
Documentation          Finaliza sessão do menu Tabelas Básicas > Enderecamento
...                    e fecha o navegador

Resource           ../resources/actions.robot

*** Test Cases ***
Finalizando a sessão e fechando o navegador    
    [Tags]     smoke
    Set Global Variable    
    ...    ${LOGGED}    ${EMPTY}
    Close Browser  