@registroViaje @Trello=https://trello.com/c/k8Z98dzh
Feature: Registro de Viajes por Supervisores
  Como supervisor de la empresa
  Quiero registrar un viaje
  Para notificar al conductor los servicios que debe realizar

#-------------------------------------------------------------------------------------------
  Scenario: Registro exitoso de un viaje
    Given que el supervisor de la empresa ha iniciado sesión en la aplicación
    And desea registrar un viaje en el itinerario
    When selecciona al conductor que realizará la entrega
    And completa la información del viaje correctamente
    Then el sistema crea el viaje
    And notifica al conductor sobre el viaje que debe realizar

#-------------------------------------------------------------------------------------------
  Scenario: Conflicto de horario en el registro de viaje
    Given que el supervisor de la empresa ha iniciado sesión en la aplicación
    And desea registrar un viaje en el itinerario
    When selecciona al conductor que realizará la entrega
    And completa la información del viaje correctamente
    And el horario elegido ya ha sido reservado para otro viaje
    Then el sistema indica que se debe de elegir otro horario para el servicio de transporte