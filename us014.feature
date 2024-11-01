@estadoViajeSensor @Trello=https://trello.com/c/MyRiSNcK
Feature: Visualización del estado del viaje por el sensor
  Como usuario de la aplicación
  Quiero ver el estado del viaje monitoreado por el sensor
  Para conocer si ha sucedido algún incidente con el material transportado

  #-------------------------------------------------------------------------------------------
  Scenario: Información del sensor recibida
    Given que el usuario ha iniciado sesión en la aplicación
    And desea visualizar el estado del viaje por el sensor
    When ingresa a la aplicación
    Then el sistema muestra el estado del viaje monitoreado por el sensor en la sección correspondiente Principal

  #-------------------------------------------------------------------------------------------
  Scenario: Error con el sensor
    Given que el usuario ha iniciado sesión en la aplicación
    And desea visualizar el estado del viaje por el sensor
    When ingresa a la aplicación
    Then el sistema muestra un mensaje de error indicando que no puede recibir información del sensor
    And muestra una opción para comunicarse con el área de soporte