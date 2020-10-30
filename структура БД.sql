 -- В курсовом проекте описана модель хранения данных сайта ficbook.net. БД содержит информацию о фанфиках, пользователях (и авторов фанфиков среди них), 
 -- комментариях, подарках, личных сообщениях, награжденных фанфиках, об оценках "Нравится" на фанфиках, сборниках пользователей.
 
 
 drop database if exists finalproject;
 create database finalproject character set utf8mb4;
 use finalproject;
 
drop table if exists fanfics;
create table fanfics(
	id serial primary key, 
	title varchar(50),
    relashionsip enum('Джен', 'Гет', 'Слэш', 'Фемслэш', 'Другие виды отношений'),
    genre enum('Комедия','Драма', 'Ужасы', 'Фэнтези', 'Научная фантастика', 'Реализм', 'Мистика', 'Детектив', 'Боевик', 'Психология','Статья'),
    age_raiting enum('G', 'PG', 'R', 'NC'),
	puplished_at date
);

drop table if exists users;
create table users(
	id serial primary key, 
	nickname varchar(50),
    description varchar(280),
    photo_id bigint unsigned default null,
    email varchar(120) unique,
    pass char(50),
    is_author bool default 1,
    created_at datetime default current_timestamp,
    index (nickname),
    index (email)
);


drop table if exists authors;
create table authors(
	user_id bigint unsigned not null,
    nickname varchar(50),
    description varchar(280),
    photo_id bigint unsigned default null,
    email varchar(120) unique,
    pass char(50),
    created_at datetime default current_timestamp,
    primary key (user_id),
    foreign key(user_id) references users (id),
	index (nickname),
    index (email)
);

drop table if exists fanfics_authors;
create table fanfics_authors(
	author_id bigint unsigned not null,
    fanfic_id bigint unsigned not null,
    foreign key(author_id) references users (id),
    foreign key(fanfic_id) references fanfics (id)
);

drop table if exists comments;
create table comments(
	id serial primary key,
	user_id bigint unsigned not null,
	fanfic_id bigint unsigned not null,
	body text,
	created_at datetime default current_timestamp,
	updated_at datetime default current_timestamp on update current_timestamp,
	foreign key (user_id) references users (id),
	foreign key (fanfic_id) references fanfics (id)
);


drop table if exists direct_messages;
create table direct_messages(
	id serial primary key,
	from_user_id bigint unsigned not null,
	to_user_id bigint unsigned not null,
	body text,
	is_read bool default 0,
	created_at datetime default current_timestamp,
	foreign key (from_user_id) references users (id),
	foreign key (to_user_id) references users (id)
);

drop table if exists fanfics_likes;
create table fanfics_likes(
	fanfic_id bigint unsigned not null, 
    number_of_likes bigint unsigned not null, 
	foreign key (fanfic_id) references fanfics (id),
	primary key (fanfic_id)
);



drop table if exists fanfics_awarded;
create table fanfics_awarded(
	fanfic_id bigint unsigned not null, 
	foreign key (fanfic_id) references fanfics (id),
	primary key (fanfic_id)
);

INSERT INTO fanfics_awarded (fanfic_id) SELECT fanfic_id FROM fanfics_likes WHERE number_of_likes>=150;

drop table if exists gifts;
create table gifts(
	to_user_id bigint unsigned not null, 
    from_user_id bigint unsigned not null, 
    gift enum('Лучшему автору','Спасибо','Вдохновения','Пиши ещё!'),
	gifted_at datetime default current_timestamp,
	foreign key (to_user_id) references users (id),
    foreign key (from_user_id) references users (id),
	primary key (to_user_id, from_user_id)
);


drop table if exists users_collections;
create table users_collections(
	id serial primary key,
	user_id bigint unsigned not null,
    fanfic_id bigint unsigned not null,
    collection_name enum('Избранное','Жду продолжения','Планирую прочитать'),
    foreign key (user_id) references users (id),
	foreign key (fanfic_id) references fanfics (id)
);


