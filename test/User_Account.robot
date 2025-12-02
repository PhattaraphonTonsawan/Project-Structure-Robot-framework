*** Settings ***
Documentation     ทดสอบการตรวจสอบโปรไฟล์ผู้ใช้
Library           SeleniumLibrary
Resource          ../resources/common.resource
Resource          ../variables/global.resource
Resource          ../resources/login_test.resource
Resource          ../variables/UserProfile.resource
Resource          ../variables/login.resource

*** Test Cases ***
Show User Profile
    Open Webpage    ${URL}    ${BROWSER}    
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login  ${VALID_USER}    ${VAILD_PASSWORD}
    Click Button    ${LOGIN}
    Wait Until Element Is Visible  ${DASHBOARD_HEADER}  3s
    Click Button    ${USER_PROFILE_MENU}
    Wait Until Element Is Enabled    ${ACCOUNT_MENU}    3s
    Click Button    ${ACCOUNT_MENU}
    Wait Until Element Is Visible    id=account    10s
    Close Window
