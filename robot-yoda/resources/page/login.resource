*** Settings ***
Documentation        Elementos e ações da tela de login

Library     AppiumLibrary

*** Keywords ***
Do login
    Input Text                 locator=id=com.qaxperience.yodapp:id/etEmail           text=yoda@qax.com
    Input Text                 locator=id=com.qaxperience.yodapp:id/etPassword        text=jedi
    Click Element              locator=id=com.qaxperience.yodapp:id/btnSubmit

    Wait Until Page Contains    text=Boas vindas, logado você está.
