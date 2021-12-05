ALTER TABLE vk.profiles
    ADD is_active BOOLEAN NOT NULL DEFAULT TRUE;

# SELECT DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW()) - TO_DAYS(@dateofbirth)), '%Y') + 0;
SELECT PERIOD_DIFF(birhday + 0, CURRENT_DATE() + 0)
FROM vk.profiles;

UPDATE vk.profiles
SET is_active = FALSE
WHERE CURRENT_DATE() - DATE_ADD(birhday, INTERVAL 18 YEAR) < 0;
SELECT *
FROM vk.profiles;