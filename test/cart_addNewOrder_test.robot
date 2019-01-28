*** Settings ***
Resource          ../resources.robot
Resource          ../pages/landing_pages.robot
Resource          ../pages/login_pages.robot
resource          ../pages/detail_pages.robot
resource          ../pages/home_pages.robot
resource          ../pages/cart_pages.robot
resource          ../pages/search_pages.robot
resource          ../pages/detail_pages.robot
resource          ../pages/addToCart_pages.robot
resource          ../pages/pilih_order_pages.robot
resource          ../pages/newOrderAddToCart_pages.robot
resource          ../pages/cart_draft_pages.robot
Library           AppiumLibrary
Test Setup        Open App


*** Variables ***
${order_id}       null

*** Test Cases ***
Test Cart
      [Template]        Open Cart Pages
      #order_id
      ${order_id}


*** Keywords ***
Open Cart Pages
    [Arguments]           ${order_id}
    GIVEN Open Cart Page
    WHEN Click Button Draft
    THEN List Product Price Will Be Displayed    ${order_id}



Open Cart Page
    #Landing Page
    Landing Pages
    #Login Page
    Login Success
    #Home Page
    Home Page Displayed
    #Search Page
    Search Page
    #Detail Page
    Open Detail Page
    #Pop Up Add To Cart Page
    Click Last Modified List
    #New Order List Page
    List New Order Opened
    Click New Order
    #New Order Page
    Create New Order List Flow
    #New Order List Page
    Click Get Text From Order ID
    #Pop Up Add To Cart Page
    Add To Cart Flow
    #Detail Page
    Click Button Back From Detail Page
    #Search Page
    Click Button Back from Search Page
    #Home Page
    Click Menu Cart
    #Cart Page
    Cart Page Opened

Click Button Draft
    Click Draft

List Product Price Will Be Displayed
    [Arguments]           ${order_id}
    Draft Page From Cart Opened    ${order_id}
