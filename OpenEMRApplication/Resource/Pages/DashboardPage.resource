*** Settings ***
Documentation    This file handles all menu in dashboard pages 

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${MESSAGES LOCATOR}    xpath=//div[text()='Messages']    

*** Keywords ***
Validate Page Contains Text
    [Arguments]    ${expectedValue}
    Page Should Contain     ${expectedValue} 
    
Click Messages
    Click Element    ${MESSAGES LOCATOR}
    
    

    
   