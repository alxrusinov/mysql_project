WITH liked_posts_by_gender AS (SELECT DISTINCT gender, posts_likes.user_id
                               FROM posts_likes
                                        INNER JOIN profiles ON posts_likes.user_id = profiles.user_id
                               WHERE like_type = TRUE
                                 AND gender IN ('m', 'f'))
SELECT gender, COUNT(*) AS likes
FROM liked_posts_by_gender
GROUP BY gender
ORDER BY likes DESC
LIMIT 1;