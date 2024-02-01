*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${IG_LOGO}            //a[@href='/']
${PROFILE_ICON}       //a[@href='/profile_testing/']
${PROFILE_BUTTON}     //a[text()='Profile']
${BUTTON}             //div[@role="dialog"]/div/button[1]

*** Keywords ***
Home Page Opened
  Wait Until Element Is Visible    ${BUTTON}
  Click Element                    ${BUTTON}
  Wait Until Element Is Visible    ${IG_LOGO}
  Element Should Be Visible        ${IG_LOGO}
  Wait Until Element Is Visible    ${PROFILE_ICON}
  Element Should Be Visible        ${PROFILE_ICON}
  Wait Until Element Is Visible    ${PROFILE_BUTTON}
  Element Should Be Visible        ${PROFILE_BUTTON}
