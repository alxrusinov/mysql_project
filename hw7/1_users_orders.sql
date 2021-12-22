SELECT users.id, users.name, users.birthday_at, users.created_at, users.updated_at
FROM users
         INNER JOIN orders ON users.id = orders.user_id;