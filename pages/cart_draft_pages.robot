*** Settings ***
Library           AppiumLibrary

*** Variables ***
# ${TEST}                      123
#${LIST1}                       //android.widget.TextView[@text='${Test}']
#${LIST1}                       //android.widget.TextView[@text='#O180000175・18 Dec 2018']
#  #O180000175・18 Dec 2018
*** Keywords ***

Draft Page From Cart Opened
    [Arguments]           ${Test}
    Wait Until Element Is Visible     //android.widget.TextView[@text='${Test}']
    Click Element                     //android.widget.TextView[@text='${Test}']
