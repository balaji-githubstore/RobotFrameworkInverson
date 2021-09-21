*** Settings ***
Library    DateTime    

*** Keywords ***
Get My Name
    FOR    ${i}    IN RANGE    1    11
        Run Keyword If    '${i}'=='54'     Return From Keyword     bala    
    END  

    [Return]    bala123

Check Postive Or Negative
    [Arguments]    ${num}
    Run Keyword If    ${num}<0   Return From Keyword     negative
    Run Keyword If    ${num}>0   Return From Keyword     postive

Get My City
    Return From Keyword    Chennai

*** Test Cases ***
TC12
    ${text}    Check Postive Or Negative    -45
    Log To Console    ${text}    

TC11
   ${name}     Get My Name
   Log To Console    ${name}    

   ${city}     Get My City
   Log To Console    ${city}   


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

TC3 Loop  

    FOR    ${i}    IN RANGE    1    11
        Log To Console    ${i}    
    END
    
    Log To Console    ------------------------    
    FOR    ${i}    IN RANGE    1     50    2
         Log To Console    ${i}  
    END
    

    
TC4 Loop  
    FOR    ${i}    IN RANGE    1    11
        Log To Console    ${i}  
        Run Keyword If    '${i}'=='5'    Log To Console    hello          
    END   
    


TC5 
    Log To Console    ${CURDIR}    
    Log To Console    ${EXECDIR} 
    Log To Console    ${EXECDIR}\driver 
    Log To Console    ${EXECDIR}\\driver
    Log To Console    ${EXECDIR}${/}driver
    Log To Console    ${OUTPUT_DIR}    
    Log To Console    ${SUITE_NAME}    
    Log To Console    ${TEST_NAME}    
    Log To Console    ${TEMPDIR}       





