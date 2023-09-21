*** Settings ***
Library    SeleniumLibrary
Resource       ../Resources/common.robot
Resource       ../Resources/PO/login_page.robot
Resource        ../Resources/PO/home_page.robot
Resource        ../Resources/PO/register_page.robot
Suite Setup        Open the browser
Suite Teardown     Close the browser


*** Keywords ***

*** Test Cases ***

    
