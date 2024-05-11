*** Settings ***

Resource        ../resources/page/base.resource
Resource        page/login.resource

Test Setup       Start session
Test Teardown    Finish Session

*** Test Cases ***
Deve logar com sucesso
    
    Get started
    Navigate to                item_text=Formulários
    Go to Item                 Login    Olá Padawan, vamos testar o login?
    Do login


*** Test Cases ***
Não deve logar com incorreta
    
    Start session
    
    Get started
    Navigate to                item_text=Formulários
    Go to Item                 Login    Olá Padawan, vamos testar o login?

    Input Text                 locator=id=com.qaxperience.yodapp:id/etEmail           text=yoda@qax.com
    Input Text                 locator=id=com.qaxperience.yodapp:id/etPassword        text=sith
    Click Element              locator=id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    text=Oops! Credenciais incorretas.