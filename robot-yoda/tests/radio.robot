*** Settings ***

Resource        ../resources/page/base.resource

Test Setup       Start session
Test Teardown    Finish Session

*** Test Cases ***
Deve selecionar a opção Python

    Start session
    Get started
    Navigate to      Check e Radio
    Go to Item       Botões de radio        checkpoint=Escolha sua linguagem preferida

    Click Element    xpath=//android.widget.RadioButton[contains(@text, "Python")]
