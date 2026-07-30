#!/usr/bin/env bash
#
# build.sh — Script de automatización para generar el sitio HTML, PDF y EPUB
#            con HonKit (https://github.com/honkit/honkit), el fork
#            mantenido de GitBook.
#
# Nota de migración: este proyecto usaba originalmente gitbook-cli, pero esa
# herramienta fue descontinuada por su autor en 2019 y en entornos Node/npm
# modernos deja de generar salida (falla de forma silenciosa). HonKit es
# compatible con los mismos archivos book.json y SUMMARY.md, por lo que la
# migración no requiere cambiar la estructura del libro.
#
# Requisitos:
#   - Node.js LTS (v18 o superior recomendado)
#   - HonKit instalado globalmente: npm install -g honkit
#   - Calibre instalado en el sistema (necesario internamente para PDF/EPUB)
#
# Uso:
#   chmod +x scripts/build.sh
#   ./scripts/build.sh
#
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="$ROOT_DIR/dist"
BOOK_DIR="$ROOT_DIR/_book"

cd "$ROOT_DIR"
mkdir -p "$OUTPUT_DIR"

echo "==> Verificando que HonKit esté instalado..."
if ! command -v honkit >/dev/null 2>&1; then
  echo "ERROR: HonKit no está instalado. Ejecuta: npm install -g honkit" >&2
  exit 1
fi

echo "==> Generando sitio HTML estático en _book/ ..."
honkit build ./ ./_book --log=info

if [ ! -f "$BOOK_DIR/index.html" ]; then
  echo "ERROR: honkit build no generó _book/index.html. Revisa el log anterior." >&2
  exit 1
fi

echo "==> Generando versión PDF en dist/manual.pdf ..."
honkit pdf ./ "$OUTPUT_DIR/manual.pdf"

if [ ! -s "$OUTPUT_DIR/manual.pdf" ]; then
  echo "ERROR: honkit pdf no generó dist/manual.pdf." >&2
  exit 1
fi

echo "==> Generando versión EPUB en dist/manual.epub ..."
honkit epub ./ "$OUTPUT_DIR/manual.epub"

if [ ! -s "$OUTPUT_DIR/manual.epub" ]; then
  echo "ERROR: honkit epub no generó dist/manual.epub." >&2
  exit 1
fi

echo "==> Archivos generados:"
ls -lh "$OUTPUT_DIR"

echo "==> Listo. El sitio HTML está en ./_book y los archivos exportados en ./dist"
