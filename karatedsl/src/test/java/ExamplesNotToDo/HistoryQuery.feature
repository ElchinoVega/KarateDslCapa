Feature: Consulta de Historial de Movimientos de Prestamos

  Background:

    * url api.baseUrl
    * path payPath = '/smp-loan/v1/payment-history'
    * params { loanId: #(loanId), subProductCode: #(subProductCode), page: #(page) }
    * def tokenResponse = call read('accessToken-apim.feature')
    * def token = tokenResponse.accessToken
    * def response200 = read("response-200-payment-history.json")
    * def response401 = read("response-401-Unauthorized-payment-history.json")

  Scenario Outline: Realizar la consulta exitosa de 5 préstamo existentes
    And header Authorization = 'Bearer ' + token
    # Lo que no se tiene que hacer separar el header campo por campo, esta configuracion se debe registrar en el archivo karate-config.js
    And headers { 'traceparent': '#(traceparent)' }
    And headers { 'consumerId': '#(consumerId)' }
    And headers { 'deviceType': '#(deviceType)' }
    And headers { 'monitorData': '#(monitorData)' }
    And headers { 'subscription-key': '#(subscriptionKey)' }

    When method GET
    Then status 200
    And match $ == response200

    Examples:
      | loanId   | subProductCode | page |
      | 00044756 | 821            | 1    |
      | 00043805 | 821            | 1    |
      | 00044493 | 821            | 1    |
      | 00036459 | 821            | 1    |