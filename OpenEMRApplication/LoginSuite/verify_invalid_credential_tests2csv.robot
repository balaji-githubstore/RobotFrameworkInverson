*** Settings ***
Documentation    This suite will handles all the test case related to invalid credentials
...    Stories connected with OP-TC-03
   
Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Test Template    Verify Invalid Credential Template

Library    DataDriver    file=../TestData/Verify Invalid Credential.csv 

*** Test Cases ***
TC_${username}_${password}
    
*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expectedvalue}
    Enter Username    ${username}
    Enter Password    ${password} 
    Select Language By Label    ${language}   
    Click Login   
    Validate Invalid Error Message    ${expectedValue}  