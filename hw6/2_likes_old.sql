WITH user_ids AS (SELECT user_id
                  FROM profiles
                  WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 10),
     user_posts AS (SELECT id
                    FROM posts
                    WHERE user_id IN (SELECT user_id FROM user_ids))
SELECT COUNT(*) AS liked
FROM posts_likes
WHERE post_id IN (SELECT id FROM user_posts)
  AND like_type = TRUE;

