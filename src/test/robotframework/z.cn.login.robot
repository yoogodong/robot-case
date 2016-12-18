*** Settings ***
Resource        z.cn.resource.robot

Library         my.First

*** Variables ***
${username}     13811021865
${password}     801029

*** Test Cases ***
My customized key words
    Output      8888888888

#*** Test Cases ***
#Selected book should be in cart
#    Open Browser To Login Page
#    Login with username and password    ${username}     ${password}
#    Execute Manual Step   输入验证码
#    Input text      twotabsearchtextbox     领域驱动设计
#    Click Element       css=input.nav-input


