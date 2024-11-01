@crearViaje @Trello=https://trello.com/c/0LJSQ0Ck
Feature: Creación de viaje
  Como desarrollador
  Quiero agregar un nuevo viaje al sistema mediante una solicitud POST al API
  Para registrar nuevos viajes para los conductores a cargo de la empresa

  #-------------------------------------------------------------------------------------------
  Scenario: Ingreso correcto de datos
    Given que el endpoint api/v1/trip está disponible
    When una solicitud POST se realiza con los valores para ubicación inicial, ubicación final, hora de salida, fecha, descripción, conductor asignado
    Then se recibe una Respuesta con estado 201
    And se devuelve un recurso de usuario de tipo Viaje en el cuerpo de la Respuesta con valores de ubicación inicial, ubicación final, hora de salida, fecha, descripción, conductor asignado, empresa