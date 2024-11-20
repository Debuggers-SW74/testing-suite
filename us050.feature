Feature: Registrar salud del IoT Embedded App
Como desarrollador
Quiero registrar información de salud del dispositivo IoT
Para monitorear su funcionamiento y prevenir fallas


#-------------------------------------------------------------------------------------------
    Scenario: Salud registrada exitosamente
        Given que el endpoint /api/v1/devices/:deviceId/health está disponible
        And el deviceId proporcionado es válido
        And el payload contiene información válida de salud del dispositivo
        When se realiza una solicitud POST al endpoint con el payload correspondiente
        Then se recibe una respuesta con estado 201 Created
        And los datos de salud se almacenan en la base de datos.



#-------------------------------------------------------------------------------------------
    Scenario: Intento de registrar datos de salud incompletos
        Given que el endpoint /api/v1/devices/:deviceId/health está disponible
        And el payload proporcionado está incompleto
        When se realiza una solicitud POST al endpoint con el payload inválido
        Then se recibe una respuesta con estado 400 Bad Request
        And el cuerpo de la respuesta contiene un mensaje indicando los campos faltantes.