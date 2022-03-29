**Settings**
Documentation    Utilizar o site para encontrar os seus futuros
           ...   veículos, consulta preços e detalhe dos veículos
Resource         ../Pages/BasePage.robot


**Keywords**
Dado que acesso ao site WebMotors
    [Arguments]                                            ${json_string}
    helpers.go to page                        https://hportal.webmotors.com.br/
    helpers.Clicar no Botão                   (//button[@class="sc-htoDjs gtMZoW"])['OK']
    BasePage.Carregando arquivo de dados      WebMotors/${json_string}


Quando valido que estou na pagina do WebMotors
    helpers.Verificar se o Elemento está visível     (//img[@title="Webmotors"])


Então realizo a consulta de um veiculo
    helpers.Set Campo Input         (//input[@id="searchBar"])      ${acao_json['CARRO']} 
    helpers.Clicar no Elemento      (//*[@class="Button Button--red-home"])['Ver Ofertas']


E tenho o retorno do veiculo preterido
    helpers.Verificar se o Elemento está visível    (//h1[@class="title-search"])["Toyota Corolla Novos e Usados"]
    # helpers.Verificar se o Elemento está visível    (//*[@class="ResultZero__header"])/strong["Ops, não encontramos nenhum carro como este!"]


Então realizo a consulta de uma moto para comprar
    helpers.Clicar no Elemento      xpath=//*[@id="WhiteBox"]/div[1]/div[1]/h2[1]/a
    helpers.Set Campo Input         (//input[@id="searchBar"])      ${acao_json['MOTO']} 
    helpers.Clicar no Elemento      (//*[@class="Button Button--red-home"])['Ver Ofertas']
   

E tenho o retorno moto que foi pesquisa                                    
    helpers.Verificar se o Elemento está visível    (//h1[@class="title-search"])["Motos Honda Novas e Usadas"]