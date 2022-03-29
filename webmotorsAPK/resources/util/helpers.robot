***Keywords***
Dado que abro o aplicativo
    helpers.Open session
    
Então devo ver a mensagem "${parm_mensagem}"
    Page Should Contain Text     ${parm_mensagem}

Então devo clicar no botão "${parm_texto}"
    Click Text      ${parm_texto}

E fecho o aplicativo
    helpers.Close session

Set campo input by teclado
    [Arguments]     ${parm_element}     ${parm_value}

    helpers.Clicar no botão         ${parm_element}
    helpers.TypeOnKeyboardByString  ${parm_value}  

Set campo Input 
    [Arguments]     ${parm_element}     ${parm_value}

    helpers.Is visible  ${parm_element} 
    Input Text          ${parm_element}     ${parm_value}

Is visible
    [Arguments]     ${parm_element}
     Wait Until Element Is Visible   ${parm_element}    60

Clicar no texto
    [Arguments]     ${btn_texto}

    Click Element                       ${btn_texto}

Clicar no botão
    [Arguments]     ${seletor}

    Wait Until Element Is Visible       ${seletor}      60
    Click Element                       ${seletor}


Open session

    Set Appium Timeout  20

    Open Application    
    ...     http://localhost:4723/wd/hub
    ...     automationName=UIAutomator2
    ...     platformName=Android
    ...     deviceName=Emulator
    ...     app=${EXECDIR}/app/webmotors.apk
    ...     udid=emulator-5554
    ...     autoGrantPermissions=true
    ...     autoAcceptAlerts=true   

    Start Screen Recording

Close session    
    [Documentation]     Função para fechar o aplicativo
    ...                 limpar a sessão do usuário no app.

    Stop Screen Recording
    Capture Page Screenshot
    Close Application    

TypeOnKeyboardByString
    [Arguments]    ${myString}=.
    @{myStringArray}=    Split String To Characters     ${myString}
    FOR    ${myChar}    IN    @{myStringArray}         
        TypeOnKeyboard                  ${myChar}
    END
    
TypeOnKeyboard
    [Arguments]    ${number}=.
    Run Keyword If   ${number}=="HOME"     Press Keycode      82
    Is Keyboard Shown
    Run Keyword If   ${number}==0     Press Keycode       7
    Run Keyword If   ${number}==1     Press Keycode       8
    Run Keyword If   ${number}==2     Press Keycode       9
    Run Keyword If   ${number}==3     Press Keycode       10
    Run Keyword If   ${number}==4     Press Keycode       11
    Run Keyword If   ${number}==5     Press Keycode       12
    Run Keyword If   ${number}==6     Press Keycode       13
    Run Keyword If   ${number}==7     Press Keycode       14
    Run Keyword If   ${number}==8     Press Keycode       15
    Run Keyword If   ${number}==9     Press Keycode       16    
    
Carregando arquivo de dados    
    [Arguments]     ${json_file}

    ${dados}=   Retorna arquivo em json  ${json_file}
    Set Test Variable       ${dados}

Retorna arquivo em json
    [Arguments]    ${json_file}

    ${string_file}=     Get File    ${EXECDIR}/resources/fixtures/${json_file}
    ${object_json}=     Evaluate    json.loads($string_file)    json

    [Return]        ${object_json}