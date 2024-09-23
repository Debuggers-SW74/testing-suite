@contactarServicio @Trello=https://trello.com/c/FrBzt0kY
Feature: Contacto desde la página de destino
  As visitante de la página de destino
  I want to contactarme con FastPorte
  In order to obtener más información del producto


#-------------------------------------------------------------------------------------------
Scenario: Envío exitoso del formulario de contacto
  Given el visitante está en la página de destino de FastPorte
  And se desplaza hasta la sección "Contáctanos"
  When ingresa la siguiente información en el formulario:
    | Campo       | Valor                                        |
    | Nombre      | Juan Pérez                                   |
    | Email       | jorge.supervisor@gmail.com                   |
    | Tema        | Consulta sobre el servicio FastPorte         |
    | Mensaje     | Quisiera más información sobre sus servicios |
  And hace clic en el botón "Enviar mensaje"
  Then debería ver un mensaje de confirmación que diga "Mensaje enviado con éxito"
  And debería recibir un email de confirmación en jorge.supervisor@gmail.com


#-------------------------------------------------------------------------------------------
Scenario: Intento de envío de formulario con campos incompletos
  Given el visitante está en la página de destino de FastPorte
  And se desplaza hasta la sección "Contáctanos"
  When intenta enviar el formulario sin completar todos los campos requeridos
  Then debería ver mensajes de error indicando los campos faltantes
  And el formulario no debería enviarse


#-------------------------------------------------------------------------------------------
Scenario Outline: Validación de formato de email
  Given el visitante está en la página de destino de FastPorte
  And se desplaza hasta la sección "Contáctanos"
  When ingresa "<email>" en el campo de email
  And completa el resto de los campos correctamente
  And hace clic en el botón "Enviar mensaje"
  Then debería ver "<mensaje>"

  Examples:
    | email                       | mensaje                                    |
    | jorge.supervisor@gmail.com  | Mensaje enviado con éxito                  |
    | jorge.supervisor@gmail      | Por favor, ingrese un email válido         |
    | jorge.supervisor.com        | Por favor, ingrese un email válido         |
    | @gmail.com                  | Por favor, ingrese un email válido         |