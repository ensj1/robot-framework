*** Settings ***
Library       SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}             //input[@name='username']
${PASSWORD_FIELD}             //input[@name='password']
${LOGIN_BUTTON}               //button[@type='submit']
${SHOWPASSWORD_BUTTON}        //button[@type='button'][text()='Show']
${ERROR_MESSAGE}              //p[@id='slfErrorAlert']
${BUTTON}                     //div[@role="dialog"]/div/button[1]

*** Keywords ***
Close Pop Up
  Wait Until Element Is Visible      ${BUTTON}
  Click Element                      ${BUTTON}
  Wait Until Element Is Not Visible  ${BUTTON}

Login Page Opened
  Close Pop Up
  Wait Until Element Is Visible     ${USERNAME_FIELD}
  Element Should Be Visible         ${USERNAME_FIELD}
  Wait Until Element Is Visible     ${PASSWORD_FIELD}
  Element Should Be Visible         ${PASSWORD_FIELD}

Input Username
  [Arguments]                       ${username}
  Wait Until Element Is Enabled     ${USERNAME_FIELD}
  Input Text                        ${USERNAME_FIELD}       ${username}

Login Button Should Be Enabled
  Wait Until Element Is Enabled     ${LOGIN_BUTTON}
  Element Should Be Enabled         ${LOGIN_BUTTON}

Input Pass
  [Arguments]                       ${password}
  Wait Until Element Is Enabled     ${PASSWORD_FIELD}
  Input Text                        ${PASSWORD_FIELD}       ${password}

Show Password Button Should Be Visible
  Wait Until Element Is Visible     ${SHOWPASSWORD_BUTTON}
  Element Should Be Visible         ${SHOWPASSWORD_BUTTON}

Click Login Button
  Wait Until Element Is Enabled     ${LOGIN_BUTTON}
  Click Element                     ${LOGIN_BUTTON}

Error Message Displayed
  Wait Until Element Is Visible     ${ERROR_MESSAGE}
  Element Should Be Visible         ${ERROR_MESSAGE}
