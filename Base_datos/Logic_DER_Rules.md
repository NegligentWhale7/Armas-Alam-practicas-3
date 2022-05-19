# Business Logic

## Entities:
- Items
- Categories (CAT)
- User
- Status (CAT)

## Attributes:
- Items:
    - item_id (PK)
    - Item name
    - Image
    - Category (CAT)
    - Status (CAT)

- User
    - User_id (PK)
    - User Name (UQ)
    - Profile picture
    - Password
    - Phone number (UQ)

- Categories (CAT):
    - Categories_id (PK)
    - Videogames
    - Books
    - Movies

- Status (CAT)
    - Status_id (PK)
    - Finished
    - On going
    - On waiting
    

## Relationships:
- The **user** adds **items** (1 - M)
- The **user** stablish a **category** (1 - 1)
- The **items** have **categories** (1 - 1)
- The **user** stablish a **status** (1 - 1)
- The **items** have a **status** (1 - 1)

---
# Entity Relationship Diagram
![ERD](../Images/DER.png)

---
# Business Rules
- User:
    - Create user
    - Read user data
    - Update user data
    - Update user password
    - Update profile picture
    - Delete user

- Item:
    - Create item
    - Read item info
    - Read number of items
    - Update item info
    - Delete item

- Category:
    - Create a category
    - Create a category for an item
    - Read the category of an item
    - Update the category of an item
    - Delete the category of an item
    - Delete a category

- Status:
    - Create a status
    - Create a status for an item
    - Read the status of an item
    - Update the status of an item
    - Delete a status
    - Delete the status of an item 

# [🔙](../README.md)