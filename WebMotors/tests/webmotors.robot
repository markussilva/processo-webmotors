**Settings**
Documentation    Utilizar o site para encontrar os seus futuros
           ...   veículos, consulta preços e detalhe dos veículos

Resource          ../resources/actions.robot

Suite Setup            Open Session
Suite Teardown         Close Session 

# Test Setup             Estou na página de login?
Test Teardown          Finalizando Teste

***Test Cases***
Cenário 01: Acesso ao site WebMotors
    Dado que acesso ao site WebMotors
    ...                                              webmotors.json
    Quando valido que estou na pagina do WebMotors
    Então realizo a consulta de um veiculo 

Cenário 02: Pesquisa por veiculo cadastrado
    Dado que acesso ao site WebMotors
    ...                                              webmotors.json
    Quando valido que estou na pagina do WebMotors
    Então realizo a consulta de um veiculo 
    E tenho o retorno do veiculo preterido  

Cenário 03: Pesquisa por comprar motos  
    Dado que acesso ao site WebMotors
    ...                                              webmotors.json
    Quando valido que estou na pagina do WebMotors
    Então realizo a consulta de uma moto para comprar
    E tenho o retorno moto que foi pesquisa 