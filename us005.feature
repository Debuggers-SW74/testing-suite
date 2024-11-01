@visualizarViajesPendientes @Trello=https://trello.com/c/bDckwrBg
Feature: Visualización de Viajes Pendientes
  Como usuario de la aplicación
  Quiero visualizar los viajes pendientes
  Para gestionar los viajes que se deben realizar

#-------------------------------------------------------------------------------------------
  Scenario: Viajes pendientes existentes
    Given que el usuario ha iniciado sesión en la aplicación
    And desea visualizar los viajes pendientes
    When selecciona la opción para ver el itinerario
    Then el sistema muestra los viajes pendientes

#-------------------------------------------------------------------------------------------
  Scenario: Sin viajes pendientes
    Given que el usuario ha iniciado sesión en la aplicación
    And desea visualizar los viajes pendientes
    When selecciona la opción para ver el itinerario
    And no posee ningún viaje agendado
    Then el sistema muestra un mensaje indicando que no hay viajes pendientes