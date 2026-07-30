# 5.2 Solución de problemas

### `gitbook: command not found`

`gitbook-cli` no está instalado globalmente, o no está en el `PATH`. Instálalo con:

```bash
npm install -g gitbook-cli
```

### `gitbook install` falla con `TypeError: cb.apply is not a function`

Es un bug conocido y ampliamente documentado de `gitbook-cli` (sin mantenimiento activo desde 2018): trae empaquetada una versión antigua de `graceful-fs` incompatible con versiones modernas de Node.js/npm (ver [issue #110 en GitHub](https://github.com/GitbookIO/gitbook-cli/issues/110)). La solución documentada por la comunidad es actualizar esa dependencia interna antes de ejecutar cualquier comando de `gitbook`:

```bash
cd "$(npm root -g)/gitbook-cli/node_modules/npm/node_modules"
npm install graceful-fs@latest --save
```

Después de esto, vuelve a ejecutar `gitbook install`. Tanto [`scripts/build.sh`](../../scripts/build.sh) como el workflow de [GitHub Actions](../../.github/workflows/gitbook-deploy.yml) de este repositorio ya aplican esta corrección automáticamente antes de instalar los complementos.

Si el error persiste, verifica también que estés usando Node 12.x (ver [1.1 Instalación del entorno](../capitulo1/instalacion.md)); puedes usar `nvm` para alternar versiones de Node fácilmente.

### La exportación a EPUB falla o queda incompleta

Confirma que Calibre esté instalado y accesible desde la terminal (`ebook-convert --version`). `gitbook epub` depende de Calibre internamente para generar el archivo final.

### No veo mi repositorio al configurar GitHub Sync en GitBook

Revisa que la [GitBook GitHub App](https://github.com/apps/gitbook-com) tenga acceso concedido específicamente a este repositorio (si es privado, debe estar en la lista de "Only select repositories" de la instalación de la app), y que estés autenticado con la cuenta de GitHub correcta.

### Elegí la dirección incorrecta en la sincronización inicial con GitBook

Ve a **Version history** del space en GitBook, localiza la revisión anterior a la operación de Git Sync y usa **Rollback** para restaurar el contenido previo. Ver [3.2 Integración continua con GitHub](../capitulo3/integracion-continua.md).

### El flujo de GitHub Actions no despliega a GitHub Pages

GitHub Pages en el plan gratuito no está disponible para repositorios **privados** de cuentas personales. Hazlo público, o desactiva el paso de despliegue a Pages en `.github/workflows/gitbook-deploy.yml` y conserva solo la generación de PDF/EPUB como artefactos.

### Los enlaces internos entre capítulos no funcionan en GitBook

Verifica que uses rutas relativas correctas entre archivos `.md` (por ejemplo `../capitulo1/instalacion.md`) y que el archivo de destino exista y esté registrado en `SUMMARY.md`.
