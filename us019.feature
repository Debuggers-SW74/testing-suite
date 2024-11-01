@obtenerSupervisor @Trello=https://trello.com/c/fK2mF2hF
Feature: Obtener usuario tipo Supervisor
  Como desarrollador
  Quiero obtener un supervisor mediante una solicitud GET al API
  Para permitir iniciar sesión al usuario

  #-------------------------------------------------------------------------------------------
  Scenario: Ingreso de datos existentes
    Given que el endpoint api/v1/supervisor/:mail/:password está disponible
    When una solicitud GET se realiza con los parámetros correo electrónico y contraseña
    Then se recibe una Respuesta con estado 200
    And se devuelve un recurso de usuario de tipo Supervisor en el cuerpo de la Respuesta con valores de nombre, correo electrónico y contraseña

  #-------------------------------------------------------------------------------------------
  Scenario: Ingreso de datos inexistentes
    Given que el endpoint api/v1/supervisor/:mail/:password está disponible
    When una solicitud GET se realiza con los parámetros correo electrónico y contraseña
    And el correo electrónico no existe en el sistema
    Then se recibe una Respuesta con estado 404
    And se devuelve un mensaje en el cuerpo de la Respuesta: Uno o más valores son incorrectos