

Feature: Sincronización y monitoreo del plan alimenticio del usuario
Como usuario de CEP quiero poder registrar mi información personal y mi plan alimenticio, para poder sincronizar y monitorear mi plan alimenticio de manera efectiva
Scenario: Registro de sincronización y monitoreo del plan alimenticio.
    Dado que se verificó en el sistema que el ID del usuario no se encuentra registrado
    Y el usuario selecciona la opción [nuevo_paciente] 
    Cuando el usuario ingresa todos los campos obligatorios y hace click en [registrar]
    Entonces el sistema verifica que se haya ingresado datos válidos en los campos [nombre] [apellidos] [enfermedad] [plan_alimenticio] [receta_medica]
    Y el sistema muestra el [mensaje] de que se han registrado exitosamente los datos del paciente
Examples: Input
    | nombre     | apellidos     | enfermedad | plan_alimenticio         | receta_medica             |
    | Alejandro  | Ramos Quispe  | anemia     | dieta rica en nutrientes | suplementos nutricionales |

Examples: Output
    | nuevo_paciente  | registrar                 | mensaje                                      |
    | Nuevo Paciente  | Registrar nuevo paciente  | Datos del paciente ingresados correctamente  |

