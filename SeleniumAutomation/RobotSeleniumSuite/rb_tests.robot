*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases *** 
TC1 Goto
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting/trial
    Run Keyword And Ignore Error    Click Element    id=truste-consent-close123    
    Input Text    id=first-name    bala 
    
TC2 Goto
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Go To    url=https://www.goto.com/meeting/trial
    ${out}     Run Keyword And Ignore Error    Click Element    id=truste-consent-close123    
    Log To Console    ${out}
    Log    ${out}[1] 
    
    Run Keyword If    ${out}[1]=='FAIL'    Fatal Error            
    
    Input Text    id=first-name    bala 
