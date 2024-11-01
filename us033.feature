@capturaDeDatosDePresión @Trello=https://trello.com/c/AjU2VJSW
Feature: Captura y envío de datos de presión
  Como usuario de la aplicación
  Quiero que el sensor capture y envíe los datos de presión a la aplicación web o móvil
  Para monitorear el estado de los materiales peligrosos transportados

#-------------------------------------------------------------------------------------------
  Scenario: Captura y envío de datos de Presión
    Given el sensor se encuentra instalado en el vehículo
    When el sensor detecta la presión
    Then envía los datos en tiempo real al sistema de monitoreo
    And el supervisor de la empresa puede revisar los datos para enviar una alerta al conductor

#-------------------------------------------------------------------------------------------
  Scenario: Error en la captura de datos
    Given el sensor se encuentra instalado en el vehículo
    And tiene un problema técnico
    When el sensor intenta capturar los datos de presión
    Then el sistema muestra que ha ocurrido un error
    And el usuario de la aplicación puede notificarlo para su revisión