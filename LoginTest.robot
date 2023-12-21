*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot



*** Variables ***
${browser}  chrome
${siteurl}  https://demowebshop.tricentis.com/login
${user}     devarajshruthi6@gmail.com
${pwd}      finland@123

*** Test Cases ***
LoginTest
    Open my browser     ${siteurl}   ${browser}
    Enter Email      ${user}
    Enter password   ${pwd}
    Click login button
    sleep  3
    Verify successful login
    Close my browser





