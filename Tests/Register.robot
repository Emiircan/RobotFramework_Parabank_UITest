*** Settings ***
Resource    ../Resources/register_page.robot

Test Setup       Open Web Page
Test Teardown    Close Browser

*** Test Cases ***
New Member Registration
    [Tags]    register
    Click On Register Page
    Enter The Required Details On The Register Page
    Click On Register Button
    User Should Register Successfully

New Member Registration with Existing Username
    [Tags]    register
    Click On Register Page
    Enter The Required Details On The Register Page
    Click On Register Button
    User Shouldn't Registered Successfully
    
