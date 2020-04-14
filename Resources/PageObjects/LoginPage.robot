*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/Locators.robot

*** Keywords ***
LoginPage should be ready for usage
    wait until page contains element    ${LOGINPAGE_USERNAME_ELEMENT}
    clear text    ${LOGINPAGE_USERNAME_ELEMENT}
    clear text    ${LOGINPAGE_PASSWORD_ELEMENT}

Provide invalid credentials
    LoginPage should be ready for usage
    input text    ${LOGINPAGE_USERNAME_ELEMENT}    ${LOGINPAGE_USERNAME_TYPE_TEXT1}
    input password    ${LOGINPAGE_PASSWORD_ELEMENT}    ${LOGINPAGE_PASSWORD_TYPE_TEXT1}

Click login button
    tap    ${LOGINPAGE_LOGIN_BUTTON}

Verify credentials if incorrect
    get text    ${LOGINPAGE_VERIFY_CREDENTIALS_INVALID_MESSAGE}
    log    ${LOGINPAGE_LOG}

Provide valid credentials
    LoginPage should be ready for usage
    input text    ${LOGINPAGE_USERNAME_ELEMENT}    ${LOGINPAGE_USERNAME_TYPE_TEXT2}
    input password    ${LOGINPAGE_PASSWORD_ELEMENT}    ${LOGINPAGE_PASSWORD_TYPE_TEXT2}

Verify credentials if correct
    wait until element is visible    ${LOGINPAGE_VERIFY_CREDENTIALS_VALID_TEXTBOX}
    get text    ${LOGINPAGE_VERIFY_CREDENTIALS_VALID}
    log    ${LOGINPAGE_LOG_VALID_USER}
