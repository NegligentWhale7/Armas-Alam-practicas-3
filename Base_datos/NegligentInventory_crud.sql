/*Category:
    - Create a category*/
INSERT INTO category (category_id, category_name) VALUES (1, "Videogames");
    /*- Create multiple categories*/
INSERT INTO category (category_id, category_name) VALUES (1, "Videogames"), (2, "Movies"), (3, "Books");
    /*- Read all the categories*/
SELECT * FROM category;
    /*- Read a category*/
SELECT * FROM category WHERE category_name = "Books";
    /*- Update a category*/
UPDATE category SET category_name = "VideoGames" WHERE category_id = 1;
    /*- Delete a category*/
DELETE FROM category WHERE category_id = 1;