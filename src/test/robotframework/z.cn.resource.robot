*** Settings ***
Library     Selenium2Library
Library     Dialogs


*** Variables ***
${browser}      firefox
#${preferences}      {"preferences":{"browser.private.browsing.autostart": true}}
${host}         https://www.amazon.cn/
${login_url}    ap/signin?_encoding=UTF8&openid.assoc_handle=cnflex&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.cn%2Fref%3Dnav_ya_signin%3Ftag%3Dzcn0e-23


*** Keywords ***
Login with username and password
    [Arguments]     ${username}     ${password}
    Input Text      ap_email        ${username}
    Input Text      ap_password     ${password}
    Click Button    signInSubmit


Open Browser To Login Page
    Open Browser     ${host}${login_url}    ${browser}
    Maximize Browser Window
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be     Amazon 登录

#Welcome Page Should Be Open


