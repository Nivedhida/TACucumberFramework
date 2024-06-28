Feature: Verifying Sales Force Application Login Functionality 


Background:
Given the url "https://login.salesforce.com/"

Scenario: Test Case 1 - Login Error Message


When i enter the username as "menivedhida@gmail.com"
And i click on the Login button
Then i should see the error message as "Please enter your password."

@smoke
Scenario: Test Case 2 - Login to Salesforce application


When i enter the username as "menivedhida@gmail.com"
And i enter the password as "Nivedhida2010!"
And i click on the Login button
Then i should see the Salesforce home page 

Scenario: Test Case 3 - Verifying Remember Me Check Box


When i enter the username as "menivedhida@gmail.com"
And i enter the password as "Nivedhida2010!"
And i check the rememberme check box
And i click on the Login button
And i should see the home page 
And i click the user menu navigation 
And i click on the logout option
Then i should see the Salesforce Login page with username retained as "menivedhida@gmail.com"

Scenario: Test Case 4 - Verify Forgot Password


When i click on the forgot password link
And i the forgot passowrd is displayed
And i enter the username as "menivedhida@gmail.com"
And i click on the continue button
Then i should see the the message on password reset

Scenario: Test Case 5 - Validate Login error message


When i enter wrong username as "abcd@gmail.com"
And i enter wrong password as "abcd123!"
And i click on the Login button
Then i should see the error message as "Your login attempt has failed. The username or password may be incorrect, or your location or login time may be restricted. Please contact the administrator at your company for help"


