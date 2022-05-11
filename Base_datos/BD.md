# Base de datos: Inventario de libros, películas y videojuegos.

## Entidades:
- Items
- Categorías (CAT)
- Usuario
- Estado (CAT)

## Atributos:
- Items:
    - item_id (PK)
    - Nombre del item
    - Imagen
    - Categoría (CAT)
    - Estado (CAT)

- Usuario
    - Usuario_id (PK)
    - Nombre del usuario (UQ)
    - Foto de perfil
    - Contraseña
    - Número de teléfono (UQ)

- Categorías (CAT):
    - Categorías_id (PK)
    - Videojuegos
    - Libros
    - Películas

- Estado (CAT)
    - Estado_id (PK)
    - Finalizado
    - En proceso
    - En espera
    

## Relaciones:
- El **usuario** agrega **items** (1 - M)
- El **usuario** establece una **categoría** (1 - 1)
- Los **items** tienen **categorías** (1 - 1)
- El **usuario** establece un **estado** (1 - 1)
- Los **items** tienen un **estado** (1 - 1)

## [🔙 Pagina principal](../README.md)