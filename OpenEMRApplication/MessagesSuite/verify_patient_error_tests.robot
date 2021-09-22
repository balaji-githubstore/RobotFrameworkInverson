*** Settings ***
Documentation    This suite will handles all the test case related to messages
...    Stories connected with OP-TC-02  

Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/DashboardPage.resource
Resource    ../Resource/Pages/MessageCenterPage.resource

Test Setup    Launch Browser
Test Teardown    End Browser

Library    DatabaseLibrary    

*** Test Cases ***
Verify Patient Error Tests
    Login To Portal
    Click Messages
    Switch To Msg Frame
    Click AddNew
    Check If Exists In Database    selectStatement    
    