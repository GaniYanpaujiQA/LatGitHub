*** Settings ***
Resource        ../resources.robot
Resource        ../pages/landing_pages.robot
Resource        ../pages/login_pages.robot
Resource        ../pages/home_pages.robot
Resource        ../pages/search_pages.robot
Library         AppiumLibrary
Test Setup      Open App

*** Variables ***
${product}      3320457732

*** Test Cases ***
Test Search
    [Template]        Open Search Pages
    #SKU Product
    ${product}

*** Keywords ***
Open Search Pages
    [Arguments]                          ${product}
    GIVEN Open Search Page
    WHEN Input Search Prdouct               ${product}
    THEN List Data will be Displayed

Open Search Page
    Landing Pages
    Login Success
    Home Page Displayed
    Search Page Opened

Input Search Prdouct
    [Arguments]                         ${product}
    Input Search Data                   ${product}

List Data will be Displayed
    Click List Product Search
