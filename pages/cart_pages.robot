*** Settings ***
Library         AppiumLibrary

*** Variables ***
${BUTTON_DRAFT}         //android.widget.Button[@text='Draft']
${BUTTON_NEGOTIATION}   //android.widget.Button[@text='Negotiation']
${BUTTON_APPROVAL}      //android.widget.Button[@text='Approval']
${BUTTON_FULFILLMENT}   //android.widget.Button[@text='Fulfillment']
${BUTTON_DONE}          //android.widget.Button[@text='Done']
${BUTTON_TERMINATED}    //android.widget.Button[@text='Terminated']
#id.b2b.android.staging:id/btn_order_status (BUTTON ID SAMA)

*** Keywords ***
Cart Page Opened
    Wait Until Element Is Visible     ${BUTTON_DRAFT}
    Wait Until Element Is Visible     ${BUTTON_NEGOTIATION}
    Wait Until Element Is Visible     ${BUTTON_APPROVAL}
    Wait Until Element Is Visible     ${BUTTON_FULFILLMENT}
    Wait Until Element Is Visible     ${BUTTON_DONE}
    Wait Until Element Is Visible     ${BUTTON_TERMINATED}

Click Draft
    Click Element                     ${BUTTON_DRAFT}
