*** Settings ***
Documentation     ทดสอบการล็อกอิน
Library           SeleniumLibrary
Resource          ../keywords/common.resource
Resource          ../resources/global.resource
Resource          ../keywords/login_test.resource
Resource          ../resources/login.resource

*** Test Cases ***
Login with correct user & password
    [Documentation]    ทดสอบล็อกอินสำเร็จเมื่อกรอกข้อมูลถูกต้อง
    [Tags]             Login Positive
    Open Webpage    ${URL}    ${BROWSER}
    Click Button    ${GOTO_LOGINPAGE_BUTTON}
    Switch Window   NEW
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login  ${VALID_USER}    ${VAILD_PASSWORD}
    Click Button    ${LOGIN}
    Wait Until Element Is Visible  ${DASHBOARD_HEADER}  3s
    [Teardown]    Close Window

Login with incorrect Username or Password
    [Documentation]    ทดสอบการล็อกอินหากผู้ใช้กรอกชื่อผู้ใช้หรือรหัสผ่านผิด
    [Tags]             Login Negative
    Open Webpage    ${URL}    ${BROWSER}
    Click Button    ${GOTO_LOGINPAGE_BUTTON}
    Switch Window   NEW
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login  ${INVAILD_USERNAME}    ${INVAILD_PASSWORD}
    Click Button    ${LOGIN}
    Wait Until Element Is Visible    ${LOGIN_ALERT}    5s
    [Teardown]    Close Window

Login with missing Username or Password
    [Documentation]    ทดสอบการล็อกอินหากผู้ใช้ลืมกรอกข้อมูลในช่อง ชื่อผู้ใช้ หรือ รหัสผ่าน
    [Tags]             Login Negative
    Open Webpage    ${URL}    ${BROWSER}
    Click Button    ${GOTO_LOGINPAGE_BUTTON}
    Switch Window   NEW
    Wait Until Element Is Visible    ${LOGIN_PAGE_HEADER}  3s
    User Login  ${INVAILD_USERNAME}    ${INVAILD_PASSWORD}
    Click Button    ${LOGIN}
    Wait Until Element Is Not Visible    ${LOGIN_ALERT}    5s
    [Teardown]    Close Window


    

    










