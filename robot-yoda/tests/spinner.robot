*** Settings ***

Resource        ../resources/page/base.resource

Test Setup       Start session
Test Teardown    Finish Session

*** Test Cases ***
Deve escolher o nivel Padawan
    
    Start session
    Get started

    Navigate to        Formulários
    Go to Item         Cadastro    Crie sua conta.

    Select level        Padawan

Deve escolher o nivel Jedi
    
    Start session
    Get started

    Navigate to        Formulários
    Go to Item         Cadastro    Crie sua conta.

    Select level        Jedi
Deve escolher o nivel Sith
    
    Start session
    Get started

    Navigate to        Formulários
    Go to Item         Cadastro    Crie sua conta.

    Select level        Sith

Deve escolher o nivel Outros
    
    Start session
    Get started

    Navigate to        Formulários
    Go to Item         Cadastro    Crie sua conta.

    Select level        Outros

*** Keywords ***
Select level
    [Arguments]    ${level}

    Click Element                             locator=id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible             locator=class=android.widget.ListView
    Click Text                                ${level}