# 1.2 Estructura del proyecto

La plantilla sigue una estructura de carpetas estandarizada, pensada para escalar a libros con muchos capítulos:

```
gitbook-example/
├── README.md                          # Portada / introducción del libro
├── SUMMARY.md                         # Tabla de contenidos (jerarquía de capítulos)
├── book.json                          # Configuración de GitBook (tema, plugins, PDF/EPUB)
├── .gitbook.yaml                      # Configuración para GitBook.com (opcional)
├── .gitignore
├── chapters/                          # Contenido dividido por capítulo
│   ├── capitulo1/
│   │   ├── README.md
│   │   ├── instalacion.md
│   │   └── estructura.md
│   ├── capitulo2/
│   │   ├── README.md
│   │   ├── sintaxis.md
│   │   └── configuracion.md
│   └── capitulo3/
│       ├── README.md
│       ├── exportacion.md
│       └── integracion-continua.md
├── scripts/
│   └── build.sh                       # Automatización de exportación a PDF y EPUB
└── .github/
    └── workflows/
        └── gitbook-deploy.yml         # Pipeline de CI/CD con GitHub Actions
```

**Convenciones usadas en esta plantilla:**

- Cada capítulo vive en su propia carpeta dentro de `chapters/`, con un `README.md` como introducción del capítulo y archivos `.md` adicionales para cada sección.
- `SUMMARY.md` es la única fuente de verdad sobre el orden y la jerarquía de los capítulos; GitBook lo usa para construir el índice y la navegación.
- Los archivos generados (`_book/`, `dist/`, `node_modules/`) nunca se versionan; están excluidos en `.gitignore`.
