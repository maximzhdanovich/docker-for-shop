use shop;
SET FOREIGN_KEY_CHECKS = 0;
insert into role(id, title)
VALUES (1, 'USER'),
       (2, 'ADMIN');
insert into user(id, active, email, password, username, fk_basket_id, fk_role_id)
VALUES (1, true, 'user@gmail.com', 'user', 'user', 1, 1),
       (2, true, 'admin@gmail.com', 'admin', 'admin', 2, 2);
insert basket(id, fk_user_id)
VALUES (1, 1),
       (2, 2);
SET FOREIGN_KEY_CHECKS = 1;
