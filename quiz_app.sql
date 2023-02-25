DROP DATABASE IF EXISTS quiz_app_db;
CREATE DATABASE quiz_app_db;
USE quiz_app_db;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE questions (
    id INT NOT NULL AUTO_INCREMENT,
    question VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE answers (
    id INT NOT NULL AUTO_INCREMENT,
    answer VARCHAR(255) NOT NULL,
    correct BOOLEAN NOT NULL,
    question_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE quizzes (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE quizzes_questions (
    quiz_id INT NOT NULL,
    question_id INT NOT NULL,
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE users_quizzes (
    user_id INT NOT NULL,
    quiz_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id)
);

CREATE TABLE users_answers (
    user_id INT NOT NULL,
    answer_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (answer_id) REFERENCES answers(id)
);

CREATE TABLE user_type (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    type BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user_type (first_name, last_name, type)
    VALUES ('John', 'Smith', true),
    ('Mary', 'Doe', false),
    ('Peter', 'Brady', false),
    ('Julie', 'Andrews', false);



