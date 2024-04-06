*** Settings ***
Library    AppiumLibrary
Resource    ../PO/MyDay.robot

*** Keywords ***
navigate to create task screen
    click on task tap
    close pop up
    click on task tap