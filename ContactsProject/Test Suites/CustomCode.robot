*** Settings ***
Library    SeleniumLibrary 
Library    ../Resources/customlibrary.py 
         

*** Test Cases ***
Custom Code Test-Create
    [Documentation]    This test case is to test custom coding in Python
    [Tags]    custom
    Open Browser    http://screenplay-contacts.herokuapp.com/    chrome
    Maximize Browser Window
    Create A Contact
    
Custom Code Test-Delete
    [Documentation]    This test case is to test custom coding in Python
    [Tags]    custom
    Open Browser    http://screenplay-contacts.herokuapp.com/    chrome
    Maximize Browser Window
    Delete A Contact