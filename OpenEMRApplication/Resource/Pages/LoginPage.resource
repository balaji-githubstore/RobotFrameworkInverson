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
    [Documentation]    Fill the valid credential and takes to OpenEMR dashboard\n 
    ...    Example
    ...    | Login To Portal | admin | pass | Dutch | 
    ...    | Login To Portal | accountant | accountant | Dutch |
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login

Enter Username
    [Arguments]    ${username}  
    [Documentation]    Fill the username as mentioned\n 
    ...    Example
    ...    | Enter Username | admin |
    ...    | Enter Username | accountant |
    Input Text    ${USERNAME LOCATOR}    ${username}

Enter Password
    [Arguments]    ${password}
    [Documentation]    Fill the password as mentioned\n 
    ...    Example
    ...    | Enter Password | admin123 |
    ...    | Enter Password | accountant123 |
    Input Password    ${PASSWORD LOCATOR}    ${password} 
    
Select Language By Label
     [Arguments]    ${language}
     [Documentation]    Select the language from available label\n 
     ...    Example
     ...    | Select Language By Label | Dutch |
     ...    | Select Language By Label | Danish |
     Select From List By Label    ${LANGUAGE LOCATOR}    ${language}
    
Click Login
    [Documentation]    Click on login\n 
     ...    Example
     ...    | Click Login |
    Click Element    ${LOGIN LOCATOR}
    
Get Application Description
    [Documentation]    Returns the application description\n 
     ...    Example
     ...    | ${text} | Get Application Description |
    ${text}    Get Text    ${APPDESC LOCATOR}
    Return From Keyword    ${text}

Get LoginPage Title
     [Documentation]    Returns the login page title\n 
     ...    Example
     ...    | ${text} | Get LoginPage Title |
    ${title}    Get Title
    [Return]    ${title}
    
Validate Invalid Error Message
    [Arguments]        ${expectedValue}
    [Documentation]    Case-sensitive comparison on provided expected value\n 
     ...    Example
     ...    | Validate Invalid Error Message | Invalid username and password |
    Element Should Contain    ${ERROR LOCATOR}    ${expectedValue} 

