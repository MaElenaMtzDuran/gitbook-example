# 3.1 Generar PDF y EPUB

Esta plantilla incluye el script [`scripts/build.sh`](../../scripts/build.sh), que automatiza la exportación con `gitbook-cli`.

Para ejecutarlo:

```bash
chmod +x scripts/build.sh
./scripts/build.sh
```

El script realiza, en orden:

1. `gitbook install` — instala los plugins declarados en `book.json`.
2. `gitbook pdf ./ ./dist/manual.pdf` — genera el PDF en `dist/manual.pdf`.
3. `gitbook epub ./ ./dist/manual.epub` — genera el EPUB en `dist/manual.epub`.
4. Lista el contenido final de `dist/` para confirmar que ambos archivos se generaron correctamente.

También puedes generar únicamente el sitio HTML estático (útil para GitHub Pages) con:

```bash
gitbook build ./ ./_book
```
