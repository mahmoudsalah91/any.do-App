*** Settings ***
Library    AppiumLibrary
Resource    ../PO/MyTaskDetails.robot

*** Keywords ***
input details to my task
    input subtasks name
    click on remind me Tap
    select reminder time
    select repeat time
    click on set button
    click on save Add Reminder
    input notes
    #click on add Attach button
    click save
    click No thanks button
    click home Icon