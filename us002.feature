@registroConductor @Trello=https://trello.com/c/iM5do3ES
Feature: Registro de Conductores
  Como conductor
  Quiero registrarme en la aplicación
  Para recibir información de los viajes que debo realizar


#-------------------------------------------------------------------------------------------
  Scenario Outline: Registro del conductor con código de sensor correcto
    Given que el conductor no está registrado
    And se encuentra en la vista inicial de la aplicación
    When ingresa el código del sensor <codigo_sensor> de su vehículo
    And selecciona la opción de registrarse como "Conductor"
    And completa los datos requeridos correctamente
    Then el sistema registra al usuario como Conductor
    And permite al usuario iniciar sesión con las credenciales creadas

    Examples:
      | codigo_sensor |
      | CAR680        |
      | LLE382        |


#-------------------------------------------------------------------------------------------
  Scenario Outline: Registro fallido con código de sensor ya usado
    Given que el conductor no está registrado
    And está en la vista inicial de la aplicación
    And se ha usado el código del sensor <codigo_sensor> anteriormente para registrar un Conductor
    When ingresa el código del sensor <codigo_sensor> de un vehículo
    And selecciona la opción de registrarse como "Conductor"
    And completa los datos requeridos correctamente
    Then el sistema le indica que ya se ha registrado un Conductor para el código <codigo_sensor>

    Examples:
      | codigo_sensor |
      | CAR680        |
      | LLE382        |