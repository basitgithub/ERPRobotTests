*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://hysabat.jmmtest.xyz/login

*** Keywords ***
Log in
    Input Text  id:username     admin
    Input Text  id:password     Admin@123
    click element  xpath:/html/body/div[1]/div/div[2]/div[1]/div/div[1]/div/form/button

Sleep
    BuiltIn.sleep    2

*** Test Cases ***
Log in and create a Sale Invoice
    Open Browser    ${url}      ${browser}
    maximize browser window
    sleep
    log in
    sleep
    click element    xpath:/html/body/div[1]/div/div/div[1]/ul/li[2]
    sleep
    click element    xpath:/html/body/div[1]/div/div/div[1]/ul/li[2]/ul/li[2]/span/a
    sleep
    click element    xpath:/html/body/div/div/div/main/div/div[1]/div[2]/div/a/button
    sleep
    click element    xpath:/html/body/div/div/div/main/div/form/div[1]/div[1]/div/div[2]/div/div/div/label[2]/span[1]
    click element    xpath:/html/body/div/div/div/main/div/form/div[1]/div[2]/div[2]/div/div/input
    Input Text    xpath:/html/body/div/div/div/main/div/form/div[1]/div[2]/div[2]/div/div/input    Syed Basit Ali Shah
    click element    xpath:/html/body/div[1]/div/div/main/div/form/div[4]/div/div/div/div/div/div/div/div/div/div/div/div
    sleep
    click element    xpath:/html/body/div[2]/div/div/div/div[2]/div[1]/div/div/div[1]/div/div/div[2]
    sleep
    Scroll Element Into View    xpath:/html/body/div[1]/div/div/main/div/form/div[8]/div[2]/div[2]/div/button
    sleep
    click element    xpath:/html/body/div[1]/div/div/main/div/form/div[8]/div[2]/div[2]/div/button
    sleep
    sleep
    close browser