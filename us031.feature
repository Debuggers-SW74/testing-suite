@capturaDeDatosGas @Trello=https://trello.com/c/KvHg0LkB
Feature: Monitoreo de Sensores de Materiales Peligrosos
  Como usuario de la aplicación
  Quiero que el sensor capture y envíe los datos de fuga de gas a la aplicación web o móvil
  Para monitorear el estado de los materiales peligrosos transportados

#-------------------------------------------------------------------------------------------
  Scenario: Captura y envío de datos de Fuga de Gas
    Given el sensor se encuentra instalado en el vehículo
    When el sensor detecta una fuga de gas
    Then envía los datos en tiempo real al sistema de monitoreo
    And el supervisor de la empresa puede revisar los datos para enviar una alerta al conductor

#-------------------------------------------------------------------------------------------
  Scenario: Error en la captura de datos
    Given el sensor se encuentra instalado en el vehículo
    And tiene un problema técnico
    When el sensor intenta capturar los datos de fuga de gas
    Then el sistema muestra que ha ocurrido un error
    And el usuario de la aplicación puede notificarlo para su revisión