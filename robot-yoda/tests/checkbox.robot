*** Settings ***

Resource        ../resources/page/base.resource

Test Setup       Start session
Test Teardown    Finish Session

*** Test Cases ***
Deve marcar as techs que usam Appium

    Start session
    Get started
    Navigate to      Check e Radio
    Go to Item       Checkbox       checkpoint=Marque as techs que usam Appium

    @{techs}         Create List    Ruby    Python    Java    Javascript    C#    Robot Framework

    FOR     ${tech}   IN   @{techs}
        Click Element               locator=xpath=//android.widget.CheckBox[contains(@text, "${tech}")]
    END