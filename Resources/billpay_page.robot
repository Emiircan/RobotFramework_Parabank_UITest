*** Settings ***
Library    SeleniumLibrary
Resource   common.robot

*** Variables ***
${billpay_page}                xpath=//a[text()='Bill Pay']
${payeeName_input}             css=[name='payee.name']
${payeeAddress_input}          css=[name='payee.address.street']
${payeeCity_input}             css=[name='payee.address.city']
${payeeState_input}            css=[name='payee.address.state']
${payeeZCode_input}            css=[name='payee.address.zipCode']
${payeeNumber_input}           css=[name='payee.phoneNumber']
${payeeAccount_input}          css=[name='payee.accountNumber']
${payeeVerifyAccount_input}    css=[name='verifyAccount']
${payeeAmount_input}           css=[name='amount']
${sendPayment_button}          css=[value='Send Payment']
${billPay_control_text}        css=[ng-show='showResult'] >h1

*** Keywords ***
Click On Bill Pay Page
    Click Element Functionality            ${billpay_page}

Enter The Required Details On The Bill Pay Page
    Send Text Functionality                ${payeeName_input}             ${${user}.bill_type}
    Send Text Functionality                ${payeeAddress_input}          ${${user}.address}
    Send Text Functionality                ${payeeCity_input}             ${${user}.city}
    Send Text Functionality                ${payeeState_input}            ${${user}.state_2}
    Send Text Functionality                ${payeeZCode_input}            ${${user}.z_code}
    Send Text Functionality                ${payeeNumber_input}           ${${user}.phone_number}
    Send Text Functionality                ${payeeAccount_input}          ${${user}.account}
    Send Text Functionality                ${payeeVerifyAccount_input}    ${${user}.account}
    Send Text Functionality                ${payeeAmount_input}           ${${user}.amount}

Click On Send Payment Button
    Click Element Functionality            ${sendPayment_button}

İnvoice Payment Has Been Made Successfully
    Verify Contains Text Functionality     ${billPay_control_text}        Bill Payment Complete

