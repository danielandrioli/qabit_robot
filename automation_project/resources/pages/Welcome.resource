*** Settings ***
Documentation        Seletores e ações dentro da Welcome Page

Library    Browser

*** Keywords ***
Verifica mensagem de boas-vindas
    Wait For Condition    Url    #Sem esse wait, o Robot tenta pegar o h2 abaixo e não acha.
    ...    should end with    
    ...    welcome    timeout=7    
    Get Text    h2    
    ...    equal    Falta pouco para fazer parte da família Smartbit!