Feature: Create Booking

  Background:
    * def body = read("classpath://json//create_booking.json")

  Scenario: Create booking scenario
    Given url 'https://restful-booker.herokuapp.com'
    And path '/booking'
    And header Content-type = "application/json"
    And header Accept = "application/json"
    And request body
    And method post
    Then status 200
    And print response