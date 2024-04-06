*** Settings ***
Library    AppiumLibrary
Library    ExcelLibrary
Resource    ../Keywords/SetupKeyword.robot

*** Variables ***
${workBarTxt}       id=com.anydo:id/txtTopBarTitle
${wait}         60
${taskName}         id=com.anydo:id/title
${subtaskName}      xpath=//android.widget.EditText[@resource-id="com.anydo:id/subtaskTitle"]
${taskNote}         id=com.anydo:id/notesText
*** Keywords ***
Verify screen name
    wait until element is visible    ${workBarTxt}       ${wait}
    ${screenName}=    get text    ${workBarTxt}
    should be equal    ${screenName}     Work
Verify task name
    wait until element is visible    ${taskName}       ${wait}
    ${createdTaskName}=    get text    ${taskName}
    ${myTaskName}       Read Excel    ${ExcelPath}      ${sheetname}         1          2
    should be equal    ${createdTaskName}     ${myTaskName}
    click element    ${taskName}
Verify subtask name
    wait until element is visible    ${subtaskName}       ${wait}
    ${createdSubtaskName}=    get text    ${subtaskName}
    ${mySubtaskName}       Read Excel    ${ExcelPath}      ${sheetname}        2          2
    should be equal    ${createdSubtaskName}     ${mySubtaskName}
Verify note
    wait until element is visible    ${taskNote}       ${wait}
    ${createdTaskNote}=    get text    ${taskNote}
    ${myTaskNote}       Read Excel    ${ExcelPath}      ${sheetname}        3          2
    should be equal    ${createdTaskNote}     ${myTaskNote}