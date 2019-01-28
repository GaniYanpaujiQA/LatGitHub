*** Settings ***
Library           AppiumLibrary

*** Variables ***
${ICON_NEWORDER}           id.b2b.android.staging:id/menu_new_opty
${CLICK_BY_ORDERID}        id.b2b.android.staging:id/tv_opty_header

*** Keywords ***
List New Order Opened
        Wait Until Element Is Visible     ${ICON_NEWORDER}
        Wait Until Element Is Visible     ${CLICK_BY_ORDERID}

Click New Order
        Click Element            ${ICON_NEWORDER}

Click Get Text From Order ID
        ${Order_id}   Get Text   ${CLICK_BY_ORDERID}
        Set Global Variable      ${Order_id}
        Click Element            ${CLICK_BY_ORDERID}
