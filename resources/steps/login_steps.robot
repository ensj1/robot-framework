*** Settings ***
Resource          ../pages/login_pages.robot

*** Keywords ***
Input Username And Password
  [Arguments]   ${username}   ${password}
  Input Username                              ${username}
  Input Pass                                  ${password}
  Login Button Should Be Enabled
  Show Password Button Should Be Visible
  Click Login Button
