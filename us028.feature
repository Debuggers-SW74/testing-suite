@obtenerViaje @Trello=https://trello.com/c/33tV5ob0
Feature: Obtener un viaje
  Como desarrollador
  Quiero obtener un viaje mediante una solicitud GET al API
  Para mostrar la información al usuario

#-------------------------------------------------------------------------------------------
  Scenario: Obtener un viaje
    Given que el endpoint api/v1/trip/:tripId está disponible
    When una solicitud GET se realiza con el parámetro del identificador del viaje el cual se desea ver la información
    Then se recibe una Respuesta con estado 200
    And se devuelve un recurso de usuario de tipo Viaje en el cuerpo de la Respuesta con valores de ubicación inicial, ubicación final, hora de salida, fecha, descripción, conductor asignado, empresa.

