*** Settings ***
Library    DatabaseLibrary  

Suite Setup     Connect To Database    dbapiModuleName=pymysql    dbName=dbfree_db      dbUsername=dbfree_db
...    dbPassword=12345678    dbHost=db4free.net    dbPort=3306      

Suite Teardown    Disconnect From Database 
    

*** Test Cases ***
TC1  
    # Connect To Database Using Custom Params    pyodbc    'Driver={SQL Server};Server=Servername;Database=dbname;Trusted_Connection=yes;'
    Check If Exists In Database    select * from Products
    
TC2
    Check If Not Exists In Database    select * from Products where product_id=2    

TC3  
    Table Must Exist    Products    
    
TC4
    Row Count Is 0    select * from Products where product_id=2   
    Row Count Is Equal To X    select * from Products    3    
    
TC5 
   ${count}     Row Count    select * from Products  
   Log To Console    ${count}   
   Should Be Equal    '${count}'    '3'    

TC6 
   ${count}     Row Count    select * from Products  
   Log To Console    ${count}   
   ${num}    Convert To Integer    3    
   Should Be Equal    ${count}     ${num} 
   
TC7
  Execute Sql String    update Products set description='amazon'     
  Row Count Is Greater Than X    select * from Products where description='amazon'     1      

TC8
   ${output}    Query    select * from Products where product_id=1
   Log To Console    ${output}    
   Log To Console    ${output}[0]
   Log To Console    ${output}[0][1]
   

   ${rowCount}  Get Length    ${output}
   Log To Console    ${rowCount}    
   ${colCount}  Get Length    ${output}[0]  
    Log To Console    ${colCount}

TC9
   ${output}    Query    select description from Products where product_id=1
   Log To Console    ${output}  
      
