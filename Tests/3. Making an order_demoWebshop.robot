*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/common.robot
Resource   ../Resources/PO/login_page.robot
Resource    ../Resources/PO/register_page.robot
Resource    ../Resources/PO/home_page.robot
Resource    ../Resources/PO/cart_page.robot
Resource    ../Resources/PO/checkout_page.robot
Resource    ../Resources/PO/product_page.robot
Suite Teardown     Close the browser


*** Keywords ***

*** Test Cases ***
Ordering an desktop
    common.Navigate to url
    product_page.Navigating to the computer page
    cart_page.Navigating through the cart
    checkout_page.Checkout as Guest
    checkout_page.Navigate through Checkout - Billing Address
    checkout_page.Navigate through Checkout - Shipping address
    checkout_page.Select Shipping Method    ${ground_SM}
    checkout_page.Select Payment Method    ${cash_on_delivery}
    checkout_page.Verify Payment Method Text    You will pay by COD
    checkout_page.Navigate through checkout - Confirm Order
    checkout_page.Get Order Number



