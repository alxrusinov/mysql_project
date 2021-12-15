SELECT COUNT(*) AS count_liked_posts
FROM posts
         INNER JOIN profiles ON profiles.user_id = posts.user_id AND TIMESTAMPDIFF(YEAR, profiles.birthday, NOW()) < 10
         INNER JOIN posts_likes ON posts.id = posts_likes.post_id AND posts_likes.like_type = TRUE;