# Capítulo 6: Glosario

Definiciones breves de los términos técnicos usados a lo largo de este libro de ejemplo.

### Artefacto (artifact)

Archivo generado por una ejecución de GitHub Actions (por ejemplo, `manual.pdf` o `manual.epub`) que queda disponible para descargar desde la pestaña *Actions* del repositorio.

### `book.json`

Archivo de configuración de GitBook: título, autor, idioma, plugins y opciones de exportación a PDF/EPUB. Ver [2.2 Configuración avanzada](../capitulo2/configuracion.md).

### Change request

Propuesta de cambio en el editor visual de GitBook, equivalente conceptualmente a un *pull request* de Git. Al fusionarla, GitBook genera un commit en la rama sincronizada.

### CI/CD (Integración y despliegue continuos)

Práctica de automatizar la construcción, verificación y publicación del contenido cada vez que se sube un cambio al repositorio. En este libro se implementa con el flujo de [GitHub Actions](../capitulo3/integracion-continua.md).

### Commit

Registro de un conjunto de cambios guardado en el historial de Git, identificado por un hash único.

### `.gitbook.yaml`

Archivo opcional que le indica a GitBook.com dónde están la portada y el índice del libro dentro del repositorio, usado por la integración GitHub Sync.

### `gitbook-cli`

Herramienta de línea de comandos oficial de GitBook usada para previsualizar el libro (`gitbook serve`) y exportarlo a HTML, PDF o EPUB. Ver [1.1 Instalación del entorno](../capitulo1/instalacion.md).

### Git Sync

Integración bidireccional entre un space de GitBook y un repositorio de GitHub o GitLab: los cambios en GitBook generan commits, y los commits se reflejan como nuevas versiones en GitBook. Ver [3.2 Integración continua con GitHub](../capitulo3/integracion-continua.md).

### GitHub Actions

Servicio de automatización de GitHub usado en este repositorio para generar el sitio HTML, el PDF y el EPUB, y desplegarlos automáticamente. Ver [`.github/workflows/gitbook-deploy.yml`](../../.github/workflows/gitbook-deploy.yml).

### GitHub Pages

Servicio de GitHub para publicar sitios estáticos directamente desde un repositorio. En este libro se usa para publicar el sitio HTML generado por GitBook.

### Markdown (GFM)

Lenguaje de marcado ligero usado para escribir todo el contenido de este libro. GitBook usa la variante "GitHub Flavored Markdown" con extensiones propias. Ver [2.1 Sintaxis Markdown en GitBook](../capitulo2/sintaxis.md).

### Plugin (GitBook)

Complemento que añade funcionalidad al libro (buscador, botones para compartir, ajustes de fuente, etc.), declarado en la lista `plugins` de `book.json`.

### Pull request

Solicitud para fusionar los cambios de una rama de Git a otra (normalmente `main`), que permite que otra persona revise el contenido antes de publicarlo. Ver [4.1 Flujo de revisión con pull requests](../capitulo4/revision-cambios.md).

### Rama (branch)

Línea de desarrollo independiente dentro de un repositorio Git, usada para trabajar en un cambio sin afectar directamente `main`.

### Space (GitBook)

Unidad de contenido en GitBook.com equivalente a "un libro" o "una documentación"; es la entidad que se conecta a un repositorio mediante Git Sync.

### `SUMMARY.md`

Archivo raíz que define el orden y la jerarquía de los capítulos del libro; es la única fuente de verdad que usa GitBook para construir la navegación. Ver [1.2 Estructura del proyecto](../capitulo1/estructura.md).
