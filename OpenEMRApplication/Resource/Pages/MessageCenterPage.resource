*** Settings ***
Documentation    This file handles all elements in message center pages 

Resource    ../Base/CommonFunctionality.resource

*** Variables ***
${ADDNEW LOCATOR}    xpath=//*[text()='Add New']
${MSGFRAME LOCATOR}    name=msg

*** Keywords ***
Switch To Msg Frame
    Select Frame    ${MSGFRAME LOCATOR}

Click AddNew
     Click Element    ${ADDNEW LOCATOR}    