CREATE TABLE flights
(
    id     SERIAL PRIMARY KEY,
    `from` TEXT NOT NULL,
    `to`   TEXT NOT NULL
);

CREATE TABLE cities
(
    label TEXT NOT NULL,
    name  TEXT NOT NULL
);

INSERT INTO flights
VALUES (1, 'moscow', 'omsk'),
       (2, 'novgorod', 'kazan'),
       (3, 'irkutsk', 'moscow'),
       (4, 'omsk', 'irkutsk'),
       (5, 'moscow', 'kazan');

INSERT INTO cities
VALUES ('moscow', 'Москва'),
       ('irkutsk', 'Иркутск'),
       ('novgorod', 'Новгород'),
       ('kazan', 'Казань'),
       ('omsk', 'Омск');


SELECT flights.id, ct_1.name AS `from`, ct_2.name AS `to`
FROM flights
         JOIN cities ct_1 ON flights.`from` = ct_1.label
         JOIN cities ct_2 ON flights.`to` = ct_2.label
ORDER BY flights.id;