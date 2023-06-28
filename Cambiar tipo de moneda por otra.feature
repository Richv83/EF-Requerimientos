Feature: Cambiar tipo de moneda por otra

Como empresario, quiero colocar el tipo de moneda quiero cambiar y qué tipo de moneda quiero, para poder seleccionar que es lo que quiero cambiar y a que quiero cambiar.

@mytag
Scenario: Se ingresa a la pantalla principal
Given El sistema requiere ingresar un tipo de moneda
And el usuario selecciona una barra con las monedas predeterminadas 
When el usuario selecciona la moneda que desea a cambio
Then la aplicación le permitirá ver las ofertas de cambio sobre las monedas seleccionadas

@mytag
Scenario Outline: Se ingresa a la pantalla principal
Given El sistema requiere ingresar un tipo de moneda <Money>
And el usuario selecciona <Divisabox1> con las monedas predeterminadas
When el usuario selecciona <Divisabox2> que desea a cambio
Then la aplicación le permitirá ver <Offerlist> sobre las monedas seleccionadas

Examples:
  | Money | Divisabox1 | Divisabox2 | Offerlist |
  | 20    | Soles      | Dólar      | [o1, o2..]|
  | 40    | Soles      | Euro       | [o1, o2..]|
  | 60    | Soles      | Dólar      | [o1, o2..]|