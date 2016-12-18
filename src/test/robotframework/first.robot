*** Settings ***
Library		Selenium2Library

*** Test Cases ***
Valid Login
	Open Browser    http://127.0.0.1:7272	   Firefox
	Title Should Be    Login Page
	Input username and password		demo	mode
	Click Button		login_button
	Location Should Be	Welcome 

*** Keywords ***
Input username and password
	[Arguments]		${username}		${password}
	Input Text		username_field	${username}
	Input Text		password_field	${password}
