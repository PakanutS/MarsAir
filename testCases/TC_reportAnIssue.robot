*** Settings ***
Resource    ../Data/envData.robot
Resource        ../keywords/commonKeyword.robot
Resource        ../keywords/reportAnIssuePageKeyword.robot
Library           SeleniumLibrary
Test Setup     Open Marsair
Test Teardown  Delete Latest Issue

*** Variables ***
${REPORT_TITLE}    issue1
${DESCRIPTION}    cannot select departure and return time
${SEVERITY_HIGH}    High

*** Test Cases ***
Create New Issue Report
    [Tags]    TC16
    Go to Report an issue page
    Input Issue Title    ${REPORT_TITLE}
    Input Issue Description    ${DESCRIPTION} 
    Select Issue Severity    ${SEVERITY_HIGH}
    Click Create
    Verify Latest Issue    ${REPORT_TITLE}    ${SEVERITY_HIGH}


