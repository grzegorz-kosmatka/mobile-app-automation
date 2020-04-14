*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/Locators.robot

*** Keywords ***
ClipboardPage should be ready for usage
    element should be visible    ${CLIPBOARD_TEXTBOX}
    clear text    ${CLIPBOARD_TEXTBOX}

Set clipboard
    ClipboardPage should be ready for usage
    input text    ${CLIPBOARD_TEXTBOX}    ${CLIPBOARD_TEXTBOX_INPUTMESSAGE}
    tap    ${CLIPBOARD_BUTTON_SETCLIPBOARD}

Verify clipboard
    tap    ${CLIPBOARD_BUTTON_REFRESHCLIPBOARD}
    element text should be    ${CLIPBOARD_TEXTBOX_VERIFY_ELEMENT}    ${CLIPBOARD_TEXTBOX_INPUTMESSAGE}
    log    ${CLIPBOARD_LOG}