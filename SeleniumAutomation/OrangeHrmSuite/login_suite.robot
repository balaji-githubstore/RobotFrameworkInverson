*** Settings ***
Library   SeleniumLibrary  
Library    OperatingSystem    

*** Test Cases ***
TC1 Valid Credential
    Append To Environment Variable    Path    C:\\Components
    Open Browser    url= https://opensource-demo.orangehrmlive.com/    browser=chrome  
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    # Set Selenium Speed    1s
    Input Text    id=txtUsername    Admin     
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    ${url}     Get Location  
    Log To Console    ${url}           
    Log    ${url}    
    Click Element    id=welcome 
    #Sleep    5s    
    Click Element    link=Logout 
    