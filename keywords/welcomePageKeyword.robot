*** Settings ***
Resource    ../Data/envData.robot
Resource    ../locators/welcomePageLocator.robot
Library    SeleniumLibrary

*** Keywords ***
Select Departure
    [Arguments]    ${month}
    Select From List By Label    id=departing    ${month}

Select Return
    [Arguments]    ${month}
    Select From List By Label    id=returning    ${month}

Click Search
    Click Button    ${search_btn}    

Add Promptional Code
    [Arguments]    ${code}
    Input Text    ${promotional_code_txt}    ${code}

Get Result Text
    Wait Until Element Is Visible    ${search_result_lbl}    timeout=10s
    ${result}=    Get Text    ${search_result_lbl}
    [Return]      ${result}