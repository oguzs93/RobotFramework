*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/common.robot
Resource   ../Resources/PO/login_page.robot
Resource    ../Resources/PO/register_page.robot
Suite Setup        Open the browser
Suite Teardown     Close the browser


*** Variables ***



*** Test Cases ***
Register with valid data
    register_page.Register to the demo Webshop