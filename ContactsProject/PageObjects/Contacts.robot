*** Settings ***
Library     SeleniumLibrary   
Library    ../WebElements/Locator.py     
Variables    ../WebElements/Contacts.py
Variables    ../TestData/Data.py
Resource    ../Keywords/Common.robot

*** Keywords ***

Create a contact
      Click Button    ${newButton}   
      Fill up data    @{CreateContact}
      Click Button    ${createButton}    
      Operation is successful    @{CreateContact}[0]

Update a contact
      Select User to be operated    @{CreateContact}[0]
      Clear data    
      Fill up data    @{UpdateContact}
      Click Button    ${updateButton}
      Operation is successful    @{UpdateContact}[0]
      
Delete a contact
      Select User to be operated    @{CreateContact}[0]
      Click Button    ${deleteButton}    
      Delete Operation is successful    @{CreateContact}[0]
    