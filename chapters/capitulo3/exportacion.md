# 3.1 Generar PDF y EPUB

Esta plantilla incluye el script [`scripts/build.sh`](../../scripts/build.sh), que automatiza la exportación con [HonKit](https://github.com/honkit/honkit), el fork mantenido de GitBook.

Para ejecutarlo:

```bash
chmod +x scripts/build.sh
./scripts/build.sh
```

El script realiza, en orden:

1. `honkit build ./ ./_book` — genera el sitio HTML estático y verifica que `_book/index.html` exista.
2. `honkit pdf ./ ./dist/manual.pdf` — genera el PDF en `dist/manual.pdf` y verifica que no esté vacío.
3. `honkit epub ./ ./dist/manual.epub` — genera el EPUB en `dist/manual.epub` y verifica que no esté vacío.
4. Lista el contenido final de `dist/` para confirmar que ambos archivos se generaron correctamente.

También puedes generar únicamente el sitio HTML estático (útil para GitHub Pages) con:

```bash
honkit build ./ ./_book
```
