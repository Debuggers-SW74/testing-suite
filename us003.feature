@inicioSesionUsuario @Trello=https://trello.com/c/mN0aRbpr
Feature: Inicio de sesión de usuarios en la aplicación
  Como usuario de la aplicación
  Quiero iniciar sesión en la aplicación
  Para acceder a las funcionalidades de la aplicación


#-------------------------------------------------------------------------------------------
  Scenario Outline: Inicio de sesión con credenciales correctas
    Given que el usuario de la aplicación desea iniciar sesión
    And está en la vista inicial de la aplicación
    When ingresa sus credenciales <correo> y <contraseña>
    Then el sistema permite al usuario acceder a las funcionalidades de la aplicación

    Examples:
      | correo                     | contraseña    |
      | jorge.supervisor@gmail.com | password1     |
      | mario.driver@gmail.com     | password2     |


#-------------------------------------------------------------------------------------------
  Scenario Outline: Inicio de sesión fallido con credenciales incorrectas
    Given que el usuario de la aplicación desea iniciar sesión
    And está en la vista inicial de la aplicación
    When ingresa sus credenciales <correo> y <contraseña>
    And se ha equivocado en su correo o contraseña
    Then el sistema le indica que una de sus credenciales es incorrecta

    Examples:
      | correo                     | contraseña     |
      | joge.superviso@mail.com    | password1      |
      | mario.driver@gmail.com     | pasword2       |