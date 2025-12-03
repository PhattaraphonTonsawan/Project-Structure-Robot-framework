*** Variables ***
&{changePasswordPage}
...    password_menu=id=password-tab
...    old_password_field=xpath=//input[@id='inputpassword']
...    new_password_field=xpath=//input[@id='newpassword']
...    confirm_password_field=xpath=//input[@id='cnewpassword']
...    confirm_button=xpath=//button[contains(text(), 'ตกลง')]
...    update_button=xpath=//div[@id='password']//button[contains(@class,'btn btn-primary')]