*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${BROWSER}=        chrome
${URL}=            https://demowebshop.tricentis.com/
*** Keywords ***
Open the browser
    Open Browser   ${URL}    ${BROWSER}

Close the browser
    Close Browser


Navigate to url
    Go To    ${URL}
    
    