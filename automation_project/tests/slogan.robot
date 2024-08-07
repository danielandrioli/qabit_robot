*** Settings ***
Documentation        Verificações no Slogan da Landing Page
Library        Browser

*** Test Cases ***
Deve mostrar mensagem no slogan
    New Browser    browser=chromium        headless=${False}
    New Page        http://localhost:3000/
    Get Text        .headline h2    equal    Sua Jornada Fitness Começa aqui!

    
    