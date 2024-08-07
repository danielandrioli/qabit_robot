*** Settings ***
Documentation        Actions and selector for Accounts Page - SAC
Library        Browser

*** Keywords ***
Verify Accounts URL
    Wait For Condition    Url    
    ...    should end with    
    ...    accounts    timeout=7