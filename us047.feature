Feature: Recibir el estado actual del sensor a través de un RESTful API
  Como desarrollador
  Quiero obtener el estado actual del sensor
  Para evaluar si los valores están dentro de los thresholds definidos


#-------------------------------------------------------------------------------------------
  Scenario: Recibir estado del sensor exitosamente
    Given que el endpoint /api/v1/sensors/:sensorCode/state está disponible
    And el sensorCode proporcionado es válido
    When se realiza una solicitud GET al endpoint con el sensorCode válido
    Then se recibe una respuesta con estado 200 OK
    And el cuerpo de la respuesta contiene un recurso SensorState con los valores actuales del sensor (temperatura, humedad, presión y gas).


#-------------------------------------------------------------------------------------------
  Scenario: Intento de obtener el estado de un sensor inexistente
    Given que el endpoint /api/v1/sensors/:sensorCode/state está disponible
    And el sensorCode proporcionado no existe
    When se realiza una solicitud GET al endpoint con el sensorCode inválido
    Then se recibe una respuesta con estado 404 Not Found
    And el cuerpo de la respuesta contiene un mensaje indicando que no se encontraron datos para el sensor solicitado.