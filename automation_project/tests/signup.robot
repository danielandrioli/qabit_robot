*** Settings ***
Documentation    Pré-cadastro de clientes
Library    Browser
Resource    ../resources/Base.resource
Resource    ../resources/pages/Landing.resource
Resource    ../resources/pages/Welcome.resource
Test Setup    Entrar na página
Test Teardown    Take Screenshot

*** Test Cases ***
Validação da criação do cadastro
    ${account}    Generate Fake Account
    Preencher campos e clicar em 'Cadastrar'    
    ...    ${account}[name]    ${account}[email]    ${account}[cpf]
    # Open Browser    pause_on_failure=${True}  #
    #Click    css=button >> text=cadastrar  #Combinação e estratégias de seletores
    Verifica mensagem de boas-vindas

Email inválido falha o teste
    [Tags]    unhappy_path
    Preencher campos e clicar em 'Cadastrar'    
    ...    Jailson    emailInvalidoHehe    05242577010
    Mensagem de erro deve ser    Oops! O email informado é inválido
    Take Screenshot

Email não preenchido falha o teste
    [Tags]    unhappy_path
    Preencher campos e clicar em 'Cadastrar'    
    ...    Jailson    email=${EMPTY}    cpf=05242577010
    Mensagem de erro deve ser    Por favor, informe o seu melhor e-mail

CPF inválido falha o teste
    [Tags]    unhappy_path
    Preencher campos e clicar em 'Cadastrar'    
    ...    Jailson    ja@mendes.com    11122233344
    Mensagem de erro deve ser    Oops! O CPF informado é inválido

CPF não preenchido falha o teste
    [Tags]    unhappy_path
    Preencher campos e clicar em 'Cadastrar'    
    ...    Jailson    email=ja@mendes.com    cpf=
    Mensagem de erro deve ser    Por favor, informe o seu CPF

Nome não preenchido falha o teste
    [Tags]    unhappy_path
    Preencher campos e clicar em 'Cadastrar'    
    ...    name=    email=ja@mendes.com    cpf=11122233344
    Mensagem de erro deve ser    Por favor informe o seu nome completo