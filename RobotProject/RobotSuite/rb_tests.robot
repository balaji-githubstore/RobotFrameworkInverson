*** Settings ***


Test Setup    Log To Console    startTestSetup     
Test Teardown    Log To Console    endTestTeardown    

*** Test Cases ***
TC1
    Log To Console    tc1  
    
TC2
    Log To Console    tc2     
    
TC3
    [Setup]    Log To Console    localsetup    
    Log To Console    tc3    
    [Teardown]    NONE
    