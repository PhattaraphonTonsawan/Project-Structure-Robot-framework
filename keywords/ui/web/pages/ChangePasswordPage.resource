*** Settings ***
Resource    import.resource

*** Keywords ***
Enter OldPassword
    [Arguments]    ${old_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['OLD_PASSWORD_FIELD']} 
    SeleniumLibrary.Input Text     ${changePasswordPage['OLD_PASSWORD_FIELD']}     ${old_password}
Enter NewPassword
    [Arguments]    ${new_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['NEW_PASSWORD_FIELD']}
    SeleniumLibrary.Input Password    ${changePasswordPage['NEW_PASSWORD_FIELD']}   ${new_password}
Enter ConfirmPassword
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage.['CONFIRM_PASSWORD_FIELD']} 
    SeleniumLibrary.Input Password    ${changePasswordPage['CONFIRM_PASSWORD_FIELD']}    ${confirm_password}


    