@cancelarViaje @Trello=https://trello.com/c/Yxo0LHWM
Feature: Cancelación de Viajes
  Como supervisor de la empresa
  Quiero cancelar un viaje
  Para descartar un viaje creado erróneamente

#-------------------------------------------------------------------------------------------
  Scenario: Viaje cancelado
    Given que el supervisor de la empresa ha iniciado sesión en la aplicación
    And desea cancelar un viaje
    And ha identificado el viaje en la lista de viajes pendientes
    When cancela el viaje
    Then el sistema elimina el registro del viaje
    And notifica al conductor sobre el viaje cancelado

#-------------------------------------------------------------------------------------------
  Scenario: Viaje en curso
    Given que el supervisor de la empresa ha iniciado sesión en la aplicación
    And desea cancelar un viaje
    And ha identificado el viaje en la lista de viajes pendientes
    When cancela el viaje
    And el viaje ya se encuentra en curso
    Then el sistema muestra un mensaje indicando que el viaje ya se encuentra en curso
    And muestra la opción para contactar con el conductor
    And con el área de soporte