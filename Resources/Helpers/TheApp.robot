*** Settings ***
Library    AppiumLibrary
Resource    ../PageObjects/LandingPage.robot
Resource    ../PageObjects/EchoboxPage.robot
Resource    ../PageObjects/LoginPage.robot
Resource    ../PageObjects/ClipboardPage.robot
Resource    ../PageObjects/ListPage.robot
Resource    ../PageObjects/WebviewPage.robot

*** Keywords ***
Save text to local memory
    LandingPage.Load echobox page
    EchoboxPage.Send text
    EchoboxPage.Verify if text was added

Login with invalid credentials
    LandingPage.Load login page
    LoginPage.Provide invalid credentials
    LoginPage.Click login button
    LoginPage.Verify credentials if incorrect

Login with valid credentials
    LandingPage.Load login page
    LoginPage.Provide valid credentials
    LoginPage.Click login button
    LoginPage.Verify credentials if correct

Modify clipboard
    LandingPage.Load clipboard page
    ClipboardPage.Set clipboard
    ClipboardPage.Verify clipboard

Visit allowed site
    LandingPage.Load webview page
    WebviewPage.Load allowed page
    WebviewPage.Verify if page loaded

Visit unallowed site using webView context
    LandingPage.Load webview page
    WebviewPage.Load unallowed page using webView context

Swipe elements
    LandingPage.Load list page
    ListPage.Swipe through out the page
    ListPage.Verify alert box for swiped element

