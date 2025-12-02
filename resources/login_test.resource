*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
User Login
    [Arguments]    ${VALID_USER}    ${VALID_PASSWORD}
    Input Text    ${USERNAME_FIELD}    ${VALID_USER}
    Input Password    ${PASSWORD_FIELD}    ${VALID_PASSWORD}