*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators.robot
Resource    ../common.robot
Resource    ../PO/register_page.robot
Resource    ../RandomNameGenerator.robot

 

*** Variables ***
${firstname_random}
${lastname_random}
${random_email}

*** Keywords ***    
Register to the demo Webshop
     [Arguments]       ${Password_input}    ${Confirm password_input} 
     Wait Until Page Contains Element    ${Register Link}    timeout=10s
     Click Link    ${Register Link}
     Sleep    1s
     Click Element    ${gender male}
     Sleep    1s
     ${firstname_random}    RandomNameGenerator.Generate Random First Name
     Input Text       ${first name}    ${firstname_random}
     ${lastname_random}    RandomNameGenerator.Generate Random Last Name
     Input Text    ${last name}    ${lastname_random}
     #${random_email}       RandomNameGenerator.Generate Random Email
     Sleep    1s
     Input Text    ${email field}    ${email}
     Sleep    1s
     Input Text    ${Password}    ${Password_input}
     Sleep    1s
     Input Text    ${Confirm password}    ${Confirm password_input}
     Sleep    1s
     Click Button    ${register button}
     Sleep    2s




     
Logout
    Click Link    ${Log out button}



