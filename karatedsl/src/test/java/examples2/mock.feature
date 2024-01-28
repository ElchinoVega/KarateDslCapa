Feature: API Mock Example

  Background:
    * karate.configure('port', 8080)

  Scenario: Simulación de una solicitud GET
    Given path '/api/resource'
    When method GET
    Then status 200
    And response { message: 'Mocked response for GET request' }

  Scenario: Mocking a POST request
    Given path '/api/resource'
    And request { data: 'someData' }
    When method POST
    Then status 201
    And response { message: 'Mocked response for POST request' }
