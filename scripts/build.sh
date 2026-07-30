#!/usr/bin/env bash
#
# build.sh — Script de automatización para generar PDF y EPUB con gitbook-cli
#
# Requisitos:
#   - Node.js 12.x (última versión compatible con gitbook-cli)
#   - gitbook-cli instalado globalmente: npm install -g gitbook-cli
#   - Calibre instalado en el sistema (necesario internamente para el EPUB)
#
# Uso:
#   chmod +x scripts/build.sh
#   ./scripts/build.sh
#
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUTPUT_DIR="$ROOT_DIR/dist"

cd "$ROOT_DIR"
mkdir -p "$OUTPUT_DIR"

echo "==> Verificando que gitbook-cli esté instalado..."
if ! command -v gitbook >/dev/null 2>&1; then
  echo "ERROR: gitbook-cli no está instalado. Ejecuta: npm install -g gitbook-cli" >&2
  exit 1
fi

echo "==> Instalando complementos declarados en book.json..."
gitbook install

echo "==> Generando sitio HTML estático en _book/ ..."
gitbook build ./ ./_book

echo "==> Generando versión PDF en dist/manual.pdf ..."
gitbook pdf ./ "$OUTPUT_DIR/manual.pdf"

echo "==> Generando versión EPUB en dist/manual.epub ..."
gitbook epub ./ "$OUTPUT_DIR/manual.epub"

echo "==> Archivos generados:"
ls -lh "$OUTPUT_DIR"

echo "==> Listo. El sitio HTML está en ./_book y los archivos exportados en ./dist"
