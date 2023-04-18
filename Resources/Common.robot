*** Settings ***
Library     SeleniumLibrary
Resource    ./PageObjects/SignInPage.robot
Resource    ./Data/InputData.robot

*** Variables ***

*** Keywords ***
Begin Web Tests
    set selenium timeout   10s
    open browser    about:empty     ${BROWSER}
    maximize browser window
    SignInPage.Launch TWC Sign In Page

End Web Tests
    close all browsers
    # comments