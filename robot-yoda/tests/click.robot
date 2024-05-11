*** Settings ***

Resource    ../resources/page/base.resource
Resource    page/click.resource

Test Setup       Start session
Test Teardown    Finish Session

*** Test Cases ***
Deve realizar um click simples

    Start session
    Get started
    Navigate to      Clique em Botões
    Go to Item       Clique simples             checkpoint=Botão clique simples
    Do click_simples

Deve realizar um click longo
    [Tags]           long    
    
    Start session
    Get started
    Navigate to      Clique em Botões
    Go to Item       Clique longo               checkpoint=Botão clique longo
    Do click_looongo