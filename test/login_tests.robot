*** Settings ***
Documentation     ทดสอบการล็อกอิน
Library           SeleniumLibrary
Resource          ../resources/common.resource
Resource          ../variables/global.resource
Resource          ../resources/login_test.resource

*** Test Cases ***
Login Process
    Open Webpage    ${URL}    ${BROWSER}
    Click Button    ${GOTO_LOGINPAGE_BUTTON}
    Switch Window   NEW
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login  ${VALID_USER}    ${VAILD_PASSWORD}
    Click Button    ${LOGIN}
    Wait Until Element Is Visible  ${DASHBOARD_HEADER}  3s
    Close Window
    










