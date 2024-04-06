*** Settings ***
Library    AppiumLibrary

*** Variables ***
${taskTap}     id=com.anydo:id/overlay_banner_container
${popupIcon}   id=com.anydo:id/xIcon

${wait}       60


*** Keywords ***
click on task tap
    wait until element is visible        ${taskTap}     ${wait}
    click element    ${taskTap}
close pop up

    wait until element is visible    ${popupIcon}       ${wait}
    click element    ${popupIcon}