# 2.2 Configuración avanzada (book.json)

El archivo [`book.json`](../../book.json) centraliza la configuración del libro. Las secciones más relevantes de esta plantilla son:

- `title`, `description`, `author`, `language`: metadatos generales del libro.
- `structure.readme` / `structure.summary`: permiten renombrar los archivos raíz si no quieres usar `README.md` / `SUMMARY.md`.
- `plugins` / `pluginsConfig`: lista de complementos (tema, buscador, ajustes de fuente, etc.). Con HonKit, los complementos adicionales se instalan como paquetes npm (`honkit-plugin-*` o `gitbook-plugin-*`) en vez de con `gitbook install`.
- `pdf`: controla el tamaño de página, márgenes, tipografía y numeración usados al exportar a PDF.
- `epub`: permite inyectar hojas de estilo adicionales para el archivo EPUB.
- `links.sidebar`: agrega enlaces fijos en la barra lateral, por ejemplo un enlace al repositorio en GitHub.

Si agregas un plugin nuevo en `book.json`, instala el paquete correspondiente con `npm install <paquete>` antes de volver a ejecutar `honkit build`, `honkit serve`, `honkit pdf` o `honkit epub`.
