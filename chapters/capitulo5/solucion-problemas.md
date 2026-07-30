# 5.2 Solución de problemas

### `honkit: command not found`

HonKit no está instalado globalmente, o no está en el `PATH`. Instálalo con:

```bash
npm install -g honkit
```

### Por qué este repositorio usa HonKit y no `gitbook-cli`

La versión original de esta plantilla usaba `gitbook-cli`, el CLI oficial de GitBook. Ese paquete está sin mantenimiento desde 2018 y presenta dos problemas en entornos modernos:

1. **Crash conocido:** trae empaquetada una versión antigua de `graceful-fs` incompatible con Node.js/npm recientes, y falla con `TypeError: cb.apply is not a function` al ejecutar `gitbook install` (ver [issue #110 en GitHub](https://github.com/GitbookIO/gitbook-cli/issues/110)).
2. **Fallo silencioso tras el parche:** aun aplicando el parche de `graceful-fs`, `gitbook build`/`gitbook pdf`/`gitbook epub` terminan sin error pero **no generan ningún archivo** (`_book/` y `dist/` quedan vacíos), porque `gitbook-cli` ya no logra descargar ni invocar el motor de GitBook 3.2.3 contra el registro de npm actual.

Por eso este repositorio migró a [HonKit](https://github.com/honkit/honkit), el fork de GitBook mantenido activamente por la comunidad. HonKit usa los mismos `book.json` y `SUMMARY.md`, así que la migración no requirió cambiar la estructura del libro — solo reemplazar `gitbook-cli` por `honkit` en `scripts/build.sh` y en el workflow de [GitHub Actions](../../.github/workflows/gitbook-deploy.yml). Ambos archivos ahora verifican explícitamente que `_book/index.html`, `dist/manual.pdf` y `dist/manual.epub` se hayan generado, para detectar este tipo de fallo silencioso de inmediato si volviera a ocurrir.

### La exportación a PDF o EPUB falla o queda incompleta

Confirma que Calibre esté instalado y accesible desde la terminal (`ebook-convert --version`). `honkit pdf` y `honkit epub` dependen de Calibre internamente para generar el archivo final. Para depurar con más detalle, agrega `--log=debug --debug` al comando, por ejemplo `honkit build ./ ./_book --log=debug --debug`.

### No veo mi repositorio al configurar GitHub Sync en GitBook

Revisa que la [GitBook GitHub App](https://github.com/apps/gitbook-com) tenga acceso concedido específicamente a este repositorio (si es privado, debe estar en la lista de "Only select repositories" de la instalación de la app), y que estés autenticado con la cuenta de GitHub correcta.

### Elegí la dirección incorrecta en la sincronización inicial con GitBook

Ve a **Version history** del space en GitBook, localiza la revisión anterior a la operación de Git Sync y usa **Rollback** para restaurar el contenido previo. Ver [3.2 Integración continua con GitHub](../capitulo3/integracion-continua.md).

### El flujo de GitHub Actions no despliega a GitHub Pages

GitHub Pages en el plan gratuito no está disponible para repositorios **privados** de cuentas personales. Hazlo público, o desactiva el paso de despliegue a Pages en `.github/workflows/gitbook-deploy.yml` y conserva solo la generación de PDF/EPUB como artefactos.

### Los enlaces internos entre capítulos no funcionan en GitBook

Verifica que uses rutas relativas correctas entre archivos `.md` (por ejemplo `../capitulo1/instalacion.md`) y que el archivo de destino exista y esté registrado en `SUMMARY.md`.

### GitHub Pages muestra 404 aunque el workflow terminó en éxito

Esto pasa cuando la rama `gh-pages` no contiene contenido real (por ejemplo, solo un archivo `.nojekyll`), lo cual indica que el paso de build no generó `_book/index.html` — revisa el log de la ejecución en la pestaña *Actions* para confirmar que `honkit build` completó sin errores y que el paso `peaceiris/actions-gh-pages` recibió archivos para publicar. Recuerda también que GitHub Pages del plan gratuito no funciona en repositorios **privados** de cuentas personales: el repositorio debe ser público.
