*** Settings ***
Library    Excel.Files

Test Teardown    Close Workbook    

*** Test Cases ***
TC1
    Open Workbook    ${EXECDIR}${/}TestData${/}OpenEMRData.xlsx
    ${sheets}    List Worksheets
    Log To Console    ${sheets}    
    ${sheetcount}    Get Length    ${sheets}
    Log To Console    ${sheetcount}    
    
    FOR    ${sheet}    IN    @{sheets}
        Log To Console    ${sheet}
    END
    
TC2
    Open Workbook    ${EXECDIR}${/}TestData${/}OpenEMRData.xlsx
    ${sheet}    Read Worksheet    Verify Invalid Credential
    Log To Console    ${sheet}
    ${cell}    Get Worksheet Value    1    1
    Log To Console    ${cell}    
     ${cell}    Get Worksheet Value    2    1
    Log To Console    ${cell}         
    
TC3
    Open Workbook    ${EXECDIR}${/}TestData${/}OpenEMRData.xlsx
    ${sheet}    Read Worksheet    Verify Invalid Credential
    Log To Console    ${sheet}
    ${cell}    Get Worksheet Value    1    1
    Log To Console    ${cell}    
    Set Worksheet Value    1    1    hello    
    Save Workbook    