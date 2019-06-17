CREATE TABLE users
(
    id       INTEGER PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE chats
(
    id      INTEGER PRIMARY KEY AUTO_INCREMENT,
    name    TEXT NOT NULL,
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE messages
(
    id      INTEGER PRIMARY KEY AUTO_INCREMENT,
    chat_id INTEGER,
    user_id INTEGER,
    content VARCHAR NOT NULL,
    date    DATE DEFAULT CURRENT_DATE,
    time    TIME DEFAULT CURRENT_TIME,
    FOREIGN KEY (chat_id) REFERENCES chats (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

INSERT INTO users (username)
VALUES (
           'Vasya'
       );

INSERT INTO chats (name, user_id)
VALUES ('First chat',
        1);

INSERT INTO messages (chat_id, user_id, content)
VALUES (1, 1, 'Hi!');

SELECT *
FROM messages
WHERE date = '2019-06-17';