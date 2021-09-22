*** Settings ***
Documentation    This suite will handles all the test case related to valid credentials
...    Stories connected with OP-TC-02  

Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify Valid Credential Template

*** Test Cases ***
TC1   admin    pass    English (Indian)    Messages
# TC2    physician    physician    Dutch    Messages
# TC3    clinician    clinician    English (Indian)    Messages
# TC4    accountant    accountant    English (Indian)    Messages

*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login
    Validate Page Contains Text    ${expectedvalue}   
    
    