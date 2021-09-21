*** Settings ***
Documentation    This file handles all the element inside the login page

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${USERNAME LOCATOR}    id=authUser
${PASSWORD LOCATOR}    id=clearPass
${LANGUAGE LOCATOR}    name=languageChoice
${LOGIN LOCATOR}    xpath=//button[@type='submit']
${APPDESC LOCATOR}    xpath=//p[contains(text(),'most')]
${ERROR LOCATOR}    xpath=//div[contains(text(),'Invalid')]

*** Keywords ***
Login To Portal
    [Arguments]    ${username}=admin    ${password}=pass    ${language}=English (Indian)
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login

Enter Username
    [Arguments]    ${username}   
    Input Text    ${USERNAME LOCATOR}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Password    ${PASSWORD LOCATOR}    ${password} 
    
Select Language By Label
     [Arguments]    ${language}
     Select From List By Label    ${LANGUAGE LOCATOR}    ${language}
    
Click Login
    Click Element    ${LOGIN LOCATOR}
    
Get Application Description
    ${text}    Get Text    ${APPDESC LOCATOR}
    Return From Keyword    ${text}

Get LoginPage Title
    ${title}    Get Title
    [Return]    ${title}
    
Validate Invalid Error Message
    [Arguments]        ${expectedValue}
    Element Should Contain    ${ERROR LOCATOR}    ${expectedValue} 

