*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RandomNameGenerator.robot
Resource   ../Resources/common.robot
Resource   ../Resources/PO/login_page.robot
Resource    ../Resources/PO/register_page.robot
Resource    ../Resources/PO/home_page.robot
Resource    ../Resources/PO/cart_page.robot
Resource    ../Resources/PO/checkout_page.robot
#Suite Setup    Run Keywords        Open the browser
   




*** Variables ***



*** Test Cases ***

Login with valid data
    common.Navigate to url
    login_page.Login to the demo Webshop    ${email}    test123
    Sleep    1s
    Element Text Should Be    ${customer info}    ${email}    
    Sleep    1s
    register_page.Logout

Login with wrong password
    common.Navigate to url
    login_page.Login to the demo Webshop    ${email}    test12345
    Element Text Should Be    ${login_Errormessage}    Login was unsuccessful. Please correct the errors and try again.
    Sleep    1s


Login with empty password
    common.Navigate to url
    login_page.Login to the demo Webshop    ${email}    ${EMPTY}
    Element Text Should Be    ${login_Errormessage}    Login was unsuccessful. Please correct the errors and try again.
