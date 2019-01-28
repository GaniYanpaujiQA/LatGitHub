*** Settings ***
Resource          ../resources.robot
Resource          ../pages/landing_pages.robot
Resource          ../pages/login_pages.robot
resource          ../pages/detail_pages.robot
resource          ../pages/home_pages.robot
resource          ../pages/search_pages.robot
resource          ../pages/detail_pages.robot
resource          ../pages/addToCart_pages.robot
resource          ../pages/pilih_order_pages.robot
resource          ../pages/newOrderAddToCart_pages.robot
Library           AppiumLibrary
Test Setup        Open App


*** Variables ***
${NEWORDERNAME}               Sudahlah

*** Test Cases ***
Test New Order
      [Template]                Add New Order
      #Order Data
      ${NEWORDERNAME}

*** Keywords ***
Add New Order
      [Arguments]               ${NEWORDERNAME}
      GIVEN Open New Order
      WHEN Input Order Name    ${NEWORDERNAME}
      THEN Add To Cart With New Order


Open New Order
      Landing Pages
      Login Success
      Home Page Displayed
      Search Page
      Open Detail Page
      Add To Cart Opened
      Click Last Modified List
      List New Order Opened
      Click New Order

Input Order Name
      [Arguments]               ${NEWORDERNAME}
      Create New Order List        ${NEWORDERNAME}

Add To Cart With New Order
      Click Get Text From Order ID
      Add To Cart Flow
