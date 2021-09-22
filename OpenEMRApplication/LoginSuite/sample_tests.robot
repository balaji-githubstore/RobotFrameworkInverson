*** Settings ***
Documentation    This suite will handles all the test case related to valid credentials
...    Stories connected with OP-TC-02  

Test Template    TC Template

*** Test Cases ***
TC1    hello    welcome to google  
TC2    hi    welcome to microsoft
    
*** Keywords ***
TC Template
    [Arguments]    ${arg1}    ${arg2} 
    Log To Console    ${arg1}    
    Log To Console    ${arg2}
    
TC1
    Log    hello