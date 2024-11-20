Feature: Registrar un historial de datos en tiempo real de un sensor
    Como desarrollador
    Quiero guardar los datos recolectados por los sensores en una base de datos
    Para mantener un historial detallado que permita análisis posteriores


#-------------------------------------------------------------------------------------------
    Scenario: Datos registrados exitosamente
        Given que el endpoint /api/v1/sensors/:sensorCode/data está disponible
        And el sensorCode proporcionado es válido
        And el payload contiene datos válidos del sensor
        When se realiza una solicitud POST al endpoint con el payload correspondiente
        Then se recibe una respuesta con estado 201 Created
        And los datos se almacenan en la base de datos con una marca de tiempo.


#-------------------------------------------------------------------------------------------
    Scenario: Fallo al registrar datos por payload inválido
        Given que el endpoint /api/v1/sensors/:sensorCode/data está disponible
        And el payload proporcionado está vacío o incompleto
        When se realiza una solicitud POST al endpoint con el payload inválido
        Then se recibe una respuesta con estado 400 Bad Request
        And el cuerpo de la respuesta contiene un mensaje indicando el problema en la estructura del payload.