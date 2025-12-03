*** Settings ***
Resource    ${CURDIR}../../../../../resources/import.resource

*** Keywords ***    
Change Password
    [Arguments]    ${old_password}    ${new_password}    ${confirm_password}
    login_test.User Login to system By Correct User    valid_user=${username_data}    valid_password=${password_data}
    SeleniumLibrary.Wait Until Element Is Visible  ${UserProfilePage['dashboard_header']}  ${timeout}
    common_web.Click Button        button=${UserProfilePage['user_profile_menu']}
    SeleniumLibrary.Wait Until Element Is Enabled    ${UserProfilePage['account_menu']}    ${timeout}
    common_web.Click Button        button=${changePasswordPage['password_menu']}
    ChangePasswordPage.Enter OldPassword    old_password=${old_password}
    ChangePasswordPage.Enter NewPassword    new_password=${new_password}
    ChangePasswordPage.Enter ConfirmPassword    confirm_password=${confirm_password}
    SeleniumLibrary.Wait Until Element Is Enabled    ${changePasswordPage['update_button']}    ${timeout}
    common_web.Click Button  button=${changePasswordPage.update_button}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['confirm_button']}    ${timeout}
    common_web.Click Button    button=${changePasswordPage['confirm_button']}

Change Password Back to Defult 
    [Arguments]    ${old_password}    ${new_password}    ${confirm_password}
    ChangePasswordPage.Enter OldPassword    old_password=${old_password}
    ChangePasswordPage.Enter NewPassword    new_password=${new_password}
    ChangePasswordPage.Enter ConfirmPassword    confirm_password=${confirm_password}
    SeleniumLibrary.Wait Until Element Is Enabled    ${changePasswordPage['update_button']}    ${timeout}
    common_web.Click Button  button=${changePasswordPage['update_button']}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['confirm_button']}    ${timeout}
    common_web.Click Button    button=${changePasswordPage['confirm_button']}

    