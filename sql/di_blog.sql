set names utf8;
set foreign_key_checks = 0;
drop database if exists di_blog;
create database if not exists di_blog;
use di_blog;

drop table if exists users;

create table users(
	id int not null primary key auto_increment,
	family_name varchar(100),
	last_name varchar(100),
	family_name_kana varchar(100),
	last_name_kana varchar(100),
	mail varchar(255),
	password varchar(255),
	gender varchar(10),
	postal_code char(7),
	prefecture varchar(100),
	address_1 varchar(100),
	address_2 varchar(255),
	authority varchar(10),
	registered_time datetime,
	updated_date datetime
);
