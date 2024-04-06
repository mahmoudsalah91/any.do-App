*** Settings ***
Library    AppiumLibrary
Library    ExcelLibrary
Resource    ../Keywords/SetupKeyword.robot

*** Variables ***
${subtaskTxt}       xpath=//android.widget.EditText[@resource-id="com.anydo:id/subtaskTitle"]
${addnoteBn}        xpath=//android.widget.TextView[@text="Tap to add notes"]
${notesTxt}         id=com.anydo:id/notesTextInput
${saveNoteBtn}      xpath=//android.widget.TextView[@text="Save"]
${saveBtn}          id=com.anydo:id/btnSave
${remindmeTap}      id=com.anydo:id/imgRemindersSetTime
${customerdateTap}  xpath=//android.widget.TextView[@text="Custom"]
${dailyRepeat}      xpath=//android.widget.TextView[@text="Repeat"]
${okBtn}            id=com.anydo:id/mdtp_ok
${setBtn}           xpath=//android.widget.TextView[@text="Set"]
${saveReminderBtn}          xpath=//android.widget.TextView[@text="Save"]
${noTahanksBtn}     id=com.anydo:id/noThanksButtonAllowReminders
${homeIcon}         id=com.anydo:id/imgHome
${wait}       60




*** Keywords ***
input subtasks name
    wait until element is visible    ${subtaskTxt}     ${wait}
    click element    ${subtaskTxt}
    ${Subtask1}       Read Excel    ${ExcelPath}      ${sheetname}         2          2
    input text      ${subtaskTxt}       ${Subtask1}
click on remind me Tap
    wait until element is visible    ${remindmeTap}         ${wait}
    click element           ${remindmeTap}
select reminder time
    wait until element is visible    ${customerdateTap}       ${wait}
    click element           ${customerdateTap}

     ${day}      Read Excel    ${ExcelPath}       ${sheetname}         4          2
     ${month}    Read Excel    ${ExcelPath}       ${sheetname}         5          2
     ${year}     Read Excel    ${ExcelPath}       ${sheetname}         6          2
     ${customerDate}=    Set Variable    //android.view.View[@content-desc="${day} ${month} ${year} selected"]
     wait until element is visible    ${customerDate}       ${wait}
    click element    ${customerDate}
    wait until element is visible    ${okBtn}
    click element    ${okBtn}
     wait until element is visible    ${okBtn}
    click element    ${okBtn}
    #wait until element is visible    ${thisEveningTap}       ${wait}
    #click element           ${thisEveningTap}
select repeat time
    wait until element is visible    ${dailyRepeat}       ${wait}
    click element           ${dailyRepeat}
click on set button
    wait until element is visible    ${setBtn}       ${wait}
    click element           ${setBtn}
click on save Add Reminder
    wait until element is visible    ${saveReminderBtn}       ${wait}
    click element      ${saveReminderBtn}
input notes
    sleep    5
    go back
    wait until element is visible    ${addnoteBn}     ${wait}
    click element    ${addnoteBn}
    ${note}       Read Excel    ${ExcelPath}      ${sheetname}         3          2
    input text      ${notesTxt}       ${note}
    wait until element is visible    ${saveNoteBtn}     ${wait}
    click element    ${saveNoteBtn}

click save
    wait until element is visible    ${saveBtn}         ${wait}
    click element     ${saveBtn}

click No thanks button
    wait until element is visible    ${noTahanksBtn}         ${wait}
    click element     ${noTahanksBtn}
click home Icon
    wait until element is visible    ${homeIcon}         ${wait}
    click element    ${homeIcon}

