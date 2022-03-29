***Settings***
Resource    ../resources/actions.robot

Test Setup      helpers.Dado que abro o aplicativo
Test Teardown   helpers.E fecho o aplicativo

***Test Cases***
Cenário 01: Ver listagem de veiculos do app
    [Tags]      smoke   regression
    [Documentation]     Cadastramento de um novo cliente no sistema       
    
    Dado que estou na pagina em que lista os veiculos
    Quando clico na imagem de um determinado veiculo 
    Então vejo que estou na pagina de detalhes sobre o veiculo




    
    

