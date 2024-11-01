@listarViajesPendientes @Trello=https://trello.com/c/oUEtIBov
Feature: Listar viajes pendientes
  Como desarrollador
  Quiero listar los viajes pendientes mediante una solicitud GET al API
  Para mostrar los viajes pendientes a los usuarios

  #-------------------------------------------------------------------------------------------
  Scenario: Obtener los viajes pendientes de un supervisor
    Given que el endpoint api/v1/trip/:supervisorId/pendingTrips está disponible
    When una solicitud GET se realiza con el parámetro del identificador de la empresa que ha iniciado sesión
    Then se recibe una Respuesta con estado 200
    And se devuelve un recurso de usuario de tipo lista de Viajes en el cuerpo de la Respuesta con valores de ubicación inicial, ubicación final, hora de salida, fecha, descripción, conductor asignado, empresa

  #-------------------------------------------------------------------------------------------
  Scenario: Obtener los viajes pendientes de un conductor
    Given que el endpoint api/v1/trip/:driverId/pendingTrips está disponible
    When una solicitud GET se realiza con el parámetro del identificador del conductor que ha iniciado sesión
    Then se recibe una Respuesta con estado 200
    And se devuelve un recurso de usuario de tipo lista de Viajes en el cuerpo de la Respuesta con valores de ubicación inicial, ubicación final, hora de salida, fecha, descripción, conductor asignado, empresa