*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/Common.robot
Resource    ../PageObjects/Contacts.robot 


*** Test Cases ***
Create Contact
      Go To Contacts Page
      Create a contact    
      Close Browser  
      
Update Contact
      Go To Contacts Page
      Update a contact
      Close Browser   
      
Delete Contact
      Go To Contacts Page
      Delete a contact
      Close Browser            