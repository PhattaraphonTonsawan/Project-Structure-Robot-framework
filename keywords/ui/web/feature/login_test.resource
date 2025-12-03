*** Settings ***
Resource    ${CURDIR}../../../../../resources/import.resource

*** Keywords ***
User Login To System By Correct User
    [Arguments]    ${valid_user}    ${valid_password}  #Argument คือตัวแปรที่จะส่งเข้ามาในการกรอกไปในช่องกรอกข้อมูล
    common_web.Open Webpage    url=${url}    browser=${browser}
    common_web.Click Button     button=${LoginPage['go_to_login_page_btn']}
    SeleniumLibrary.Switch Window   NEW    #ให้ Selenium ย้ายไปทำงานที่ Tab ใหม่ที่สร้างขึ้นมา  หากอยากกลับมาหน้าหลัก ให้เปลี่ยน NEW -> MAIN
    SeleniumLibrary.Wait Until Element Is Visible    ${LoginPage['login_page_header']}  ${timeout}
    LoginPage.Enter Username    username=${valid_user}
    LoginPage.Enter Password    password=${valid_password}
    common_web.Click Button    button=${LoginPage.login_btn}
    SeleniumLibrary.Wait Until Element Is Visible  ${UserProfilePage['dashboard_header']}  ${timeout}

User Login To System By Incorrect User
    [Arguments]    ${invalid_user}    ${invalid_password}
    common_web.Open Webpage    url=${url}    browser=${browser}
    common_web.Click Button    button=${LoginPage['go_to_login_page_btn']}
    SeleniumLibrary.Switch Window   NEW    #ให้ Selenium ย้ายไปทำงานที่ Tab ใหม่ที่สร้างขึ้นมา  หากอยากกลับมาหน้าหลัก ให้เปลี่ยน NEW -> MAIN
    SeleniumLibrary.Wait Until Element Is Visible    ${LoginPage['login_page_header']}  ${timeout}
    LoginPage.Enter Username    username=${invalid_user}
    LoginPage.Enter Password    password=${invalid_password}
    common_web.Click Button    button=${LoginPage.login_btn}
    SeleniumLibrary.Wait Until Element Is Visible    ${LoginPage['login_alert']}    ${timeout}

