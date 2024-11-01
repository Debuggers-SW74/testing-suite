@modificarConductor @Trello=https://trello.com/c/X56ggqYX
Feature: Modificar un conductor
  Como desarrollador
  Quiero modificar un conductor mediante una solicitud PUT al API
  Para editar la información solicitada

#-------------------------------------------------------------------------------------------
  Scenario Outline: Modificar un conductor
    Given que el endpoint api/v1/driver/:driverId está disponible
    When una solicitud PUT se realiza con los valores para nombre, correo electrónico, número de celular o contraseña
    Then se recibe una Respuesta con estado <status>
    And <resultado>

    Examples:
      | status | resultado                                                                                                      |
      | 200    | se devuelve un recurso de usuario de tipo Conductor en el cuerpo de la Respuesta con valores de nombre, correo electrónico, número de celular y contraseña |
      | 400    | se devuelve un mensaje en el cuerpo de la Respuesta: El correo electrónico ya se encuentra registrado en otro usuario |