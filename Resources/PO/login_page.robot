*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators.robot
Resource    ../common.robot
Resource    ../PO/register_page.robot
Resource    ../RandomNameGenerator.robot
Variables    ../RandomNameGenerator.robot



*** Keywords ***    
Login to the demo Webshop
       [Arguments]    ${email_input}    ${password_input}
       Sleep    1s
       Click Link    ${Log in Input}
       Sleep    1s
       Input Text    ${email_login}   ${email_input}    
       Sleep    1s
       Input Text    ${password_login}    ${password_input}
       Sleep    1s
       Click Element   ${login button}
       Sleep    2s
     
