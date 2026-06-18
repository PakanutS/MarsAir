*** Settings ***
Library           SeleniumLibrary
Resource        ../Data/envData.robot
Resource        ../keywords/welcomePageKeyword.robot
Resource        ../keywords/commonKeyword.robot

Suite Setup     Open Marsair
Suite Teardown  Close The Website

*** Variables ***
${DATE_JUL_2026}     July
${DATE_DEC_2027}     December (next year)
${PROMOTIONAL_CODE_VALID}  AF3-FJK-418


*** Test Cases ***
Verify Available Seat
    [Tags]    TC10
    Select Departure    ${DATE_JUL_2026}
    Select Return    ${DATE_DEC_2027}
    Click Search
    ${search_result}=    Get Result Text
    Should Be Equal As Strings    ${search_result}    Seats available! And Call now on 0800 MARSAIR to book!


Verify Promotional Code Available
    [Tags]    TC07
    Select Departure    ${DATE_JUL_2026}
    Select Return    ${DATE_DEC_2027}
    Click Search
    Add Promptional Code    ${PROMOTIONAL_CODE_VALID}
    ${search_result}=    Get Result Text
    Should Be Equal As Strings    ${search_result}    Seats available! And Call now on 0800 MARSAIR to book! And Promotional code ${PROMOTIONAL_CODE_VALID} used: 30% discount!
