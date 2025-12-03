*** Settings ***
Resource    ${CURDIR}../../../../../resources/import.resource

*** Keywords ***
Enter Username
    [Arguments]    ${username}
    common_web.Input Text    input_field=${LoginPage['username_field']}    text=${username}

Enter Password
    [Arguments]    ${password}
    common_web.Input Password    input_field=${LoginPage['password_field']}    password=${password}