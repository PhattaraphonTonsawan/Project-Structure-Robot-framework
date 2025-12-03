*** Settings ***
Resource    ${CURDIR}../../../../../resources/import.resource

*** Keywords ***
Show User Profile
    Login_test.User Login To System By Correct User    valid_user=${username_data}    valid_password=${password_data}
    common_web.Click Button    button=${UserProfilePage['user_profile_menu']}
    SeleniumLibrary.Wait Until Element Is Enabled    ${UserProfilePage['account_menu']}    ${timeout}
    common_web.Click Button    button=${UserProfilePage.account_menu}
    SeleniumLibrary.Wait Until Element Is Visible    ${UserProfilePage['account_title']}    ${timeout}
    
