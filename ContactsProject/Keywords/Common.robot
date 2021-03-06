*** Settings ***
Library     SeleniumLibrary
Library    ../WebElements/Locator.py     
Variables    ../TestData/Data.py
Variables    ../WebElements/Contacts.py
      
*** Keywords ***

Go To Contacts Page
      Open Browser   ${URL}    chrome 
      Maximize Browser Window

Operation is successful
    [Arguments]    ${EMPTY}
      ${element} =    Contact To Be Operated On    ${EMPTY}
      Wait Until Page Contains Element    ${element}    
      Page Should Contain Element    ${element}
      
Delete Operation is successful
    [Arguments]    ${EMPTY}
      ${element} =    Contact To Be Operated On    ${EMPTY}
      Wait Until Page Does Not Contain Element    ${element}    
      Page Should Not Contain Element    ${element}
      
Fill up data
    [Arguments]    @{EMPTY}
      Input Text    &{Contacts}[name]      @{EMPTY}[0]          
      Input Text    &{Contacts}[email]      @{EMPTY}[1]
      Input Text    &{Contacts}[mobile]      @{EMPTY}[2]         
      Input Text    &{Contacts}[workphone]      @{EMPTY}[3] 
      
Clear data
      Clear Element Text    &{Contacts}[name] 
      Clear Element Text    &{Contacts}[email]
      Clear Element Text    &{Contacts}[mobile] 
      Clear Element Text    &{Contacts}[workphone]
      
Select User to be operated
    [Arguments]    ${EMPTY} 
      ${element} =    Contact To Be Operated On    ${EMPTY}     
      Wait Until Element Is Visible    ${element}    
      Click Element    ${element} 
      
