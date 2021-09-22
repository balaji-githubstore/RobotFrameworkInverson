*** Settings ***
Library    FlaUILibrary    

*** Test Cases ***
TC1
    Launch Application    application=C:\\WINDOWS\\system32\\notepad.exe  
    Sleep    2s   
    # Press Key    key_combination=t'balaji dinkaran' 
    Press Key    key_combination=t'balaji dinkaran'    identifier=//*[@Name='Text Editor']  
    Click    identifier=//*[@Name='File']
    Click    identifier=//*[@Name='Save']    
    Sleep    1s         
    Press Key    t'D:${/}check.txt'    identifier=//Edit[@Name='File name:']
    Click     identifier=//*[@Name='Save'] 
        
    

TC2
   Launch Application    application=C:${/}Users${/}JiDi${/}AppData${/}Roaming${/}Zoom${/}bin${/}Zoom.exe  
   Click    identifier=//*[@Name='Sign In']  
   Sleep    1s   
   # Set Text To Textbox    identifier=//*[@Name='Email'    value=hello@gmail.com    
   Click    identifier=//*[@Name='Email']    
   Press Key    key_combination=t'jjjj@gmail.com'
   Sleep    1s 
   Click    identifier=//*[@Name='Password']    
   Press Key    key_combination=t'jjjj'
   Sleep    1s 
   Click    identifier=//*[@Name='Sign In'] 
   ${name}    Get Name From Element    //*[@Name='Incorrect email or password']  
   Log To Console    ${name}      
   [Teardown]    Close Application        
   





