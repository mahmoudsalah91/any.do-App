*** Settings ***
Library    AppiumLibrary
Library    ExcelLibrary

*** Variables ***
${appuimServer} =    http://localhost:4723
${platformName} =    Android
${deviceName} =     emulator-5554
${appPackage} =     com.anydo
${appActivity} =    com.anydo.activity.SplashActivity
${automationName} =     Uiautomator2


${ExcelPath}      ${execdir}/Resources/Data/testdata.xlsx
${SheetName}        Sheet1

*** Keywords ***
Open App
    open application    ${appuimServer}       platformName=${platformName}        deviceName=${deviceName}        appPackage=${appPackage}      appActivity=${appActivity}      automationName=${automationName}
Tear down App
    close application

Read Excel
    [Arguments]     ${filepath}     ${sheetname}        ${rownum}       ${column}
    open excel document     ${filepath}     1
    get sheet               ${sheetname}
    ${data}     read excel cell         ${rownum}    ${column}
    [Return]    ${data}
    close current excel document
SCROLL Down
  ${element_size}=    Get Element Size    //android.widget.TextView[@text="Tap to add files"]
  ${element_location}=    Get Element Location    //android.widget.TextView[@text="Tap to add files"]
  ${start_x}=         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${start_y}=         Evaluate      ${element_location['y']} + (${element_size['height']} * 0.7)
  ${end_x}=           Evaluate      ${element_location['x']} + (${element_size['width']} * 0.5)
  ${end_y}=           Evaluate      ${element_location['y']} + (${element_size['height']} * 0.3)
  Swipe               ${start_x}    ${start_y}  ${end_x}  ${end_y}  400