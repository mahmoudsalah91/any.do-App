*** Settings ***
Library    AppiumLibrary


*** Variables ***
${taskCount}        id=com.anydo:id/textviewNavBubbleCount
${workTap}          xpath=//android.widget.TextView[@text="Work"]
${wait}       60
*** Keywords ***
Verify task Count
    wait until element is visible    ${taskCount}       ${wait}
    ${taskCount}=    get text    ${taskCount}
    should be equal    ${taskCount}     1

click work Tap
    wait until element is visible    ${workTap}         ${wait}
    click element     ${workTap}