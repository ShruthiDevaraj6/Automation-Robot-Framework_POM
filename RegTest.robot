*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/RegKeywords.robot


*** Variables ***
${browser}  chrome
${siteurl}  https://demowebshop.tricentis.com/register


*** Test Cases ***
RegTest
    Open my browser     ${siteurl}   ${browser}
    Enter Gender   F
    Enter firstname    syra
    Enter lastname      shetty
    Enter Email     ss@c.com
    Enter password   finland@123
    Enter confpassword  finland@123
    Click register button
    sleep  3
    Verify successful registeration
    Close my browser





