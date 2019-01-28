*** Settings ***
Resource          ../resources.robot
Resource          ../pages/landing_pages.robot
Resource          ../pages/login_pages.robot
resource          ../pages/detail_pages.robot
resource          ../pages/home_pages.robot
resource          ../pages/search_pages.robot
resource          ../pages/detail_pages.robot
resource          ../pages/addToCart_pages.robot
Library           AppiumLibrary
Test Setup        Open App


*** Test Cases ***
Test Detail
        Add To Cart

*** Keywords ***
Add To Cart
        GIVEN Open Add To Cart
        WHEN Click Button Tambahkan From page
        THEN Open Notification Add To Cart

Open Add To Cart
        Landing Pages
        Login Success
        Home Page Displayed
        Search Page
        Open Detail Page
        Add To Cart Opened

Click Button Tambahkan From page
        Click Button Tambahkan


Open Notification Add To Cart
        Notification Add To Cart
