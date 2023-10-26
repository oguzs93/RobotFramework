*** Settings ***
Library    SeleniumLibrary
Resource   ../Locators.robot
Resource   ../RandomNameGenerator.robot


*** Variables ***


*** Keywords ***    
Checkout as Guest
    Click Button    ${checkout_AsGuest_button}
    
Navigate through Checkout - Billing Address    
    Sleep    1s
    Input Text    ${firstname_checkout}    ${random_first_name}
    Sleep    1s
    Input Text    ${lastname_checkout}    ${random_last_name}
    Sleep    1s
    Input Text    ${email_checkout}    ${email}
    Select From List By Value    ${country_checkout}    "56"
    ${city_random}    RandomNameGenerator.Generate Random city    
    Input Text    ${city_checkout}    ${city_random}
    Input Text    ${address1_checkout}    teststraat
    Input Text    ${zipcode_checkout}    1234AB
    Input Text    ${phonenumber_checkout}    0612345678

Navigate through Checkout - Shipping address
    Click Button    ${continue_shippingAddress}



#Shipping methods

Select Shipping Method
    [Arguments]    ${method_locator}
    Click Element    ${method_locator}
    Click Button    ${continue_paymentMethod}
Navigate through checkout - Shipping Method by Ground
    Click Element   ${ground_SM}
    Click Button    ${continue_shippingMethod}

Navigate through checkout - Shipping Method by Next Day Air
    Click Element    ${nextDayAir_SM}
    Click Button    ${continue_shippingMethod}

Navigate through checkout - Shipping Method by 2nd Day Air
    Click Element    ${2ndDayAir_SM}
    Click Button    ${continue_shippingAddress}


#Payment methods
Select Payment Method
    [Arguments]    ${method_locator}
    Click Element  ${method_locator}
    Click Button    ${continue_paymentMethod}
Navigate through checkout - Paying with Cash On Delivery
    Click Element    ${cash_on_delivery}
    Click Button    ${continue_paymentMethod}

Navigate through checkout - Paying with Check/Money order
    Click Element    ${cash_money_order}
    Click Button    ${continue_paymentMethod}

Navigate through checkout - Paying with Creditcard
    Click Element    ${credit_card}
    Click Button    ${continue_paymentMethod}

Navigate through checkout - Paying with Purchase order
    Click Element    ${purchase_order}
    Click Button    ${continue_paymentMethod}

Verify Payment Method Text
    [Arguments]    ${expected_text}
    ${actual_text_paymentMethod}    Get Text    ${paymentInformation_pane}
    Should Be Equal As Strings    ${expected_text}    ${actual_text_paymentMethod}

Get Order Number
    ${order_element_text}    Get Text    ${ordernumber}
    ${order_number}    Get Regexp Matches    ${order_element_text}    Order number: (\d+)
    [Return]    ${order_number}[0]
    

Navigate through checkout - Confirm Order
    Click Button    ${continue_confirmOrder}




Checkout as an user


