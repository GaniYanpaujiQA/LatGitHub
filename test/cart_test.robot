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
resource          ../pages/cart_draft_pages.robot

Library           AppiumLibrary
Test Setup        Open App

*** Test Cases ***
Test Cart
        Open Cart Pages


*** Keywords ***
Open Cart Pages
    GIVEN Open Cart Page
    WHEN Click Button Draft
    THEN List Product Price Will Be Displayed



Open Cart Page
    Landing Pages
    Login Success
    Home Page Displayed
    Search Page
    Open Detail Page
    Add To Cart Flow
    Click Button Back From Detail Page
    Click Button Back from Search Page
    Click Menu Cart
    Cart Page Opened

Click Button Draft
    Click Draft

List Product Price Will Be Displayed
    Draft Page From Cart Opened
