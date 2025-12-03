*** Settings ***
Documentation     ทดสอบการล็อกอิน
Resource          import.resource
*** Test Cases ***
Login with correct user & password
    [Documentation]    ทดสอบล็อกอินสำเร็จเมื่อกรอกข้อมูลถูกต้อง
    [Tags]             Login Positive  #Tags ใช้สำหรับแยกรันในกรณีที่ต้องการทดสอบการรันทีละเคส  
    login_test.User Login To System By Correct User    ${VALID_USER}    ${VAILD_PASSWORD}
    [Teardown]    common_web.Close Window

Login with incorrect Username or Password
    [Documentation]    ทดสอบการล็อกอินหากผู้ใช้กรอกชื่อผู้ใช้หรือรหัสผ่านผิด
    [Tags]             Login Negative 
    login_test.User Login To System By Incorrect User    invalid_user=${INVAILD_USERNAME}    invalid_password=${INVAILD_PASSWORD}
    [Teardown]    common_web.Close Window
    










