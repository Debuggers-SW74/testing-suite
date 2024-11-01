@notificacionNuevoViaje @Trello=https://trello.com/c/QiTIo0XC
Feature: Notificación de nuevo viaje asignado
  Como conductor de la aplicación
  Quiero recibir una notificación de nuevo viaje
  Para estar informado sobre los viajes asignados

  #-------------------------------------------------------------------------------------------
  Scenario: Notificación de un nuevo viaje en la sección Principal
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir una notificación de un nuevo viaje
    When ingresa a la aplicación
    Then el sistema muestra una notificación del nuevo viaje asignado

  #-------------------------------------------------------------------------------------------
  Scenario: Notificación de un nuevo viaje en la sección Notificaciones
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir una notificación de un nuevo viaje
    When selecciona la opción de ver las notificaciones
    Then el sistema lista las notificaciones
    And muestra la notificación del nuevo viaje asignado

  #-------------------------------------------------------------------------------------------
  Scenario: Sin notificaciones de viajes
    Given que el conductor ha iniciado sesión en la aplicación
    And desea recibir una notificación de un nuevo viaje
    When selecciona la opción de ver las notificaciones
    Then el sistema muestra un mensaje indicando que no posee notificaciones