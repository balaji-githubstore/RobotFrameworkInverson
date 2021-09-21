*** Settings ***
Documentation    This suite will handles all the test case related to invalid credentials
...    Stories connected with OP-TC-03
   
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
Verify Invalid Credential Tests
    Append To Environment Variable    Path    ${EXECDIR}${/}driver
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin123
    Input Password    id=clearPass    pass  
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']   
    Element Should Contain    //div[contains(text(),'Invalid')]    Invalid username or password    