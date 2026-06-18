*** Settings ***
Resource    ../Data/envData.robot
Resource    ../locators/welcomePageLocator.robot
Library    SeleniumLibrary

*** Keywords ***
Open Marsair
    Open Browser    ${BASE_URL}    Chrome
    Wait Until Element Is Visible    ${welcome_to_mar_air_lbl}    timeout=30s

Capture Screenshot
    ${timestamp}=    Get Time    epoch
    Capture Page Screenshot    screenshot_${timestamp}.png

Close The Website
    Capture Screenshot
    Close Browser