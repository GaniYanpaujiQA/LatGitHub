*** Settings ***
Library       AppiumLibrary

*** Variables ***
${BUTTON_BELI}                    id.b2b.android.staging:id/btn_order
${NOTIFICATION_ADDTOCART}         id.b2b.android.staging:id/tv_notification_content
${BUTTON_BACK_DETAIL}             //android.widget.ImageButton[contains(@clickable,true)] 



*** Keywords ***
Detail Page Opened
      Sleep         5s
      Wait Until Element Is Visible   ${BUTTON_BELI}

Click Button Beli
      Click Element                   ${BUTTON_BELI}

Notification Add To Cart
      Wait Until Element Is Visible    ${NOTIFICATION_ADDTOCART}

Click Button Back From Detail Page
      Wait Until Element Is Visible    ${BUTTON_BACK_DETAIL}
      Click Element                    ${BUTTON_BACK_DETAIL}

Open Detail Page
      Detail Page Opened
      Click Button Beli
