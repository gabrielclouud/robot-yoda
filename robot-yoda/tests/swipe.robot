*** Settings ***

Resource    ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish Session

*** Test Cases ***
Deve poder remover o Darth Vader

    Start session
    Get started

    Navigate to          item_text=Star Wars
    Go to Item           item=Lista      checkpoint=Darth Vader

    ${positions}         Get Element Location                locator=xpath=//android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id, "indicator")]

    ${start_x}    Set Variable    ${positions}[x]
    ${start_y}    Set Variable    ${positions}[y]
    ${offset_x}   Evaluate        ${positions}[x] - 650
    ${offset_y}   Set Variable    ${positions}[y]

    Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}    duration=1000

    Click Element                        locator=id=com.qaxperience.yodapp:id/btnRemove
    Wait Until Page Does Not Contain     text=Darth Vader