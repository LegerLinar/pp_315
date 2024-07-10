USE my_db;

CREATE TABLE users (
                       id int NOT NULL AUTO_INCREMENT,
                       username varchar(50),
                       password varchar(100),
                       age int,
                       email varchar(50),
                       PRIMARY KEY(id)

) ;

CREATE TABLE roles (
                       id int NOT NULL auto_increment,
                       name varchar(50),
                       primary key (id)
) ;

CREATE TABLE users_roles (
                             user_id int NOT NULL,
                             role_id int NOT NULL,
                             primary key(user_id, role_id),
                             foreign key(user_id) references my_db.users(id),
                             foreign key(role_id) references my_db.roles(id)
) ;


INSERT INTO my_db.users (username, password, age, email)
VALUES
    ('pavel', '$2a$12$IsXD52KT7G2m/0k2sGCXOesGwNopd1OO0qLvDtHyJMS5.beqVzGjG', 25, 'pavel@mail.ru'),
    ('oleg', '$2a$12$IsXD52KT7G2m/0k2sGCXOel/oFBplRmqy59/rw5gzMM5Ahd3pULfq', 20, 'oleg@google.com'),
    ('ivan', '$2a$12$IsXD52KT7G2m/0k2sGCXOezyFlHZxTa2RYN5sfBKq1g3GM1OZQNc2',  30, 'ivan@yandex.su');



INSERT INTO my_db.users_roles(user_id, role_id)
values
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 1);

USE my_db;

CREATE TABLE users (
                       id int NOT NULL AUTO_INCREMENT,
                       username varchar(50),
                       password varchar(100),
                       age int,
                       email varchar(50),
                       PRIMARY KEY(id)

) ;

CREATE TABLE roles (
                       id int NOT NULL auto_increment,
                       name varchar(50),
                       primary key (id)
) ;

CREATE TABLE users_roles (
                             user_id int NOT NULL,
                             role_id int NOT NULL,
                             primary key(user_id, role_id),
                             foreign key(user_id) references my_db.users(id),
                             foreign key(role_id) references my_db.roles(id)
) ;


INSERT INTO my_db.users (username, password, age, email)
VALUES
    ('pavel', '$2a$12$IsXD52KT7G2m/0k2sGCXOesGwNopd1OO0qLvDtHyJMS5.beqVzGjG', 25, 'pavel@mail.ru'),
    ('oleg', '$2a$12$IsXD52KT7G2m/0k2sGCXOel/oFBplRmqy59/rw5gzMM5Ahd3pULfq', 20, 'oleg@google.com'),
    ('ivan', '$2a$12$IsXD52KT7G2m/0k2sGCXOezyFlHZxTa2RYN5sfBKq1g3GM1OZQNc2',  30, 'ivan@yandex.su');



INSERT INTO my_db.users_roles(user_id, role_id)
values
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 1);

