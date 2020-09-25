1. Проанализировать структуру БД vk, которую мы создали на занятии, и внести предложения по усовершенствованию (если такие идеи есть). 
Напишите пожалуйста, всё-ли понятно по структуре.
 -- По структуре все вроде бы понятно.

2. Добавить необходимую таблицу/таблицы для того, чтобы можно было использовать лайки для медиафайлов, постов и пользователей.

-- таблицы с лайками - последние три.

drop database if exists snet1509;
create database snet1509;
-- сѓ сѓрєр°р·р°рѕрёр?рј рєрѕрґрёсђрѕрірєрё
-- create database snet1509 character set utf8mb4;
use snet1509;

drop table if exists users;
create table users(
	id serial primary key, -- serial = bigint unsigned not null auto_increment unique
	name varchar(50),
	surname varchar(50),
	email varchar(120) unique,
	phone bigint,
	gender char(1),
	birthday date,
	hometown varchar(50),
	photo_id bigint unsigned,
	pass char(50),
	created_at datetime default current_timestamp,
	-- soft delete ('рјсџрірєрѕр?' сѓрґр°р»р?рѕрёр?)
	-- is_deleted bool
	-- deleted_at datetime
	index(phone),
	index(email),
	index(name, surname)
);

drop table if exists messages;
create table messages(
	id serial primary key,
	from_user_id bigint unsigned not null,
	to_user_id bigint unsigned not null,
	body text,
	is_read bool default 0,
	created_at datetime default current_timestamp,
	foreign key (from_user_id) references users (id),
	foreign key (to_user_id) references users (id)
);

drop table if exists friend_requests;
create table friend_requests(
	-- id serial primary key,
	initiator_user_id bigint unsigned not null,
	target_user_id bigint unsigned not null,
	status enum('requested', 'approved', 'unfriended', 'declined') default 'requested',
	requested_at datetime default now(),
	confirmed_at datetime default current_timestamp on update current_timestamp,
	primary key(initiator_user_id, target_user_id),
	foreign key (initiator_user_id) references users (id),
	foreign key (target_user_id) references users (id)
);

alter table friend_requests add index(initiator_user_id);

drop table if exists communities;
create table communities(
	id serial primary key,
	name varchar(150),
	index communities_name_idx (name)
);


drop table if exists users_communities;
create table users_communities(
	user_id bigint unsigned not null,
	community_id bigint unsigned not null,
	is_admin bool default 0,
	primary key(user_id, community_id),
	foreign key (user_id) references users (id),
	foreign key (community_id) references communities (id)
);

drop table if exists posts;
create table posts(
	id serial primary key,
	user_id bigint unsigned not null,
	body text,
	metadata json,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp,
	foreign key (user_id) references users (id)
);

drop table if exists comments;
create table comments (
	id serial primary key,
	user_id bigint unsigned not null,
	post_id bigint unsigned not null,
	body text,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp,
	foreign key (user_id) references users (id),
	foreign key (post_id) references posts (id)
);

drop table if exists photos;
create table photos (
	id serial primary key,
	user_id bigint unsigned not null,
	description text,
	filename varchar(250),
	foreign key (user_id) references users (id)
);

drop table if exists post_likes;
create table post_likes(
	user_id bigint unsigned not null, -- кто поставил лайк
	post_id bigint unsigned not null, -- на какой пост поставили лайк
	liked_at datetime default current_timestamp,
	foreign key (user_id) references users (id),
	foreign key (post_id) references posts (id),
	primary key (user_id, post_id)
);

drop table if exists photo_likes;
create table photo_likes(
	user_id bigint unsigned not null, -- кто поставил лайк
	photo_id bigint unsigned not null, -- на что поставили лайк
	liked_at datetime default current_timestamp,
	foreign key (user_id) references users (id),
	foreign key (photo_id) references photos (id),
	primary key (user_id, photo_id)
	);

	drop table if exists user_likes;
create table user_likes(
	initiator_user_id bigint unsigned not null, -- кто поставил лайк
	target_user_id bigint unsigned not null, -- юзер, которого лайкнули
	liked_at datetime default current_timestamp,
	primary key(initiator_user_id, target_user_id),
	foreign key (initiator_user_id) references users (id),
	foreign key (target_user_id) references users (id)
);
	
