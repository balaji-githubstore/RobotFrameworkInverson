*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1 Valid Credential
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/?d=jumbo1-btn-ft
    Input Text    name=UserFirstName    Balaji  
    Input Text    xpath=//input[contains(@id,'UserLast')]    Dinakaran  
    Select From List By Label    name=UserTitle    IT Manager
    Select From List By Label    name=CompanyEmployees    501 - 1500 employees 
    # Click Element    xpath=//div[@class='checkbox-ui']      
    Click Element    xpath=//input[@id='SubscriptionAgreement']/following::div    
    Click Element    name=start my free trial
    # Select Checkbox    xpath=//input[@id='SubscriptionAgreement']         