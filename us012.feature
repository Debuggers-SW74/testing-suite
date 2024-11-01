@notificacionViajeConcluido @Trello=https://trello.com/c/NufFJ3nj
Feature: Notificación de viaje concluido
  Como conductor de la aplicación
  Quiero recibir una notificación de viaje concluido
  Para saber si el viaje asignado ha finalizado

  #-------------------------------------------------------------------------------------------
  Scenario: Notificación de un viaje concluido en la sección Principal
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir la notificación de un viaje concluido
    When ingresa a la aplicación
    Then el sistema muestra una notificación del viaje concluido

  #-------------------------------------------------------------------------------------------
  Scenario: Notificación de un viaje concluido en la sección Notificaciones
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir la notificación de un viaje concluido
    When selecciona la opción de ver las notificaciones
    Then el sistema lista las notificaciones
    And muestra la notificación del viaje concluido

  #-------------------------------------------------------------------------------------------
  Scenario: Sin notificaciones de viajes
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir la notificación de un viaje concluido
    When selecciona la opción de ver las notificaciones
    Then el sistema muestra un mensaje indicando que no posee notificaciones