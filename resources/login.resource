*** Variables ***
${GOTO_LOGINPAGE_BUTTON}    xpath=//a[contains(text(), 'เข้าสู่ระบบ')]
${LOGIN}      xpath=//button[contains(text(),    'เข้าสู่ระบบบัญชี')]
${USERNAME_FIELD}       xpath=//input[@id='username']
${PASSWORD_FIELD}       xpath=//input[@id='password']
${LOGIN_PAGE_HEADER}    xpath=//h1[contains(text(), 'เข้าสู่ระบบบัญชี')]
${INVAILD_USERNAME}     praisan@kku.ac.th
${INVAILD_PASSWORD}     1234
${LOGIN_ALERT}          xpath=//div[contains(@class,'alert alert-danger alert-block')]