@crearSupervisor @Trello=https://trello.com/c/8TllB5wr
Feature: Creación de usuario tipo Supervisor
  Como desarrollador
  Quiero agregar un nuevo usuario de tipo Empresa al sistema mediante una solicitud POST al API
  Para permitir el acceso de nuevos usuarios de tipo Supervisor a la aplicación

  #-------------------------------------------------------------------------------------------
  Scenario: Ingreso de correo único
    Given que el endpoint api/v1/supervisor está disponible
    When una solicitud POST se realiza con los valores para nombre, correo electrónico y contraseña
    Then se recibe una Respuesta con estado 201
    And se devuelve un recurso de usuario de tipo Supervisor en el cuerpo de la Respuesta con valores de nombre, correo electrónico y contraseña

  #-------------------------------------------------------------------------------------------
  Scenario: Ingreso de correo existente
    Given que el endpoint api/v1/supervisor está disponible
    When una solicitud POST se realiza con los valores para nombre, correo electrónico y contraseña
    And el correo electrónico ya existe en el sistema
    Then se recibe una Respuesta con estado 400
    And se devuelve un mensaje en el cuerpo de la Respuesta: El correo electrónico ya se encuentra registrado en otro usuario