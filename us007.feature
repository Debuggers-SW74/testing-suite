@concluirViaje @Trello=https://trello.com/c/RZzHaeHm
Feature: Conclusión de Viajes
  Como supervisor de la empresa
  Quiero concluir los viajes que ya se han realizado
  Para dar por terminada la tarea del conductor

#-------------------------------------------------------------------------------------------
  Scenario: Viaje finalizado
    Given que el supervisor de la empresa ha iniciado sesión en la aplicación
    And desea concluir un viaje
    And ha identificado el viaje en la lista de viajes pendientes
    When marca el viaje como concluido
    Then el sistema registra el viaje como completado
    And notifica al conductor sobre la finalización del viaje

#-------------------------------------------------------------------------------------------
  Scenario: Irregularidades detectadas
    Given que el supervisor de la empresa ha iniciado sesión en la aplicación
    And desea concluir un viaje
    And ha identificado el viaje en la lista de viajes pendientes
    When marca el viaje como concluido
    And el sensor todavía está detectando irregularidades
    Then el sistema muestra un mensaje indicando que el viaje no puede ser finalizado