@capturaDeDatosDeTemperaturayHumedad @Trello=https://trello.com/c/2QuQLDap
Feature: Visualización de Gráficos de Temperatura y Humedad
  Como supervisor y conductor
  Quiero ver un gráfico que muestre la temperatura y la humedad en función del tiempo
  Para monitorear fácilmente estas variables críticas durante el transporte de materiales peligrosos.

#-------------------------------------------------------------------------------------------
  Scenario: Gráficos en la aplicación web y la aplicación móvil
    Given el supervisor o conductor está en la aplicación web o móvil
    When esté en la sección Home
    Then se muestra un gráfico con temperatura y humedad.