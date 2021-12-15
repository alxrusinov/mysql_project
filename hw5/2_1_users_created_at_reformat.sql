ALTER TABLE users
    ADD created_at_new DATETIME,
    ADD updated_at_new DATETIME;

UPDATE users
SET created_at_new = STR_TO_DATE(created_at, '%d.%c.%Y %k:%i'),
    updated_at_new = STR_TO_DATE(updated_at, '%d.%c.%Y %k:%i');

ALTER TABLE users
    DROP COLUMN created_at,
    DROP COLUMN updated_at;

ALTER TABLE users
    CHANGE COLUMN created_at_new created_at DATETIME,
    CHANGE COLUMN updated_at_new updated_at DATETIME;