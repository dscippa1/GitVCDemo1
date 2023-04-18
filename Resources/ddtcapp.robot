*** Settings ***
Library     SeleniumLibrary
Resource    ./PageObjects/SignInPage.robot

*** Variables ***

*** Keywords ***
Test Multiple Login Scenarios
    [Arguments]    ${Credentials}
    Attempt Login    ${Credentials}
    Verify Error Message Is Posted

Attempt Login
    [Arguments]     ${Credentials}
    SignInPage.Enter Credentials        ${Credentials}
    SignInPage.Click "Sign In"

Verify Error Message Is Posted
    SignInPage.Verify Error Message is Posted