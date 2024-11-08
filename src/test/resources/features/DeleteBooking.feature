Feature: Delete Booking
  Background:
       * def responseBooking = call read("classpath://features//CreateBooking.feature")
        * def responseAuth =  call read("classpath://features//CreateToken.feature")
  Scenario: verify delete booking
    Given url 'https://restful-booker.herokuapp.com'
    And path '/booking/' + responseBooking.response.bookingid
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And header Cookie = "token=" + responseAuth.response.token
    And method delete
    Then status 201
    And print response
