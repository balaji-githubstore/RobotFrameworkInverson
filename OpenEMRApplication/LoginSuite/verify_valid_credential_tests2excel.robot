*** Settings ***
Documentation    This suite will handles all the test case related to valid credentials
...    Stories connected with OP-TC-02  

Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify Valid Credential Template

Library    DataDriver    file=../TestData/OpenEMRData.xlsx    sheet_name=Verify Valid Credential

*** Test Cases ***
Verify Valid Credential ${username}

*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}
    
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login
    Validate Page Contains Text    ${expectedvalue}   
    
    