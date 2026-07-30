# 2.2 Configuración avanzada (book.json)

El archivo [`book.json`](../../book.json) centraliza la configuración del libro. Las secciones más relevantes de esta plantilla son:

- `title`, `description`, `author`, `language`: metadatos generales del libro.
- `structure.readme` / `structure.summary`: permiten renombrar los archivos raíz si no quieres usar `README.md` / `SUMMARY.md`.
- `plugins` / `pluginsConfig`: lista de complementos de GitBook (tema, buscador, botones para compartir, ajustes de fuente, etc.).
- `pdf`: controla el tamaño de página, márgenes, tipografía y numeración usados al exportar a PDF.
- `epub`: permite inyectar hojas de estilo adicionales para el archivo EPUB.
- `links.sidebar`: agrega enlaces fijos en la barra lateral, por ejemplo un enlace al repositorio en GitHub.

Cualquier cambio en `book.json` requiere volver a ejecutar `gitbook install` si se agregaron o quitaron plugins.
