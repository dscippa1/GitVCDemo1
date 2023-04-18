*** Settings ***
Library     SeleniumLibrary
Resource    ../Data/InputData.robot

*** Variables ***
${SIGNIN_PAGE_TXT_HEADER} =       //*[@id="header"]/nav/div/div[1]/div[3]/a/img
${ERROR_MSSG_LOCATOR} =     //div[@class="error"]
${EMAIL_ADDR_FIELD_LOCATOR} =       //input[@id="emailAddress"]
${EMAIL_PSSWRD_FIELD_LOCATOR} =       //input[@id="emailPassword"]
${SIGNIN_BUTTON_LOCATOR} =           //input[@id="emailSubmit"]

# &{UNREGISTERED_USER}    Email=test@twc.com      Password=testpassword       ExpectedErrorMessage=The info you entered doesn't match our records. Pleast try again.

*** Keywords ***
Launch TWC Sign In Page
    go to    ${URL.${SERVER}}
    wait until page contains element    ${SIGNIN_PAGE_TXT_HEADER}

Enter Credentials
    [Arguments]     ${Credentials}
    IF    '${Credentials.Email}' != '#BLANK'
        input text      ${EMAIL_ADDR_FIELD_LOCATOR}     ${Credentials.Email}
    END
    IF    '${Credentials.Password}' != '#BLANK'
        input text      ${EMAIL_PSSWRD_FIELD_LOCATOR}       ${Credentials.Password}
    END

Click "Sign In"
    click button        ${SIGNIN_BUTTON_LOCATOR}

Verify Error Message is Posted
    page should contain element      //div[@class="error"]


    #comments