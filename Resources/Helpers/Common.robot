*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/Scope.robot
Resource    ../PageObjects/LandingPage.robot

*** Keywords ***
Begin web test
    open application    ${REMOTE_URL}  platformName=${PLATFORM_NAME}   platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}  app=${APP}  automationName=${AUTOMATION_NAME}
    LandingPage.App has been loaded

End web test
    close all applications