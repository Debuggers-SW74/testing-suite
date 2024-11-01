@listarHistorialViajes @Trello=https://trello.com/c/dVJofBuj
Feature: Listar historial de viajes
  Como desarrollador
  Quiero listar el historial de viajes mediante una solicitud GET al API
  Para mostrar los viajes realizados del usuario

  #-------------------------------------------------------------------------------------------
  Scenario: Obtener los viajes realizados asignados por un supervisor
    Given que el endpoint api/v1/trip/:supervisorId/doneTrips está disponible
    When una solicitud GET se realiza con el parámetro del identificador de la empresa que ha iniciado sesión
    Then se recibe una Respuesta con estado 200
    And se devuelve un recurso de usuario de tipo lista de Viajes en el cuerpo de la Respuesta con valores de ubicación inicial, ubicación final, hora de salida, fecha, descripción, conductor asignado, empresa

  #-------------------------------------------------------------------------------------------
  Scenario: Obtener los viajes realizados por un conductor
    Given que el endpoint api/v1/trip/:driverId/doneTrips está disponible
    When una solicitud GET se realiza con el parámetro del identificador del conductor que ha iniciado sesión
    Then se recibe una Respuesta con estado 200
    And se devuelve un recurso de usuario de tipo lista de Viajes en el cuerpo de la Respuesta con valores de ubicación inicial, ubicación final, hora de salida, fecha, descripción, conductor asignado, empresa