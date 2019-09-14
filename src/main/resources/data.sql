INSERT INTO author
VALUES (1, 'Kathy', 'Sierra'),
       (2, 'Bert', 'Bates'),
       (3, 'Bryan', 'Basham');

INSERT INTO book
VALUES (1, 'Head First Java'),
       (2, 'Head First Servlets and JSP'),
       (3, 'OCA/OCP Java SE 7 Programmer');

INSERT INTO author_book
VALUES (1, 1),
       (1, 3),
       (1, 2),
       (2, 1);


INSERT INTO users
VALUES (1, 'Pavel', 'Sierra'),
       (2, 'George', 'Bates'),
       (3, 'Anna', 'Basham');


INSERT INTO author_users
VALUES (1, 1),
       (1, 3),
       (1, 2),
       (2, 1);
