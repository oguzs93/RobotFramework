*** Settings ***
Library    SeleniumLibrary
Library    RPA.Desktop
Resource    ../Locators.robot
Resource    ../common.robot
Resource    ../PO/register_page.robot
Resource    ../RandomNameGenerator.robot

*** Keywords ***    
Register to the demo Webshop
     Wait Until Page Contains Element    ${Register Link}    timeout=10s
     Click Link    ${Register Link}
     Sleep    1s
     Click Element    ${gender male}
     Sleep    1s
     ${firstname_random}    RandomNameGenerator.Generate Random First Name
     Input Text       ${first name}    ${firstname_random}
     ${lastname_random}    RandomNameGenerator.Generate Random Last Name
     Input Text    ${last name}    ${lastname_random}
     ${random_email}       RandomNameGenerator.Generate Random Email
     Sleep    1s
     Input Text    ${email field}    ${random_email}
     Sleep    1s
     Input Text    ${Password}    test123
     Sleep    1s
     Input Text    ${Confirm password}    test123
     Sleep    1s
     Click Button    ${register button}
     Sleep    2s
     Element Text Should Be    ${register succesfull}    Your registration completed
     Click Button    ${continue button}
     Element Text Should Be    ${customer info}    ${random_email}
     



