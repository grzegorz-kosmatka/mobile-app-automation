*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/Locators.robot

*** Keywords ***
WebViewPage should be ready for usage
    element should be visible    ${WEBVIEWPAGE_TEXTBOX}
    clear text    ${WEBVIEWPAGE_TEXTBOX}

WebViewPage should allow to change context
    @{all_contexts} =    get contexts
    log to console      @{all_contexts}[0]
    log to console      @{all_contexts}[1]
    switch to context   @{all_contexts}[1]

Load allowed page
    WebViewPage should be ready for usage
    input text    ${WEBVIEWPAGE_TEXTBOX}    ${WEBVIEWPAGE_TEXTBOX_INPUT}
    tap    ${WEBVIEWPAGE_BUTTON_NAVIGATE}

Verify if page loaded
    wait until page contains element    ${WEBVIEWPAGE_VERIFY_PAGE_LOADED}
    log    ${WEBVIEWPAGE_LOG}

Load unallowed page using webView context
    WebViewPage should be ready for usage
    WebViewPage should allow to change context
    go to url    ${WEBVIEWPAGE_WEBCONTEXT_URL}
    wait until page contains element    ${WEBVIEWPAGE_WEBCONTEXT_ELEMENT}
    log    ${WEBVIEWPAGE_WEBCONTEXT_LOG}
