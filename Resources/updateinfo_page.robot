*** Settings ***
Library    SeleniumLibrary
Resource   common.robot

*** Variables ***
${update_info_page}                           xpath=//a[text()='Update Contact Info']
${registered_firsName_input}                  css=[id='customer.firstName']
${registered_lastName_input}                  css=[id='customer.lastName']
${registered_address_input}                   css=[id='customer.address.street']
${registered_city_input}                      css=[id='customer.address.city']
${registered_state_input}                     css=[id='customer.address.state']
${registered_zcode_input}                     css=[id='customer.address.zipCode']
${registered_phoneNumber_input}               css=[id='customer.phoneNumber']
${updateProfile_button}                       css=[value='Update Profile']
${updateProfile_cont_text}                    css=[ng-if='showResult'] >h1

*** Keywords ***
Click On Update Content Information Page
     Click Element Functionality           ${update_info_page}

Enter The Required Details On The Update Page
     Send Text Functionality               ${registered_firsName_input}      ${${user}.first_name}
     Send Text Functionality               ${registered_lastName_input}      ${${user}.last_name}
     Send Text Functionality               ${registered_address_input}       ${${user}.address}
     Send Text Functionality               ${registered_city_input}          ${${user}.city}
     Send Text Functionality               ${registered_state_input}         ${${user}.state_2}
     Send Text Functionality               ${registered_zcode_input}         ${${user}.z_code}
     Send Text Functionality               ${registered_phoneNumber_input}   ${${user}.phone_number}

Click On Updata Profil Button
     Click Element Functionality           ${updateProfile_button}

Profile Update Has Occurred
     Verify Contains Text Functionality    ${updateProfile_cont_text}         Profile Updated
