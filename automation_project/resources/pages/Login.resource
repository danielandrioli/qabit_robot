*** Settings ***
Documentation        Ações e seletores da página de Login SAC
Library    Browser

*** Keywords ***
Fill fields and click on enter
    [Arguments]    ${email}    ${password}
    Fill Text    id=email    ${email}
    Fill Text    id=password    ${password}
    Click    css=button[type=submit]

Verify wrong credentials message
    Wait For Elements State    css=.Toastify [role=alert]
    Get Text    css=.Toastify [role=alert]    
    ...    equal    As credenciais de acesso fornecidas são inválidas. Tente novamente!

Verify invalid fields message
    [Arguments]    ${message}
    Get Text    form .notice    equal    ${message}
    
    