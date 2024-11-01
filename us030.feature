@modificarSupervisor @Trello=https://trello.com/c/iHJ5l6nK
Feature: Modificar un supervisor
  Como desarrollador
  Quiero modificar un supervisor mediante una solicitud PUT al API
  Para editar la información solicitada

#-------------------------------------------------------------------------------------------
  Scenario Outline: Modificar un supervisor
    Given que el endpoint api/v1/supervisor/:supervisorId está disponible
    When una solicitud PUT se realiza con los valores para nombre, correo electrónico o contraseña
    Then se recibe una Respuesta con estado <status>
    And <resultado>

    Examples:
      | status | resultado                                                                                                      |
      | 200    | se devuelve un recurso de usuario de tipo Supervisor en el cuerpo de la Respuesta con valores de nombre, correo electrónico y contraseña |
      | 400    | se devuelve un mensaje en el cuerpo de la Respuesta: El correo electrónico ya se encuentra registrado en otro usuario |