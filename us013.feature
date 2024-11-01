@notificacionViajeCancelado @Trello=https://trello.com/c/psHsBHfH
Feature: Notificación de viaje cancelado
  Como conductor de la aplicación
  Quiero recibir una notificación de viaje cancelado
  Para estar informado sobre viajes cancelados

  #-------------------------------------------------------------------------------------------
  Scenario: Notificación de un viaje cancelado en la sección Principal
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir la notificación de un viaje cancelado
    When ingresa a la aplicación
    Then el sistema muestra una notificación del viaje cancelado

  #-------------------------------------------------------------------------------------------
  Scenario: Notificación de un viaje cancelado en la sección Notificaciones
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir la notificación de un viaje cancelado
    When selecciona la opción de ver las notificaciones
    Then el sistema lista las notificaciones
    And muestra la notificación del viaje cancelado

  #-------------------------------------------------------------------------------------------
  Scenario: Sin notificaciones de viajes
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir la notificación de un viaje cancelado
    When selecciona la opción de ver las notificaciones
    Then el sistema muestra un mensaje indicando que no posee notificaciones