use shop;
# CREATE TABLE book
# (
#     ID           BIGINT PRIMARY KEY NOT NULL auto_increment,
#     PRICE        DOUBLE             NOT NULL,
#     TITLE_RU     VARCHAR(255)       NOT NULL,
#     TITLE_EN     VARCHAR(255)       NOT NULL,
#     FK_AUTHOR_ID BIGINT             NOT NULL,
#     DESCRIPTION  VARCHAR(1024),
#     FK_IMAGE_ID  BIGINT
# );
# CREATE TABLE category
# (
#     ID       BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
#     TITLE_RU VARCHAR(128)       NOT NULL,
#     TITLE_EN VARCHAR(128)       NOT NULL
# );
# CREATE TABLE author
# (
#     ID          BIGINT PRIMARY KEY NOT NULL auto_increment,
#     NAME        VARCHAR(128)       NOT NULL,
#     SURNAME     VARCHAR(128)       NOT NULL,
#     FK_IMAGE_ID BIGINT
# );
# CREATE TABLE author_image
# (
#     ID    BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
#     IMAGE VARCHAR(255)
# #     FK_AUTHOR_ID BIGINT
# );
# CREATE TABLE book_images
# (
#     ID    BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
#     IMAGE VARCHAR(255)
# #     FK_BOOK_ID BIGINT
# );
CREATE TABLE basket
(
    ID         BIGINT PRIMARY KEY NOT NULL auto_increment,
    FK_USER_ID BIGINT             NOT NULL
);
CREATE TABLE role
(
    ID    BIGINT PRIMARY KEY NOT NULL auto_increment,
    TITLE VARCHAR(128)       NOT NULL
);
CREATE TABLE user
(
    ID           BIGINT PRIMARY KEY NOT NULL auto_increment,
    EMAIL        VARCHAR(128)       NOT NULL,
    ACTIVE       SMALLINT           NOT NULL,
    USERNAME     VARCHAR(128)       NOT NULL,
    PASSWORD     VARCHAR(60)        NOT NULL,
    FK_ROLE_ID   BIGINT             NOT NULL,
    FK_BASKET_ID BIGINT
);
# CREATE TABLE book_with_category
# (
#     book_id     bigint not null,
#     category_id bigint not null
# );

# ALTER TABLE book_with_category
#     add FOREIGN KEY (book_id) references book (id);
# ALTER TABLE book_with_category
#     add FOREIGN KEY (category_id) references category (id);
# ALTER TABLE book
#     add foreign key (FK_IMAGE_ID) references book_images (ID);
# ALTER TABLE book
#     ADD FOREIGN KEY (FK_AUTHOR_ID) REFERENCES author (ID);
# ALTER TABLE author
#     ADD FOREIGN KEY (FK_IMAGE_ID) REFERENCES author (ID);
ALTER TABLE basket
    ADD FOREIGN KEY (FK_USER_ID) REFERENCES user (ID);
ALTER TABLE user
    ADD FOREIGN KEY (FK_ROLE_ID) REFERENCES role (ID);
ALTER TABLE user
    ADD FOREIGN KEY (FK_BASKET_ID) REFERENCES basket (ID);
