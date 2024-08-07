*** Settings ***
Documentation        Cenários de teste do Login SAC
Resource        ../resources/Base.resource
Resource        ../resources/pages/Login.resource
Resource        ../resources/pages/AccountsSac.resource
Test Setup        Entrar na página    urlEnd=login    headless=false

*** Test Cases ***
Successful Login
    Fill fields and click on enter    sac@smartbit.com    pwd123
    Verify Accounts URL

Unsucessful Login - wrong password
    Fill fields and click on enter    sac@smartbit.com    blabla
    Verify wrong credentials message

Unsucessful Login - invalid email format
    Fill fields and click on enter    aeasdsdad    123456
    Verify invalid fields message    Oops! O email informado é inválido

Unsucessful Login - empty email field
    Fill fields and click on enter    ${EMPTY}    123456
    Verify invalid fields message    Os campos email e senha são obrigatórios.

Unsucessful Login - empty password field
    Fill fields and click on enter    jaja@hotmail.com    ${EMPTY}
    Verify invalid fields message    Os campos email e senha são obrigatórios.

