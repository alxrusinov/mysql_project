# Заполняем таблицу профилей
INSERT INTO vk.profiles(user_id, gender, birhday, photo_id, city)
SELECT v_users.id, gender, birthday, IFNULL(photo_id, 0), hometown
FROM test1.users AS t_users,
     vk.users AS v_users
WHERE t_users.email = v_users.email;
SELECT *
FROM vk.profiles;

# Заполняем таблицу постов
INSERT INTO vk.posts (user_id, title, body)
VALUES (59, 'My awesome post', 'Simple post'),
       (63, 'My awesome post 1', 'Simple post 1'),
       (63, 'My post', 'Simple dimple'),
       (71, 'My 1', 'Complex post'),
       (59, 'My awesome', 'Post foo'),
       (163, 'Foo', 'Foo'),
       (180, 'Bar', 'Bar'),
       (100, 'Baz', 'Baz'),
       (62, 'Imp', 'Imp'),
       (275, 'Evil', 'Minion');

# Заполняем таблицу сообщений
INSERT INTO vk.messages (from_user_id, to_user_id, body)
VALUES (59, 69, 'My awesome post'),
       (63, 163, 'My awesome post 1'),
       (63, 64, 'My post'),
       (71, 88, 'My 1'),
       (59, 64, 'My awesome'),
       (163, 66, 'Foo'),
       (180, 154, 'Bar'),
       (100, 254, 'Baz'),
       (62, 124, 'Imp'),
       (275, 97, 'Evil');

# Заполняем таблицу media types
INSERT INTO vk.media_types(name)
VALUES ('архив'),
       ('видео');

# Заполняем таблицу media
INSERT INTO vk.media(user_id, media_types_id, file_name, file_size)
VALUES (59, 1, 'm.png', 1200),
       (59, 1, 'm.png', 1200),
       (159, 1, 'mm.png', 1200),
       (259, 1, 'foo.png', 1200),
       (89, 2, 'track_1.mp3', 1200),
       (87, 2, 'track_1.flac', 1200),
       (123, 3, 'm.pdf', 1200),
       (234, 3, 'mmmm.pdf', 1200),
       (99, 4, 'm.zip', 1200),
       (77, 5, 'movie.mp4', 1200);

# Заполняем таблицу запросов в друзья
INSERT INTO vk.friend_requests
VALUES (59, 69, 1),
       (67, 76, 0),
       (67, 87, 0),
       (167, 176, 1),
       (99, 98, 1),
       (123, 124, 0),
       (234, 235, 0),
       (110, 111, 1),
       (199, 66, 1),
       (61, 76, 0);

# Заполняем таблицу communities
INSERT INTO vk.communities(name, description, admin_id)
VALUES ('foo', 'fooooooo', 59),
       ('bar', 'bbbbbbest', 67),
       ('baz', 'agrhhhh', 69),
       ('com1', 'zzzzzzzzzz', 167),
       ('com2', 'sleep', 99),
       ('com3', 'wake up', 123),
       ('com4', 'just dance', 234),
       ('com5', 'eat', 110),
       ('com6', 'sleep again', 199),
       ('com7', 'j', 61);

# Заполняем таблицу communities_users
INSERT INTO vk.communities_users
VALUES (2, 59),
       (3, 67),
       (4, 69),
       (4, 167),
       (5, 99),
       (6, 123),
       (7, 234),
       (8, 110),
       (9, 199),
       (10, 61),
       (11, 61);