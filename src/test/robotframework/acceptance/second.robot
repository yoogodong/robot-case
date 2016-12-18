*** Settings ***


Library             Selenium2Library


*** Test Cases ***
Valid Login
    Open Browser                http://127.0.0.1:7272
    Input Text                  username_field      demo
    Input Text                  password_field      mode
    Click Button                login_button
    Location Should Be          http://127.0.0.1:7272/welcome.html
    #[Tear Down]                 Close Browser

