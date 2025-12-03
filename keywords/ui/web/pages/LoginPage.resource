*** Settings ***
Resource    import.resource
*** Keywords ***
Enter Username
    [Arguments]    ${username}
    SeleniumLibrary.Wait Until Element Is Visible    ${LoginPage['USERNAME_FIELD']}
    SeleniumLibrary.Input Text     ${LoginPage['USERNAME_FIELD']}    ${username}
Enter Password
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${LoginPage['PASSWORD_FIEL']}
    SeleniumLibrary.Input Password    ${LoginPage['PASSWORD_FIELD']}    ${password}









