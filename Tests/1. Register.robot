*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RandomNameGenerator.robot
Resource   ../Resources/common.robot
Resource   ../Resources/PO/login_page.robot
Resource    ../Resources/PO/register_page.robot
Resource    ../Resources/PO/home_page.robot
Resource    ../Resources/PO/cart_page.robot
Resource    ../Resources/PO/checkout_page.robot
Suite Setup    Run Keywords      Open the browser    Generate Random Email



*** Variables ***



*** Test Cases ***
Register with empty password
    register_page.Register to the demo Webshop    ${EMPTY}    test123
    Element Text Should Be    ${Password_required_message}    Password is required.
    Element Text Should Be    ${confirmPassword_message}    The password and confirmation password do not match.


Register with empty Confirm Password
    common.Navigate to url
    register_page.Register to the demo Webshop    test123    ${EMPTY}
    Element Text Should Be    ${confirmPassword_message}    Password is required.

Register with different passwords
    common.Navigate to url
    register_page.Register to the demo Webshop    test123    test12345
    Element Text Should Be    ${confirmPassword_message}     The password and confirmation password do not match.


Register with valid data
    common.Navigate to url
    register_page.Register to the demo Webshop    test123    test123
    Element Text Should Be    ${register succesfull}    Your registration completed
    Click Button    ${continue button}
    Element Text Should Be    ${customer info}    ${email}    
    register_page.Logout







