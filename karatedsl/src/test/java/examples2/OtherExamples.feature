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

# Ejemplos de otras aserciones

    # Comparación de Valores Simples:

    Then match response.status == 200
    And match response.name == 'John Doe'

    # Aserciones con Expresiones Regulares:

    Then match response.email == '#regex .*@example\\.com'

    # Aserciones en Listas:

    Then match response.items == [{ id: 1, name: 'Item 1' }, { id: 2, name: 'Item 2' }]

    # Verificación de Contenido Existente:

    Then match response contains { key: 'value' }

    # Comparación de Números:

    Then match response.age > 18

    # Verificación de la Longitud de una Lista:

    Then match response.items.length == 3

    # Aserciones en Fechas:

    Then match response.createdAt > '2022-01-01T00:00:00.000Z'

    # Aserciones de Nulos o No Nulos:

    Then match response.optionalField == null
    And match response.requiredField != null

    # Comparación de Listas Desordenadas:

    Then match contains only response.items [{ id: 2, name: 'Item 2' }, { id: 1, name: 'Item 1' }]

    # Comparación de Contenidos JSON Complejos:

    Then match response == { id: '#number', name: '#string', addresses: '#notnull' }









