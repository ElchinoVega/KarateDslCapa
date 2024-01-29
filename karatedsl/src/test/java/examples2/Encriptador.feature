Feature: Encriptador de datos

  Background:
    * url baseUrl_encryptions

  Scenario Outline: Enviar solicitud HTTP para encriptar los datos del cliente

    * configure ssl = true
    * headers headers_encryptions
    * header Content-Type = 'application/json'
    * request
    """
    {
        "documentNumber" : "<documentNumber>",
        "cardNumber" : "<cardNumber>",
        "documentType" : "<documentType>",
        "password" : "<password>"
    }
    """
    * method post
    * status 200
    * def response = response

    Examples:
      | documentNumber | cardNumber       | documentType | password   |
      | 10022889F      | 4213550381111111 | 3            | Interbank1 |
      | 809231P        | 4213550381222229 | 5            | Interbank1 |
      | 235232321      | 4913370795033332 | 1            | Interbank1 |
      | 25842337       | 4213550390014443 | 1            | Interbank1 |