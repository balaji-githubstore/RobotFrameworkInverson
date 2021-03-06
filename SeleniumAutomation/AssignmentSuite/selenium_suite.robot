*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem   

Test Timeout    5s 

*** Test Cases ***
TC1 Valid Credential
    [Timeout]    10s
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass 
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    xpath=//button[@type='submit'] 
    Click Element    xpath=//div[text()='Messages'] 
    # Select Frame    msg
    Select Frame    xpath=//iframe[contains(@src,'messages.php')]
    Click Element    partial link=Add New    
    Input Text    id=note    please book an appointment  
    Click Element    id=newnote    
    Unselect Frame
    Close Browser  
    

TC2 Goto
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting/trial
    Click Element    id=truste-consent-close 
    Input Text    id=first-name    bala    
    # Scroll Element Into View     xpath=//input[@value='10 - 99']
       
    Click Element    xpath=//input[@value='10 - 99'] 
               
    
TC3 Goto
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting/trial
    Run Keyword And Ignore Error    Click Element    id=truste-consent-close    
     
    Input Text    id=first-name    bala    
    # Scroll Element Into View     xpath=//input[@value='10 - 99']
       
    Click Element    xpath=//input[@value='10 - 99']    
    



