Feature: Reseñas de la app

Como viajero, quiero poder leer reseñas y calificaciones de otras personas sobre las casas de cambio disponibles, para tomar una decisión informada sobre dónde realizar las transacciones de cambio de divisas.

@mytag
Scenario: Pantalla de perfil de la empresa
Given el usuario a entrado al perfil de la empresa
And el usuario baja a la pestaña del perfil
When el usuario haga clic en el botón de comentario
Then la app mostrará los comentarios de las anteriores personas que fueron a estos lugares

@mytag
Scenario Outline: Reseñas de la app
Given el usuario entra a <Perfil>
And el usuario baja a la pestaña de <Perfil>
When el usuario haga clic en <Comment>
Then la app mostrará los <Previouscomment>

Examples:
  | Perfil    | Comment     | Previouscomment       |
  | Interbank | Comentarios | Todos los comentarios |
  | BCP       | Comentarios | Todos los comentarios |
  | BBVA      | Comentarios | Todos los comentarios |