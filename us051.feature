Feature: Obtener detalles del viaje asignado a un sensor IoT
    Como desarrollador
    Quiero obtener información del viaje asignado a un dispositivo IoT
    Para relacionar los datos recolectados con el viaje correspondiente


#-------------------------------------------------------------------------------------------
    Scenario: Detalles del viaje obtenidos exitosamente
        Given que el endpoint /api/v1/devices/:deviceId/trips está disponible
        And el deviceId proporcionado tiene un viaje asignado
        When se realiza una solicitud GET al endpoint con el deviceId válido
        Then se recibe una respuesta con estado 200 OK
        And el cuerpo de la respuesta contiene un recurso TripDetails con información del viaje asignado, incluyendo ID del viaje, conductor, camión y supervisor.


#-------------------------------------------------------------------------------------------
    Scenario: Intento de obtener datos de un viaje inexistente
        Given que el endpoint /api/v1/devices/:deviceId/trips está disponible
        And el deviceId proporcionado no tiene un viaje asignado
        When se realiza una solicitud GET al endpoint con el deviceId inválido
        Then se recibe una respuesta con estado 404 Not Found
        And el cuerpo de la respuesta contiene un mensaje indicando que no hay un viaje asignado al dispositivo solicitado.