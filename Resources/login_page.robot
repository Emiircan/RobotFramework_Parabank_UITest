*** Settings ***
Library    SeleniumLibrary
Resource   common.robot

*** Variables ***
${userName_input}                   css=[name='username']
${password_input}                   css=[name='password']
${logIn_button}                     xpath=//*[@value='Log In']
${valid_login_control_text}         css=[class='smallText']
${invalid_login_control_text}       css=[id='rightPanel'] >p

*** Keywords ***
Enter The Required Details For Successfully Login
    Send Text Functionality               ${userName_input}               ${${user}.user_name}
    Send Text Functionality               ${password_input}               ${${user}.password}

Click On Login Button
    Click Element Functionality           ${logIn_button}

User Should Login Successfully
    Verify Contains Text Functionality    ${valid_login_control_text}     Welcome ${${user}.first_name} ${${user}.last_name}

User Shouldn't Login Successfully
    Verify Contains Text Functionality    ${invalid_login_control_text}   The username and password could not be verified.

Login With Invalid Username
    Send Text Functionality               ${userName_input}               ${${user}.invalid_user_name}
    Send Text Functionality               ${password_input}               ${${user}.password}

Login With Invalid Password
    Send Text Functionality               ${userName_input}               ${${user}.user_name}
    Send Text Functionality               ${password_input}               ${${user}.invalid_password}