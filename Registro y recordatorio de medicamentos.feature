Feature: Registro y recordatorio de medicamentos

Como usuario, quiero registrar los medicamentos que toma mi mascota, para que me recuerde en que momento lo tiene que tomar.

@mytag
Scenario: En la sección de registro
Given el <user> tiene que <register_med> que toma su mascota
When el <user> realice el <register_med> con los datos requeridos por la aplicación
Then le llegará una <notification> cuando le toque tomar dicho medicamento

Examples:
  | user      | register_med | notificaion                             |
  | Alejandro | Pepcid       | Hora de tomar la medicina "Pepcid"      |
  | Valeria   | Prilosec     | Hora de tomar la medicina "Prilosec"    |
  | Carlos    | Glucosamine  | Hora de tomar la medicina "Glucosamine" |
