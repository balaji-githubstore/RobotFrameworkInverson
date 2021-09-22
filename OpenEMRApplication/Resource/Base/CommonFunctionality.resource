*** Settings ***
Documentation    This file handles browser configuration/application configuration

Library    OperatingSystem    
Library    SeleniumLibrary     screenshot_root_directory=screenshots\
...    run_on_failure=NONE

*** Variables ***
${BROWSER NAME}    chrome
${URL}    https://demo.openemr.io/b/openemr


*** Keywords ***
Launch Browser
    Append To Environment Variable    Path    ${EXECDIR}${/}driver
    Open Browser    browser=${BROWSER NAME}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Timeout    50s
    # Set Screenshot Directory    ${EXECDIR}${/}screenshots
    Go To    url=${URL}

End Browser 
    Capture Page Screenshot    
    Close Browser