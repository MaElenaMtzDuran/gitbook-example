# 2.1 Sintaxis Markdown en GitBook

GitBook utiliza Markdown estándar (GFM) con algunas extensiones propias:

- **Encabezados**: `#`, `##`, `###` definen la jerarquía que luego se refleja en la barra lateral.
- **Bloques de código** con resaltado de sintaxis:

  ```js
  function saludar(nombre) {
    return `Hola, ${nombre}`;
  }
  ```

- **Citas destacadas** (hints), mediante bloques de cita:

  > **Nota:** este es un bloque de contenido de ejemplo para el repositorio de prueba.

- **Tablas**:

  | Elemento     | Descripción                          |
  |--------------|---------------------------------------|
  | `README.md`  | Portada del libro o del capítulo      |
  | `SUMMARY.md` | Índice y jerarquía de capítulos       |
  | `book.json`  | Configuración global de GitBook       |

- **Referencias cruzadas** entre páginas usando enlaces relativos, por ejemplo: [volver a la instalación](../capitulo1/instalacion.md).
