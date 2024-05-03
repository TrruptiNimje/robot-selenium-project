*** Settings ***
Documentation   To validate the login form
Library     SeleniumLibrary


*** Test Cases ***
Validate unsuccessful login
    Open Browser    https://rahulshettyacademy.com/loginpagePractise/    ${BROWSER}
    Fill the login form
    Wait until it checks and display error message
    # Verify error message is correct


*** Keywords ***
Fill the login form
    Input Text        username     testdemo1
    Input Password    password     test1234
    Click Button      signInBtn

Wait until it checks and display error message
    Wait Until Element Is Visible    Incorrect username/password.



*** Variables ***
${BROWSER}    Chrome





