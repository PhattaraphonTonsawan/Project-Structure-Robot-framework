*** Settings ***
Documentation     ทดสอบการล็อกอิน
Resource          ${CURDIR}/../resources/import.resource
*** Test Cases ***
Login with correct user & password
    [Documentation]    ทดสอบล็อกอินสำเร็จเมื่อกรอกข้อมูลถูกต้อง
    [Tags]             Login Positive  #Tags ใช้สำหรับแยกรันในกรณีที่ต้องการทดสอบการรันทีละเคส  
    login_test.User Login To System By Correct User    valid_user=${username_data}    valid_password=${password_data}
    [Teardown]    common_web.Close Window

Login with incorrect Username or Password
    [Documentation]    ทดสอบการล็อกอินหากผู้ใช้กรอกชื่อผู้ใช้หรือรหัสผ่านผิด
    [Tags]             Login Negative 
    login_test.User Login To System By Incorrect User    invalid_user=${invaild_username_data}    invalid_password=${invaild_password_data}
    [Teardown]    common_web.Close Window
    










