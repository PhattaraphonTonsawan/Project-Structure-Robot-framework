*** Variables ***
${NEW_PASSWORD}         987654321
${PASSWORD_MENU}        id=password-tab
${OLD_PASSWORD_FIELD}    xpath=//input[@id='inputpassword']
${NEW_PASSWORD_FIELD}    xpath=//input[@id='newpassword']
${CONFIRM_PASSWORD_FIELD}    xpath=//input[@id='cnewpassword']
${CONFIRM_BUTTON}    xpath=//button[contains(text(), 'ตกลง')]
${UPDATE_BUTTON}    xpath=//button[contains(@class,'btn btn-primary')]