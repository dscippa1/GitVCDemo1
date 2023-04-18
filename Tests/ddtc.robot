*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/ddtcapp.robot

Test Setup        Begin Web Tests
Test Teardown       End Web Tests

# robot -d Results Tests/ddtc.robot

*** Variables ***

*** Test Cases ***
Invalid Login In Scenarios
    [Template]    Test Multiple Login Scenarios
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${BLANK_CREDENTIALS_USER}

*** Keywords ***

# comments
