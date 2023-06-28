Feature: Seleccionar y ver el lugar

Como empresario, quiero seleccionar donde se encuentra el lugar para el cambio de oferta, para saber donde se encuentra el lugar que me ofrece ese tipo de cambio.

@mytag
Scenario: Búsqueda de lugar específico para cambio de oferta
Given En la pantalla aparecen varias opciones de lugares
And el usuario elige la opción de filtro "Mas cercano a mi"
When aparece una lista más corta de lugares cercanos al usuario
And y el usuario pulsa en el lugar que más le haya llamado la atención
Then se muestra toda la información del lugar seleccionado como precios de compra y venta, etc.

@mytag
Scenario Outline: Búsqueda de lugar específico para cambio de oferta
Given En la pantalla aparecen varias opciones de <Offerlist>
And el usuario elige la opción de filtro <Distance>
When aparece una <Offerlist> más corta de lugares cercanos al usuario
And y el usuario pulsa en el <Perfil> que más le haya llamado la atención
Then se muestra toda la información del lugar seleccionado <Pefil>

Examples:
  | Offerlist | Distance | Perfil      |
  | Interbank | BCP      | Información |
  | BCP       | Interbank| Información |
  | BBVA      | BBVA     | Información |