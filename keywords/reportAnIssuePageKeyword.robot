*** Settings ***
Resource    ../Data/envData.robot
Resource    ../locators/reportAnIssuePageLocator.robot
Library    SeleniumLibrary

*** Keywords ***
Go to Report an issue page
    [Documentation]    Navigate from home page to New Issue Report page
    Click Element    ${report_an_issue_btn}
    Wait Until Element Is Visible    ${new_issue_report_lbl}    timeout=30s

Input Issue Title
    [Arguments]    ${title_name}
    Input Text    ${title_txt}     ${title_name}

Input Issue Description
    [Arguments]    ${description_detail}
    Input Text    ${description_txt}     ${description_detail}

Select Issue Severity
    [Arguments]    ${severity_level}
    Select From List By Label    id=severity    ${severity_level}

Click Create
    Click Button    ${create_btn} 
    Wait Until Element Is Visible    ${open_issues_lbl}    timeout=30s 

Verify Latest Issue
    [Arguments]    ${expected_title}    ${expected_severity}
    ${actual_title}=       Get Text    ${first_issue_title}
    ${actual_severity}=    Get Text    ${first_issue_severity}
    Should Be Equal As Strings    ${actual_title}       ${expected_title}
    Should Be Equal As Strings    ${actual_severity}    ${expected_severity}    

Delete Latest Issue
    Click Element    ${delete_btn}
    Wait Until Element Is Visible    ${delete_success_lbl}    timeout=30s
    Element Text Should Be        ${delete_success_lbl}    The issue has been deleted.