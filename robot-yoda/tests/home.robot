*** Settings ***

Resource        ../resources/page/base.resource

Test Setup       Start session
Test Teardown    Finish Session

*** Test Cases ***
Deve abrir a tela principal

    Open Application    http://localhost:4723
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

    Wait Until Page Contains        text=Yodapp                timeout=10
    Wait Until Page Contains        text=Mobile Training       timeout=10   
    Wait Until Page Contains        text=by Papito             timeout=10