*** Settings ***
Documentation        Seletores e ações dentro da Landing Page
Library    Browser
*** Variables ***
${aew}    testii
*** Keywords ***
Preencher campos e clicar em 'Cadastrar'
    [Arguments]    ${name}    ${email}    ${cpf}
    Fill Text    css=#signup #name        ${name} 
    Fill Text    css=#signup #email    ${email}
    Type Text    css=#signup #document    ${cpf}
    Click        css=#signup [type=submit]
    Log    ${aew}    level=WARN
Mensagem de erro deve ser
    [Arguments]    ${mensagem}
    # ${elem}    Set Variable        css=form .notice
    Get Text    form .notice    equal    ${mensagem}