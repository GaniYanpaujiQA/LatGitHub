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
        Open Detail Pages


*** Keywords ***
Open Detail Pages
    GIVEN Open Detail Page
    WHEN Click Button Beli Sekarang
    THEN ADD To Cart Will Be Displayed

Open Detail Page
    Landing Pages
    Login Success
    Home Page Displayed
    Search Page
    Detail Page Opened

Click Button Beli Sekarang
    Click Button Beli

ADD To Cart Will Be Displayed
    Add To Cart Opened
