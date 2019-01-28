*** Settings ***
Library           AppiumLibrary

*** Variables ***
${SEARCH_FIELD}         id.b2b.android.staging:id/search_src_text
${PRODUCT_LIST}         id.b2b.android.staging:id/tv_query
${BUTTON_BACK_SEARCH}   //android.widget.ImageButton[contains(@clickable,true)]

*** Keywords ***
Search Page Opened
    Wait Until Element Is Visible     ${SEARCH_FIELD}


Input Search Data
    [Arguments]         ${DATA_PRODUCT}
    Click Element       ${SEARCH_FIELD}
    Input Text          ${SEARCH_FIELD}       ${DATA_PRODUCT}




Click List Product Search
    Wait Until Element Is Visible     ${PRODUCT_LIST}
    Click Element                     ${PRODUCT_LIST}

Click Button Back From Search Page
    Wait Until Element Is Visible     ${BUTTON_BACK_SEARCH}
    Click Element                     ${BUTTON_BACK_SEARCH}

Search Page
    Input Search Data    3320457732
    Click List Product Search
