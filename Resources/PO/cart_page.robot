*** Settings ***
Library    SeleniumLibrary
Resource   ../Locators.robot

*** Variables ***


*** Keywords ***    
Navigating through the cart
    Click Element    ${termsAndConditions}
    Sleep    1s
    Click Button    ${checkout_button}

