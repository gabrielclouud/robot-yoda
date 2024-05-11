*** Settings ***

Library    AppiumLibrary

Resource    page/login.resource

*** Variables ***
${start_button}              QAX

*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    
Get started
    Wait Until Page Contains    ${start_button}                timeout=10
    Click Text                  ${start_button}
    
Navigate to
    [Arguments]                         ${item_text}
    ${hamburguer}    Set Variable       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    
    Wait Until Element Is Visible       ${hamburguer}           timeout=10
    Click Element                       ${hamburguer}     

    ${menu_item}      Set Variable      xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]
    Wait Until Element Is Visible       ${menu_item}            timeout=10
    Click Element                       ${menu_item} 
    
Go to Item
    [Arguments]                         ${item}                 ${checkpoint}

    Wait Until Page Contains            ${item}                 timeout=10
    Click Text                          ${item}
    Wait Until Page Contains            ${checkpoint}

Finish Session
    
    Capture Page Screenshot
    Close Application