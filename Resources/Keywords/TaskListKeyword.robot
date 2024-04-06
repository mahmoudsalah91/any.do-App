*** Settings ***
Library    AppiumLibrary
Resource    ../PO/TaskList.robot

*** Keywords ***
navigate to add new task screen
    click on add a task tap
add new task
    input task name
    click on add task buttton
    click on task title
