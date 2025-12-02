*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
User Login
    [Arguments]    ${VALID_USER}    ${VALID_PASSWORD}  #Argument คือตัวแปรที่จะส่งเข้ามาในการกรอกไปในช่องกรอกข้อมูล
    Input Text    ${USERNAME_FIELD}    ${VALID_USER}
    Input Password    ${PASSWORD_FIELD}    ${VALID_PASSWORD}