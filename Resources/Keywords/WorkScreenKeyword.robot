*** Settings ***
Library    AppiumLibrary
Resource    ../PO/WorkScreen.robot

*** Keywords ***
Verify task created in work section
    Verify screen name
Verify task details as created
    Verify task name
    Verify subtask name
    Verify note