*** Settings ***
Library    Collections    

*** Variables ***
${BROWSER}    chrome
@{COLORS}    red    blue    green
&{dic}    username=bala    password=bala123    phone=898989

*** Test Cases ***
TC4
    Log To Console    ${dic} 
    Log To Console    ${dic}[username]   
    Log To Console    ${dic}[password] 
    &{locdic}    Create Dictionary    username=bala    password=bala123    phone=898989


    ${keys}    Get Dictionary Keys    ${locdic}   
    Log To Console    ${keys}
    
    FOR    ${key}    IN    @{keys}
        Log To Console    ${locdic}[${key}]
    END     

TC1
    Log To Console    ${BROWSER}    
    Log To Console    ${COLORS}    
    Log To Console    ${COLORS}[0]
    
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}   
    
    FOR    ${i}    IN RANGE    0    ${count}
        Log To Console    ${COLORS}[${i}]
    END 
    

TC2
    FOR    ${color}    IN    @{COLORS}
        Log To Console    ${color}    
    END
    
TC3
    @{lists}     Create List    apple     banana    orange

    FOR    ${list}    IN    @{lists}
        Log To Console    ${list}    
    END



