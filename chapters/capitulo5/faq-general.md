# 5.1 Preguntas generales

### ¿Qué es este repositorio exactamente?

Es una plantilla de referencia con la estructura de carpetas estandarizada para un libro en GitBook: portada (`README.md`), índice (`SUMMARY.md`), configuración (`book.json`), capítulos de ejemplo y automatización para exportar a PDF/EPUB. Ver el [README principal](../../README.md) para el detalle completo.

### ¿Qué versión de Node.js debo usar?

Node.js 12.x. Es la última versión compatible con `gitbook-cli`, que ya no recibe actualizaciones. Ver [1.1 Instalación del entorno](../capitulo1/instalacion.md).

### ¿Necesito instalar Calibre?

Solo si vas a exportar a EPUB (`gitbook epub`). Para PDF y para el sitio HTML no es necesario. Ver [1.1 Instalación del entorno](../capitulo1/instalacion.md).

### ¿Dónde defino el orden de los capítulos?

En `SUMMARY.md`, en la raíz del repositorio. GitBook usa ese archivo como única fuente de verdad para la navegación. Ver [1.2 Estructura del proyecto](../capitulo1/estructura.md).

### ¿Cómo agrego un capítulo nuevo?

Copia la carpeta `chapters/_template/`, renómbrala y regístrala en `SUMMARY.md`. El proceso completo está documentado en la sección 8 del [README principal](../../README.md#8-agregar-un-cap%C3%ADtulo-nuevo-con-la-plantilla).

### ¿Puedo editar el libro desde la interfaz web de GitBook en vez de Git?

Sí. Si activas Git Sync, cualquier cambio hecho en el editor visual de GitBook se convierte en un commit automático hacia la rama configurada (por ejemplo `main`), y viceversa: cada commit en GitHub se refleja como una nueva versión en el space de GitBook.

### ¿Qué pasa si dos personas editan el mismo capítulo al mismo tiempo?

Sigue el flujo de ramas y *pull requests* descrito en [4.1 Flujo de revisión con pull requests](../capitulo4/revision-cambios.md) para evitar sobrescribir cambios de otros colaboradores.
