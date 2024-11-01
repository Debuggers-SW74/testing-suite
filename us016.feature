@modificarPerfil @Trello=https://trello.com/c/InuRUabG
Feature: Modificación de información de perfil
  Como usuario de la aplicación
  Quiero modificar mi información de perfil
  Para corregir errores o mantenerla actualizada

  #-------------------------------------------------------------------------------------------
  Scenario: Edición de perfil
    Given que el usuario ha iniciado sesión en la aplicación
    And desea modificar su información de perfil
    When actualiza los campos disponibles con la nueva información
    And confirma los cambios
    Then el sistema guarda los cambios
    And muestra la información actualizada en la vista de perfil

  #-------------------------------------------------------------------------------------------
  Scenario: Caracteres inválidos
    Given que el usuario ha iniciado sesión en la aplicación
    And desea modificar su información de perfil
    When actualiza los campos disponibles con la nueva información
    And confirma los cambios
    And ha ingresado caracteres inválidos en algún campo
    Then el sistema muestra un mensaje indicando que el formato ingresado es inválido