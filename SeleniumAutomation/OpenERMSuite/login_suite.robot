*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1 Valid Credential
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    # Select From List By Index    name=languageChoice    1            
    # Select From List By Value    name=languageChoice    6    
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit']   
    ${title}    Get Title
    Log To Console    ${title}     
    Click Element    xpath=//div[text()='Messages']    
    Click Element    id=username    
    Click Element    xpath=//li[text()='Logout']    