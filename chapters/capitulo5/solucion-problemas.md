# 5.2 Solución de problemas

### `gitbook: command not found`

`gitbook-cli` no está instalado globalmente, o no está en el `PATH`. Instálalo con:

```bash
npm install -g gitbook-cli
```

### El comando `gitbook install` falla al descargar plugins

Suele deberse a incompatibilidades entre versiones recientes de Node.js y `gitbook-cli`. Verifica que estés usando Node 12.x (ver [1.1 Instalación del entorno](../capitulo1/instalacion.md)); puedes usar `nvm` para alternar versiones de Node fácilmente.

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
