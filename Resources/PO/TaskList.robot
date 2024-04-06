*** Settings ***
Library    AppiumLibrary
Library    ExcelLibrary
Resource    ../Keywords/SetupKeyword.robot
*** Variables ***
${addtaskTap}   id=com.anydo:id/actionCreateTask
${tasknameTxt}  id=com.anydo:id/quick_add_input
${confirmAddtaskBtn}    id=com.anydo:id/quick_add_button
${viewmytaskBtn}   id=com.anydo:id/title

${wait}       60

*** Keywords ***
click on add a task tap
    wait until element is visible    ${addtaskTap}     ${wait}
    click element    ${addtaskTap}

input task name
    wait until element is visible    ${tasknameTxt}         ${wait}
    click element    ${tasknameTxt}
    ${mytaskname}       Read Excel    ${ExcelPath}      ${sheetname}     1          2
    input text      ${tasknameTxt}       ${mytaskname}


click on add task buttton
    wait until element is visible    ${confirmAddtaskBtn}      ${wait}
    click element     ${confirmAddtaskBtn}

click on task title
   go back
   wait until element is visible    ${viewmytaskBtn}      ${wait}
   click element     ${viewmytaskBtn}


