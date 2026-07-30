# 4.1 Flujo de revisión con pull requests

Cuando varias personas editan el mismo libro, lo recomendable es no escribir directamente sobre `main`, sino seguir un flujo de ramas y revisión:

1. **Crea una rama** a partir de `main` para el cambio que vas a hacer:

   ```bash
   git checkout -b capitulo4/ajustes-redaccion
   ```

2. **Edita los archivos** del capítulo correspondiente (por ejemplo, dentro de `chapters/capitulo4/`).

3. **Confirma tus cambios** con un mensaje descriptivo:

   ```bash
   git add chapters/capitulo4
   git commit -m "Ajustar redaccion de la seccion 4.2"
   ```

4. **Sube la rama y abre un pull request:**

   ```bash
   git push origin capitulo4/ajustes-redaccion
   ```

5. Pide a otro colaborador que revise el pull request en GitHub antes de fusionarlo a `main`.

> **Nota:** si el repositorio está sincronizado con GitBook mediante Git Sync, cada fusión (*merge*) a `main` se reflejará automáticamente como una nueva versión en el space de GitBook. De forma equivalente, si alguien edita el contenido directamente en el editor visual de GitBook y aprueba un *change request*, GitBook generará el commit correspondiente en esta misma rama.

Este mismo flujo aplica sin importar si el cambio se originó en GitHub o en GitBook: en ambos casos existe un paso de revisión antes de que el contenido llegue a `main`.
