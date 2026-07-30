# 3.2 Integración continua con GitHub

El flujo de trabajo [`.github/workflows/gitbook-deploy.yml`](../../.github/workflows/gitbook-deploy.yml) automatiza, en cada `push` a `main`:

1. La instalación de Node.js y `gitbook-cli` en el runner de GitHub Actions.
2. La generación del sitio HTML (`gitbook build`), el PDF y el EPUB.
3. El despliegue del sitio HTML a **GitHub Pages** mediante la acción `peaceiris/actions-gh-pages`.
4. La publicación del PDF y el EPUB como artefactos descargables de la ejecución (`actions/upload-artifact`).

Consulta el [`README.md`](../../README.md) principal del repositorio para los pasos completos de configuración (permisos del token, activación de GitHub Pages, etc.).
