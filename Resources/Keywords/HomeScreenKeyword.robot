*** Settings ***
Library    AppiumLibrary
Resource    ../PO/HomeScreen.robot

*** Keywords ***
Verify that the newly created task is listed
    Verify task Count
    click work Tap