*** Settings ***
Library           AppiumLibrary

*** Variables ***
${INPUT_EMAIL}            id.b2b.android.staging:id/tie_email
${INPUT_PASSWORD}         id.b2b.android.staging:id/tie_password
${BUTTON_LOGIN}           id.b2b.android.staging:id/btn_login



*** Keywords ***
Open To Login Page
    Wait Until Element Is Visible     ${INPUT_EMAIL}
    Wait Until Element Is Visible     ${INPUT_PASSWORD}
    Wait Until Element Is Visible     ${BUTTON_LOGIN}

Input Email
    [Arguments]         ${user}
    Input Text          ${INPUT_EMAIL}        ${user}

Input Pass
    [Arguments]         ${pass}
    Click Element       ${INPUT_PASSWORD}
    Input Text          ${INPUT_PASSWORD}    ${pass}
    Hide Keyboard

Click Button Login
    Click Element       ${BUTTON_LOGIN}


Login Success
    Open To Login Page
    Input Email           cucy@getnada.com
    Input Pass            salim12345
    Click Button Login
