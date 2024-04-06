*** Settings ***
Library    AppiumLibrary
Resource   ../Resources/Keywords/SetupKeyword.robot
Resource   ../Resources/Keywords/MyTaskKeyword.robot
Resource   ../Resources/Keywords/TaskListKeyword.robot
Resource   ../Resources/Keywords/MyTaskDetailsKeyword.robot
Resource   ../Resources/Keywords/HomeScreenKeyword.robot
Resource   ../Resources/Keywords/WorkScreenKeyword.robot
Suite Setup    Open App
Suite Teardown    Tear down App
*** Test Cases ***
Create new task
    navigate to create task screen
    navigate to add new task screen
    add new task
    input details to my task
    Verify that the newly created task is listed
    Verify task created in work section
    Verify task details as created
