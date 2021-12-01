/*
Черный список пользователей. Имеет владельца owner
*/

CREATE TABLE black_list
(
    id    SERIAL PRIMARY KEY,
    owner BIGINT UNSIGNED NOT NULL,
    name  VARCHAR(145)    NOT NULL,
    INDEX black_list_index (name),
    CONSTRAINT black_list_owner FOREIGN KEY (owner) REFERENCES users (id)
);

/*
Пользователи, находящиеся в черном списке
*/

CREATE TABLE black_list_users
(
    black_list_id BIGINT UNSIGNED NOT NULL,
    user_id       BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY (black_list_id, user_id),
    FOREIGN KEY (black_list_id) REFERENCES black_list (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

/*
Посты пользователей
*/

CREATE TABLE posts
(
    post_id    SERIAL PRIMARY KEY,
    user_id    BIGINT UNSIGNED NOT NULL,
    title      TEXT,
    body       TEXT,
    create_at  DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    vote_up       INT UNSIGNED    DEFAULT 0,
    vote_down    INT UNSIGNED    DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO users (firstname, lastname, email, password_hash, phone)
VALUES ('Modest', 'Pupkin', 'modest@yandex.ru', '81dc9bdb88787878752d04dc20036dbd8313ed055', '09090909292');

INSERT INTO profiles
VALUES (3, 'm', '1980-11-11', 3, 'Voronezh', 'Russia');

INSERT INTO black_list (owner, name)
VALUES (3, 'Modest');

INSERT INTO black_list_users (black_list_id, user_id)
VALUES (1, 1),
       (1, 2);

INSERT INTO posts (user_id, title, body)
VALUES (3, 'Rama', 'Mama myla ramu');

SELECT *
FROM black_list;
SELECT *
FROM black_list_users;
SELECT *
FROM posts