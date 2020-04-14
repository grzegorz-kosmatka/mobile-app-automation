*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/Locators.robot

*** Keywords ***
Echobox page has been loaded
    wait until page contains    ${ECHOBOXPAGE_VERIFY_TEXT}

Send text
    Echobox page has been loaded
    clear text    ${ECHOBOXPAGE_TEXTBOX}
    input text    ${ECHOBOXPAGE_TEXTBOX}    ${ECHOBOXPAGE_TEXTBOX_INPUT}

Verify if text was added
    click element    ${ECHOBOXPAGE_BUTTON_CLICK}
    wait until page contains element    ${ECHOBOXPAGE_VERIFY_TEXT_ADDED}
    log    ${ECHOBOXPAGE_LOG}