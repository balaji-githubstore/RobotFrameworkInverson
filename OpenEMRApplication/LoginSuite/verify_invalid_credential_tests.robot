*** Settings ***
Documentation    This suite will handles all the test case related to invalid credentials
...    Stories connected with OP-TC-03
   
Resource    ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
 

*** Test Cases ***
Verify Invalid Credential Tests
    Launch Browser
    Enter Username    admin123
    Enter Password    pass 
    Select Language By Label    English (Indian)   
    Click Login   
    Validate Invalid Error Message    Invalid username or password  
    [Teardown]  End Browser
      