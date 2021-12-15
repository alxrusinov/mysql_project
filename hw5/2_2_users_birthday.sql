SELECT DAYNAME(REGEXP_REPLACE(birthday_at, '[0-9]{4}', '2021')) AS name_of_day, COUNT(*)
FROM users
GROUP BY name_of_day;