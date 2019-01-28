*** Settings ***
Library           AppiumLibrary

*** Variables ***
${TEXT_NEWORDER}   id.b2b.android.staging:id/et_input
${BUTTON_BUAT}      id.b2b.android.staging:id/btn_yes

*** Keywords ***
Create New Order List
    [Arguments]         ${order_name}
    Wait Until Element Is Visible     ${TEXT_NEWORDER}
    Input Text    ${TEXT_NEWORDER}    ${order_name}
    Wait Until Element Is Visible     ${BUTTON_BUAT}
    Click Element                     ${BUTTON_BUAT}


Create New Order List Flow
    Wait Until Element Is Visible     ${TEXT_NEWORDER}
    Input Text    ${TEXT_NEWORDER}    Sudahlah
    Wait Until Element Is Visible     ${BUTTON_BUAT}
    Click Element                     ${BUTTON_BUAT}
