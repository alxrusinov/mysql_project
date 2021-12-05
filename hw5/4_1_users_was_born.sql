SELECT *
FROM users
WHERE MONTHNAME(birthday_at) IN ('may', 'august');