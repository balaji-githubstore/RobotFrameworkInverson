*** Settings ***
Library    DateTime    

*** Test Cases ***
TC1 Print Name
    Log To Console    Balaji    
    Log To Console    Hello, Everyone   
    ${myname}    Set Variable    balaji dinakaran     
    Log To Console    ${myname}  
    Log    ${myname}  
    
 TC2 Print Date
    Log To Console    Today's date    
    ${date}    Get Current Date 
    Log To Console    ${date}       
    