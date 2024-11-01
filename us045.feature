@visualizarGráficosPresiónyFugaGas @Trello=https://trello.com/c/eB9YPddC
Feature: Visualización de Gráficos de Presión y Estado de Fuga de Gas
  Como supervisor y conductor
  Quiero ver un gráfico que muestre la presión y el estado de fuga de gas
  Para detectar rápidamente cualquier anomalía en el transporte de materiales peligrosos.

#-------------------------------------------------------------------------------------------
  Scenario: Gráficos en la aplicación web y la aplicación móvil
    Given el supervisor o conductor está en la aplicación web o móvil
    When esté en la sección Home
    Then se muestra un gráfico con la presión y el estado de fuga de gas.

#-------------------------------------------------------------------------------------------
  Scenario Outline: Gráficos en estado activo
    Given el gráfico está mostrando datos
    When <estado>
    Then se muestra un indicador "<indicador>" en color <color>.

    Examples:
      | estado                       | indicador | color  |
      | no hay fuga de gas detectada | NO        | gris  |
      | se detecta una fuga de gas   | YES       | rojo  |