*** Settings ***
Documentation    This suite will handles all the test case related to valid credentials
...    Stories connected with OP-TC-02
   
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
Verify Valid Credential Tests
    Append To Environment Variable    Path    ${EXECDIR}${/}driver
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin123
    Input Password    id=clearPass    pass  
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']
    Page Should Contain    Messages    