WITH user_messages AS (
    SELECT *
    FROM messages
    WHERE to_user_id = 11
),

     finded_user AS (SELECT from_user_id, COUNT(*) AS message_count
                     FROM user_messages
                     GROUP BY from_user_id
                     ORDER BY message_count
                             DESC
                     LIMIT 1
     )
SELECT *
FROM users
WHERE id IN (SELECT from_user_id FROM finded_user)
;