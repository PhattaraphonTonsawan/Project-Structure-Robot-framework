*** Settings ***
Resource    import.resource

*** Keywords ***
Show User Profile
    Login_test.User Login To System By Correct User    valid_user=${VALID_USER}    valid_password=${VAILD_PASSWORD}
    common_web.Click Button    button=${UserProfilePage['USER_PROFILE_MENU']}
    SeleniumLibrary.Wait Until Element Is Enabled    ${UserProfilePage['ACCOUNT_MENU']}    ${TIMEOUT}
    common_web.Click Button    button=${UserProfilePage.ACCOUNT_MENU}
    SeleniumLibrary.Wait Until Element Is Visible    ${UserProfilePage['ACCOUNT_TITLE']}    ${TIMEOUT}
    
