Feature: Prueba de Solicitud GET Básica

  Scenario: Prueba de Solicitud GET Básica
    Given url 'https://api.example.com/users'
    When method GET
    Then status 200
    And match response == { users: '#notnull' }

  Scenario: Prueba de Solicitud POST con Datos JSON
    Given url 'https://api.example.com/createUser'
    And request { username: 'testuser', password: 'password123' }
    When method POST
    Then status 201
    And match response == { message: 'User created successfully' }

  Scenario: Prueba de Solicitud con Encabezados Personalizados

    Given url 'https://api.example.com/auth'
    And headers { Authorization: 'Bearer token123', Content-Type: 'application/json' }
    When method GET
    Then status 200
    And match response == { authenticated: true }

  Scenario: Prueba de Aserciones de Contenido Dinámico

    Given url 'https://api.example.com/getDynamicContent'
    When method GET
    Then status 200
    And match response.someKey == '#regex ^\\w+$'
    And match response.anotherKey contains 'substring'

  Scenario: Prueba de Parámetros de la URL
    Given url 'https://api.example.com/user/{userId}'
    And path userId = 123
    When method GET
    Then status 200
    And match response.id == 123