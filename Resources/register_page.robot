*** Settings ***
Library    SeleniumLibrary
Resource   common.robot

*** Variables ***
${register_button}                          xpath=//a[text()='Register']
${register_firsName_input}                  css=[id='customer.firstName']
${register_lastName_input}                  css=[id='customer.lastName']
${register_address_input}                   css=[id='customer.address.street']
${register_city_input}                      css=[id='customer.address.city']
${register_state_input}                     css=[id='customer.address.state']
${register_zcode_input}                     css=[id='customer.address.zipCode']
${register_phoneNumber_input}               css=[id='customer.phoneNumber']
${register_ssn_input}                       css=[id='customer.ssn']
${register_userName_input}                  css=[id='customer.username']
${register_password}                        css=[id='customer.password']
${register_confirm_password}                css=[id='repeatedPassword']
${register_record_button}                   css=[value='Register']
${register_control_text}                    css=[id='rightPanel'] >p
${register_already_userName_control}        css=[id='customer.username.errors']

*** Keywords ***
Click On Register Page
    Click Element Functionality             ${register_button}

Enter The Required Details On The Register Page
    Send Text Functionality                 ${register_firsName_input}              ${${user}.first_name}
    Send Text Functionality                 ${register_lastName_input}              ${${user}.last_name}
    Send Text Functionality                 ${register_address_input}               ${${user}.address}
    Send Text Functionality                 ${register_city_input}                  ${${user}.city}
    Send Text Functionality                 ${register_state_input}                 ${${user}.state_1}
    Send Text Functionality                 ${register_zcode_input}                 ${${user}.z_code}
    Send Text Functionality                 ${register_phoneNumber_input}           ${${user}.phone_number}
    Send Text Functionality                 ${register_ssn_input}                   ${${user}.ssn}
    Send Text Functionality                 ${register_userName_input}              ${${user}.user_name}
    Send Text Functionality                 ${register_password}                    ${${user}.password}
    Send Text Functionality                 ${register_confirm_password}            ${${user}.password}

Click On Register Button
    Click Element Functionality             ${register_record_button}

User Should Register Successfully
    Verify Contains Text Functionality      ${register_control_text}                Your account was created successfully. You are now logged in.

User Shouldn't Registered Successfully
    Verify Contains Text Functionality      ${register_already_userName_control}    This username already exists.


