*** Settings ***
Documentation     ทดสอบการเปลี่ยนรหัสผ่านผู้ใช้
Library           SeleniumLibrary
Resource          ../resources/common.resource
Resource          ../variables/global.resource
Resource          ../resources/login_test.resource
Resource          ../resources/changePassword.resource

*** Test Cases ***
User Can Change Password
    [Documentation]     ทดสอบการตรวจสอบเปลี่ยนรหัสผ่านผู้ใช้
    Open Webpage        ${URL}    ${BROWSER} 
    Click Button        ${GOTO_LOGINPAGE_BUTTON} 
    Switch Window   NEW  
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login          ${VALID_USER}    ${VAILD_PASSWORD}
    Click Button        ${LOGIN}
    Wait Until Element Is Visible  ${DASHBOARD_HEADER}  3s
    Click Button        ${USER_PROFILE_MENU}
    Wait Until Element Is Enabled    ${ACCOUNT_MENU}    3s
    Click Button        ${PASSWORD_MENU}
    Wait Until Element Is Visible    id=password    10s
    Change Password     ${VAILD_PASSWORD}    ${NEW_PASSWORD}    ${NEW_PASSWORD}
    Change Password Back to Defult
    [Teardown]     Close Window