*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Webpage
    [Arguments]    ${URL}    ${BROWSER}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Click Button
    [Arguments]    ${BUTTON}
    Click Element    ${BUTTON}
Close Window
    Capture Page Screenshot
    Close Browser

    
    
