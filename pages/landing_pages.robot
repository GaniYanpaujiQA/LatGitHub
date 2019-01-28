*** Settings ***
Library           AppiumLibrary

*** Variables ***
${BUTTON_LANJUT}          id.b2b.android.staging:id/btn_lanjut

*** Keywords ***
Landing Page Opened
    Sleep         5s
    Wait Until Element Is Visible   ${BUTTON_LANJUT}

Click Button Lanjut
    Click Element                   ${BUTTON_LANJUT}

Landing Pages
  Landing Page Opened
  Click Button Lanjut
