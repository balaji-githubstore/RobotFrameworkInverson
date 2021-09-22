*** Settings ***
Library    JSON    
Library    Collections        
*** Test Cases ***
TC1
    &{json}    Load JSON from file    ${EXECDIR}${/}TestData${/}data.json
    Log To Console    ${json}    
    Log To Console    ${json.browser}    
    Log To Console    ${json.url} 
    Set Global Variable    ${browser}    ${json.browser}
    Log To Console    ${json}[browser]     
    
TC2
    ${json}    Load JSON from file    ${EXECDIR}${/}TestData${/}data.json
    ${keys}     Get Dictionary Keys     ${json}   
    Log To Console     ${keys}      
    Log To Console    ${json}    
    Log To Console    ${json}[browser]   
    Log To Console    ${json}[url] 
    Set Global Variable    ${browser}    ${json}[browser]
    
TC3
    Log To Console    ${browser}
    
    