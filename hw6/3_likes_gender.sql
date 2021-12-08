WITH liked_posts AS (SELECT user_id
                     FROM posts_likes
                     WHERE like_type = TRUE),
     liking_users AS (SELECT *
                      FROM profiles
                      WHERE user_id IN (SELECT user_id FROM liked_posts)
                        AND gender IN ('m', 'f'))
SELECT gender, COUNT(*) AS liked_posts
FROM liking_users
GROUP BY gender
ORDER BY liked_posts DESC
LIMIT 1;

