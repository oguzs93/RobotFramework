*** Settings ***
Library    SeleniumLibrary
Library    RPA.Desktop
Resource    ../Resources/Locators.robot
Resource    ../Resources/common.robot
Resource    ../Resources/PO/register_page.robot

*** Keywords ***    
Login to demo Webshop
    [Arguments]    ${username}    ${password}
     Wait Until Page Contains Element    ${Register Link}    timeout=10s
     Click Element    ${login button}


