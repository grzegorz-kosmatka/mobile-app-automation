*** Variables ***
${CLIPBOARD_BUTTON_REFRESHCLIPBOARD} =    accessibility_id=refreshClipboardText
${CLIPBOARD_BUTTON_SETCLIPBOARD} =    accessibility_id=setClipboardText
${CLIPBOARD_TEXTBOX} =    accessibility_id=messageInput
${CLIPBOARD_TEXTBOX_INPUTMESSAGE} =    testing clipboard
${CLIPBOARD_TEXTBOX_VERIFY_ELEMENT} =    accessibility_id=testing clipboard
${CLIPBOARD_LOG} =    Assertion passed. New text has been stored into clipboard.

${ECHOBOXPAGE_BUTTON_CLICK} =    accessibility_id=messageSaveBtn
${ECHOBOXPAGE_LOG} =    Assertion passed. Text has been added and saved successfully.
${ECHOBOXPAGE_TEXTBOX} =    accessibility_id=messageInput
${ECHOBOXPAGE_TEXTBOX_INPUT} =    test text to be said
${ECHOBOXPAGE_VERIFY_TEXT} =    Say something
${ECHOBOXPAGE_VERIFY_TEXT_ADDED} =    accessibility_id=test text to be said

${LANDINGPAGE_TAP_CLIPBOARD} =    accessibility_id=Clipboard Demo
${LANDINGPAGE_TAP_ECHOBOX} =    accessibility_id=Echo Box
${LANDINGPAGE_TAP_LIST} =    accessibility_id=List Demo
${LANDINGPAGE_TAP_LOGIN} =    accessibility_id=Login Screen
${LANDINGPAGE_TAP_WEBVIEW} =    accessibility_id=Webview Demo
${LANDINGPAGE_VERIFY_TEXT_CONTENT} =    id=android:id/content
${LANDINGPAGE_VERIFY_TEXT_CLIPBOARD} =    Clipboard Demo
${LANDINGPAGE_VERIFY_TEXT_ECHOBOX} =    Echo Box
${LANDINGPAGE_VERIFY_TEXT_LIST} =    List Demo
${LANDINGPAGE_VERIFY_TEXT_LOGIN} =    Login Screen
${LANDINGPAGE_VERIFY_TEXT_WEBVIEW} =    Webview Demo

${LISTPAGE_ALERTBOX_LOG} =    Assertion passed. Alert box did pop-up.
${LISTPAGE_LIST_ELEMENT_STARTING} =    accessibility_id=Altostratus
${LISTPAGE_LIST_ELEMENT_ENDING} =    accessibility_id=Stratus
${LISTPAGE_LOG} =    List page has been successfully swiped.
${LISTPAGE_VERIFY_ELEMENT_LOADED} =    xpath=//android.widget.TextView
${LISTPAGE_VERIFY_ELEMENT_MESSAGE} =    xpath=//android.widget.TextView[contains(@text, 'Stratus cloud')]

${LOGINPAGE_LOGIN_BUTTON} =    accessibility_id=loginBtn
${LOGINPAGE_LOG} =    Assertion passed. User did not log-in.
${LOGINPAGE_LOG_VALID_USER} =    Assertion passed. User has been logged-in.
${LOGINPAGE_USERNAME_ELEMENT} =    accessibility_id=username
${LOGINPAGE_USERNAME_TYPE_TEXT1} =    username
${LOGINPAGE_USERNAME_TYPE_TEXT2} =    alice
${LOGINPAGE_PASSWORD_ELEMENT} =    accessibility_id=password
${LOGINPAGE_PASSWORD_TYPE_TEXT1} =    password
${LOGINPAGE_PASSWORD_TYPE_TEXT2} =    mypassword
${LOGINPAGE_VERIFY_CREDENTIALS_INVALID_MESSAGE} =    xpath=//android.widget.TextView[contains(@text,'Invalid login credentials, please try again')]
${LOGINPAGE_VERIFY_CREDENTIALS_VALID_TEXTBOX} =    xpath=//android.widget.TextView[2]
#${LOGINPAGE_VERIFY_CREDENTIALS_VALID_MESSAGE} =    You are logged in as alice
${LOGINPAGE_VERIFY_CREDENTIALS_VALID} =    xpath=//android.widget.TextView[2][contains(@text, 'alice')]

${WEBVIEWPAGE_BUTTON_NAVIGATE} =    accessibility_id=navigateBtn
${WEBVIEWPAGE_LOG} =    Assertion passed. AppiumPro site has been loaded successfully using native context.
${WEBVIEWPAGE_TEXTBOX} =    accessibility_id=urlInput
${WEBVIEWPAGE_TEXTBOX_INPUT} =    https://appiumpro.com
${WEBVIEWPAGE_VERIFY_PAGE_LOADED} =    xpath=//android.view.View[2]/android.widget.Image[1]
${WEBVIEWPAGE_WEBCONTEXT_URL} =    https://cloudgrey.io
${WEBVIEWPAGE_WEBCONTEXT_ELEMENT} =    css=head > meta:nth-child(3)
${WEBVIEWPAGE_WEBCONTEXT_LOG} =    Assertion passed. AppiumPro site has been loaded successfully using webview context.




