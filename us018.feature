@crearConductor @Trello=https://trello.com/c/0J5Ur4U4
Feature: Creación de usuario tipo Conductor
  Como desarrollador
  Quiero agregar un nuevo usuario de tipo Conductor al sistema mediante una solicitud POST al API
  Para permitir el acceso de nuevos usuarios de tipo Conductor a la aplicación

  #-------------------------------------------------------------------------------------------
  Scenario: Ingreso de correo único
    Given que el endpoint api/v1/driver está disponible
    When una solicitud POST se realiza con los valores para nombre, correo electrónico, número de celular y contraseña
    Then se recibe una Respuesta con estado 201
    And se devuelve un recurso de usuario de tipo Conductor en el cuerpo de la Respuesta con valores de nombre, correo electrónico, número de celular y contraseña

  #-------------------------------------------------------------------------------------------
  Scenario: Ingreso de correo existente
    Given que el endpoint api/v1/driver está disponible
    When una solicitud POST se realiza con los valores para nombre, correo electrónico, número de celular y contraseña
    And el correo electrónico ya existe en el sistema
    Then se recibe una Respuesta con estado 400
    And se devuelve un mensaje en el cuerpo de la Respuesta: El correo electrónico ya se encuentra registrado en otro usuario