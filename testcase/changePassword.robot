*** Settings ***
Documentation     ทดสอบการเปลี่ยนรหัสผ่านผู้ใช้
Resource          ${CURDIR}/../resources/import.resource
*** Test Cases ***
User Can Change Password
    [Documentation]     ทดสอบการตรวจสอบเปลี่ยนรหัสผ่านผู้ใช้
    changePass.Change Password     old_password=${password_data}    new_password=${changed_password}    confirm_password=${changed_password}   
    changePass.Change Password Back to Defult     old_password=${changed_password}    new_password=${password_data}    confirm_password=${password_data} 
    [Teardown]     common_web.Close Window



    