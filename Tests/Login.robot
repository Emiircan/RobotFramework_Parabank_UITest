*** Settings ***
Resource    ../Resources/login_page.robot

Test Setup       Open Web Page
Test Teardown    Close Browser

*** Test Cases ***
Login With Valid Username And Password
    [Tags]    login
    Enter The Required Details For Successfully Login
    Click On Login Button
    User Should Login Successfully
  
Login With Invalid Username
    [Tags]    login
    Login With Invalid Username
    Click On Login Button
    User Shouldn't Login Successfully

Login With Invalid Password
    [Tags]    login
    Login With Invalid Password
    Click On Login Button
    User Shouldn't Login Successfully
