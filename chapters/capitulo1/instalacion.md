# 1.1 Instalación del entorno

Para trabajar con este repositorio de ejemplo necesitas:

1. **Node.js** (se recomienda la versión LTS, 18 o superior).
2. **HonKit** (fork mantenido de GitBook), instalado de forma global:

   ```bash
   npm install -g honkit
   ```

3. **Calibre** (opcional), requerido internamente por HonKit para exportar a PDF/EPUB:

   - Linux: `sudo apt-get install calibre`
   - macOS: `brew install calibre`
   - Windows: descarga el instalador desde [calibre-ebook.com](https://calibre-ebook.com/download)

4. Clona este repositorio y entra en la carpeta del proyecto:

   ```bash
   git clone https://github.com/tu-usuario/gitbook-example.git
   cd gitbook-example
   ```

5. Sirve el libro en modo local para previsualizarlo en `http://localhost:4000`:

   ```bash
   honkit serve
   ```
