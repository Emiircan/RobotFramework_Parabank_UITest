*** Settings ***
Resource    ../Resources/updateinfo_page.robot

Test Setup       Open Web Page And Login Account
Test Teardown    Close Browser

*** Test Cases ***
 Update contact information
     [Tags]    update
     Click On Update Content Information Page
     Enter The Required Details On The Update Page
     Click On Updata Profil Button
     Profile Update Has Occurred

    