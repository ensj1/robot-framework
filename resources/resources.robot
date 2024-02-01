*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${MAIN_PAGE}      https://www.instagram.com
${LOGIN_PAGE}     ${MAIN_PAGE}/accounts/login/

*** Keywords ***
Open Main Page Using Firefox Browser
  Open Browser    ${MAIN_PAGE}    Chrome
  Maximize Browser Window

Open Login Page Using Firefox Browser
  Open Browser    ${MAIN_PAGE}    Chrome
  Maximize Browser Window
