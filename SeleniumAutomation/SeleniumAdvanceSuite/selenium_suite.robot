*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem    

*** Test Cases ***
TC1 Frame
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    test123    
    Click Element    link=CONTINUE  
    Unselect Frame  
    
TC2 Multiple Tabs
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    partial link=APPLY FOR CREDIT CARD  
    Switch Window    Online Credit Card Application Form | Citi India
    Click Element    link=Travel    
    Close Browser
    
TC3 Multiple Tabs
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    xpath=//span[text()='Login']  
    Switch Window    Citibank India
    Input Text    id=User_Id    test123   
    Close Window
    Switch Window    Citi India - Credit Cards, Personal & Home Loans, Investment, Wealth Management & Banking
    ${title}     Get Title
    Log To Console    ${title}     

TC4 Multiple Tabs
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Click Element    xpath=//span[text()='Login']  
    Switch Window    NEW
    Input Text    id=User_Id    test123   
    Close Window
    Switch Window    MAIN
    ${title}     Get Title
    Log To Console    ${title}   

TC5 Alert
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']   
    ${alerttext}    Handle Alert    LEAVE    40s   
    Log To Console    ${alerttext}      
    Alert Should Be Present    text=Customer ID cannot be left blank.    timeout=40s     
    
TC6 Get
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr  
    
    ${appdesc}   Get Text    //p[contains(text(),'most')]
    Log To Console    ${appdesc}  
      
    ${linktext}    Get Text    partial link=Licensing
    Log To Console    ${linktext}    
    
    ${href}    Get Element Attribute    partial link=Licensing    href
    Log To Console    ${href}    
    
    ${placeholder}    Get Element Attribute    id=authUser    placeholder
    Log To Console    ${placeholder}
    

TC7 WebTable
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html
    ${name1}     Get Text    //table[@id='example']/tbody/tr[1]/td[2]
    Log To Console    ${name1}    
    ${name2}     Get Text    //table[@id='example']/tbody/tr[2]/td[2]
    Log To Console    ${name2}  
    
TC8 WebTable
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html
 
    FOR    ${i}    IN RANGE    1    11
         ${name}     Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
          Log To Console    ${name}  
          Run Keyword If    '${name}'=='Brenden Wagner'   Click Element    //table[@id='example']/tbody/tr[${i}]/td[1] 
          Exit For Loop If    '${name}'=='Brenden Wagner'      
    END

TC9 Total Link
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html

    ${count}    Get Element Count    tag=a
    Log To Console    ${count}    

TC10 WebTable
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html

    ${count}    Get Element Count    xpath=//table[@id='example']/tbody/tr
    Log To Console    ${count}    


    FOR    ${i}    IN RANGE    1    ${count}+1
         ${name}     Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
          Log To Console    ${name}  
          Run Keyword If    '${name}'=='Brenden Wagner'   Click Element    //table[@id='example']/tbody/tr[${i}]/td[1] 
          Exit For Loop If    '${name}'=='Brenden Wagner'      
    END

TC11 WebTable
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://datatables.net/extensions/select/examples/initialisation/checkbox.html
    Table Should Contain    //table[@id='example']    Bradley Greer    
    Table Row Should Contain    //table[@id='example']     1    Airi Satou    
    Table Cell Should Contain    //table[@id='example']    2    3    	Accountant    
    Table Header Should Contain    //table[@id='example']     Name
    # Table Footer Should Contain    //table[@id='example']    Name
    ${cell}    Get Table Cell    //table[@id='example']    1    3    
    Log To Console    ${cell}    
            
TC12 WebTableScroll
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=headlesschrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://datatables.net/examples/basic_init/scroll_y.html

    ${count}    Get Element Count    xpath=//table[@id='example']/tbody/tr
    Log To Console    ${count} 
    
    FOR    ${i}    IN RANGE    1    ${count}+1
         Scroll Element Into View    //table[@id='example']/tbody/tr[${i}]/td[2]
         ${name}     Get Text    //table[@id='example']/tbody/tr[${i}]/td[2]
          Log To Console    ${name}       
    END

#clearPass

TC13 CSS selector
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default
    Input Text    css=#authUser    admin 
    Input Text    css=#clearPass    pass
    Select From List By Label    css=select[name='languageChoice']    Dutch
    Click Element    css=[type='submit']            


TC14 Javascript selector
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/interface/login/login.php?site=default
    Execute Javascript    document.getElementById('authUser').value='balaji'
    Execute Javascript    document.querySelector("[type='submit']").click()

TC15_JavascriptWebElementCSSClick
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Click Element    xpath=//button[@type='submit']   

    # Click Element    xpath=//li[text()='Logout'] 
    Execute Javascript    document.querySelector("li[data-bind='click: logout']").click()

    Execute Javascript    document.querySelector("#authUser").value='hello';document.querySelector('#clearPass').value='john'

TC15_JavascriptWebElementXpathClick
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://demo.openemr.io/b/openemr
    
    ${ele}     Get WebElement    id=authUser
    Execute JavaScript     arguments[0].value='admin'     ARGUMENTS      ${ele} 
    
    Input Password    id=clearPass    pass
    Click Element    xpath=//button[@type='submit']   
    
    # Execute Javascript    document.querySelector("li[data-bind='click: logout']").click()
    ${ele}     Get WebElement    xpath=//li[text()='Logout']   
    Execute JavaScript     arguments[0].click()     ARGUMENTS      ${ele}   

    ${ele1}     Get WebElement    id=authUser
    ${ele2}     Get WebElement    id=clearPass
    Execute Javascript    arguments[0].value='hello';arguments[0].value='john'    ARGUMENTS    ${ele1}    ${ele2}
   

TC16_DynamicDatePage
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://phptravels.net/hotels
    # Input Text    id=checkin    06-10-2021    
    Execute Javascript    document.querySelector('#checkin').value='21-10-2021'

    ${ele}     Get WebElement    xpath=//input[@id='checkout']   
    Execute JavaScript     arguments[0].value='26-10-2021'    ARGUMENTS      ${ele} 
    
TC17_ToolTip
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://atozgrocery.in/my-account/
    Input Text    id=reg_email    hello
    Scroll Element Into View    link=Privacy Policy
    Click Element    name=register
    ${tooltip}    Execute Javascript    return document.querySelectorAll("#reg_email")[0].validationMessage
    Log To Console    ${tooltip}    
    
   ${duration}    Execute Javascript    return document.querySelectorAll("video[class='video-stream html5-main-video']")[0].duration
   Log To Console     ${duration}    
   

TC18_Upload 
     Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    https://smallpdf.com/word-to-pdf
    Choose File    xpath=//input[@type='file']    D:\\Profile.docx
    
TC19_BrowserNotifications
    Append To Environment Variable    Path    C:\\components
    Open Browser    browser=gc    options=add_argument("--disable-notifications")
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    # Execute Javascript    window.scrollBy(0,100)
    Go To    https://www.malaysiaairlines.com/in/en.html

