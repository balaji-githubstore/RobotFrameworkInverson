*** Settings ***
Library    PDF
Library    Collections    

*** Test Cases ***
TC1
    ${pagecount}    Get Number Of Pages  D:\\B-Mine\\Company\\Syllabus\\Advanced Selenium.pdf  
    Log To Console    ${pagecount}    
    
TC2 
   ${text}     Get Text From Pdf    D:\\B-Mine\\Company\\Syllabus\\Advanced Selenium.pdf    
   Log To Console    ${text}    
   ${page1}     Convert To Integer    1       
   Log To Console    ${text}[${page1}]    
   
TC3
   ${text}     Get Text From Pdf    D:\\B-Mine\\Company\\Syllabus\\Advanced Selenium.pdf    
   Log To Console    ${text}    
   
    ${keys}    Get Dictionary Keys    ${text}   
    Log To Console    ${keys}
    
    FOR    ${key}    IN    @{keys}
        Log To Console    ${text}[${key}]
        Log To Console    -------------------------    
    END   
    Log Dictionary    ${text}     