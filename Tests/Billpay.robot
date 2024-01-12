*** Settings ***
Resource   ../Resources/billpay_page.robot

Test Setup       Open Web Page And Login Account
Test Teardown    Close Browser

*** Test Cases ***
Invoice Value Payment
    [Tags]    billpay
    Click On Bill Pay Page
    Enter The Required Details On The Bill Pay Page
    Click On Send Payment Button
    İnvoice Payment Has Been Made Successfully
