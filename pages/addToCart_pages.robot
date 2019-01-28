*** Settings ***
Library         AppiumLibrary

*** Variables ***
${LASTMODIFIED_LIST}        id.b2b.android.staging:id/tv_opty_id
${TAMBAHKAN_BUTTON}         id.b2b.android.staging:id/btn_product_add_confirm

*** Keywords ***
Add To Cart Opened
      Wait Until Element Is Visible    ${LASTMODIFIED_LIST}
      Wait Until Element Is Visible    ${TAMBAHKAN_BUTTON}

Click Button Tambahkan
      Click Element                     ${TAMBAHKAN_BUTTON}

Click Last Modified List
      Click Element                     ${LASTMODIFIED_LIST}

Add To Cart Flow
      Add To Cart Opened
      Click Button Tambahkan
