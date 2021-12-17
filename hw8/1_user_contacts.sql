SELECT user_id, gender, birthday, city, country, count_messages
FROM profiles
         INNER JOIN (SELECT from_user_id, to_user_id, COUNT(*) AS count_messages
                     FROM messages
                     WHERE messages.to_user_id = 11
                     GROUP BY messages.from_user_id
                     ORDER BY count_messages DESC) AS messages ON messages.from_user_id = profiles.user_id
LIMIT 1;