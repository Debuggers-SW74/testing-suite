Feature: Evaluar si un sensor ha excedido los thresholds definidos
    Como desarrollador
    Quiero que el Edge Node Server evalúe los thresholds definidos para cada sensor
    Para determinar si se necesita activar una alerta


#-------------------------------------------------------------------------------------------
    Scenario: Sensor dentro de los thresholds
        Given que el endpoint /api/v1/sensors/:sensorCode/thresholds/evaluation está disponible
        And el sensorCode proporcionado es válido
        And los valores del sensor están dentro de los thresholds definidos
        When se realiza una solicitud GET al endpoint con el sensorCode
        Then se recibe una respuesta con estado 200 OK
        And el cuerpo de la respuesta indica que los valores del sensor están dentro de los límites establecidos.


#-------------------------------------------------------------------------------------------
    Scenario: Sensor fuera de los thresholds
        Given que el endpoint /api/v1/sensors/:sensorCode/thresholds/evaluation está disponible
        And el sensorCode proporcionado es válido
        And los valores del sensor exceden los thresholds definidos
        When se realiza una solicitud GET al endpoint con el sensorCode
        Then se recibe una respuesta con estado 200 OK
        And el cuerpo de la respuesta indica qué valores excedieron los thresholds y qué tipo de alerta debe activarse.

