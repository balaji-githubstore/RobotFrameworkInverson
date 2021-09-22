*** Settings ***
Library    Word.Application  

Test Teardown    Close Document      

*** Test Cases ***
TC1
    Open Application    
    Open File    D:\\B-Mine\\Company\\Company\\Iverson\\Assignment.docx
    ${texts}    Get All Texts
    Log To Console    ${texts}    
    Export To Pdf    D:\\B-Mine\\Company\\Company\\Iverson\\Assignment.pdf