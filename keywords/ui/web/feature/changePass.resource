*** Settings ***
Resource    import.resource

*** Keywords ***
Change Password
    [Arguments]    ${old_password}    ${new_password}    ${confirm_password}
    login_test.User Login to system By Correct User    valid_user=${VALID_USER}    valid_password=${VAILD_PASSWORD}
    SeleniumLibrary.Wait Until Element Is Visible  ${UserProfilePage['DASHBOARD_HEADER']}  ${TIMEOUT}
    common_web.Click Button        button=${UserProfilePage['USER_PROFILE_MENU']}
    SeleniumLibrary.Wait Until Element Is Enabled    ${UserProfilePage['ACCOUNT_MENU']}    ${TIMEOUT}
    common_web.Click Button        button=${changePasswordPage['PASSWORD_MENU']}
    ChangePasswordPage.Enter OldPassword    old_password=${old_password}
    ChangePasswordPage.Enter NewPassword    new_password=${new_password}
    ChangePasswordPage.Enter ConfirmPassword    confirm_password=${confirm_password}
    SeleniumLibrary.Wait Until Element Is Enabled    ${changePasswordPage['UPDATE_BUTTON']}    ${TIMEOUT}
    common_web.Click Button  button=${changePasswordPage.UPDATE_BUTTON}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['CONFIRM_BUTTON']}    ${TIMEOUT}
    common_web.Click Button    button=${changePasswordPage['CONFIRM_BUTTON']}

Change Password Back to Defult 
    [Arguments]    ${old_password}    ${new_password}    ${confirm_password}
    login_test.User Login to system By Correct User    valid_user=${VALID_USER}    valid_password=${VAILD_PASSWORD2}
    SeleniumLibrary.Wait Until Element Is Visible  ${UserProfilePage['DASHBOARD_HEADER']}  ${TIMEOUT}
    common_web.Click Button       button=${UserProfilePage['USER_PROFILE_MENU']}
    SeleniumLibrary.Wait Until Element Is Enabled    ${UserProfilePage['ACCOUNT_MENU']}    ${TIMEOUT}
    common_web.Click Button        button=${changePasswordPage['PASSWORD_MENU']}
    ChangePasswordPage.Enter OldPassword    old_password=${old_password}
    ChangePasswordPage.Enter NewPassword    new_password=${new_password}
    ChangePasswordPage.Enter ConfirmPassword    confirm_password=${confirm_password}
    SeleniumLibrary.Wait Until Element Is Enabled    ${changePasswordPage['UPDATE_BUTTON']}    ${TIMEOUT}
    common_web.Click Button  button=${changePasswordPage['UPDATE_BUTTON']}
    SeleniumLibrary.Wait Until Element Is Visible    ${changePasswordPage['CONFIRM_BUTTON']}    ${TIMEOUT}
    common_web.Click Button    button=${changePasswordPage['CONFIRM_BUTTON']}

    