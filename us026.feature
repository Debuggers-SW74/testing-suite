@listarConductores @Trello=https://trello.com/c/oWYuYNiG
Feature: Listar conductores por su nombre
  Como desarrollador
  Quiero listar los conductores por su nombre mediante una solicitud GET al API
  Para mostrar los conductores al usuario

#-------------------------------------------------------------------------------------------
  Scenario Outline: Buscar conductor por nombre
    Given que el endpoint api/v1/driver/search?name=:name está disponible
    When una solicitud GET se realiza con el parámetro nombre del conductor <nombre>
    Then se recibe una Respuesta con estado <status>
    And <resultado>

    Examples:
      | nombre          | status | resultado                                                                                     |
      | NombreExistente | 200    | se devuelve un recurso de usuario de tipo lista de Conductor con valores de nombre, correo electrónico, número de celular y contraseña |
      | NombreInexistente | 404  | se devuelve un mensaje en el cuerpo de la Respuesta: No se encontró el conductor con el nombre :nombre |