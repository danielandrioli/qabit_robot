*** Settings ***
Documentation        Arquivo principal do projeto Robot
Library        Browser
Library        libs/Account.py

*** Keywords ***
Entrar na página
    [Arguments]    ${headless}=true    ${urlEnd}=${EMPTY}
    New Browser    chromium    headless=${headless}
    New Page        http://localhost:3000/${urlEnd}