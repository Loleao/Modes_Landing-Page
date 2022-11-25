Feature: Formas de registro
    Como usuario quiero que exista varias formas de registrarme para facilitar el registro a la aplicación.
    Scenario: Registro con cuenta de Google
    Given el usuario este en la pantalla de inicio de sesión
    And pulse la opción “No tiene una cuenta”
    And este en la pantalla de registro de usuario
    When el usuario seleccione la opción “Registrarse con cuenta de Google”
    And el usuario seleccione una cuenta
    Then la aplicación registrara la cuenta creada
    And la guardará en la base de datos
    And mostrara un mensaje que dice “Registro completado”
    
    

Feature: Cambio de contraseña
    Como usuario quiero que se pueda cambiar de contraseña cuando no me acuerde la contraseña para poder seguir usando la aplicación con la misma cuenta.
    Scenario: Olvido de contraseña
    Dado que el usuario este en la pantalla de inicio de sesión
    Cuando pulse la opción “¿Olvidó su contraseña?”
    Y le aparezca la pantalla de cambio de contraseña
    Y confirme que es dueño de la cuenta
    Y escriba la nueva contraseña
    Entonces la aplicación realizara el cambio a la cuenta señalada
    Y mostrara un mensaje que dice “Contraseña cambiada con éxito”

Feature: Organización de tiempo
    Como estudiante de nivel básico quiero que pueda organizar mi tiempo en la aplicación para tener todas mis actividades programadas.
    Scenario: Creando actividades
    Dado que el estudiante este en la pantalla principal
    Cuando el usuario seleccione la opción “Actividades”
    Y seleccione la opción de “Nueva actividad”
    Y relleno los datos necesarios
    Entonces guardará la actividad
    Y mostrara un mensaje que dice “Actividad guardada”

Feature: Mètodo de estudio
    Como estudiante universitario quiero un método de estudio eficaz para poder mejorar mi capacidad de memorización.
    Scenario: Planificación de actividades automática
    Dado que el estudiante inicio una lección
    Cuando el estudiante haya finalizado su primera sesión
    Entonces la aplicación añadirá automáticamente las otras sesiones
    Y las mostrara en el apartado de “Actividades”

Feature: Evaluar lo aprendido
    Como estudiante de educación básica quiero que pueda evaluar lo aprendido para comprobar si realmente he aprendido.
    Scenario: Iniciar evaluación
    Dado que el usuario este en la sección “Evaluación”
    Cuando seleccione la opción “Empezar”
    Y seleccione el tema a evaluar
    Entonces la aplicación entrara en modo evaluación
    Y mostrará e iniciará la evaluación

Feature: Creación de cartas
    Como estudiante universitario quiero poder crear mis propias cartas de estudio para estudiar lo que seleccione.
    Scenario: Crear un nuevo conjunto de cartas
    Dado que el estudiante este en la pantalla de “Biblioteca”
    Cuando pulse el icono de para agregar cartas
    Y rellene los datos para el conjunto de cartas
    Y rellenes los campos necesarios para una carta
    Y pulse a la opción de guardado
    Entonces la aplicación registrara el nuevo conjunto de cartas
    Y mostrara un mensaje que dice “Las cartas se guardaron de forma exitosa”

Feature: Sesiones de estudio
    Como estudiante universitario quiero poder estudiar en la aplicación con las cartas que cree anteriormente para recibir una forma de aprendizaje.
    Scenario: Práctica usando cartas
    Dado que el usuario ya creó un conjunto de cartas
    Y se encuentra en la pantalla “Práctica”
    Cuando seleccione la opción “Iniciar lección”
    Y seleccione un conjunto de cartas
    Entonces la aplicación mostrara en pantalla preguntas basadas en las cartas seleccionadas
    Y al finalizar las preguntas la app mostrara un mensaje “Finalizaste todas las preguntas”

Feature: Adición de cartas a un conjunto existente
    Como estudiante de nivel básico quiero poder añadir cartas a un conjunto luego de haberlo creado para que pueda crear más cartas si curso un nuevo tema.
    Scenario: Añadir cartas a un conjunto
    Dado que el estudiante se encuentra en el apartado “Biblioteca”
    Cuando seleccione un conjunto de cartas
    Y pulse el botón para agregar más cartas
    Entonces la aplicación mostrara en pantalla el editor de cartas
    Y al finalizar las agregaciones, guardara todos los cambios
    Y mostrara el mensaje “Guardado exitoso”

Feature: Informe de evaluación
    Como estudiante de nivel básico quiero poder ver un informe al final de cada evaluación para analizar si realmente estoy aprendiendo con las practicas.
    Scenario: Visualización del informe
    Dado que el estudiante se encuentre en una evaluación 
    Y respondió todas las preguntas
    Cuando seleccione la opción “Terminar y guardar”
    Y confirme que si quiere finalizar la evaluación
    Entonces la aplicación mostrara en pantalla un informe de la evaluación

Feature: Tipos de cartas
    Como estudiante universitario quiero que existan varios tipos de cartas para que tenga una variedad de cartas de diferentes tipos.
    Scenario: Cambio de tipo de carta
    Dado que el estudiante este en la pantalla de creación de cartas
    Cuando cambie de tipo en el switch de tipo de carta
    Entonces la aplicación cambiara el formato en el que puede crear su pregunta