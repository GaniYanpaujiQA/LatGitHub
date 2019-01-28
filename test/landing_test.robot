*** Settings ***
Resource          ../resources.robot
Resource          ../pages/landing_pages.robot
Resource          ../pages/login_pages.robot
Library           AppiumLibrary
Test Setup        Open App

*** Test Cases ***
Open Landing Page
  GIVEN Open Aplication To Landing Page
  WHEN Click Button Lanjut From Landing Page
  THEN Login Page Will Be Opened

*** Keywords ***
Open Aplication To Landing Page
  Landing Page Opened

Click Button Lanjut From Landing Page
  Click Button Lanjut

Login Page Will Be Opened
  Open To Login Page
