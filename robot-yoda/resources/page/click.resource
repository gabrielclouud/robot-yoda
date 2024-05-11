*** Settings ***
Documentation        Elementos e ações da tela de click e click longo

Library     AppiumLibrary

*** Keywords ***
Do click_simples
   Click Text                                  text=CLIQUE SIMPLES
   Wait Until Page Contains                    text=Isso é um clique simples

Do click_looongo
    ${locator}       Set Variable               id=com.qaxperience.yodapp:id/long_click
    
    ${positions}     Get Element Location       ${locator}

    Tap With Positions                          ${1000}    ${${positions}[x], ${positions}[y]}
    Wait Until Page Contains                    text=Isso é um clique longo