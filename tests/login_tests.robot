*** Settings ***
Resource          ../resources/resources.robot
Resource          ../resources/pages/login_pages.robot
Resource          ../resources/pages/home_pages.robot
Resource          ../resources/steps/login_steps.robot
Test Setup        Open Login Page Using Firefox Browser
Test Teardown     Close Browser
Test Template     Login with Credentials


*** Variables ***
${valid_username}       my-email@example.com
${valid_password}       mitgaz-4viczi-kAwwaq
${invalid_data}         qwerty

*** Test Cases ***
Valid Login 
  ${valid_username}   ${valid_password} 
  #THEN Home Page Opened

Invalid Login
  ${valid_username}    ${invalid_data}
  #THEN Error Message Displayed

*** Keywords ***
Login with Credentials
  [Arguments]   ${username}   ${password}
  GIVEN Login Page Opened
  WHEN Input Username And Password    ${username}    ${password}
  