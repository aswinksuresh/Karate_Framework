Feature: Update Booking

  Background:
    * def body = read("classpath://json//create_booking.json")
    * def responseBooking = call read("classpath://features//CreateBooking.feature")
    * def responseAuth =  call read("classpath://features//CreateToken.feature")

  Scenario: Create booking scenario
    Given url 'https://restful-booker.herokuapp.com'
    And path '/booking/' + responseBooking.response.bookingid
    And header Content-type = "application/json"
    And header Accept = "application/json"
    And header Cookie = "token=" + responseAuth.response.token
    And request body
    And method put
    Then status 200
    And print response