@finalizarViaje @Trello=https://trello.com/c/IuDC3TIv
Feature: Finalizar un viaje
  Como desarrollador
  Quiero dar por terminado un viaje mediante una solicitud PATCH al API
  Para finalizar la tarea del conductor

#-------------------------------------------------------------------------------------------
  Scenario: Finalizar un viaje
    Given que el endpoint api/v1/trip/:tripId/done está disponible
    When una solicitud PATCH se realiza con el parámetro del identificador del viaje que se va a modificar
    Then se recibe una Respuesta con estado 204