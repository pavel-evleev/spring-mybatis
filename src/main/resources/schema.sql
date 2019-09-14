CREATE TABLE author
(
  id         LONG AUTO_INCREMENT NOT NULL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name  VARCHAR(50)        NOT NULL
);

CREATE TABLE book
(
  id    LONG AUTO_INCREMENT NOT NULL PRIMARY KEY,
  title VARCHAR(100)       NOT NULL
);

CREATE TABLE author_book
(
  author_id LONG NOT NULL,
  book_id   LONG NOT NULL,

  PRIMARY KEY (author_id, book_id),
  CONSTRAINT fk_ab_author FOREIGN KEY (author_id) REFERENCES author (id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_ab_book FOREIGN KEY (book_id) REFERENCES book (id)
);

CREATE TABLE users
(
  id         LONG AUTO_INCREMENT NOT NULL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name  VARCHAR(50)        NOT NULL
);


CREATE TABLE author_users
(
  author_id LONG NOT NULL,
  user_id   LONG NOT NULL,

  PRIMARY KEY (author_id, user_id),
  CONSTRAINT fk_au_author FOREIGN KEY (author_id) REFERENCES author (id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_au_users FOREIGN KEY (user_id) REFERENCES users (id)
);