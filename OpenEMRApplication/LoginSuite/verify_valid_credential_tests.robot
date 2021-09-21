*** Settings ***
Documentation    This suite will handles all the test case related to valid credentials
...    Stories connected with OP-TC-02  

Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource

*** Test Cases ***
Verify Valid Credential Tests
    Launch Browser
    Enter Username    admin
    Enter Password    pass
    Select Language By Label    English (Indian)
    Click Login
    Validate Page Contains Text    Messages   
    [Teardown]  End Browser
    
    