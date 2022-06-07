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


/*- Status:
    - Create a status*/
INSERT INTO status_item (status_id, status_name) VALUES (1, "Finished");
INSERT INTO status_item (status_id, status_name) VALUES (1, "Finished"), (3, "On Going"), (2, "On Waiting"); 
    /*- Read all the status*/
SELECT * FROM status_item;
    /*- Read a status*/
SELECT * FROM status_item WHERE status_id = 2;
    /*- Update a status*/
UPDATE status_item SET status_id = 4 WHERE status_name = "Finished";
    /*- Delete a status*/
DELETE FROM status_item WHERE status_name = "Finished";


/*- Rating:
    - Create a rating*/
INSERT INTO rating (rating_id, rating_name) VALUES (1, "Great"), (2, "Good"), (3, "Ok"), (4, "Never again"), (5, "To See");
    /*- Read all the ratings*/
SELECT * FROM rating;
    /*- Read a rating*/
SELECT * FROM rating WHERE rating_id = 2;
    /*- Update a rating*/
UPDATE rating SET rating_name = "Can't stand it" WHERE rating_id = 4;
    /*- Delete a rating*/
DELETE fROM rating WHERE rating_id = 2;


/*- Users
    - Create user*/
INSERT INTO users (user_id, user_name, email, password, profile_picture, phone) VALUES 
(
    "Panfilop", "Pánfilo Pérez", "pperez@gmail.com", SHA1("contraseña"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5512345678"
);
/*Create multiple users*/
INSERT INTO users (user_id, user_name, email, password, profile_picture, phone) VALUES 
(
    "Pedrom", "Pedro Morales", "pedromoralesc@gmail.com", SHA1("Rias"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5572187020" 
),
(
    "Lupep", "Lupe Paredes", "lparedes@htomail.com", SHA1("pikachu"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5512346652"
),
(
    "ToledoA", "Toledo Amiba", "tamib@gmail.com", SHA1("amibas"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5573587050" 
),
(
    "MariaD", "Maria DataBase", "mariadb@hotmail.com", SHA1("database"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5573587111" 
);
/*Create all users*/
INSERT INTO users (user_id, user_name, email, password, profile_picture, phone) VALUES 
(
    "Panfilop", "Pánfilo Pérez", "pperez@gmail.com", SHA1("contraseña"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5512345678"
),
(
    "Pedrom", "Pedro Morales", "pedromoralesc@gmail.com", SHA1("Rias"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5572187020" 
),
(
    "Lupep", "Lupe Paredes", "lparedes@htomail.com", SHA1("pikachu"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5512346652"
),
(
    "ToledoA", "Toledo Amiba", "tamib@gmail.com", SHA1("amibas"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5573587050" 
),
(
    "MariaD", "Maria DataBase", "mariadb@hotmail.com", SHA1("database"), "https://yt3.ggpht.com/a/AATXAJyBEP1dulz01I9JBAQQ68LGZQ0BusDS7lF-3g=s900-c-k-c0xffffffff-no-rj-mo", "5573587111" 
);
    /*- Read user data*/
SELECT * FROM users;
SELECT * FROM users WHERE user_id = "Pedrom";
    /*- Update user data*/
UPDATE users SET 
    user_name = "Pánfilo",
    email = "ppanfilo@hotmail.com",
    profile_picture = "https://www.enroll-u.com/_i/2/2/5/049f33d6-6254-11ea-b0e3-0231b47980f0.png?w=276&h=276&fit=crop&s=276",
    phone = "7224263311"
WHERE user_id = "Panfilop";
    /*- Update user password*/
UPDATE users SET password = SHA1("Nocontraseña") WHERE user_id = "Panfilop";
   /* - Delete user*/
DELETE FROM users WHERE user_id = "Panfilop";


/*- Item:
    - Create item*/
INSERT INTO item (item_name, item_image, userT, statusT, categoryT, ratingT) VALUES 
(
    "Persona 5", 
    "https://media.vandal.net/m/69251/persona-5-royal-20202211626933_1.jpg",
    "Panfilop",
    1,
    1,
    1
);
INSERT INTO item (item_name, item_image, userT, statusT, categoryT, ratingT) VALUES 
(
    "Hollow Knight", 
    "https://newcastlebeach.org/images/hollow-knight-5.jpg",
    "Lupep",
    1,
    3,
    1
),
(
    "Fable II", 
    "https://www.soundtrack.net/img/album/24120.jpg",
    "ToledoA",
    1,
    1,
    1
),
(
    "El Mago de los Huesos",
    "https://assets.espaebook2.com/b/F.%20E.%20Higging/El%20mago%20de%20los%20huesos%20(1088)/big.jpg",
    "MariaD",
    2,
    3,
    4
),
(
    "Shrek 2",
    "https://www.new-video.de/co/rc/r.shrek2.jpg",
    "MariaD",
    1,
    2,
    1

);
/*Insert all items*/
INSERT INTO item (item_name, item_image, userT, statusT, categoryT, ratingT) VALUES 
(
    "Persona 5", 
    "https://media.vandal.net/m/69251/persona-5-royal-20202211626933_1.jpg",
    "Panfilop",
    1,
    1,
    1
),
(
    "Hollow Knight", 
    "https://newcastlebeach.org/images/hollow-knight-5.jpg",
    "Lupep",
    1,
    3,
    1
),
(
    "Fable II", 
    "https://www.soundtrack.net/img/album/24120.jpg",
    "ToledoA",
    1,
    1,
    1
),
(
    "El Mago de los Huesos",
    "https://assets.espaebook2.com/b/F.%20E.%20Higging/El%20mago%20de%20los%20huesos%20(1088)/big.jpg",
    "MariaD",
    2,
    3,
    4
),
(
    "Shrek 2",
    "https://www.new-video.de/co/rc/r.shrek2.jpg",
    "MariaD",
    1,
    2,
    1

);
    /*- Read item info*/
SELECT * FROM item;
    /*- Read number of items*/
SELECT COUNT (*) AS items_count FROM item;
    /*- Update item info*/
UPDATE item SET 
    item_name = "Hollow Knight",
    item_image = "https://cdn03.nintendo-europe.com/media/images/11_square_images/games_18/wii_u_download_software_3/SQ_WiiUDS_HollowKnight.jpg",
    categoryT = 1
    WHERE userT = "Lupep";
    /*- Delete item*/
DELETE FROM item WHERE item_name = "Persona 5";
