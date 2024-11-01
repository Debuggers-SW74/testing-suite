@visualizarInformacionViaje @Trello=https://trello.com/c/8nASShCI
Feature: Visualización de Información de Viajes
  Como usuario de la aplicación
  Quiero visualizar la información de un viaje
  Para revisar algún dato en concreto

#-------------------------------------------------------------------------------------------
  Scenario: Visualizar información de un viaje pendiente
    Given que el usuario ha iniciado sesión en la aplicación
    And desea visualizar la información de un viaje
    And ha identificado el viaje en la lista de viajes pendientes
    When selecciona el viaje correspondiente
    Then el sistema muestra la información del viaje

#-------------------------------------------------------------------------------------------
  Scenario: Visualizar información de un viaje realizado
    Given que el usuario ha iniciado sesión en la aplicación
    And desea visualizar la información de un viaje
    When selecciona la opción de ver el historial de viajes
    And elige el viaje correspondiente en la lista de viajes completados
    Then el sistema muestra la información del viaje realizado