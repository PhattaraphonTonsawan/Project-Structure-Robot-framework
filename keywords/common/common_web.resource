*** Settings ***
Resource    ${CURDIR}../../../resources/import.resource

*** Keywords ***
Open Webpage
    [Arguments]    ${url}    ${browser}
    SeleniumLibrary.Open Browser    ${url}    ${browser}
    SeleniumLibrary.Maximize Browser Window

Click Button
    [Arguments]    ${button}
    SeleniumLibrary.Wait Until Element Is Enabled    ${button}    ${timeout}
    SeleniumLibrary.Click Element    ${button}

Input Text
    [Arguments]    ${input_field}    ${text}
    SeleniumLibrary.Wait Until Element Is Visible    ${input_field}    ${timeout}
    SeleniumLibrary.Input Text    ${input_field}    ${text}

Input Password
    [Arguments]    ${input_field}    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${input_field}    ${timeout}
    SeleniumLibrary.Input Password    ${input_field}    ${password}

Close Window
    SeleniumLibrary.Capture Page Screenshot
    SeleniumLibrary.Close Browser


