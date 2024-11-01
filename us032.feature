@capturarDatosDeTemperatura @Trello=https://trello.com/c/dHyVKPlt
Feature: Captura y envío de datos de temperatura
  Como usuario de la aplicación
  Quiero que el sensor capture y envíe los datos de temperatura a la aplicación web o móvil
  Para monitorear el estado de los materiales peligrosos transportados

#-------------------------------------------------------------------------------------------
  Scenario: Captura y envío de datos de Temperatura
    Given el sensor se encuentra instalado en el vehículo
    When el sensor detecta la temperatura
    Then envía los datos en tiempo real al sistema de monitoreo
    And el supervisor de la empresa puede revisar los datos para enviar una alerta al conductor

#-------------------------------------------------------------------------------------------
  Scenario: Error en la captura de datos
    Given el sensor se encuentra instalado en el vehículo
    And tiene un problema técnico
    When el sensor intenta capturar los datos de temperatura
    Then el sistema muestra que ha ocurrido un error
    And el usuario de la aplicación puede notificarlo para su revisión