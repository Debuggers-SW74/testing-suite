@listaDeConductores @Trello=https://trello.com/c/ZBk9a5Np
Feature: Listar conductores por el código del sensor
  Como desarrollador
  Quiero listar los conductores por el código del sensor de su vehículo mediante una solicitud GET al API
  Para mostrar los conductores al usuario

#-------------------------------------------------------------------------------------------
  Scenario Outline: Buscar conductor por código del sensor
    Given que el endpoint api/v1/driver/search?sensorCode=:sensorCode está disponible
    When una solicitud GET se realiza con el parámetro código del sensor <sensorCode>
    Then se recibe una Respuesta con estado <status>
    And <resultado>

    Examples:
      | sensorCode | status | resultado                                                                                     |
      | HRS491     | 200    | se devuelve un recurso de usuario de tipo lista de Conductor con valores de nombre, correo electrónico, número de celular y contraseña |
      | TXM126e    | 404    | se devuelve un mensaje en el cuerpo de la Respuesta: No se encontró el conductor con el código de sensor :sensorCode |