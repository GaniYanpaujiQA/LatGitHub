*** Settings ***
Resource          ../resources.robot
Resource        ../pages/landing_pages.robot
Resource        ../pages/login_pages.robot
Resource        ../pages/home_pages.robot
Resource        ../pages/search_pages.robot
Library         AppiumLibrary
Test Setup      Open App

*** Variables ***

*** Test Cases ***
Test Home
  Open Home Pages


*** Keywords ***
Open Home Pages
    GIVEN Open Home Page User
    WHEN Page Home With Jelajah Kategori Brand And Search
    THEN Element From Home Will Be Visible

Open Home Page User
    Landing Pages
    Login Success

Page Home With Jelajah Kategori Brand And Search
    Home Page Opened

Element From Home Will Be Visible
    Click Icon Search

#Tambahkan Untuk kategori, Brand, Jelajah, Search
