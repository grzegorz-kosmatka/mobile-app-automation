*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/Locators.robot

*** Keywords ***
App has been loaded
    wait until page contains element    ${LANDINGPAGE_VERIFY_TEXT_CONTENT}

Load echobox page
    wait until page contains    ${LANDINGPAGE_VERIFY_TEXT_ECHOBOX}
    tap    ${LANDINGPAGE_TAP_ECHOBOX}

Load login page
    wait until page contains    ${LANDINGPAGE_VERIFY_TEXT_LOGIN}
    tap    ${LANDINGPAGE_TAP_LOGIN}

Load clipboard page
    wait until page contains    ${LANDINGPAGE_VERIFY_TEXT_CLIPBOARD}
    tap    ${LANDINGPAGE_TAP_CLIPBOARD}

Load webview page
    wait until page contains    ${LANDINGPAGE_VERIFY_TEXT_WEBVIEW}
    tap    ${LANDINGPAGE_TAP_WEBVIEW}

Load list page
    wait until page contains    ${LANDINGPAGE_VERIFY_TEXT_LIST}
    tap    ${LANDINGPAGE_TAP_LIST}