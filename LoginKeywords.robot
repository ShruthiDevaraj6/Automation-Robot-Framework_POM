*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]     ${siteurl}      ${browser}
    open browser   ${siteurl}     ${browser}
    maximize browser window
    sleep  3

Enter Email
    [Arguments]     ${username}
    input text  ${email}     ${username}

Enter password
    [Arguments]     ${password}
    input text      ${txtPassword}     ${password}

Click login button
    click element  ${loginBtn}

Verify successful login
    page should contain  devarajshruthi6@gmail.com

Close my browser
    close all browsers
