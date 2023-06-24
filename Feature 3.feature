Feature: Reserva de Citas para el Profesional de Salud
Como Profesional de Salud deseo poder gestionar y confirmar las citas de mis pacientes, para asegurar una programación adecuada y brindar un servicio eficiente
Scenario: Accede al sistema de reserva de citas
    Dado que el [nutricionista] encontró que tiene un paciente que desea hacer una reserva, él tiene que confirmar la cita.
    Y el paciente selecciona la [hora] [fecha] [duracion] de la cita
    Cuando  el usuario ingresa todos los campos obligatorios y hace click en [hacer_cita]
    Entonces  el sistema verifica que se haya ingresado datos válidos en los campos [nombre] [apellidos]  [Motivo_cita]  [Enfermedad] 
    Hecho esto el Sistema enviará un aviso al Profesional y aceptará [Aceptar_cita] con esto se mostrará un [mensaje] con toda la información de la cita.
Examples:Input
    | hora  | fecha       | duracion | nombre    | apellidos    | Motivo_cita              | Efermedad |
    | 14:00 | 23/06/2023  | 1 hora   | Alejandro | Ramos Quispe | Me vengo sintiendo debil | Anemia    |

Examples: Output
    | nutricionista       | hacer_cita | Aceptar_cita          | mensaje                                      |
    | Dr. Eduardo Jimenez | Crear cita | ¿Desea aceptar la cita? | hora:14:00, Nutricionista: Eduardo Jimenez |

