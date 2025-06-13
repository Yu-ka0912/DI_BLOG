set names utf8;
set foreign_key_checks = 0;
drop database if exists di_blog;
create database if not exists di_blog;
use di_blog;

drop table if exists users;

create table users(
	id int not null primary key auto_increment,
	last_name varchar(10),
	first_name varchar(10),
	last_name_kana varchar(10),
	first_name_kana varchar(10),
	email varchar(100),
	password varchar(10),
	gender varchar(10),
	postal_code char(7),
	prefecture varchar(50),
	city varchar(10),
	address varchar(100),
	role varchar(10),
	registered_time datetime,
	updated_ datetime
);
