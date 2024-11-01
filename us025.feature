@cancelarViaje @Trello=https://trello.com/c/MxKZ4Eon
Feature: Cancelar un viaje
  Como desarrollador
  Quiero cancelar un viaje mediante una solicitud DELETE al API
  Para que el conductor no realice ese viaje

#-------------------------------------------------------------------------------------------
  Scenario: Cancelar un viaje
    Given que el endpoint api/v1/trip/:tripId está disponible
    When una solicitud DELETE se realiza con el parámetro del identificador del viaje que se va a eliminar
    Then se recibe una Respuesta con estado 204