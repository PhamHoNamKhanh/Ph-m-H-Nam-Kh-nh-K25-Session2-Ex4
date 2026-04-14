-- TẠO BẢNG

-- CREATE 
CREATE DATABASE DB_LIST_USER;


-- XOÁ BẢNG

DROP DATABASE DB_LIST_USER;

-- CREATE TABLE IN MYSQL
-- USER TABLE
-- ID TABLE 
-- ID USER(INT) : Main passwword
-- full_name (varchar) : unblank
-- age (int) : older than 6

CREATE TABLE user (
id_user INT PRIMARY KEY,
fullName VARCHAR (100) NOT NULL,
AGE INT CHECK( AGE > 6)
);
