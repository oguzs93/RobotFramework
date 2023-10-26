*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators.robot

*** Variables ***

*** Keywords ***
Navigating to the computer page
    Click Element    ${Computers}
    Sleep    1s
    Click Element    ${desktops_group}
    Sleep    1s
    Click Element    ${desktop_addToCart}
    Sleep    1s
    Click Element    ${addToCart_button}

