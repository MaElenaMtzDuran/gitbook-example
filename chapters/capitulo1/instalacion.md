# 1.1 Instalación del entorno

Para trabajar con este repositorio de ejemplo necesitas:

1. **Node.js** (se recomienda la versión 12.x, la última compatible con `gitbook-cli`).
2. **gitbook-cli**, instalado de forma global:

   ```bash
   npm install -g gitbook-cli
   ```

3. **Calibre** (opcional), requerido internamente por GitBook para exportar a EPUB:

   - Linux: `sudo apt-get install calibre`
   - macOS: `brew install calibre`
   - Windows: descarga el instalador desde [calibre-ebook.com](https://calibre-ebook.com/download)

4. Clona este repositorio y entra en la carpeta del proyecto:

   ```bash
   git clone https://github.com/tu-usuario/gitbook-example.git
   cd gitbook-example
   ```

5. Instala los complementos declarados en `book.json`:

   ```bash
   gitbook install
   ```

6. Sirve el libro en modo local para previsualizarlo en `http://localhost:4000`:

   ```bash
   gitbook serve
   ```
