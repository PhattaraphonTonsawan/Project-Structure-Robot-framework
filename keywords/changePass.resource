*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/global.resource

*** Keywords ***
Change Password
    [Arguments]    ${OldPassword}    ${NewPassword}    ${ConfirmPassword}
    Input Password    ${OLD_PASSWORD_FIELD}    ${OldPassword}
    Input Password    ${NEW_PASSWORD_FIELD}    ${NewPassword}
    Input Password    ${CONFIRM_PASSWORD_FIELD}    ${ConfirmPassword}
    Wait Until Element Is Enabled    ${UPDATE_BUTTON}    10s
    Click Button  ${UPDATE_BUTTON}
    Wait Until Element Is Enabled    ${CONFIRM_BUTTON}    10s
    Click Button    ${CONFIRM_BUTTON}

Change Password Back to Defult
    Change Password        ${NEW_PASSWORD}    ${VAILD_PASSWORD}    ${NEW_PASSWORD}


    