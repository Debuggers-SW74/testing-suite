@visualizarHistorialViajes @Trello=https://trello.com/c/tPqk5TS9
Feature: Visualización del Historial de Viajes
  Como usuario de la aplicación
  Quiero visualizar el historial de viajes
  Para llevar un registro de los viajes completados

#-------------------------------------------------------------------------------------------
  Scenario: Viajes completados existentes
    Given que el usuario ha iniciado sesión en la aplicación
    And desea visualizar el historial de viajes
    When selecciona la opción para ver el historial de viajes
    Then el sistema muestra los viajes completados en el historial

#-------------------------------------------------------------------------------------------
  Scenario: Sin viajes completados
    Given que el usuario ha iniciado sesión en la aplicación
    And desea visualizar el historial de viajes
    When selecciona la opción para ver el historial de viajes
    And no posee ningún viaje completado
    Then el sistema muestra un mensaje indicando que no hay viajes en el historial