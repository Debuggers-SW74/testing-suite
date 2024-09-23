@paginaDestino @Trello=https://trello.com/c/FrBzt0kY
Feature: Información sobre características y beneficios en la página de destino
  Como visitante de la página de destino
  Quiero saber cuáles son las características y beneficios
  Para evaluar la contratación de este servicio


#-------------------------------------------------------------------------------------------
  Scenario: Características del Producto
    Given que el visitante de la página se encuentra en la página de destino
    When se encuentre en la sección Características
    Then verá información adicional sobre las características principales de FastPorte


#-------------------------------------------------------------------------------------------
  Scenario: Beneficios para cada segmento objetivo
    Given que el visitante de la página se encuentra en la página de destino
    And visualiza las características de FastPorte
    When deslice hacia abajo
    Then ve cuáles son los beneficios que se ofrecen para cada segmento objetivo