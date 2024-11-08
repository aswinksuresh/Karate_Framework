Feature: Create Token

  Background:
    * def body = read("classpath://json//create_token.json")

  Scenario: Create booking scenario
    Given url 'https://restful-booker.herokuapp.com'
    And path '/auth'
    And header Content-type = "application/json"
    And header Accept = "application/json"
    And request body
    And method post
    Then status 200
    And print response