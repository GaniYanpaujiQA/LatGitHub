*** Settings ***
Library           AppiumLibrary

*** Variables ***
${ICON_SEARCH}         id.b2b.android.staging:id/menu_search
#${TAB_JELAJAH}         //*[@class='android.support.v7.app.a$c']/android.widget.TextView[@text=‘JELAJAH’]
${TAB_JELAJAH}         //android.widget.TextView[@text='JELAJAH']
${TAB_KATEGORI}        //android.widget.TextView[@text='KATEGORI']
${TAB_BRAND}           //android.widget.TextView[@text='BRAND']
${MENU_CART}            id.b2b.android.staging:id/menu_order
#${TAB_KATEGORI}        //*[@class='android.support.v7.app.a$cBrand']/android.widget.TextView[@text=‘KATEGORI’]
#${TAB_BRAND}          //*[@class='android.support.v7.app.a$c']/android.widget.TextView[@text=‘BRAND’]

*** Keywords ***
Home Page Opened
    Sleep    4s
    Wait Until Element Is Visible     ${ICON_SEARCH}
    Wait Until Element Is Visible     ${TAB_JELAJAH}
    Wait Until Element Is Visible     ${TAB_KATEGORI}
    Wait Until Element Is Visible     ${TAB_BRAND}

Click Icon Search
    Click Element         ${ICON_SEARCH}

Click Menu Cart
    Wait Until Element Is Visible      ${MENU_CART}
    Click Element                      ${MENU_CART}


Home Page Displayed
    Home Page Opened
    Click Icon Search
