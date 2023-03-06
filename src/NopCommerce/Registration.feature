Feature: Registration functionality

  As a user,
  I want to check the Register functionality of NopCommerce

  Background:         User is on Registration Page
    Given             User open the Google Chrome Browser
    When              User enter the URL "https://demo.nopcommerce.com/register"
    Then              User is on NopCommerce Registration Page

  Scenario Outline: User register with valid credentials
    When              User enters <"First Name"> in First name field
    And               User enters <" Last name"> in Last name field
    And               User enters <"Email"> in Email field
    And               User enters <"Password"> in Password Field
    And               User enters <"Confirm Password"> in Confirm Password Field
    And               User clicks on Submit button
    And               User clicks on Continue button
    Then              User has registered successfully
    And               <"Confirmation email"> of Registration is sent to the user
    And               User navigates to Account Success Page
    And               User should be subscribed to the newsletter
    And               User navigates to Homepage

    Examples:
      | First Name | Last Name | Email                   | Password      | Confirm Password | Confirmation email        |
      | Dhara      | Virani    | dhara28virani@gmail.com | 9081811670@Dv | 9081811670@Dv    | Thank you for Registering |

  Scenario:         User registers with the existing account details
    When              User enters "Dhara" in First name field
    And               User enters "Virani" in Last name field
    And               User enters "dhara28virani@gmail.com" in email field
    And               User enters "9081811670@Dv" in password field
    And               User enters "9081811670@Dv" in confirm password field
    And               User clicks on Submit button
    Then              User should display "The specifield email already exists" on Register Page

  Scenario Outline: User registers with invalid data
    When             User enters <"First Name"> in First name field
    And              User enters <" Last name"> in Last name field
    And              User enters <"Email"> in Email field
    And              User enters <"Password"> in Password Field
    And              User enters <"Confirm Password"> in Confirm Password Field
    And              User clicks on Submit button
    Then             User is not registered
    And              <"Error message"> is displayed

    Examples:
      | First Name | Last Name | Email                   | Password      | Confirm Password | Error message                       |
      | Dhara      | Virani    | dhara28virani@gmail.com | 9081811670@Dv | 9727433803@Mv    | Password doesn't match              |
      | ""         | Virani    |                         | 9081811670@Dv | 9727433803@Mv    | Mandatory data not entered          |
      | ""         |           |                         |               |                  | Mandatory data not entered          |
      | Dhara      | Virani    | dhara28virani@gmail.com | 12345         | 12345            | Minimum length is 6 digits password |

  Scenario: User is able to selct any one of the radio button from Gender Label on Register Page
    Given           User is on Gender label
    When            User selects "Male" radio button
    And             User selects "Female" radio button
    Then            User is able to select any one of the radio button


  Scenario Outline: User should be able to select Day, Month and Year from drop down list of Date of birth field
    Given           User is on Date of Birth field of Your Personal Detail section
    When            User select day "<Day>"
    And             User select month "<Month>"
    And             User select Year "<Year>"
    Then            User is able to select Day, Month and Year from drop down list

    Examples:
      | Day | Month | Year |
      | 28  | June  | 1999 |

  Scenario: User should be able to check and uncheck the Newsletter box on Register Page
    Given          User is on Newsletter label
    When           User click on Newsletter checkbox
    And            User again click on Newsletter Checkbox
    Then           User able to check and uncheck the box next to Newsletter label



