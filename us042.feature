@descargarApp @Trello=https://trello.com/c/hO6H3kzT
Feature: Descargar la aplicación móvil desde la página de destino
  Como visitante de la página de destino
  Quiero descargar la aplicación móvil
  Para visualizar la interfaz de esta


#-------------------------------------------------------------------------------------------
  Scenario: Call to Action - Descargar la aplicación
    Given que el visitante de la página se encuentra en la página de destino
    When esté en la sección Descarga
    Then puede descargar la aplicación móvil dando click al botón "Descargar"