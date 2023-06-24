Feature: Calificar la Cita con el Nutricionista
Como usuario quiero poder calificar la cita con el nutricionista, para brindar retroalimentación sobre mi experiencia y ayudar a mejorar el servicio
Scenario: Después de finalizar la cita, el sistema muestra al usuario la opción de calificar la cita con el nutricionista.
    Dado que el [usuario] finalice una cita con el nutricionista, se mostrará la [opción] para calificar la cita con el profesional, la calificación será del 1 al 10.
    Cuando el usuario seleccione una [puntuación] para la cita y confirme su elección
    Entonces la puntuación seleccionada se registra correctamente en el sistema y el usuario recibe una [confirmación_visual] de que su evaluación se ha registrado.
Examples: Input
    | puntuación |
    | 10         |

Examples: Output
    | usuario         | opcion          | confirmacion_visual                  |
    | Alejandro Ramos | Calificar cita: | Calificacion registrada correctamente|