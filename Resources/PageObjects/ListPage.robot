*** Settings ***
Library    AppiumLibrary
Resource    ../Variables/Locators.robot

*** Variables ***
${coordinates_start_x} =    520
${coordinates_start_y} =    1530
${coordinates_offset_x} =    520
${coordinates_offset_y} =    490

*** Keywords ***
ListPage should be ready for usage
    wait until page contains element    ${LISTPAGE_LIST_ELEMENT_STARTING}

Swipe through out the page
    ListPage should be ready for usage
    swipe    ${coordinates_start_x}    ${coordinates_start_y}   ${coordinates_offset_x}    ${coordinates_offset_y}
    wait until element is visible    ${LISTPAGE_LIST_ELEMENT_ENDING}
    log    ${LISTPAGE_LOG}

Verify alert box for swiped element
    tap    ${LISTPAGE_LIST_ELEMENT_ENDING}
    wait until element is visible    ${LISTPAGE_VERIFY_ELEMENT_LOADED}
    get text    ${LISTPAGE_VERIFY_ELEMENT_MESSAGE}
    log    ${LISTPAGE_ALERTBOX_LOG}