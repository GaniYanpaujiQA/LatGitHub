*** Settings ***
Library       AppiumLibrary

*** Variables ***
${REMOTE_URL}         http://localhost:4723/wd/hub
${PLATFORM_NAME}      Android
#${PLATFORM_VERSION}   8.1
${DEVICE_NAME}        192.168.56.101:5555
${APP}                /apk/base.apk
${PACKAGE_NAME}       id.b2b.android.staging
${AUTOMATION_NAME}    appium
${BROWSER_NAME}       android
${JAVASCRIPT_ENABLE}  True

*** Keywords ***
Open App
          Open Application    ${REMOTE_URL}  javascriptEnabled=${JAVASCRIPT_ENABLE}  browserName=${BROWSER_NAME}   platformName=${PLATFORM_NAME}   deviceName=${DEVICE_NAME}  app=${CURDIR}${APP}  automationName=${AUTOMATION_NAME}  appPackage=${PACKAGE_NAME}
