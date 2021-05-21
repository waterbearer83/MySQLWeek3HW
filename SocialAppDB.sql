drop database if exists SocialApp;

create database if not exists SocialApp;

use SocialApp;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

create table users(
	id int(11) not null auto_increment primary key,
	user_name varchar(30) not null,
	password varchar(15) not null,
	email varchar(30) not null
);

create table posts(
	id int(11) not null auto_increment primary key,
	user_id int(11) not null,
	post varchar(255),
	post_time datetime,
	foreign key(user_id) references users(id)
);

create table comments(
	id int(11) not null auto_increment primary key,
	user_id int(11) not null,
	post_id int(11) not null,
	comment varchar(255),
	comment_time datetime,
	foreign key(user_id) references users(id),
	foreign key(post_id) references posts(id)
);