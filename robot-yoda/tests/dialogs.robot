*** Settings ***

Resource        ../resources/page/base.resource

Test Setup       Start session
Test Teardown    Finish Session

*** Test Cases ***
Deve acessar o dialogo

    Get started
    Navigate to        item_text=Dialogs
    Go to Item         item=Info    checkpoint=Que a Força esteja com você.