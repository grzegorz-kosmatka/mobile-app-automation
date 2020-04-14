*** Settings ***
Documentation    Test suite
Resource    ../Resources/Helpers/Common.robot
Resource    ../Resources/Helpers/TheApp.robot

Test Setup    Common.Begin web test
Test Teardown    Common.End web test

*** Test Cases ***
User should be able to use Echo Box func
    [Documentation]    Test Case 1
    [Tags]    Smoke
    log    Executing test 1

    TheApp.Save text to local memory

User should be able to login
#    TheApp.Login with invalid credentials
     TheApp.Login with valid credentials

User should be able to modify clipboard
    TheApp.modify clipboard

User should be able to visit web pages via web view
#    TheApp.Visit allowed site
    TheApp.Visit unallowed site using webView context

User should be able to swipe through out list page
    TheApp.Swipe elements