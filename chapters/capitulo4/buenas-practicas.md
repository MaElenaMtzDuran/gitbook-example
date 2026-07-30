# 4.2 Buenas prácticas de redacción

Estas son algunas convenciones recomendadas para mantener el libro consistente a medida que crece:

## Estructura

- Cada capítulo empieza con un `README.md` que resume su contenido en 2-4 líneas, seguido de una lista de enlaces a sus secciones.
- Cada archivo de sección debe empezar con un único encabezado de nivel 1 (`#`) que coincida con el texto usado para enlazarlo desde `SUMMARY.md`.
- No anides más de tres niveles de profundidad en `SUMMARY.md`; si un capítulo necesita más subdivisiones, probablemente deba dividirse en dos capítulos.

## Estilo de escritura

- Usa oraciones cortas y un tono directo, como si le explicaras el tema a un colega.
- Prefiere listas y tablas sobre párrafos largos cuando describas pasos o comparaciones.
- Resalta advertencias o notas importantes con bloques de cita:

  > **Advertencia:** si agregas un plugin nuevo en `book.json`, debes instalar el paquete npm correspondiente antes de volver a ejecutar `honkit build`.

## Nomenclatura de archivos

- Usa minúsculas y guiones (`kebab-case`) para los nombres de archivo, por ejemplo `configuracion-avanzada.md`, nunca espacios ni acentos en el nombre del archivo (sí puedes usar acentos dentro del contenido).
- Evita renombrar archivos ya publicados: si es indispensable, actualiza también los enlaces en `SUMMARY.md` y en cualquier otro capítulo que los referencie, para no romper referencias cruzadas.

## Antes de fusionar un cambio

- Revisa que los enlaces internos funcionen (por ejemplo, [Flujo de revisión con pull requests](revision-cambios.md)).
- Ejecuta `honkit serve` localmente para previsualizar el resultado antes de abrir el pull request.
- Verifica que el nuevo contenido esté registrado en `SUMMARY.md` con la sangría correcta.
