*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/login_page.robot
Variables  ../Data/user_details.yaml

*** Variables ***
${url}                  https://parabank.parasoft.com/parabank/index.htm
${user}                 standard_user1

*** Keywords ***
Open Web Page
    Open Browser    ${url}     Chrome
    Maximize Browser Window

Open Web Page And Login Account
    Open Browser                          ${url}                          Chrome
    Maximize Browser Window
    Send Text Functionality               ${userName_input}               ${${user}.user_name}
    Send Text Functionality               ${password_input}               ${${user}.password}
    Click Element Functionality           ${logIn_button}
    Verify Contains Text Functionality    ${valid_login_control_text}     Welcome ${${user}.first_name} ${${user}.last_name}

Send Text Functionality
    [Arguments]    ${element}   ${text}
    Wait Until Element Is Visible        ${element}
    Scroll Element Into View             ${element}
    Clear Element Text                   ${element}
    Input Text                           ${element}     ${text}
    
Click Element Functionality
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}
    Scroll Element Into View         ${element}
    Click Element                    ${element}

Verify Contains Text Functionality
    [Arguments]    ${element}   ${text}
    Wait Until Element Contains  ${element}     ${text}
    Element Text Should Be       ${element}     ${text}