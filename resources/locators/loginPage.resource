*** Variables ***
&{LoginPage}
...    go_to_login_page_btn=xpath=//a[contains(text(),'เข้าสู่ระบบ')]
...    login_btn=xpath=//button[contains(text(),'เข้าสู่ระบบบัญชี')]
...    username_field=xpath=//input[@id='username']
...    password_field=xpath=//input[@id='password']
...    login_page_header=xpath=//h1[contains(text(),'เข้าสู่ระบบบัญชี')]
...    login_alert=xpath=//div[contains(@class,'alert alert-danger alert-block')]