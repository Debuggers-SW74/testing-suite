@buscarConductor @Trello=https://trello.com/c/2RwTQ41h
Feature: Búsqueda de Conductores
  Como supervisor de la empresa
  Quiero buscar un conductor
  Para asignarle un viaje

#-------------------------------------------------------------------------------------------
  Scenario: Búsqueda de conductor existente
    Given que el supervisor de la empresa ha iniciado sesión en la aplicación
    And desea buscar un conductor
    When ingresa el nombre del conductor o el código del sensor de su vehículo
    And confirma la búsqueda
    Then el sistema busca y muestra al conductor correspondiente

#-------------------------------------------------------------------------------------------
  Scenario: Búsqueda de conductor inexistente
    Given que el supervisor de la empresa ha iniciado sesión en la aplicación
    And desea buscar un conductor
    When ingresa el nombre del conductor o el código del sensor de su vehículo
    And ingresa un carácter incorrectamente
    And confirma la búsqueda
    Then el sistema muestra un mensaje indicando que no se ha encontrado ningún conductor que coincida con los datos ingresados