USE my_db;

CREATE TABLE users
(
    id         int NOT NULL AUTO_INCREMENT,
    first_name varchar(50),
    last_name varchar(50),
    password   varchar(100),
    age        int,
    email      varchar(50),
    PRIMARY KEY (id)

);

CREATE TABLE roles
(
    id   int NOT NULL auto_increment,
    name varchar(50) UNIQUE,
    primary key (id)
);

CREATE TABLE users_roles
(
    user_id int NOT NULL,
    role_id int NOT NULL,
    primary key (user_id, role_id),
    foreign key (user_id) references my_db.users (id),
    foreign key (role_id) references my_db.roles (id)
);


INSERT INTO my_db.users (first_name, last_name, password, age, email)
VALUES ('pavel', 'pavlov', '$2a$12$IsXD52KT7G2m/0k2sGCXOesGwNopd1OO0qLvDtHyJMS5.beqVzGjG', 25, 'pavel@mail.ru'),
       ('oleg', 'olegov', '$2a$12$IsXD52KT7G2m/0k2sGCXOel/oFBplRmqy59/rw5gzMM5Ahd3pULfq', 20, 'oleg@google.com'),
       ('ivan', 'ivanov', '$2a$12$IsXD52KT7G2m/0k2sGCXOezyFlHZxTa2RYN5sfBKq1g3GM1OZQNc2', 30, 'ivan@yandex.su');

INSERT INTO my_db.roles(id, name)
values (1, 'ROLE_ADMIN'),
       (2, 'ROLE_USER');


INSERT INTO my_db.users_roles(user_id, role_id)
values (1, 1),
       (2, 2),
       (3, 2);
