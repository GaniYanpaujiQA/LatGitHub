*** Settings ***
Resource          ../resources.robot
Resource          ../pages/login_pages.robot
Resource          ../pages/home_pages.robot
Resource          ../pages/landing_pages.robot
Test Setup        Open App


*** Variables ***
${USERNAME}      cucy@getnada.com
${PASSWORD}       salim12345

*** Test Cases ***
Test Login
    [Template]            Open Login Pages
    #username          password
    ${USERNAME}      ${PASSWORD}

*** Keywords ***
Open Login Pages
  [Arguments]             ${user}           ${pass}
  GIVEN Open Login Page
  WHEN Input Password And Email Then Click Login          ${user}           ${pass}
  THEN Home Pages Will Be Displayed

Open Login Page
  Landing Page Opened
  Click Button Lanjut
  Open To Login Page

Input Password And Email Then Click Login
  [Arguments]               ${user}             ${pass}
  Input Email               ${user}
  Input Pass                ${pass}
  Click Button Login

Home Pages Will Be Displayed
  Home Page Opened
