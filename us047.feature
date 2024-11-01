@capturaDeDatosDePresión @Trello=https://trello.com/c/PmGVQoRj
Feature: Implementación del Edge Server
  Como desarrollador
  Quiero implementar el Edge Server para gestionar los datos del dispositivo IoT
  Para garantizar un funcionamiento eficiente del sistema.

#-------------------------------------------------------------------------------------------
  Scenario: Realizar el endpoint de estados
    Given el Edge Server está en funcionamiento
    When se realiza una solicitud para guardar información de los datos sensados
    Then el sistema guarda la información correctamente
    And se recibe una respuesta con estado 201

#-------------------------------------------------------------------------------------------
  Scenario: Realizar el endpoint de salud
    Given el Edge Server está en funcionamiento
    When se supera un límite umbral
    Then el sistema registra la información de salud correspondiente
    And se recibe una respuesta con estado 201

#-------------------------------------------------------------------------------------------
  Scenario: Realizar el endpoint de thresholds
    Given el Edge Server está en funcionamiento
    When se actualizan los límites de los umbrales
    Then el sistema actualiza la información correctamente
    And se recibe una respuesta con estado 200

#-------------------------------------------------------------------------------------------
  Scenario: Obtener token para el dispositivo IoT
    Given el Edge Server está en funcionamiento
    When se realiza una solicitud para obtener un token
    Then el sistema genera un token válido
    And se recibe una respuesta con estado 200