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
    E tenho o retorno da do veiculo que foi realizada  


# Cenário 03: Acesso a tela de Gestão de Pessoas
#     Dado que acesso ao sistema SUPERDIGITAL PJ
#     E acesso com um CPF de permissão MASTER
#     ...                                              SuperDigital.json
#     Quado verifico a empresa que estou logado
#     Então acesso a tela de FOLHA DE PAGAMENTO   
#     E acesso a tela de GESTAO DE PESSOAS
