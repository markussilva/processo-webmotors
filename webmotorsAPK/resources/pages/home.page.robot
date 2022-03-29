***Settings***
Library     AppiumLibrary
Library     String

Resource    ../elements/home.elements.robot

***Keywords***
E devo ver a tela inicial
    helpers.Is visible  ${TXT_EXTRATO}      
    helpers.Is visible  ${TXT_EXPLORE}

Dado que estou na pagina em que lista os veiculos
    Wait Until Page Contains        Carros          40
    sleep       15

Quando clico na imagem de um determinado veiculo
    Click Element             xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.view.ViewGroup/android.widget.ImageView

Então vejo que estou na pagina de detalhes sobre o veiculo
    Wait Until Page Contains        Detalhes do Carro                               40
    Wait Until Page Contains        Honda City                                      40
    Wait Until Page Contains        2.0 EXL 4X4 16V GASOLINA 4P AUTOMÁTICO          40
