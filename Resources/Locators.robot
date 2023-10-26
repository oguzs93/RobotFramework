*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#Top pane
${Register Link}               //a[normalize-space()='Register']
${Log in Input}              //a[normalize-space()='Log in']
${Log out button}            //a[normalize-space()='Log out']
${Shopping cart}           //span[normalize-space()='Shopping cart']
${Wishlist button}             //span[normalize-space()='Wishlist']
${Search field}                //input[@id='small-searchterms']
${Search button}                //input[@value='Search']

#Middle pane with products
${Books}                    /html/body/div[4]/div[1]/div[2]/ul[1]/li[1]/a
${Computers}                /html/body/div[4]/div[1]/div[2]/ul[1]/li[2]/a
${Electronics}              /html/body/div[4]/div[1]/div[2]/ul[1]/li[3]/a
${Apparel & Shoes}           /html/body/div[4]/div[1]/div[2]/ul[1]/li[4]/a
${Digital Downloads}        /html/body/div[4]/div[1]/div[2]/ul[1]/li[5]/a
${Jewelry}                   /html/body/div[4]/div[1]/div[2]/ul[1]/li[6]/a 
${Gift cards}                /html/body/div[4]/div[1]/div[2]/ul[1]/li[7]/a


#Left pane categories
${Books_cat}                /html/body/div[4]/div[1]/div[4]/div[1]/div[1]/div[2]/ul/li[1]/a
${Computers_cat}            /html/body/div[4]/div[1]/div[4]/div[1]/div[1]/div[2]/ul/li[2]/a
${Electronics_cat}          /html/body/div[4]/div[1]/div[4]/div[1]/div[1]/div[2]/ul/li[3]/a
${Apparel & Shoes_cat}      /html/body/div[4]/div[1]/div[4]/div[1]/div[1]/div[2]/ul/li[4]/a
${Digital Downloads_cat}    /html/body/div[4]/div[1]/div[4]/div[1]/div[1]/div[2]/ul/li[5]/a
${Jewelry_cat}              /html/body/div[4]/div[1]/div[4]/div[1]/div[1]/div[2]/ul/li[6]/a
${Gift cards_cat}           /html/body/div[4]/div[1]/div[4]/div[1]/div[1]/div[2]/ul/li[7]/a

#Computers page
${desktops_group}    //a[@title='Show products in category Desktops'][normalize-space()='Desktops']
${desktop_addToCart}    //div[@class='master-wrapper-content']//div[1]//div[1]//div[2]//div[3]//div[2]//input[1]
${desktopPC_addToCart}    //div[@class='product-grid']//div[3]//div[1]//div[2]//div[3]//div[2]//input[1]
${addToCart_button}        //*[@id="add-to-cart-button-72"]

#Cart page
${termsAndConditions}    //input[@id='termsofservice']
${checkout_button}    //button[@id='checkout']
${checkout_AsGuest_button}    //input[@value='Checkout as Guest']

#Checkout screen - Billing address
${firstname_checkout}    //input[@id='BillingNewAddress_FirstName']
${lastname_checkout}    //input[@id='BillingNewAddress_LastName']
${email_checkout}    //input[@id='BillingNewAddress_Email']
${company_checkout}    //input[@id='BillingNewAddress_Company']
${country_checkout}   //select[@id='BillingNewAddress_CountryId']
${province_checkout}    //select[@id='BillingNewAddress_StateProvinceId']
${city_checkout}    //input[@id='BillingNewAddress_City']
${address1_checkout}    //input[@id='BillingNewAddress_Address1']
${address2_checkout}    //input[@id='BillingNewAddress_Address2']
${zipcode_checkout}    //input[@id='BillingNewAddress_ZipPostalCode']
${phonenumber_checkout}    //input[@id='BillingNewAddress_PhoneNumber']
${faxnumber_checkout}    //input[@id='BillingNewAddress_FaxNumber']
${continue_checkout}

#Checkout screen - Shipping address
${continue_shippingAddress}    //input[@onclick='Shipping.save()']

#Checkout screen - Shipping method
${ground_SM}    //input[@id='shippingoption_0']
${nextDayAir_SM}    //input[@id='shippingoption_1']
${2ndDayAir_SM}    //input[@id='shippingoption_2']
${continue_shippingMethod}    //input[@class='button-1 shipping-method-next-step-button']

#Checkout screen - Payment method
${cash_on_delivery}    //input[@id='paymentmethod_0']
${cash_money_order}    //input[@id='paymentmethod_1']
${credit_card}        //input[@id='paymentmethod_2']
${purchase_order}    //input[@id='paymentmethod_3']
${continue_paymentMethod}    //input[@class='button-1 payment-method-next-step-button']

#Checkout screen - Payment Information
${paymentInformation_pane}    //tbody//tr//td
${continue_paymentInformation}  //input[@class='button-1 payment-info-next-step-button']

#Checkout screen - Confirm Order
${continue_confirmOrder}    

#Order Complete
${orderComplete_message}
${ordernumber}    //li[contains(text(), 'Order number')]

#Register page
${gender male}        //*[@id="gender-male"]
${gender female}      //*[@id="gender-female"]
${first name}         //*[@id="FirstName"]
${last name}          //*[@id="LastName"]
${email field}        //*[@id="Email"]

${Password}           //*[@id="Password"]
${Password_required_message}    //span[@for='Password']
${Confirm password}   //*[@id="ConfirmPassword"]
${confirmPassword_message}    //span[@for='ConfirmPassword']
${register button}    //*[@id="register-button"]

${register succesfull}    //div[@class='result']
${continue button}    //input[@value='Continue']    

#Customer info
${customer info}    //a[@href='/customer/info']


#Log in locators
${email_login}        //*[@id="Email"]
${password_login}     //*[@id="Password"] 
${Remember_me}        //*[@id="RememberMe"]
${Forgot password}    //a[normalize-space()='Forgot password?']
${login button}       //input[@value='Log in']
${login_Errormessage}    //span[contains(text(),'Login was unsuccessful. Please correct the errors ')]