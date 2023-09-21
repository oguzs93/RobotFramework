*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#Top pane
${Register Link}               //a[normalize-space()='Register']
${Log in Input}              //a[normalize-space()='Log in']
${Shopping cart}           //span[normalize-space()='Shopping cart']
${Wishlist button}             //span[normalize-space()='Wishlist']
${Search field}                //input[@id='small-searchterms']
${Search button}                //input[@value='Search']

#Middle pane with products
${Books}                    /html/body/div[4]/div[1]/div[2]/ul[1]/li[1]/a
${Computers}                /html/body/div[4]/div[1]/div[2]/ul[1]/li[2]/a
${Electronics}              /html/body/div[4]/div[1]/div[2]/ul[1]/li[3]/a
${Apparel & Shoes}            /html/body/div[4]/div[1]/div[2]/ul[1]/li[4]/a
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


#Register page
${gender male}        //*[@id="gender-male"]
${gender female}      //*[@id="gender-female"]
${first name}         //*[@id="FirstName"]
${last name}          //*[@id="LastName"]
${email field}        //*[@id="Email"]

${Password}           //*[@id="Password"]
${Confirm password}   //*[@id="ConfirmPassword"]
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
${login button}       //a[@href='/login']