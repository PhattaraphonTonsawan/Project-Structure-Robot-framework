*** Settings ***
Documentation     ทดสอบการเปลี่ยนรหัสผ่านผู้ใช้
Resource          import.resource
*** Test Cases ***
User Can Change Password
    [Documentation]     ทดสอบการตรวจสอบเปลี่ยนรหัสผ่านผู้ใช้
    changePass.Change Password     old_password=${VAILD_PASSWORD}    new_password=${VAILD_PASSWORD2}    confirm_password=${VAILD_PASSWORD2}   
    changePass.Change Password Back to Defult     old_password=${VAILD_PASSWORD2}    new_password=${VAILD_PASSWORD}    confirm_password=${VAILD_PASSWORD} 
    [Teardown]     common_web.Close Window



    