*** Settings ***
Resource    ${CURDIR}../../../../../resources/import.resource

*** Keywords ***
Enter OldPassword
    [Arguments]    ${old_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['old_password_field']} 
    SeleniumLibrary.Input Text     ${changePasswordPage['old_password_field']}     ${old_password}
Enter NewPassword
    [Arguments]    ${new_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['new_password_field']}
    SeleniumLibrary.Input Password    ${changePasswordPage['new_password_field']}   ${new_password}
Enter ConfirmPassword
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['confirm_password_field']} 
    SeleniumLibrary.Input Password    ${changePasswordPage['confirm_password_field']}    ${confirm_password}


    