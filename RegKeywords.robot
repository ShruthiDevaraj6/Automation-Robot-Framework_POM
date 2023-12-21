*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]     ${siteurl}      ${browser}
    open browser   ${siteurl}     ${browser}
    maximize browser window
    sleep  3

Enter Gender
    [Arguments]     ${gend}
    select radio button     ${gender}   ${gend}

Enter firstname
    [Arguments]     ${fname}
    input text  ${firstName}     ${fname}

Enter lastname
    [Arguments]     ${lname}
    input text  ${lastName}     ${lname}

Enter Email
    [Arguments]     ${username}
    input text  ${email}     ${username}

Enter password
    [Arguments]     ${pwd}
    input text  ${password}     ${pwd}

Enter confpassword
    [Arguments]     ${confpwd}
    input text  ${confPassword}     ${confpwd}


Click register button
    click element  ${regBtn}

Verify successful registeration
    page should contain  Your registration completed

Close my browser
    close all browsers
