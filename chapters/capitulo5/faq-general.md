# 5.1 Preguntas generales

### ¿Qué es este repositorio exactamente?

Es una plantilla de referencia con la estructura de carpetas estandarizada para un libro en GitBook: portada (`README.md`), índice (`SUMMARY.md`), configuración (`book.json`), capítulos de ejemplo y automatización para exportar a PDF/EPUB. Ver el [README principal](../../README.md) para el detalle completo.

### ¿Qué versión de Node.js debo usar?

Cualquier versión LTS reciente (18 o superior). Este proyecto usa [HonKit](https://github.com/honkit/honkit) en lugar del descontinuado `gitbook-cli`, por lo que ya no estás limitado a Node 12. Ver [1.1 Instalación del entorno](../capitulo1/instalacion.md).

### ¿Necesito instalar Calibre?

Solo si vas a exportar a PDF o EPUB (`honkit pdf` / `honkit epub`). Para el sitio HTML no es necesario. Ver [1.1 Instalación del entorno](../capitulo1/instalacion.md).

### ¿Por qué se usa HonKit en lugar de gitbook-cli?

`gitbook-cli` fue descontinuado por su autor original en 2019 y, en entornos Node/npm modernos, sus comandos terminan sin error pero no generan ningún archivo. HonKit es un fork activamente mantenido, compatible con los mismos `book.json`/`SUMMARY.md`, que soluciona ese problema. Ver [5.2 Solución de problemas](solucion-problemas.md).

### ¿Dónde defino el orden de los capítulos?

En `SUMMARY.md`, en la raíz del repositorio. GitBook usa ese archivo como única fuente de verdad para la navegación. Ver [1.2 Estructura del proyecto](../capitulo1/estructura.md).

### ¿Cómo agrego un capítulo nuevo?

Copia la carpeta `chapters/_template/`, renómbrala y regístrala en `SUMMARY.md`. El proceso completo está documentado en la sección 8 del [README principal](../../README.md#8-agregar-un-cap%C3%ADtulo-nuevo-con-la-plantilla).

### ¿Puedo editar el libro desde la interfaz web de GitBook en vez de Git?

Sí. Si activas Git Sync, cualquier cambio hecho en el editor visual de GitBook se convierte en un commit automático hacia la rama configurada (por ejemplo `main`), y viceversa: cada commit en GitHub se refleja como una nueva versión en el space de GitBook.

### ¿Qué pasa si dos personas editan el mismo capítulo al mismo tiempo?

Sigue el flujo de ramas y *pull requests* descrito en [4.1 Flujo de revisión con pull requests](../capitulo4/revision-cambios.md) para evitar sobrescribir cambios de otros colaboradores.
