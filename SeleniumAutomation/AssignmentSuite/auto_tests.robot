*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem  
Library    AutoItLibrary     



*** Test Cases ***
TC1 Url
    [Timeout]    10s
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https:username:password@demo.openemr.io/b/openemr
    
TC1 Auto
    [Timeout]    10s
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://softwaretesting.com/
    Send    King
    Send    {TAB}
    Send    king123
    Sleep    2s    
    Send    {ENTER}   
    
TC2 Notepad
    Sleep    2s  
    Send    King
    Send    {TAB}
    Send    king123
    Sleep    2s    
    Send    {ENTER}   
    
TC3
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://smallpdf.com/pdf-to-word
    Click Element    //*[text()='Choose Files']    
     Sleep    2s  
    Control Focus    Open      ${EMPTY}      Edit1
     Sleep    2s 
    Control Set Text    Open    ${EMPTY}    Edit1    E:\\Salary Revision Letter.pdf
     Sleep    2s 
    Control Click    Open    ${EMPTY}    Button1
   


 