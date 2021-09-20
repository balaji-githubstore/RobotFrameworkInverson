*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1 Frame
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    test123    
    Click Element    link=CONTINUE  
    Unselect Frame  
    
TC2 Multiple Tabs
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    partial link=APPLY FOR CREDIT CARD  
    Switch Window    Online Credit Card Application Form | Citi India
    Click Element    link=Travel    
    Close Browser
    
TC3 Multiple Tabs
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    xpath=//span[text()='Login']  
    Switch Window    Citibank India
    Input Text    id=User_Id    test123   
    Close Window
    Switch Window    Citi India - Credit Cards, Personal & Home Loans, Investment, Wealth Management & Banking
    ${title}     Get Title
    Log To Console    ${title}     

TC4 Multiple Tabs
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    xpath=//span[text()='Login']  
    Switch Window    NEW
    Input Text    id=User_Id    test123   
    Close Window
    Switch Window    MAIN
    ${title}     Get Title
    Log To Console    ${title}   

