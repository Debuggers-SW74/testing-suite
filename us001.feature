@registroSupervisor @Trello=https://trello.com/c/lPnrU5ZD
Feature: Registro de Supervisores
  Como supervisor de la empresa
  Quiero registrarme en la aplicación
  Para supervisar a los conductores a mi cargo


#-------------------------------------------------------------------------------------------
  Scenario Outline: Registro del supervisor con diferentes códigos de sensor
    Given que el supervisor de la empresa no está registrado
    And está en la vista inicial de la aplicación
    When ingresa el código del sensor <codigo_sensor> de un vehículo
    And selecciona la opción de registrarse como "Supervisor"
    And completa los datos requeridos correctamente
    Then el sistema registra al usuario como Supervisor
    And permite al usuario iniciar sesión con las credenciales creadas

    Examples:
      | codigo_sensor |
      | HRS491        |
      | TXM126        |


#-------------------------------------------------------------------------------------------
  Scenario Outline: Registro fallido con código de sensor ya usado
    Given que el supervisor de la empresa no está registrado
    And está en la vista inicial de la aplicación
    And el código del sensor <codigo_sensor> ya ha sido usado para registrar un Supervisor
    When ingresa el código del sensor <codigo_sensor> de un vehículo
    And selecciona la opción de registrarse como "Supervisor"
    And completa los datos requeridos correctamente
    Then el sistema le indica que ya se ha registrado un Supervisor para el código <codigo_sensor>

    Examples:
      | codigo_sensor |
      | HRS491        |
      | TXM126        |