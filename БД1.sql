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
	
INSERT INTO `communities` (`id`, `name`) VALUES ('95', 'ad');
INSERT INTO `communities` (`id`, `name`) VALUES ('91', 'adipisci');
INSERT INTO `communities` (`id`, `name`) VALUES ('82', 'animi');
INSERT INTO `communities` (`id`, `name`) VALUES ('52', 'assumenda');
INSERT INTO `communities` (`id`, `name`) VALUES ('37', 'aut');
INSERT INTO `communities` (`id`, `name`) VALUES ('9', 'autem');
INSERT INTO `communities` (`id`, `name`) VALUES ('24', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('64', 'consequatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('94', 'consequuntur');
INSERT INTO `communities` (`id`, `name`) VALUES ('1', 'culpa');
INSERT INTO `communities` (`id`, `name`) VALUES ('22', 'cumque');
INSERT INTO `communities` (`id`, `name`) VALUES ('4', 'debitis');
INSERT INTO `communities` (`id`, `name`) VALUES ('73', 'debitis');
INSERT INTO `communities` (`id`, `name`) VALUES ('47', 'deleniti');
INSERT INTO `communities` (`id`, `name`) VALUES ('62', 'deleniti');
INSERT INTO `communities` (`id`, `name`) VALUES ('63', 'deserunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('12', 'dicta');
INSERT INTO `communities` (`id`, `name`) VALUES ('65', 'dolor');
INSERT INTO `communities` (`id`, `name`) VALUES ('48', 'dolorem');
INSERT INTO `communities` (`id`, `name`) VALUES ('81', 'dolorem');
INSERT INTO `communities` (`id`, `name`) VALUES ('86', 'doloremque');
INSERT INTO `communities` (`id`, `name`) VALUES ('13', 'enim');
INSERT INTO `communities` (`id`, `name`) VALUES ('16', 'eos');
INSERT INTO `communities` (`id`, `name`) VALUES ('69', 'eos');
INSERT INTO `communities` (`id`, `name`) VALUES ('76', 'error');
INSERT INTO `communities` (`id`, `name`) VALUES ('88', 'esse');
INSERT INTO `communities` (`id`, `name`) VALUES ('55', 'est');
INSERT INTO `communities` (`id`, `name`) VALUES ('15', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('31', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('68', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('92', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('98', 'et');
INSERT INTO `communities` (`id`, `name`) VALUES ('36', 'eveniet');
INSERT INTO `communities` (`id`, `name`) VALUES ('41', 'ex');
INSERT INTO `communities` (`id`, `name`) VALUES ('87', 'ex');
INSERT INTO `communities` (`id`, `name`) VALUES ('54', 'exercitationem');
INSERT INTO `communities` (`id`, `name`) VALUES ('25', 'expedita');
INSERT INTO `communities` (`id`, `name`) VALUES ('14', 'explicabo');
INSERT INTO `communities` (`id`, `name`) VALUES ('17', 'fugiat');
INSERT INTO `communities` (`id`, `name`) VALUES ('50', 'fugiat');
INSERT INTO `communities` (`id`, `name`) VALUES ('56', 'fugiat');
INSERT INTO `communities` (`id`, `name`) VALUES ('89', 'fugiat');
INSERT INTO `communities` (`id`, `name`) VALUES ('90', 'fugit');
INSERT INTO `communities` (`id`, `name`) VALUES ('30', 'harum');
INSERT INTO `communities` (`id`, `name`) VALUES ('66', 'hic');
INSERT INTO `communities` (`id`, `name`) VALUES ('34', 'illo');
INSERT INTO `communities` (`id`, `name`) VALUES ('79', 'in');
INSERT INTO `communities` (`id`, `name`) VALUES ('96', 'inventore');
INSERT INTO `communities` (`id`, `name`) VALUES ('99', 'itaque');
INSERT INTO `communities` (`id`, `name`) VALUES ('58', 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES ('71', 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES ('77', 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES ('80', 'iure');
INSERT INTO `communities` (`id`, `name`) VALUES ('93', 'labore');
INSERT INTO `communities` (`id`, `name`) VALUES ('26', 'laudantium');
INSERT INTO `communities` (`id`, `name`) VALUES ('18', 'magni');
INSERT INTO `communities` (`id`, `name`) VALUES ('83', 'maiores');
INSERT INTO `communities` (`id`, `name`) VALUES ('5', 'molestias');
INSERT INTO `communities` (`id`, `name`) VALUES ('28', 'natus');
INSERT INTO `communities` (`id`, `name`) VALUES ('33', 'nesciunt');
INSERT INTO `communities` (`id`, `name`) VALUES ('51', 'nihil');
INSERT INTO `communities` (`id`, `name`) VALUES ('19', 'nostrum');
INSERT INTO `communities` (`id`, `name`) VALUES ('6', 'nulla');
INSERT INTO `communities` (`id`, `name`) VALUES ('70', 'numquam');
INSERT INTO `communities` (`id`, `name`) VALUES ('78', 'occaecati');
INSERT INTO `communities` (`id`, `name`) VALUES ('85', 'occaecati');
INSERT INTO `communities` (`id`, `name`) VALUES ('35', 'officia');
INSERT INTO `communities` (`id`, `name`) VALUES ('3', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('84', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('100', 'omnis');
INSERT INTO `communities` (`id`, `name`) VALUES ('44', 'optio');
INSERT INTO `communities` (`id`, `name`) VALUES ('57', 'pariatur');
INSERT INTO `communities` (`id`, `name`) VALUES ('7', 'perferendis');
INSERT INTO `communities` (`id`, `name`) VALUES ('21', 'perspiciatis');
INSERT INTO `communities` (`id`, `name`) VALUES ('72', 'quaerat');
INSERT INTO `communities` (`id`, `name`) VALUES ('49', 'quam');
INSERT INTO `communities` (`id`, `name`) VALUES ('75', 'quam');
INSERT INTO `communities` (`id`, `name`) VALUES ('46', 'quas');
INSERT INTO `communities` (`id`, `name`) VALUES ('20', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('23', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('97', 'qui');
INSERT INTO `communities` (`id`, `name`) VALUES ('42', 'quia');
INSERT INTO `communities` (`id`, `name`) VALUES ('29', 'quibusdam');
INSERT INTO `communities` (`id`, `name`) VALUES ('8', 'quo');
INSERT INTO `communities` (`id`, `name`) VALUES ('2', 'repudiandae');
INSERT INTO `communities` (`id`, `name`) VALUES ('27', 'saepe');
INSERT INTO `communities` (`id`, `name`) VALUES ('53', 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES ('60', 'sed');
INSERT INTO `communities` (`id`, `name`) VALUES ('61', 'sit');
INSERT INTO `communities` (`id`, `name`) VALUES ('32', 'soluta');
INSERT INTO `communities` (`id`, `name`) VALUES ('11', 'tempore');
INSERT INTO `communities` (`id`, `name`) VALUES ('40', 'tenetur');
INSERT INTO `communities` (`id`, `name`) VALUES ('59', 'totam');
INSERT INTO `communities` (`id`, `name`) VALUES ('10', 'ullam');
INSERT INTO `communities` (`id`, `name`) VALUES ('43', 'unde');
INSERT INTO `communities` (`id`, `name`) VALUES ('39', 'ut');
INSERT INTO `communities` (`id`, `name`) VALUES ('45', 'vel');
INSERT INTO `communities` (`id`, `name`) VALUES ('67', 'vel');
INSERT INTO `communities` (`id`, `name`) VALUES ('74', 'voluptas');
INSERT INTO `communities` (`id`, `name`) VALUES ('38', 'voluptatum');


INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('1', '100', 'unfriended', '2020-02-23 07:38:51', '1985-08-07 02:25:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('2', '99', 'unfriended', '2004-05-15 20:55:44', '2008-12-24 02:36:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('3', '98', 'requested', '1996-05-07 18:53:04', '2016-08-14 09:47:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('4', '97', 'unfriended', '2014-06-03 08:31:47', '1975-02-14 19:35:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('5', '96', 'approved', '1989-12-13 12:51:30', '1994-05-13 22:43:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('6', '95', 'requested', '2003-03-18 21:07:48', '1991-08-23 19:42:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('7', '94', 'requested', '1987-12-27 09:32:08', '1983-07-10 20:36:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('8', '93', 'declined', '1983-08-16 06:40:47', '2006-07-11 16:10:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('9', '92', 'unfriended', '1972-01-22 01:48:05', '1974-03-22 19:16:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('10', '91', 'requested', '2016-09-16 20:16:50', '2012-07-16 03:13:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('11', '89', 'unfriended', '2003-04-07 14:45:50', '1986-06-30 21:19:46');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('12', '88', 'requested', '1971-05-05 19:17:36', '1993-01-02 08:20:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('13', '87', 'unfriended', '2008-04-09 06:16:50', '1989-08-10 16:03:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('14', '86', 'declined', '2006-06-04 00:31:29', '2006-07-29 02:25:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('15', '85', 'unfriended', '2001-02-28 07:45:49', '1994-01-03 20:23:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('16', '84', 'unfriended', '1989-03-16 21:20:12', '1988-04-28 04:25:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('17', '83', 'requested', '1975-04-03 08:21:25', '2004-11-09 21:43:23');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('18', '82', 'unfriended', '2011-05-08 05:04:41', '2009-09-10 15:33:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('19', '81', 'approved', '1989-09-15 14:58:45', '1989-01-18 12:19:01');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('20', '80', 'requested', '2018-04-18 10:07:33', '1980-11-08 00:08:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('21', '79', 'requested', '1986-06-02 04:08:45', '1972-06-22 06:43:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('22', '78', 'approved', '1989-12-11 17:49:56', '1987-06-18 19:16:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('23', '77', 'declined', '1999-09-02 14:42:35', '1972-02-15 02:17:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('24', '76', 'declined', '2009-05-03 12:21:07', '1980-03-14 20:28:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('25', '75', 'unfriended', '2007-02-19 11:03:02', '1997-01-30 08:47:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('26', '74', 'approved', '2008-05-31 00:17:35', '2001-05-12 04:45:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('27', '73', 'unfriended', '2014-06-07 17:29:53', '1985-03-05 19:10:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('28', '72', 'requested', '2006-05-06 05:45:37', '2006-07-29 03:20:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('29', '71', 'declined', '1988-06-30 07:42:37', '2015-09-07 09:36:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('30', '70', 'approved', '2009-03-25 13:37:53', '2002-03-31 03:51:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('31', '69', 'approved', '1998-07-30 00:38:39', '2008-04-04 11:59:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('32', '68', 'approved', '1998-08-12 01:14:14', '1983-03-29 07:35:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('33', '67', 'requested', '1981-10-16 18:48:59', '1974-12-09 05:42:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('34', '66', 'requested', '2000-12-25 03:51:09', '2013-08-30 17:17:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('35', '65', 'declined', '1995-11-28 19:27:27', '2007-04-24 11:26:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('36', '64', 'approved', '1997-04-18 03:34:02', '2004-04-22 23:05:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('37', '63', 'approved', '2000-05-01 06:07:56', '2001-10-02 01:01:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('38', '62', 'requested', '1997-01-07 15:41:18', '2009-01-11 10:39:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('39', '61', 'declined', '2012-08-09 08:49:37', '2012-02-23 07:40:07');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('40', '60', 'requested', '2005-05-30 22:02:48', '1990-10-04 01:23:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('41', '59', 'declined', '2009-12-29 19:16:08', '1997-04-11 18:47:51');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('42', '58', 'unfriended', '1982-05-14 22:25:53', '1993-06-29 05:26:59');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('43', '57', 'requested', '1980-07-29 15:31:09', '2009-01-25 01:40:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('44', '56', 'declined', '1997-01-20 15:52:11', '2012-02-15 21:03:41');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('45', '55', 'declined', '2006-08-25 01:22:42', '2016-06-04 15:07:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('46', '54', 'declined', '1971-08-24 19:17:49', '1980-11-06 08:05:52');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('47', '53', 'approved', '1975-08-23 04:23:01', '2003-09-27 00:49:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('48', '52', 'declined', '2016-05-26 07:51:57', '1988-06-02 17:02:15');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('49', '51', 'requested', '2014-09-26 23:04:24', '2020-01-03 12:21:20');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('50', '50', 'requested', '2000-05-12 12:34:03', '2006-05-30 03:45:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('51', '49', 'approved', '1986-06-16 01:01:33', '1980-05-26 19:46:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('52', '48', 'unfriended', '1980-01-30 22:08:47', '2010-07-24 10:41:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('53', '47', 'unfriended', '2003-12-31 13:53:07', '2011-10-02 00:04:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('54', '46', 'requested', '1996-03-30 00:02:00', '2019-03-06 00:03:03');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('55', '45', 'approved', '1978-11-25 09:25:52', '1977-05-26 00:32:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('56', '44', 'requested', '1990-04-05 21:01:26', '1998-02-25 13:51:30');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('57', '43', 'unfriended', '1997-01-11 04:49:54', '1971-01-31 04:14:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('58', '42', 'approved', '1991-05-17 22:31:42', '1987-10-03 05:33:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('59', '41', 'requested', '1981-02-16 01:55:46', '1975-03-28 18:18:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('60', '40', 'approved', '2015-04-17 13:55:39', '1987-02-28 23:25:53');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('61', '39', 'requested', '1974-08-12 09:10:10', '2005-04-22 15:44:05');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('62', '38', 'approved', '2019-01-31 01:07:36', '1986-04-27 12:25:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('63', '37', 'approved', '2011-12-23 14:32:39', '1998-06-12 07:45:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('64', '36', 'requested', '2016-06-03 09:21:13', '1976-02-18 21:37:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('65', '35', 'requested', '2001-09-11 20:02:54', '1984-07-15 01:48:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('66', '34', 'declined', '2014-05-24 08:25:48', '2013-08-08 04:42:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('67', '33', 'approved', '2011-06-04 22:51:59', '1998-01-09 18:11:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('68', '32', 'declined', '1989-05-11 03:12:27', '2006-08-16 11:13:42');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('69', '31', 'declined', '2014-09-25 17:07:50', '2001-05-13 03:35:09');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('70', '30', 'declined', '2004-06-17 23:30:41', '1972-01-16 01:50:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('71', '29', 'unfriended', '1989-03-15 18:19:58', '2009-07-27 16:23:43');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('72', '28', 'unfriended', '1998-09-22 05:14:14', '1975-07-12 04:39:58');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('73', '27', 'declined', '1989-08-31 17:23:48', '1986-04-16 13:00:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('74', '26', 'requested', '2005-09-12 13:57:36', '1987-03-03 21:35:22');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('75', '25', 'requested', '2004-04-09 22:10:02', '1983-12-01 21:20:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('76', '24', 'requested', '1993-07-20 20:13:31', '1970-03-04 13:53:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('77', '23', 'declined', '2004-06-04 00:30:23', '1981-12-18 06:25:32');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('78', '22', 'unfriended', '1986-06-14 08:48:04', '2008-05-13 23:31:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('79', '21', 'requested', '1971-07-13 17:33:55', '2016-08-05 09:07:35');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('80', '20', 'declined', '1980-06-14 00:40:03', '1988-08-29 03:27:26');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('81', '19', 'requested', '2016-07-19 23:21:45', '1996-07-27 02:59:45');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('82', '18', 'approved', '2017-09-18 23:34:13', '2017-05-17 07:59:06');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('83', '17', 'unfriended', '2012-11-03 03:21:18', '2016-01-31 06:14:29');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('84', '16', 'approved', '1991-05-07 16:30:31', '1989-05-17 10:09:49');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('85', '15', 'declined', '2007-05-02 19:30:00', '1972-09-16 07:48:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('86', '14', 'unfriended', '1982-02-04 16:58:35', '1988-04-08 08:29:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('87', '13', 'declined', '1996-11-08 13:11:28', '2002-02-12 23:43:31');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('88', '12', 'unfriended', '1998-03-06 15:52:31', '1989-06-01 13:31:55');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('89', '11', 'approved', '1980-10-03 11:17:24', '1986-04-14 18:50:00');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('90', '10', 'requested', '2014-09-12 10:37:30', '1975-09-10 05:54:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('91', '9', 'declined', '2017-01-26 08:02:27', '2016-04-30 21:45:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('92', '8', 'requested', '2012-03-23 03:07:17', '1988-06-10 22:23:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('93', '7', 'declined', '1998-10-29 21:00:29', '2019-06-23 01:04:13');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('94', '6', 'requested', '2006-03-08 09:22:38', '1971-07-19 23:58:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('95', '5', 'requested', '1992-08-22 11:24:01', '2017-09-03 21:25:12');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('96', '4', 'unfriended', '2000-03-05 12:29:11', '2011-03-07 10:17:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('97', '3', 'requested', '2009-08-31 05:02:48', '2011-06-11 12:45:57');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('98', '2', 'approved', '1980-05-17 06:31:25', '1993-02-11 09:06:48');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('99', '1', 'declined', '1981-08-07 07:36:27', '1992-07-23 04:44:50');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `confirmed_at`) VALUES ('100', '90', 'unfriended', '1977-05-04 02:55:28', '2001-08-13 12:59:45');


INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('1', '1', '1', 'Non dolores consequatur quod consequatur excepturi ex. Ducimus qui eos corrupti ut voluptas et id placeat. Molestias delectus accusantium enim doloremque.', 0, '2008-02-10 07:48:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('2', '2', '2', 'Et quo aut dolore beatae eum. Fugit adipisci veniam voluptatem voluptas et id. Et soluta quisquam corporis et laboriosam sed. Rerum deserunt in optio et.', 0, '1996-05-23 12:11:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('3', '3', '3', 'Omnis dolorem atque non itaque praesentium. Est neque non excepturi non et quis. Exercitationem numquam officiis possimus ipsum nesciunt exercitationem impedit. Voluptatem voluptatibus soluta porro quidem pariatur harum.', 0, '1970-03-28 13:06:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('4', '4', '4', 'Aperiam et iure excepturi fugit non repellat et. Qui distinctio excepturi beatae velit. Harum dolor explicabo autem.', 0, '1972-09-17 23:14:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('5', '5', '5', 'Omnis mollitia modi debitis omnis. Officiis voluptatem ducimus ut sit quae totam mollitia. Adipisci reiciendis consequatur consequatur accusamus. Cum explicabo non illo minima aliquid.', 0, '2008-09-02 04:12:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('6', '6', '6', 'Fugiat illum sed voluptatem voluptatibus. Numquam dolor natus expedita aut quis qui quaerat ut. Deleniti earum tempora nostrum et suscipit.', 1, '2006-04-12 20:23:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('7', '7', '7', 'Autem accusamus quo et illum velit illo. Voluptas omnis quas voluptas eius labore modi sequi. Rem excepturi accusantium reiciendis. Eos ut numquam qui dolores.', 0, '1977-03-03 10:28:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('8', '8', '8', 'Officiis officiis in quia illo et. Fugiat alias iure sit illum qui quia. Qui est nemo et ut animi rerum ducimus. Iste magni voluptatem harum perferendis qui. Quis ipsam nemo est quod illum.', 1, '2014-06-30 02:50:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('9', '9', '9', 'Qui temporibus necessitatibus reiciendis tempore quia. Possimus quo sint aut ipsa et. Aut id nostrum cum.', 1, '2009-04-15 07:23:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('10', '10', '10', 'Voluptas quasi eveniet et perferendis facilis. Sunt veritatis voluptatem quia. Accusamus quos ut eius.', 1, '1988-04-22 20:08:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('11', '11', '11', 'Vero quae numquam doloribus. Vitae eligendi id eius molestiae. Qui ut voluptatem velit quo.', 0, '1997-12-23 01:16:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('12', '12', '12', 'Praesentium laboriosam et assumenda rerum quia quasi debitis. Quae iusto in architecto vel. Autem excepturi ut quidem amet. Itaque dolorem molestiae quo dolor quia molestiae. Eos voluptatum quibusdam inventore perspiciatis impedit non.', 1, '1995-06-05 14:17:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('13', '13', '13', 'Atque aliquid minus occaecati iure ut. Rerum quos eligendi molestiae ut.', 1, '2018-11-14 05:06:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('14', '14', '14', 'Consequuntur voluptas sit aut nobis repellendus sapiente. Perferendis voluptatem consequatur officia id repellendus voluptates velit. Assumenda accusantium voluptatem corrupti voluptatibus dignissimos sapiente consequatur sequi.', 0, '1986-09-02 21:01:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('15', '15', '15', 'Ipsa corporis assumenda aut voluptate enim quibusdam at. In perspiciatis dolorum aut veritatis accusamus ut laboriosam. Repellendus sunt vel dolorum quod animi alias. Velit molestiae officiis esse qui. Pariatur accusantium unde impedit et.', 1, '1974-05-02 17:36:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('16', '16', '16', 'Sint et sint et aliquam. Est possimus perspiciatis culpa expedita dolores. Aut impedit possimus quos et porro aliquam sint. Quod laboriosam dolores iure fugit dolorem.', 1, '2015-02-07 06:38:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('17', '17', '17', 'Occaecati sit voluptatem cupiditate. Tempora enim dolores dignissimos molestiae.', 1, '1997-12-01 03:29:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('18', '18', '18', 'Aut vitae at praesentium. Sapiente id deleniti deleniti quod qui. Id perferendis impedit adipisci praesentium. Facere et dignissimos sit dignissimos magni.', 0, '1994-12-17 05:02:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('19', '19', '19', 'Nihil ut vitae exercitationem dicta necessitatibus voluptatem. Perferendis laborum aspernatur dolor voluptatem sint omnis.', 0, '1995-04-24 09:45:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('20', '20', '20', 'Aliquam eum commodi enim natus. Blanditiis quidem quas sed fuga laborum sit. Amet fugit eligendi ut debitis.', 0, '1974-04-13 21:30:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('21', '21', '21', 'Maxime consequatur blanditiis aut accusantium accusamus nulla. Temporibus enim impedit et sint nulla voluptatibus. Sit adipisci non saepe et nam mollitia aut. Numquam veniam fuga distinctio in facilis.', 1, '2003-06-30 09:27:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('22', '22', '22', 'Tempora necessitatibus qui cupiditate delectus consectetur assumenda temporibus. Ut accusantium nemo soluta illum dignissimos minus error. Inventore ipsam ullam repellendus voluptate.', 1, '2012-07-16 11:17:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('23', '23', '23', 'Animi soluta necessitatibus et praesentium. Sapiente in nulla hic iure molestiae non ea facilis. Quia aut voluptas sit facilis pariatur. Occaecati ipsum et non eos. Laudantium est aut earum architecto et.', 0, '2015-11-21 22:08:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('24', '24', '24', 'Numquam quisquam totam placeat ea consequatur. Culpa eos nostrum itaque voluptas cum voluptas.', 1, '1975-07-21 14:24:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('25', '25', '25', 'In voluptas vel adipisci culpa fuga culpa sit. Quidem velit est fugit ut culpa.', 1, '1982-03-30 08:31:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('26', '26', '26', 'Autem aut sed voluptas non. Fugit sequi omnis modi soluta porro sed hic. Ut nesciunt architecto non magnam suscipit ad maiores nobis.', 1, '1985-12-20 06:25:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('27', '27', '27', 'Nostrum libero debitis praesentium provident ut tempore quam. Laudantium tenetur veritatis ex molestias. Quis aperiam reprehenderit non accusantium. Quia et qui corporis sint.', 0, '2009-07-19 20:04:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('28', '28', '28', 'Ad quod reprehenderit officiis velit. Consequatur culpa reprehenderit quod sed a sit. Nemo cupiditate tempore dolorum laborum vero eum. Distinctio quis facilis dicta.', 0, '1979-10-12 01:53:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('29', '29', '29', 'Voluptas nesciunt veniam cupiditate. Totam ut delectus perferendis et. Saepe consequatur commodi ratione voluptatem quos sequi qui officiis. Exercitationem occaecati voluptas nobis adipisci hic illum.', 0, '2004-10-25 17:02:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('30', '30', '30', 'Illum accusamus voluptas rem. Quia maiores odio ut id harum. Quia et nulla quo et. Eum et pariatur aspernatur fuga veritatis dolorem.', 0, '2011-05-28 08:27:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('31', '31', '31', 'Et iusto qui iure adipisci. Amet facere culpa sequi rerum. Doloremque et eos ab dolor.', 1, '2002-08-22 20:13:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('32', '32', '32', 'Alias consectetur ut qui consectetur harum adipisci. Quis placeat esse molestiae distinctio earum. Cumque architecto eligendi omnis et. Tempore vel sed eum dolor ab dicta non.', 1, '1989-10-10 10:45:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('33', '33', '33', 'Eos iusto nulla maiores non. Dolorem dignissimos sapiente expedita et tenetur voluptates earum. Et distinctio vel et.', 0, '2012-11-10 06:46:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('34', '34', '34', 'Doloremque est hic voluptatibus nihil et dolore est. Magnam optio in accusantium qui. Reiciendis harum quasi et quis.', 1, '1974-07-30 09:32:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('35', '35', '35', 'Esse accusantium dignissimos qui reprehenderit consequuntur commodi. Neque est iusto eum sed odio dolor eius. Ducimus soluta aut quia molestiae sunt tempora nam dolor.', 0, '2015-05-11 00:57:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('36', '36', '36', 'Quos tempore rerum voluptatem ducimus ut officiis sit. Nobis voluptatem est omnis omnis at asperiores beatae porro. Ut quo officia et sit qui. Amet magni et non numquam quia aut quas.', 1, '1982-11-04 23:42:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('37', '37', '37', 'Possimus voluptatem voluptate enim sint. Dolore optio voluptatem quia tenetur in. Aperiam dolorem distinctio natus at. Qui animi qui mollitia voluptas. Vero laboriosam sunt exercitationem sequi.', 0, '1979-06-16 15:30:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('38', '38', '38', 'Consectetur culpa est dolorem ut reiciendis cumque qui molestiae. Molestiae ut ut sequi iure quod rerum modi. Harum amet est nihil libero aspernatur qui. Vero expedita enim et eligendi asperiores facere.', 1, '1971-09-08 14:43:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('39', '39', '39', 'Debitis odit illo et sequi accusamus nostrum. Ullam consequatur veritatis inventore perferendis minima sunt quae non. Ea velit numquam debitis minima repellat.', 0, '1994-07-14 05:34:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('40', '40', '40', 'Quidem illum quis dolores rerum et ea. Quia aliquam at ea rem. At necessitatibus dolorem ad nisi non blanditiis consequatur praesentium. Neque ratione possimus voluptatem aliquid cupiditate.', 0, '2003-12-09 07:40:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('41', '41', '41', 'Omnis enim officia id odit ipsum. Perferendis et accusantium dolorum sit. Aliquid omnis hic eius sed.', 1, '2012-05-20 03:07:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('42', '42', '42', 'Error rerum quas voluptatem dolore. Dicta vel quam ullam hic deserunt ad. Sed et dolorum tempore labore beatae veritatis enim ut. Non explicabo quis dolorem harum rem eum dignissimos.', 0, '2018-06-17 20:00:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('43', '43', '43', 'Ducimus maiores voluptates earum eos vero dolores. Eligendi dolores ut totam excepturi repellat omnis dolore est. Recusandae quidem assumenda esse quisquam cupiditate aut.', 1, '2017-04-22 17:11:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('44', '44', '44', 'Est eos ipsa eligendi sed. Voluptate voluptatum quae deserunt saepe aut expedita. Autem nihil eaque id non ut voluptas.', 0, '1982-11-23 23:18:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('45', '45', '45', 'Quaerat reprehenderit officia natus dolorem omnis illo et. Natus placeat molestiae et nesciunt sunt. Iusto nobis cupiditate doloremque deserunt omnis sint sit saepe.', 1, '1980-10-18 05:54:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('46', '46', '46', 'Aut in fugit vero. Fugiat libero quibusdam officia. Ea eveniet quas non dolor itaque sapiente.', 0, '1973-03-18 22:24:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('47', '47', '47', 'Quia consequuntur accusantium ipsum necessitatibus iste molestias quidem quasi. Adipisci nihil iste laborum quis perspiciatis magnam. Sunt sit eligendi voluptatem in et rerum quibusdam. Et voluptatem exercitationem consequuntur et pariatur dignissimos provident.', 1, '2020-08-12 01:22:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('48', '48', '48', 'Voluptatum temporibus et distinctio dolores officiis nobis. Quae consequatur ducimus consequuntur quam. Enim aut omnis expedita asperiores est. Quasi quis voluptatem omnis.', 1, '1997-01-21 17:23:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('49', '49', '49', 'Officia quisquam vel doloribus et placeat. Sed qui ratione quo aut. Aliquam labore doloribus sed non.', 1, '1979-11-09 05:18:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('50', '50', '50', 'Inventore est qui sint porro. Quam modi dolores et qui dolore. Et ab minima quod rerum consequuntur.', 0, '1984-04-08 11:56:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('51', '51', '51', 'Reprehenderit alias esse aut et. In eos aspernatur consequatur id architecto in ratione. Aut officiis repellat omnis qui. Et voluptatibus cum ab dolorem numquam fugiat quod.', 0, '1974-10-03 04:35:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('52', '52', '52', 'In tempora placeat tenetur et. Velit inventore nihil temporibus. Sapiente vitae aperiam ratione perferendis. Eum recusandae velit eum esse.', 0, '1977-11-27 10:47:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('53', '53', '53', 'Eum id aut ut quasi officiis repellendus aut. Repellat placeat sunt est ipsa eos et rerum quam. Numquam ut officia ad nihil soluta et mollitia.', 1, '1992-02-07 20:13:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('54', '54', '54', 'Provident voluptas est dolorem et nemo optio earum. Nulla quae error itaque omnis ut. Corrupti aperiam sed fuga molestias dolor natus.', 1, '1998-08-19 18:36:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('55', '55', '55', 'Voluptatibus reiciendis eius ex alias quis aut aliquid sed. Ipsa fuga est vel adipisci rerum eveniet sed minus. Debitis fugiat nam autem. Quam modi numquam voluptatibus hic quidem quia.', 0, '1995-03-04 19:16:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('56', '56', '56', 'Deleniti corporis veritatis ipsam et dicta nihil. Doloribus deleniti ea ea atque. Iusto quod sunt odio qui ut est dolorem. Deleniti non vel aut iste rerum corporis.', 1, '2010-08-26 12:10:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('57', '57', '57', 'Enim et deleniti iure consequatur. Eligendi molestiae voluptatem est quia architecto excepturi dicta. Corrupti nulla sit fugit sed ut aliquam.', 0, '2001-05-17 20:48:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('58', '58', '58', 'Officiis laborum voluptatem iste omnis enim ea voluptatibus quaerat. Qui fugit in illum quisquam dolorem qui. Aut quia assumenda eaque ratione molestias. Maxime itaque ullam reprehenderit rerum vero aut.', 1, '2017-09-30 00:25:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('59', '59', '59', 'Id porro commodi non iste. Aut nobis exercitationem labore totam non provident. Sint aut sit consequuntur qui alias.', 1, '1971-04-25 17:43:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('60', '60', '60', 'Ut deleniti ut architecto non. Cum id nobis quidem. Maiores quam natus eligendi odit enim. Nemo suscipit dolore provident qui atque debitis.', 0, '2010-12-06 08:50:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('61', '61', '61', 'Debitis praesentium facere sunt et beatae. Atque sint voluptas quaerat veniam eum mollitia cumque. Voluptas voluptas iste tenetur neque quasi.', 0, '1992-04-20 18:31:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('62', '62', '62', 'Quaerat vel odit et delectus possimus rerum. Perspiciatis cum quae eaque voluptatem nam veniam. Qui quae quibusdam autem. Voluptas voluptatum ipsum quos expedita qui magnam.', 0, '1993-12-20 20:23:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('63', '63', '63', 'Ullam autem dignissimos ipsa ut eum adipisci dolor. Eius suscipit aut labore voluptas aut voluptatum.', 1, '2018-04-19 11:56:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('64', '64', '64', 'Impedit aperiam illum aut nihil corporis veritatis. Nostrum sit aperiam et fuga vel. Sit accusantium velit natus est iure tempore.', 1, '1970-10-05 21:12:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('65', '65', '65', 'Exercitationem illum quae quam accusamus natus eveniet vel. Neque voluptatem quasi totam dolor nisi natus eligendi sed. Enim iusto soluta laboriosam sit quidem ad. Delectus enim qui ut aut.', 0, '1989-02-02 07:32:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('66', '66', '66', 'Accusamus dolor perspiciatis reiciendis omnis aspernatur dolores et. Consequatur incidunt quisquam voluptas nisi voluptatum ut in. Distinctio sed corporis libero dolorum alias earum exercitationem non. Esse velit rerum esse dolore ut et quibusdam.', 0, '1976-01-15 16:23:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('67', '67', '67', 'Laboriosam placeat eos nulla. Ut magni aliquid odit vel officia laborum ipsa. Nesciunt voluptas mollitia sint id.', 1, '2005-02-18 10:07:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('68', '68', '68', 'Et corrupti temporibus error labore. Expedita soluta voluptas dolor exercitationem soluta qui. Itaque distinctio eos tenetur ullam eius minima. Vel adipisci soluta facere ut pariatur quae. Exercitationem tempora odit atque quia.', 0, '1981-05-30 09:19:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('69', '69', '69', 'Aut et quod molestiae minima et. Labore aut aperiam repellat saepe quia.', 0, '1994-05-25 00:37:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('70', '70', '70', 'Quas nulla et aspernatur dolore earum aut pariatur. Impedit aut voluptatem sunt et.', 1, '1995-09-30 19:19:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('71', '71', '71', 'Autem sequi inventore omnis eos quisquam est esse. Temporibus ab eligendi iure natus quia assumenda ducimus. Voluptatem est culpa modi dolor cum exercitationem at.', 0, '1997-03-08 04:07:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('72', '72', '72', 'Et sunt eaque et blanditiis vero soluta numquam. Vero enim laudantium impedit quo cupiditate aliquam. Facilis voluptatem sint similique porro. Autem quo provident eveniet facere omnis et omnis.', 0, '2016-11-01 05:08:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('73', '73', '73', 'Quis velit omnis temporibus est recusandae accusantium. Nihil qui veniam quis quo assumenda voluptas.', 1, '2004-04-13 06:48:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('74', '74', '74', 'Vel rerum illum sed voluptatem quos. Recusandae eos magni et facere. Molestias blanditiis et omnis temporibus natus consequuntur.', 1, '2012-07-26 08:59:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('75', '75', '75', 'Consequatur itaque odit modi quisquam. Sunt qui numquam sit ducimus. Explicabo id molestias qui omnis veniam.', 0, '1987-04-27 09:04:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('76', '76', '76', 'Sed quod ea vel et corrupti dolore harum. Maxime iure repudiandae nihil.', 1, '1990-02-18 08:45:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('77', '77', '77', 'Aut perferendis optio a ullam animi nemo quisquam. Nemo doloremque quia et dicta. Eum corrupti sequi ex est sit omnis recusandae.', 1, '1977-03-22 02:17:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('78', '78', '78', 'Quis odio quia iusto. Velit tempore error perferendis ut debitis sed nihil ullam. Doloremque dolorum iste a officia vitae. Rerum aut exercitationem quae quo.', 0, '2019-09-17 07:27:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('79', '79', '79', 'Corrupti et officiis eum et qui. Facere doloribus et temporibus autem sequi enim. Aliquid voluptatem ut et dicta. In quidem commodi voluptate rerum.', 0, '2015-10-05 07:11:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('80', '80', '80', 'Rem rerum natus quasi est. Ipsa porro aspernatur aut quas. Voluptas odit veritatis vel laborum velit. Dolore laboriosam saepe qui omnis.', 0, '2011-11-16 01:47:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('81', '81', '81', 'Eum exercitationem fuga aliquid. Eveniet quasi soluta ab commodi odit voluptatem illum. Temporibus dolorem voluptatem placeat fuga consequatur quisquam.', 1, '2010-11-10 09:07:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('82', '82', '82', 'Repellendus hic excepturi voluptates tenetur sit. Est tempore iusto aperiam ut. Voluptatum pariatur quaerat illum fugiat. Eos voluptas laudantium ea.', 0, '1976-09-08 12:13:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('83', '83', '83', 'Voluptates adipisci nobis aut est accusantium ut. Neque quia et soluta qui dolorum laudantium. Quos ipsam voluptates sapiente dignissimos a dolorem facere.', 1, '2003-01-08 07:45:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('84', '84', '84', 'Nemo a delectus perspiciatis blanditiis quia veniam minima. Omnis commodi quos voluptas aut quia et. Aperiam aspernatur eum et accusantium harum quo adipisci.', 0, '1997-01-10 12:59:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('85', '85', '85', 'Dolores eligendi sit rerum esse inventore expedita. Dolores sunt itaque porro quasi praesentium aliquam perferendis est. Alias facere et sit et ab. Nobis alias enim aut quis nam quas sed sed.', 1, '1985-07-16 21:02:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('86', '86', '86', 'Eos quae quisquam distinctio ipsa alias dolor voluptas. Ut error est dolorum similique. Eos aut commodi eveniet eum autem optio.', 0, '1997-09-16 11:55:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('87', '87', '87', 'Tempore dolorem laborum quibusdam sit explicabo pariatur porro. Provident sequi a delectus ipsa et odit veritatis. Voluptatem impedit maxime quos sunt iste doloribus temporibus.', 0, '2013-08-25 15:40:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('88', '88', '88', 'Dicta vitae vel recusandae nesciunt. Eum fugit omnis possimus et voluptas veritatis. Asperiores corrupti eveniet laborum recusandae cumque et. Quibusdam at vel fuga et autem est maxime. Nisi ut totam quam harum.', 0, '1971-06-17 11:00:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('89', '89', '89', 'Enim sapiente aperiam libero aliquid perspiciatis adipisci. Aliquid eum veniam vel. Dolor qui et temporibus qui enim necessitatibus libero. Id est ut fugiat eum sed hic.', 1, '1979-11-29 23:20:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('90', '90', '90', 'Deserunt dignissimos neque nostrum delectus ullam quis aut. Doloribus est exercitationem error velit perferendis.', 0, '1979-08-27 21:47:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('91', '91', '91', 'Libero dolorem id blanditiis dolores enim pariatur. Voluptatem voluptate est quam commodi omnis. Reiciendis nihil perspiciatis quibusdam totam eaque. Inventore dolores placeat ut totam quo.', 1, '2013-10-15 08:11:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('92', '92', '92', 'Possimus exercitationem ut modi ut. Eos vel est facere non dolorem. Dolor quis quidem rerum consectetur minus eius. Rerum laudantium amet est dolorum aliquam enim eaque.', 0, '1988-05-05 08:15:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('93', '93', '93', 'Maxime nihil provident ducimus dolorem debitis dolor aut. Eveniet et sapiente quasi ea non et. Explicabo eius ut nobis incidunt repudiandae sed.', 1, '2006-04-01 16:06:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('94', '94', '94', 'Sequi ut illo nam quibusdam enim et et culpa. Alias id a dolorem aut. Consequatur debitis ducimus blanditiis autem magnam saepe.', 1, '1977-03-28 07:07:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('95', '95', '95', 'Placeat nemo sequi repudiandae quasi beatae aut aperiam temporibus. Quia cum voluptate repudiandae nulla nulla voluptatem nesciunt. Alias voluptatum quam temporibus et aut atque. Eaque magnam quo est in mollitia voluptatum voluptatem.', 1, '1991-10-01 23:11:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('96', '96', '96', 'A omnis et enim et id temporibus temporibus animi. Accusantium odio alias eveniet quia reprehenderit quia eius. Voluptas perspiciatis excepturi soluta aut eos hic nostrum.', 1, '1998-11-14 22:38:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('97', '97', '97', 'Placeat vitae aspernatur error. Omnis sint dolor deserunt aut animi. Eaque facere vitae quia consequatur molestias magnam. Rerum molestiae voluptas in nulla a et. Delectus provident minima aut.', 0, '1989-12-29 05:56:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('98', '98', '98', 'Sit quis voluptas quo doloremque at culpa laborum. Distinctio enim qui veritatis commodi sed perspiciatis veritatis. Consequatur rerum odit voluptatum dolorem hic quibusdam. Ducimus optio qui numquam non recusandae delectus libero nam. Ab quidem nihil quia molestiae fuga.', 1, '1988-08-27 05:25:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('99', '99', '99', 'Dicta eius amet assumenda omnis. Mollitia ducimus mollitia qui voluptatum. Eum aut id nam rerum.', 0, '1989-12-13 16:19:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('100', '100', '100', 'Voluptate natus quia laborum similique quae optio. Nobis iusto qui quia. Nam aut id quod rem et.', 1, '1983-01-19 23:29:41');


INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('1', '1', 'Aliquam odio molestias perferendis et cupiditate. Laborum voluptas explicabo repudiandae quia est aut. Natus excepturi ipsa quo blanditiis. Quaerat quia quia fuga voluptate velit cupiditate consequatur. Non rerum culpa praesentium ad quibusdam pariatur.', '92 ec');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('2', '2', 'Debitis perspiciatis vero qui. Eos rerum fugit velit ea ut aut. Sit molestiae quaerat perferendis alias sint tempora provident.', '95 sd');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('3', '3', 'Aut beatae in voluptatibus blanditiis quia omnis accusamus. Autem voluptatibus unde similique sunt et accusamus quia quidem. Ut nam quis et. Consequatur et qui deserunt ipsa id voluptatem.', '01 qn');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('4', '4', 'Rerum eos voluptatem quae distinctio est sint. Dolor rerum magni nihil qui. Temporibus rerum inventore sed qui. Commodi minus at veniam et illo.', '37 jk');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('5', '5', 'Aliquam iusto veritatis mollitia ut. Enim eos voluptas repudiandae dolorum velit ut. Temporibus et dicta dolore nobis error culpa. Et sit ut ab vero rerum consectetur. Est delectus quibusdam inventore nihil natus et ut.', '48 zd');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('6', '6', 'Nemo aut sed dolore quia. Voluptatem in possimus nihil. Ipsa nemo eveniet enim ratione vitae ex est.', '15 ch');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('7', '7', 'Architecto quis autem aliquid esse. Excepturi vitae praesentium cumque saepe accusamus eum consectetur quia. Qui cum animi temporibus accusantium sed velit aspernatur qui. Aut quibusdam nobis et est et.', '79 cd');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('8', '8', 'Totam sit est dolorem totam est dolores qui. Quisquam rem similique consequatur praesentium voluptatum aut commodi. Omnis eligendi et sunt eaque odit commodi praesentium omnis. Et error eos itaque ratione unde sit quisquam.', '72 sr');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('9', '9', 'Quia ab qui temporibus veniam possimus aut. Et numquam sed voluptatem perferendis voluptatum ipsam saepe dicta. Saepe tenetur consequatur ut autem natus praesentium. Eaque voluptates veniam et non.', '35 rl');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('10', '10', 'Modi incidunt mollitia dolorum. Dolorum quibusdam quibusdam reiciendis nisi dolorum dolore. Aut ipsum qui eius quia eveniet qui.', '11 zp');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('11', '11', 'Deleniti aliquam corrupti quia. Rem aut consequatur et qui. Cumque animi asperiores culpa porro consequatur voluptate.', '11 ak');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('12', '12', 'Et vitae adipisci cum exercitationem voluptates ab alias. Et ipsam sunt nesciunt quos. Et placeat dolorem pariatur placeat fugit dolor dolor.', '51 zm');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('13', '13', 'Enim nostrum illum laudantium sunt distinctio. Impedit soluta rem nostrum sunt.', '41 ta');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('14', '14', 'Quo nihil dicta nam omnis est eveniet unde. Corporis veritatis amet labore et voluptas. Nobis dolorem autem consequatur facilis.', '26 lx');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('15', '15', 'Accusantium qui adipisci quis iste consequatur exercitationem sapiente. Explicabo vel fugiat iusto qui. Non qui neque earum.', '77 xy');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('16', '16', 'Id dolor et voluptas. Pariatur est sunt voluptatem expedita hic adipisci ut. Quia voluptatem pariatur ipsa porro dolor minima.', '34 lr');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('17', '17', 'Et natus non sequi quia laborum cupiditate atque. Magnam et voluptatem qui suscipit doloribus. Explicabo deleniti aliquid nam vero. Reprehenderit et enim consectetur dolorem libero velit magni.', '66 dg');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('18', '18', 'Nihil sunt minima inventore voluptas quia est. Delectus qui exercitationem expedita. Vero eum molestias libero sint sed et iure.', '94 iq');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('19', '19', 'Occaecati ut voluptate officiis omnis sapiente sint repellat. Sint et odio minus consequuntur. Et et dolores consequatur nihil eius.', '13 ba');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('20', '20', 'Iure reiciendis enim voluptatem minus voluptatem. Consequuntur quam delectus corporis quasi. Voluptatibus aliquid et labore consequatur est.', '56 ep');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('21', '21', 'Minima ex doloremque nulla odit vel qui quia. Praesentium qui perferendis assumenda eum corporis sed esse. Nostrum doloremque quis qui occaecati aut et est.', '40 nq');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('22', '22', 'Ut eius cum sequi et cum est. Nisi dolorem voluptatem dignissimos recusandae. Voluptates perferendis error veniam porro velit asperiores ea.', '10 sz');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('23', '23', 'Molestiae ut est laborum enim possimus quo eum. Dignissimos fuga ut assumenda non.', '12 bt');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('24', '24', 'Eveniet et temporibus quasi. Pariatur veritatis velit iste expedita quo commodi qui. Ut delectus ea veniam fugit.', '73 mk');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('25', '25', 'A facere facilis doloremque natus libero fugiat. Quis alias sed temporibus tempora consequatur fugiat. At facilis repudiandae alias sed amet.', '58 zl');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('26', '26', 'Eum vel fuga omnis nemo. Ut aut iste vel voluptatem aspernatur. Saepe quibusdam magni commodi suscipit tenetur et. Fugiat saepe et illo natus quia.', '89 hd');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('27', '27', 'Soluta est molestiae doloribus odit. Illum tempora consequatur est. Maiores veniam sunt est recusandae.', '16 kh');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('28', '28', 'Porro numquam aut asperiores consectetur at commodi culpa. Velit nesciunt consequatur nam aspernatur. Doloremque voluptatem temporibus voluptatem eius.', '72 so');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('29', '29', 'Sit tempore quidem optio error ducimus molestiae ab omnis. Eos optio molestiae non sit qui consequatur. Sed est vel voluptatum. Vitae expedita molestias neque.', '79 ye');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('30', '30', 'Sed ut dolores voluptas consequatur soluta beatae. Dolor quia voluptatem sunt odit laboriosam nemo. Officia consequatur inventore vero aut excepturi voluptas incidunt.', '98 an');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('31', '31', 'Voluptatibus iste et facilis et veritatis. Omnis et maiores sunt fugiat hic et. Eveniet sequi accusamus in voluptatem.', '15 ot');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('32', '32', 'Nobis incidunt illo excepturi illo pariatur. Excepturi aut est iure officia culpa laudantium. Et dolorem culpa est et exercitationem deleniti harum dolor. Reiciendis consequuntur aspernatur rerum et adipisci molestias ipsum.', '11 sk');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('33', '33', 'Velit est modi error perspiciatis. Officiis est aspernatur non pariatur molestias quod. Vel ullam saepe ullam consectetur aut. Maiores veniam sunt fugiat.', '97 eo');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('34', '34', 'Iure excepturi repellat consectetur ut vel ut error. Veritatis id eos exercitationem facilis. Maxime deserunt est asperiores ipsum. Sit dolorum et labore voluptatem itaque quo.', '60 yj');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('35', '35', 'Omnis debitis adipisci minima maxime velit totam et eveniet. Saepe qui modi fuga et beatae. Ex facilis dolores labore vero.', '81 rp');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('36', '36', 'Assumenda et et ex tempora. Dolores quia sint voluptatum quas neque. Quis cumque aut laudantium omnis modi omnis ad aut. Mollitia repudiandae voluptatem voluptates nihil repellendus doloremque et et.', '17 au');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('37', '37', 'Quod impedit explicabo quod voluptatem. Cum laudantium aut autem voluptatum.', '68 jr');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('38', '38', 'Numquam non quia autem consectetur vel facere impedit voluptas. Voluptatibus dolor quam voluptatem.', '02 bi');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('39', '39', 'Sint qui maxime omnis est quae. Ab inventore sit maiores et aut autem et. Laboriosam sint corporis dolores dolores odio animi voluptas.', '97 rj');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('40', '40', 'Vero omnis voluptates cumque architecto. Sint vitae laudantium sequi accusantium quis. Quia et repellendus dolor officia.', '98 vq');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('41', '41', 'A suscipit nam voluptatem eum dignissimos optio. Est eligendi quasi corrupti. Voluptatibus quo sit dolores earum excepturi.', '89 ar');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('42', '42', 'Quas totam doloribus velit pariatur quasi animi. Nam labore autem consectetur placeat consequuntur. Molestias excepturi assumenda doloribus quidem eaque. Qui sit iure sit unde commodi ullam beatae qui.', '81 at');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('43', '43', 'Sed dolores quibusdam quas nostrum vero non consequatur. Quam ut est fuga repellendus voluptatem. Cumque a iusto incidunt in. Rerum dolorem consequatur in.', '32 md');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('44', '44', 'Sit maxime eos aut recusandae hic. Officiis explicabo illo quaerat ut ratione ut tempore. Assumenda dolor rerum ut ratione nihil et quae.', '19 he');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('45', '45', 'Voluptas eligendi aut nemo modi sit nam. Molestiae qui non accusamus commodi. Iure id harum sequi id maxime ut voluptas.', '12 dp');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('46', '46', 'Sit distinctio odio non illo saepe dolorum molestiae. Vel labore natus ratione ad et ut eveniet iure. Autem non unde rerum deserunt nam rerum non.', '61 at');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('47', '47', 'Asperiores est ex cupiditate eos maxime dolorum saepe. Ea et et ratione deleniti. Repellendus dignissimos accusantium odit similique qui tempore aspernatur. Adipisci eum harum ullam ab quibusdam ut vel.', '48 lt');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('48', '48', 'Quasi et sapiente ea vel adipisci nihil nesciunt et. Hic et laudantium quia deleniti quia eum. Et porro hic harum ut ducimus nulla et amet. Nostrum saepe optio sequi nisi. Labore consectetur exercitationem qui aliquam.', '17 oq');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('49', '49', 'Ea dignissimos facere quas. Optio dolorum qui voluptatem. Labore magni nihil vel esse. Dolorum veritatis ad accusantium suscipit iure dolore. Aspernatur eos non voluptatem similique.', '14 xc');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('50', '50', 'Eaque ad molestiae quia consectetur enim. Velit vero repellat impedit. Laboriosam officia autem ut. Placeat esse voluptatem tenetur eos aut.', '10 sy');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('51', '51', 'Et earum aut officiis minus sit eum facilis. A ut recusandae quo est.', '58 jf');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('52', '52', 'Est totam iure voluptatem nihil recusandae dignissimos. Voluptatem illo eaque fuga qui corporis. Autem voluptate ut mollitia modi est quis.', '19 xj');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('53', '53', 'Qui autem ea eius in id totam. Qui et eos nobis omnis labore officiis ut. Ut aut eum laudantium ut aut. Beatae repudiandae voluptatem impedit placeat eum iste aliquam.', '42 co');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('54', '54', 'Repudiandae in voluptatem qui quis libero consequatur neque iure. In praesentium repudiandae facere occaecati ipsum eos expedita.', '80 pz');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('55', '55', 'Possimus nihil ea similique dolorum tempore. Non et veritatis dolor qui omnis est tenetur sit. In recusandae fugit in laboriosam. Sit minima aut qui praesentium quos. Ut vitae quis et sed iste.', '10 fs');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('56', '56', 'Molestias fuga culpa quaerat fugit ad. Quia non illum sed. Et perferendis tempore temporibus qui nesciunt asperiores quis. Qui error laboriosam molestiae consequatur nesciunt quas.', '78 en');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('57', '57', 'Quos molestiae nihil et. Itaque accusantium accusantium velit suscipit non ut. Sunt ipsa sit harum aut.', '10 fv');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('58', '58', 'Inventore libero nihil voluptatibus dolores aspernatur et voluptate quaerat. Ratione dolor aut quos consequuntur architecto. Non eligendi consequatur asperiores debitis.', '39 zn');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('59', '59', 'Voluptas sapiente quia incidunt minus harum nihil consequatur. Nihil autem cum aut odio id veniam qui. Enim omnis tempora et harum.', '97 nq');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('60', '60', 'Similique vel facere voluptatem voluptas. Quis exercitationem illo itaque distinctio. Dolor architecto non et sunt earum iste. Animi eaque atque rem fugit.', '82 gm');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('61', '61', 'Accusantium aut et qui quos culpa debitis et. Quis facilis ut eum. Quo repellendus sunt ea nesciunt.', '45 sx');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('62', '62', 'Consectetur eveniet ad harum placeat est nostrum ipsa. Nesciunt omnis et nam sit nesciunt quam repellat. Quae ut aut earum nihil. Ratione magni similique non.', '37 rg');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('63', '63', 'Culpa sit numquam non ut. Repellendus voluptate repellat incidunt eligendi corporis. Animi autem quae beatae aliquid eligendi facere.', '15 vj');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('64', '64', 'Mollitia sunt quasi dolores atque. Libero eos quia non quam. Et ex dolorem reiciendis quasi cumque officiis. Perferendis tenetur ut libero rerum et eveniet sed.', '72 we');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('65', '65', 'Occaecati in eum et sed nihil suscipit. Qui eveniet et quibusdam rerum. Nisi corrupti quia iusto. Rerum accusamus quidem quod atque incidunt. Aperiam sapiente ea quae voluptas quos et dolorem et.', '86 fm');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('66', '66', 'Ab voluptatibus assumenda praesentium cumque. Eum consequatur et non earum rem et sunt. Dignissimos labore sint corporis atque sit est at.', '87 wr');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('67', '67', 'Quis id rerum et et minus omnis. Perferendis ad corrupti consequatur voluptatem aliquid voluptates quo repudiandae. Ut omnis error eum molestiae. Aut sed cumque nobis eum.', '61 ii');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('68', '68', 'Quasi aut incidunt reprehenderit eos occaecati maiores consectetur. Sapiente et est sit voluptatibus doloribus. Velit odit ut quo consequuntur ipsam. Consequuntur suscipit maiores sunt enim aliquam sed vel.', '76 pg');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('69', '69', 'Nobis et nesciunt aut molestias molestiae dignissimos vel. Ut iure veritatis aut quidem nemo eligendi. Molestiae quasi aliquid accusantium dicta quo voluptates similique fugiat. Est accusantium qui dicta et eum quidem odit.', '28 bk');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('70', '70', 'Exercitationem et a quia repudiandae odio quidem aut. Aut at sit laudantium vitae. Modi voluptate aut ut voluptas accusamus consequatur.', '60 dk');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('71', '71', 'Odio autem natus aut quis velit omnis natus. Quaerat expedita incidunt magnam nam. Ad harum voluptate provident maxime est. Recusandae animi nihil voluptatem necessitatibus hic delectus.', '80 ed');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('72', '72', 'Eum ut officiis deserunt porro nisi. Exercitationem in laborum inventore eveniet consequatur explicabo magni. Velit dolor quam quidem necessitatibus labore ex autem. Odio odit recusandae qui repellendus nam ut vero veniam.', '63 xw');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('73', '73', 'Accusamus recusandae iure maxime. Perspiciatis ad et rerum error corrupti et. Et harum dignissimos voluptas repellendus iusto laboriosam officia quod. Voluptatem id voluptatem quasi error quod sunt. Rem reprehenderit sed iure aut tempore tempore sint voluptas.', '77 xb');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('74', '74', 'Quia quis vitae nesciunt nulla adipisci. Non reprehenderit sit aut ipsum non voluptates eos. Consectetur aut eaque saepe. Ipsam ut tenetur molestiae vitae fugit asperiores.', '04 hs');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('75', '75', 'Cupiditate voluptatem voluptatem ducimus labore. Omnis et quis et voluptas. Omnis suscipit et omnis dicta modi. Placeat est ut nihil dignissimos aut.', '14 qd');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('76', '76', 'Consequatur blanditiis earum incidunt aut aut totam et quas. Et voluptas magnam porro voluptas. Dolor minus nulla numquam in quia.', '59 ot');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('77', '77', 'Harum et nemo illo quo voluptatibus ut. Modi sit quidem et quasi debitis. Est sint commodi eos aut enim earum aliquid.', '74 kl');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('78', '78', 'Qui et ut quia labore. Mollitia voluptas est et in.', '81 gn');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('79', '79', 'Eveniet quidem nemo voluptatum voluptatem fugiat in qui. Numquam vel earum magnam ea labore dolores. A quaerat saepe recusandae sint. Alias quam rem facere quis error consequatur tempora. Ullam quasi est aut non est.', '39 ay');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('80', '80', 'Enim praesentium temporibus quia ut ipsa vel. Quia quidem nam ipsam minus. Quis aut fuga et voluptatem assumenda dicta. Vel non iusto autem maiores ipsa. Et commodi quia sit aspernatur.', '11 ck');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('81', '81', 'Sint sunt dicta minus qui est repudiandae odit. Explicabo quisquam molestiae reprehenderit et. Atque quia illum nihil veritatis repellat sunt. Alias aut ducimus fuga nobis in in non.', '34 hy');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('82', '82', 'Aliquam est voluptas eum et. Necessitatibus ut ea consectetur. Fuga illo qui eum quisquam qui.', '55 dz');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('83', '83', 'Possimus quia rerum ab veritatis. Dolorum voluptates non explicabo ab aliquam facilis. Molestiae totam vel aut at et eos perspiciatis dolor.', '77 lm');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('84', '84', 'Voluptatum est et aliquam repellendus. Numquam corporis beatae sit doloremque enim sunt. Tempora aut dignissimos quis.', '18 aw');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('85', '85', 'Est et mollitia est quod soluta. Nulla a cum quas perspiciatis alias ipsa vel. Alias maiores placeat accusamus dolores. Sed enim nesciunt eius debitis non.', '67 ax');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('86', '86', 'Facere praesentium rerum et consequuntur aut. Eos non cumque minima voluptatem repellendus quia qui. Magnam quos et iusto est ad ut. Reiciendis dolorem voluptates velit.', '47 qz');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('87', '87', 'Fuga nam sed laboriosam quidem. Aut doloremque iusto cupiditate accusamus iste voluptas.', '44 ga');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('88', '88', 'Consectetur qui quae expedita possimus aut architecto expedita at. Maiores numquam distinctio sunt qui. Eveniet quis earum ipsum laborum.', '13 gh');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('89', '89', 'Quae autem inventore dignissimos sint in et et. Omnis dolor possimus eligendi. Veritatis est est illo sint. Sed praesentium qui debitis qui dolore itaque corporis.', '35 aw');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('90', '90', 'Iusto natus aut voluptates voluptatibus laborum. Adipisci ipsum voluptas est aut dolorum. Dolor non modi ratione culpa. Ipsum numquam animi repudiandae modi aut et.', '18 sr');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('91', '91', 'Molestias praesentium sint est voluptatibus distinctio amet. Illum repellendus placeat est est ut vitae. Quisquam molestiae voluptatem alias quaerat maxime blanditiis.', '82 dm');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('92', '92', 'Voluptates molestiae sed molestias et. Et accusantium hic error repellat. Porro quibusdam delectus aspernatur dolorem ut unde at. Et est modi aliquid aut.', '46 rj');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('93', '93', 'Dolorem beatae dolor eligendi excepturi sit dolores totam. Dolorum et aperiam vero aspernatur earum expedita. Non id rerum quasi doloribus. Illo non et enim voluptatum.', '60 yv');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('94', '94', 'Eos quia consequuntur impedit rerum quo consequatur deleniti. Provident qui illo in ab voluptas officiis autem. Harum dolor sed ut incidunt qui qui quo et. Qui non aut doloremque quibusdam voluptates sed doloribus.', '83 ef');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('95', '95', 'Excepturi sunt ullam non facere itaque exercitationem. Adipisci dolorem hic corporis voluptatem et impedit aut. Temporibus quidem optio aut. Quae voluptatum temporibus ut atque fuga laboriosam eveniet.', '07 fb');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('96', '96', 'Commodi tempore eum minus et facilis exercitationem. Officia id et non inventore provident. Modi eum tempore sint quia maxime voluptatum placeat. Distinctio exercitationem vero ratione laborum.', '86 fl');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('97', '97', 'Et corporis ut consequuntur consequatur consequatur ratione nostrum. Accusamus ratione tenetur vel ratione. Alias ut soluta explicabo similique error rerum et.', '13 fg');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('98', '98', 'Sunt dolorum praesentium dicta cumque. Rerum quo ut voluptatem.', '57 ye');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('99', '99', 'Omnis debitis totam illo nihil qui accusamus. Id unde est accusamus. Tempore officiis impedit harum omnis nostrum. Aperiam non ipsam nesciunt et delectus.', '48 ld');
INSERT INTO `photos` (`id`, `user_id`, `description`, `filename`) VALUES ('100', '100', 'Nostrum ut qui omnis autem impedit alias. Optio et commodi inventore voluptatem ea mollitia perferendis rem. Vel eaque vel dignissimos illum sequi dolorem et.', '46 io');


INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', 'Reiciendis ut corrupti laudantium. Ut ea ab vel dolorem nesciunt assumenda hic. Vel ut nisi quam ipsum cupiditate. Ut qui omnis sit minus excepturi iste et.', NULL, '1999-06-01 02:58:45', '2003-12-29 06:29:03');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', 'Vero est et laboriosam sapiente itaque repellat earum. In qui iste cum assumenda. Eligendi autem veniam veniam perferendis. Omnis sit est nulla consequatur voluptas.', NULL, '2003-09-11 08:40:32', '2007-04-30 03:09:57');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', 'Quia harum incidunt autem et hic veritatis. Laborum dolorum consectetur consequuntur qui aut. Veniam distinctio repellat mollitia non cumque pariatur quam.', NULL, '1971-03-10 06:11:22', '1998-03-06 15:45:05');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', 'Inventore et natus veniam. Repellat sapiente sit et consectetur assumenda. Suscipit quia iure aut aliquam ducimus dolorem. Amet assumenda recusandae perferendis quae harum.', NULL, '2011-12-03 02:31:22', '1972-03-30 07:16:41');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', 'Est ea aut natus quis. Facere et incidunt impedit in.', NULL, '2017-05-10 04:03:06', '1981-03-27 23:06:30');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', 'Sint sapiente blanditiis tempore voluptate natus cumque quasi. Et sapiente sint asperiores id. Deleniti quasi provident nulla odit aut accusantium hic architecto. Rem dolorem reprehenderit architecto praesentium aliquid quos dolores.', NULL, '1985-01-19 12:38:02', '1971-05-14 04:39:32');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', 'Qui qui assumenda nemo qui repellat molestiae ducimus. Qui qui placeat deserunt perferendis nemo architecto quam. Cum ut minus rerum accusamus dolorum dicta inventore. Itaque dolor id modi cupiditate.', NULL, '1990-06-02 07:34:58', '2005-06-25 06:11:08');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', 'Non voluptatem cupiditate quasi quos nemo at. Repellendus quia et placeat dolor. Deserunt doloremque quas illo atque.', NULL, '2015-05-30 01:45:21', '1998-01-29 01:47:43');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', 'Fugit aspernatur voluptatem atque sed iste voluptatum ipsum. Sapiente suscipit et tempore. Ad vel aliquid voluptatum adipisci.', NULL, '2018-02-04 05:16:07', '2001-09-29 01:21:11');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', 'Nisi id dicta eaque sed vel veritatis enim. Totam magnam beatae officia et autem. Molestias necessitatibus nulla aut aliquam. Velit ipsam minus fuga dolores.', NULL, '2005-05-02 20:07:28', '2007-05-13 07:18:07');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '11', 'Sed ducimus quibusdam temporibus. Minima corrupti laboriosam vel ad. Ad nihil necessitatibus ea. Molestiae exercitationem voluptatum eveniet at error maxime voluptas.', NULL, '2001-07-02 20:25:00', '1986-10-09 22:31:12');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '12', 'Illum unde omnis omnis dolores omnis laborum sed. Occaecati veniam sed doloribus quidem alias. Quia provident sit et qui totam reiciendis iure. Ut sapiente aut perferendis est omnis.', NULL, '1972-03-17 18:56:02', '2011-06-19 09:58:14');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '13', 'Animi maxime et saepe itaque. Hic molestias ut non dicta dolorum alias. Adipisci voluptatem voluptatum corrupti id quas. Ut et tempore iste.', NULL, '2018-03-14 11:30:47', '1981-08-24 04:27:37');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '14', 'Ut ab omnis architecto consectetur. Eligendi sequi officia maxime qui commodi. Eius repellendus voluptas quia id eum.', NULL, '1984-07-18 04:32:21', '2018-07-01 10:08:51');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '15', 'Et doloribus ut tempore neque ipsum at magni. Repellat reprehenderit ipsum itaque quod voluptas magni numquam voluptas. Sed molestiae aut aliquam.', NULL, '1994-03-08 19:19:39', '2013-11-30 17:10:12');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '16', 'Molestias et aut provident aut. Deleniti quae eius occaecati. Qui fuga atque ut nisi atque esse quibusdam et. Et maxime impedit ea quo.', NULL, '1990-01-04 12:06:33', '2003-08-04 00:52:54');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '17', 'Quos illum quo dolorem molestiae veniam enim dolore. Sint sint necessitatibus rerum iusto. Alias soluta ea beatae qui atque. Et minus sed minima sunt exercitationem corporis maxime nostrum.', NULL, '1978-02-26 14:41:51', '1977-07-05 04:12:27');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '18', 'Molestiae cupiditate eum voluptates. Laborum similique id minima eveniet aliquid blanditiis amet. Fuga optio earum libero et tempore asperiores. Numquam mollitia et fugit natus dolores.', NULL, '1978-09-11 14:51:25', '1994-07-27 12:30:20');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '19', 'Aliquam dolores velit error atque aut sed aut. Reiciendis et sint occaecati dignissimos id omnis itaque.', NULL, '2017-12-14 21:57:22', '1998-07-09 10:27:50');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '20', 'Nobis quia ut quasi dolores rerum qui voluptate. Ut quasi et tempore sed. Cum incidunt distinctio veniam. Voluptate saepe quia cupiditate sint.', NULL, '1980-07-03 08:17:38', '1980-08-24 09:29:46');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '21', 'Expedita et minima atque id molestias voluptatem quia. Repellendus quia pariatur suscipit. Occaecati ex eos ut accusamus mollitia ipsam maxime.', NULL, '2000-06-08 15:09:59', '2010-02-17 18:10:46');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '22', 'Repellat earum laudantium quaerat autem vel eum cum. Optio ut impedit inventore nemo inventore. Autem veniam iste ut totam et. Iure ut nihil voluptatem qui. Ab ea illo eum possimus.', NULL, '1989-08-09 11:00:00', '1986-12-05 15:13:47');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '23', 'Non dolor quo dolores totam voluptatem quia voluptas culpa. Soluta unde enim aut recusandae. Minus doloremque quod dolorem rerum dolorem deserunt. Similique eum ipsa aut fuga dicta.', NULL, '1978-12-26 20:56:14', '1981-11-11 23:47:40');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '24', 'Ipsum totam ut laborum ut quia. Similique eos provident perspiciatis nam. Molestiae doloremque sed delectus voluptatem molestias voluptas tempora harum. Fugit quia doloremque adipisci accusamus.', NULL, '1973-03-31 03:44:16', '1981-12-26 06:28:53');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '25', 'Tenetur eos veritatis sunt deleniti cumque aut. Eaque est provident rem dicta. Eos tenetur eveniet accusantium beatae aut nostrum qui. Quia excepturi hic et autem repellat qui. Sapiente iusto odit delectus est amet.', NULL, '1990-10-14 08:33:57', '1993-04-10 16:45:56');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '26', 'Rerum laudantium consequatur et harum enim. Recusandae et aut perspiciatis enim ea omnis incidunt. Aut iusto nihil aut. Ab blanditiis quis eligendi velit ea fugit inventore. Expedita et ea id delectus.', NULL, '1986-05-22 08:34:12', '1998-01-05 22:08:24');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '27', 'At rerum eum voluptatem est eos eius. Ut quis ullam sed reprehenderit quia repudiandae. Sunt voluptate iusto id officiis.', NULL, '1996-05-10 14:30:30', '1973-03-12 06:18:29');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '28', 'Voluptates in aut sit. Error ea dolorum dignissimos reiciendis sit. Aut repellendus harum magni in. Qui tempora sit eius.', NULL, '1996-06-27 06:32:06', '1978-12-07 11:24:46');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '29', 'Qui impedit est eaque illum suscipit qui dolores. Vel eveniet quis ut asperiores temporibus. Nam culpa ut illo non rem sed.', NULL, '2016-12-31 06:33:36', '1989-06-25 05:34:56');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '30', 'Et distinctio eius ipsam. Veritatis rerum officia ut facere non. Perferendis inventore id vel laboriosam illo. Exercitationem illo eligendi quia incidunt libero.', NULL, '1989-11-08 06:24:49', '2010-10-26 15:08:00');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '31', 'Sit est fugiat perspiciatis nulla ad. Ipsum dicta omnis iusto. Laboriosam sed quia et odit deleniti. Nihil unde iste quibusdam quas.', NULL, '1981-03-11 23:07:25', '1998-11-26 16:59:14');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '32', 'Alias iusto enim velit aliquid iusto. Saepe explicabo quia amet fuga. Ducimus deserunt aperiam quo ad odit perferendis.', NULL, '2017-07-05 21:24:27', '1984-05-04 22:32:03');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '33', 'At blanditiis qui perferendis sed deleniti dolorem vero. Minima ducimus unde et modi ipsum consequatur vero. Sequi eaque beatae soluta molestias earum sint.', NULL, '2013-05-14 13:11:45', '1988-09-30 19:34:00');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '34', 'Aut est et explicabo totam. Voluptas in autem dolore non nobis excepturi. Natus aut consectetur dolores modi quisquam. Dolores consectetur quo molestiae sed ex dolorem deserunt minima. Ut ut doloribus ipsum necessitatibus.', NULL, '1976-08-24 18:18:15', '2017-08-04 22:21:14');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '35', 'Reiciendis odio officiis voluptatem vel consectetur. Et sequi rem quis. Odio dolores velit et maxime consequatur suscipit excepturi.', NULL, '1984-08-13 22:07:10', '2015-07-24 21:05:44');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '36', 'Nam dicta ut aut voluptatem optio ex. Facilis nostrum in reiciendis rerum voluptas quo.', NULL, '2005-08-02 13:40:22', '2001-06-02 02:02:10');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '37', 'Ut accusamus qui accusantium et voluptatem. Iusto rerum voluptatem voluptas. Totam eos hic ut temporibus sequi dolor non.', NULL, '2010-12-17 22:32:00', '1979-08-12 08:20:32');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '38', 'Doloremque dolor earum dolores molestiae consequuntur quisquam dolorem. Fugit fuga porro dolores qui eligendi.', NULL, '1990-06-08 23:18:43', '2008-04-27 20:18:02');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '39', 'Est qui magnam fugit quasi. Rem vitae voluptates aspernatur est. Totam nesciunt omnis animi eaque velit.', NULL, '1999-10-02 18:54:43', '1982-05-26 00:09:06');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '40', 'Et similique nihil doloribus ut. Rerum voluptatem rerum sit id libero qui. Quos id modi nobis dolorum. Enim et id cumque quod.', NULL, '1986-11-22 04:24:15', '1992-04-07 21:57:05');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '41', 'Et fugit laboriosam possimus in quaerat quam. Voluptates consectetur eveniet labore rerum aliquid cupiditate in. Voluptates repellendus nesciunt iste voluptatem.', NULL, '2010-05-16 17:13:38', '2005-02-24 11:35:48');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '42', 'Voluptatem voluptatum ducimus et. Quod voluptatum repellat quasi sapiente.', NULL, '1990-09-28 05:59:52', '1973-06-23 22:48:46');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '43', 'Blanditiis at natus qui dolorum et cumque officiis. Delectus consequatur amet qui aut et. Necessitatibus qui assumenda incidunt excepturi doloribus voluptatem dicta.', NULL, '1993-04-19 17:11:39', '1999-09-28 11:56:43');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '44', 'Soluta maiores quia et incidunt. Perspiciatis est aut quos et ut necessitatibus sit. Cum delectus cupiditate sit eum quia. Voluptatem impedit iusto qui consequuntur impedit. Sunt ea facere incidunt at quia in incidunt.', NULL, '1972-09-26 23:14:44', '2008-04-12 02:10:30');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '45', 'Eum sed autem commodi voluptas explicabo sed. Alias culpa officia debitis blanditiis saepe laborum qui ut. Qui qui cumque aut aut. Ea saepe itaque quia nobis facere occaecati aut.', NULL, '2008-06-28 20:39:07', '1994-08-31 20:19:56');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '46', 'Veritatis sit vitae laborum earum corporis. Magni vitae ea et ea repudiandae sed. Totam sunt quam dolorem voluptas vero. Id aut nam qui cumque et deserunt.', NULL, '2019-04-28 05:48:45', '1972-12-12 01:44:58');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '47', 'Modi dolor eius assumenda tempora. Quidem commodi quia minima. Cumque non nihil nemo qui velit sit. Odit unde pariatur dolorem sed asperiores.', NULL, '1976-07-16 10:56:07', '1999-07-15 05:08:10');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '48', 'Cupiditate et ratione est facere consequatur enim veritatis maxime. Omnis maxime quia ut quam ullam. Sit quaerat laudantium est atque. Laudantium dignissimos officia et inventore omnis consequatur eum et. Qui occaecati sed est.', NULL, '2008-05-06 02:10:47', '1996-04-30 06:14:23');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '49', 'Molestiae est enim velit. Enim soluta ut repudiandae. Laboriosam sit voluptas veritatis et maxime amet ipsum. Ut recusandae non minima voluptatem ea.', NULL, '1998-07-01 06:58:51', '1972-05-09 18:16:30');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '50', 'Quia necessitatibus eaque eius sint et porro. Repellendus aperiam deserunt laborum totam. Sed fugit quo nobis voluptas dolores. Placeat ducimus ut deleniti amet atque.', NULL, '1997-12-08 13:52:21', '2005-08-17 15:26:03');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '51', 'Suscipit sequi quisquam omnis eveniet et necessitatibus aut. Modi et molestias et. Aut amet consequatur iure velit.', NULL, '2002-01-01 03:04:38', '1980-11-19 00:39:21');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '52', 'Fugit vel dolorum in incidunt officia quia voluptas fugit. Ut dolor distinctio quas soluta. Alias aliquam nisi iusto repudiandae nisi pariatur a. Impedit iste voluptas eum error cum corporis incidunt.', NULL, '2003-10-11 04:44:47', '1993-12-13 09:52:54');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '53', 'Quis voluptates nesciunt unde laudantium quia non. Dolore modi magni harum maxime. Reprehenderit officiis ducimus ut quidem nihil commodi aut eius.', NULL, '1996-10-28 06:03:07', '1972-01-24 08:57:24');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '54', 'Vitae commodi eum rerum. Cum non harum voluptatem omnis sit omnis.', NULL, '2010-04-17 18:25:15', '2001-07-21 08:13:39');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '55', 'Commodi beatae quibusdam dolorem exercitationem culpa consequatur. Voluptates sit non vel reiciendis. Blanditiis sint est velit non.', NULL, '2003-07-15 16:33:00', '2005-08-29 18:15:23');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '56', 'Iusto est numquam molestiae qui vel quo neque. Aperiam consequatur voluptas eum facilis sit eum repellat quam. Nesciunt explicabo voluptatem numquam quis et reiciendis ut. Autem natus molestiae ea magni dolorem enim accusamus. Harum et dolor id molestias aperiam est.', NULL, '2014-10-09 04:22:58', '1982-01-24 23:42:30');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '57', 'Velit ut odit sit dolorem. Rerum voluptatem consequatur vero id culpa. Voluptas laborum iusto placeat aut blanditiis consequuntur. Molestiae repellendus officiis ex accusamus facere consequatur.', NULL, '1971-05-12 13:56:16', '1975-01-08 14:55:49');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '58', 'Delectus soluta voluptatem a perferendis laboriosam voluptate error. Eos possimus aut pariatur culpa.', NULL, '2011-05-19 09:25:55', '2013-06-21 10:21:01');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '59', 'Ea asperiores repellat alias pariatur. Perspiciatis qui molestiae est vitae commodi in officia blanditiis. Minima repellendus natus est labore voluptatem rerum ut nobis. Nisi laborum ea ducimus nam.', NULL, '1973-07-29 22:47:39', '1977-08-28 08:50:35');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '60', 'Aut eum est voluptas ab. Perferendis praesentium fugiat incidunt rem repudiandae commodi. Reiciendis voluptatem non a accusantium sit pariatur.', NULL, '2008-06-04 00:57:41', '2018-03-06 05:32:23');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '61', 'Corporis sed dignissimos dolor pariatur ut. Iure modi voluptatem laborum officia neque id. Cupiditate facere accusantium amet hic architecto vero. Nisi eligendi ut est ut consequatur sit nihil.', NULL, '1982-03-12 14:18:04', '1985-07-27 20:19:29');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '62', 'Qui ipsam aut aut iusto. Dignissimos eum laboriosam dolorem voluptas velit. Omnis iste aut odio occaecati temporibus animi.', NULL, '1979-11-02 08:41:03', '1987-07-17 06:11:36');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '63', 'Ipsum soluta doloremque explicabo iusto et eos fugiat. Sed et labore eius iure. Inventore ea quam maiores ipsum qui sunt et. Commodi fugit quasi dolores quis sed. Similique quo est neque.', NULL, '1993-06-04 22:33:40', '2011-01-01 05:43:17');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '64', 'Similique soluta est in. Nemo incidunt qui nihil est rerum rerum nihil non. Sit praesentium rerum officiis qui dolores enim enim.', NULL, '1984-01-11 21:41:19', '1987-03-07 01:13:18');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '65', 'Itaque minima animi similique deleniti labore et. Reiciendis et voluptatibus porro est. Eos porro eum incidunt recusandae impedit laborum omnis. Mollitia velit sit eaque autem aut. Consequuntur consequatur quis maiores temporibus quaerat omnis molestias officia.', NULL, '2001-04-14 19:34:04', '1999-11-08 05:51:56');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '66', 'Consequatur aut quia id sit unde nostrum non. Non perferendis ratione necessitatibus. Nobis perspiciatis maiores nemo et id voluptas. Laborum consectetur fugiat non voluptatibus ut fugit eaque.', NULL, '1994-12-27 22:41:34', '2010-11-14 00:18:18');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '67', 'Voluptates et quia blanditiis ullam doloribus sapiente voluptatem a. Necessitatibus est aliquid aut. Nulla praesentium at necessitatibus cum. Natus id atque nisi dolores libero earum tempora.', NULL, '1993-11-02 12:33:16', '1984-11-26 22:18:22');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '68', 'Et labore facilis autem necessitatibus recusandae magnam unde. Eum odit perspiciatis nobis itaque sed. Sed reprehenderit ullam rerum laboriosam molestias.', NULL, '1974-04-09 10:04:10', '1982-07-05 16:10:37');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '69', 'Officiis quod explicabo magni voluptatem. Velit suscipit eligendi iure nisi quisquam velit fugit. Accusantium sint est est necessitatibus est. Assumenda rerum quis est magnam consequatur.', NULL, '1976-03-07 06:27:05', '1981-06-03 17:16:39');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '70', 'Quo nulla ut quisquam est occaecati. Repellat unde velit vel voluptatem. Ratione modi quia vel praesentium praesentium sit et.', NULL, '1983-11-04 08:08:22', '2004-09-16 11:25:17');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '71', 'Fugiat veritatis dolor quisquam repellendus optio ea perferendis. Corporis adipisci ratione ullam rem hic suscipit voluptas enim.', NULL, '1995-07-07 00:17:27', '2005-08-20 01:01:47');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '72', 'Facere doloribus et modi alias eveniet perferendis qui. Quo vel adipisci qui qui.', NULL, '1971-11-12 05:47:50', '2004-07-06 09:21:13');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '73', 'Temporibus voluptas dolor soluta soluta voluptatibus fugit nemo. Ea eveniet eaque id ullam enim architecto dolor ad. Iusto sit nihil qui laboriosam aut qui laborum. Ut nemo sed molestias ex eos molestiae corrupti tenetur.', NULL, '1975-12-19 14:17:57', '1994-07-14 05:19:21');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '74', 'Velit occaecati nesciunt facilis voluptatem accusantium voluptatem deleniti. Possimus qui nulla ut sed vel nobis qui. Neque et non ullam et exercitationem molestiae sunt. Minima in sequi at consequatur architecto sit vero.', NULL, '1982-09-08 18:39:13', '2014-10-16 00:02:57');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '75', 'Laboriosam minima exercitationem quo debitis dolorem aut quos. Eos est culpa voluptatem voluptatem ipsa. Sit possimus ut repellat ut temporibus beatae. Doloribus odit rerum aliquid ipsa voluptas.', NULL, '2013-03-07 03:39:48', '1975-01-13 18:42:43');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '76', 'Tempora eligendi ut natus aut sapiente nostrum. Dicta sit praesentium soluta voluptatem cum odit. Ut quia sint inventore nisi ad dolorem distinctio. Corrupti pariatur sit odio officiis rem qui.', NULL, '1988-02-29 22:28:20', '1981-12-20 23:50:31');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '77', 'Perferendis consequuntur pariatur ea minus iusto officiis. Qui inventore ipsa est eaque aut officia quidem et. Laborum corporis dolores vero nobis.', NULL, '1987-12-16 08:11:36', '2009-12-09 13:06:11');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '78', 'Quia aut iusto qui in et sit officia. Nostrum minima quia aut. Ipsum iste aspernatur esse veniam enim debitis nemo.', NULL, '2018-08-23 05:11:56', '2013-07-16 13:14:27');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '79', 'Est laudantium sit autem delectus. Sed provident id earum est est. Quam molestias distinctio impedit animi sed est est.', NULL, '1983-08-17 04:43:59', '2016-06-16 13:16:50');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '80', 'Facilis nostrum voluptas quasi doloribus distinctio enim. Ut voluptatum ut similique aperiam. Repellat rerum et exercitationem repellendus corporis voluptatem quia.', NULL, '2000-04-19 07:47:55', '1983-08-07 20:24:40');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '81', 'Quidem aut ipsa similique dolore sequi quis in. Impedit et facilis molestiae repellendus ut. Expedita minima velit blanditiis distinctio iusto.', NULL, '1999-06-14 11:04:54', '2020-06-24 07:43:38');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '82', 'Doloribus ullam unde assumenda soluta quia saepe mollitia. Perspiciatis error praesentium aut ipsam dignissimos quaerat ducimus. Necessitatibus asperiores quaerat voluptate expedita voluptatem ut. Sed voluptate omnis maiores delectus eum delectus.', NULL, '2012-10-06 17:43:14', '1977-10-24 15:44:33');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '83', 'Occaecati ipsa est aut cum culpa. Earum aut illum et est libero et ut voluptatum. In nihil maxime quo amet illo soluta.', NULL, '2020-09-17 12:02:12', '1980-12-12 13:24:53');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '84', 'Nobis consequatur incidunt ab provident omnis. Aut assumenda et quia. Voluptatem deserunt maiores officia non velit. Impedit blanditiis ut alias corporis sequi commodi delectus.', NULL, '2018-07-26 22:31:35', '2006-05-27 07:25:40');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '85', 'Id quam cumque quidem. Voluptates veritatis placeat at iure aliquid ab impedit. Adipisci eos id aspernatur alias facilis numquam. Aliquid qui deserunt velit nulla.', NULL, '1999-04-14 05:20:41', '2002-12-21 12:48:32');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '86', 'Fugit pariatur deserunt officiis qui. Non sit facere dolor aut aut quam ut reiciendis. Sunt aut laudantium porro nesciunt. Cupiditate aliquid sed temporibus voluptatem sed reiciendis.', NULL, '1974-08-15 01:31:25', '1977-12-12 21:52:37');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '87', 'Ut voluptatem dolor voluptas et et saepe. Delectus amet quaerat occaecati tempora repudiandae est. Et dolores quod voluptate quia ipsam omnis ipsum.', NULL, '1989-06-20 22:36:17', '1987-08-28 16:36:56');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '88', 'Reiciendis vel qui exercitationem voluptas. Nobis soluta ea repellendus magnam dolor magni non. Quia illo autem quis dolor doloremque in molestiae error. Exercitationem nisi enim voluptatem quo nulla.', NULL, '2016-10-28 12:10:14', '2005-05-17 01:07:04');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '89', 'Illum nobis non amet quas architecto odio harum officiis. Est enim enim iusto non animi est. Qui tenetur autem aut quia molestiae sequi vitae.', NULL, '1982-11-26 07:40:16', '1998-07-26 13:47:22');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '90', 'Ea fuga aut vero expedita natus. Nesciunt ullam sunt repellendus quaerat architecto. A qui voluptas laboriosam corrupti nostrum earum voluptatem. Vitae quidem omnis commodi itaque qui ipsam ipsa.', NULL, '2018-09-15 14:25:37', '1987-05-19 06:36:34');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '91', 'Doloremque sint id qui voluptatem rerum deserunt exercitationem. Nobis est aperiam quia hic. Maiores officiis atque quibusdam quis. Commodi et porro quo esse. Aperiam et aspernatur enim minima inventore et.', NULL, '1972-04-29 20:05:10', '1976-05-22 03:41:47');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '92', 'Nostrum maiores sit recusandae ullam. Omnis dicta molestias rerum magni corporis. Soluta error alias rerum dicta vel repellendus placeat. Omnis eligendi in sequi ea et.', NULL, '1977-02-24 20:39:54', '1980-06-22 14:14:31');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '93', 'Aut qui ut dolore tenetur. Commodi sapiente unde in illo. Porro facilis dolores eos quisquam voluptas facere.', NULL, '1996-08-07 23:28:22', '1972-02-27 14:03:55');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '94', 'Expedita maiores assumenda rerum id dolores quia. Dolorum aut et voluptates iusto minima quam optio. Vitae est qui laboriosam et. Id porro tempora vel voluptas esse incidunt non eum.', NULL, '2014-03-24 18:05:57', '1999-10-17 15:43:16');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '95', 'Dolores soluta facilis a consequatur est. Voluptas ratione sit necessitatibus blanditiis veritatis quis. Est deserunt unde non mollitia dolores.', NULL, '1996-11-15 03:16:20', '2005-04-27 14:49:08');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '96', 'Sapiente beatae deserunt qui voluptate maxime omnis. Sit quo nobis aut sunt. Nihil autem sed dolorem facere aut reiciendis.', NULL, '1973-01-05 16:32:13', '1974-08-11 13:23:01');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '97', 'Autem incidunt exercitationem doloremque iure qui et. Ut pariatur et doloremque eos et. Velit aut aspernatur sapiente earum. Nesciunt dolorum sed qui natus molestias necessitatibus eum.', NULL, '1998-01-29 20:30:35', '1975-01-28 02:22:05');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '98', 'Nulla sit necessitatibus et dolor. Cum sed et blanditiis exercitationem pariatur. Corporis et fugiat temporibus voluptatem architecto distinctio.', NULL, '1993-09-07 14:57:58', '1975-03-02 03:22:04');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '99', 'Recusandae magni nam dolore ratione sed voluptatum. Laboriosam at consequatur distinctio qui nemo sit. Repellendus ut hic ex ab error est autem. Architecto aut aut omnis similique repellat veritatis est.', NULL, '1994-03-17 18:39:15', '2017-02-25 06:11:28');
INSERT INTO `posts` (`id`, `user_id`, `body`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '100', 'Earum voluptatibus non tempora odio sint nostrum. Et temporibus tempore sit beatae praesentium est.', NULL, '1971-11-11 06:33:37', '2003-09-20 11:28:39');


INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('1', 'Francisco', 'Kihn', 'forrest.schaden@example.org', '1624816808248', 'f', '2000-05-02', 'Port Kristina', '400', '0ebb3bb8-7660-389a-b253-805955f4106d', '2002-09-21 08:59:26');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('2', 'Charlie', 'Quigley', 'aupton@example.org', '5252765112350', 'm', '2018-09-21', 'New Juwanmouth', '610', '456316f5-66af-3ebf-b60a-057a90aae2e4', '2011-03-30 20:04:25');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('3', 'Amelie', 'Prohaska', 'bogan.aliza@example.com', '7524682513397', 'm', '2015-09-03', 'Grahamhaven', '380', 'dc564b98-e7d3-3113-9e3b-7c0e2a24bf46', '1971-12-23 13:36:35');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('4', 'Jaren', 'Rempel', 'yweimann@example.net', '521219589761', 'm', '2005-05-22', 'West Vivaland', '833', '238f6735-af9a-3ad3-ba1e-e0472ccdbd11', '1991-12-05 13:44:47');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('5', 'Otilia', 'Shields', 'hester84@example.com', '8597414040262', 'm', '2010-01-15', 'New Traceville', '402', '28a8ecdf-9953-3c99-9fa9-27ca8b287924', '2019-12-12 12:18:14');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('6', 'Melvina', 'Lockman', 'keshawn29@example.net', '5929656456007', 'f', '1999-02-14', 'New Bettie', '491', 'a54ca13c-e9cc-3f25-8601-7c5cbd3b586c', '1976-07-22 05:42:24');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('7', 'Chasity', 'Dooley', 'ularson@example.com', '7662755351900', 'm', '1992-03-05', 'Hintzburgh', '236', '3af3988f-dce0-3d57-ab26-cf1ddba9eb1d', '1987-06-22 09:11:20');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('8', 'Alisha', 'Beer', 'ghamill@example.net', '6669750869974', 'm', '1984-12-19', 'Katharinaview', '837', 'c1c54957-bd1e-35d9-af82-7fc29ecc286e', '1993-07-07 19:07:32');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('9', 'Hassan', 'Kessler', 'brook.gaylord@example.net', '723642042954', 'f', '1995-06-15', 'South Claudine', '744', '79514179-7136-3bec-9ac6-eabe5ef46c5b', '1977-03-06 13:03:32');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('10', 'Horacio', 'Rogahn', 'pgleason@example.com', '921976759863', 'm', '2009-03-23', 'South Harleyberg', '165', '00210b0c-4581-3447-afb3-dca65398f997', '1992-08-15 18:14:31');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('11', 'Joannie', 'Koepp', 'qmorar@example.com', '9515374327949', 'm', '2019-11-12', 'Port Carmeloland', '773', 'd70fcf38-36f8-3282-b405-90f0f97961f0', '2001-02-01 13:27:40');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('12', 'Sheila', 'Schulist', 'price.feeney@example.net', '3545428056873', 'f', '2001-02-07', 'South Lucyside', '965', '29f05673-271f-3f8e-b86c-96fd823ed392', '1977-01-24 22:23:37');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('13', 'Trace', 'Crooks', 'leila39@example.com', '5733616454251', 'm', '1986-01-20', 'North Erwin', '916', 'ad990477-732d-31fe-ab8f-ed487ff403da', '1980-04-30 16:39:44');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('14', 'Dorcas', 'Rogahn', 'hank.fay@example.org', '8339202362992', 'm', '1973-05-03', 'South Inesport', '103', '88d3ceb7-35fc-3a1e-be42-b72918a85f71', '1975-08-01 22:36:29');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('15', 'Reece', 'Schuppe', 'conn.kaylah@example.net', '9246102479448', 'm', '1995-08-02', 'Ramiroberg', '358', 'b99c7280-b0fc-3ccf-801b-f75a74433844', '1976-06-16 20:08:09');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('16', 'Gavin', 'Mertz', 'hoppe.agustina@example.net', '3138634042701', 'm', '1983-03-31', 'West Aprilshire', '455', '58fea0b9-6820-3e88-93ac-adcc42434dd8', '2003-05-07 07:37:15');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('17', 'Margarete', 'Keebler', 'parker.vincenza@example.com', '1841817000857', 'm', '2012-06-05', 'New Kailynhaven', '118', '8448846b-b19e-3562-9b53-d090a2afefb1', '2015-08-05 09:55:32');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('18', 'Hallie', 'Sauer', 'kaylin83@example.org', '6742252391805', 'm', '1986-10-12', 'Port Delia', '517', '48b2424c-d041-323b-a44a-0e7f85b6d6b4', '2019-10-06 23:28:33');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('19', 'Wilma', 'Hettinger', 'lesch.gerald@example.com', '4325976981389', 'm', '1981-07-20', 'East Chandler', '130', '327dc065-8f20-3b53-ac8e-c8653fee6ba5', '1985-07-24 16:56:42');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('20', 'Freddy', 'Ankunding', 'qgoyette@example.net', '4942167866807', 'm', '1994-03-19', 'North Lloydside', '957', '4dd2deca-9d6b-3f74-8d7f-360b0f15aa85', '1989-07-19 07:34:58');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('21', 'Eloisa', 'Beatty', 'mcclure.allison@example.org', '7428680281350', 'm', '1998-03-27', 'New Joesphbury', '843', '43f5d359-bbfc-3135-a8bb-23f9760ac77e', '1979-01-24 19:53:40');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('22', 'Jackeline', 'Buckridge', 'glenna.dibbert@example.org', '6111145005134', 'f', '1972-07-25', 'Port Jeffrystad', '779', '83845e74-778f-3ce3-a2d7-7707fd1baae5', '2017-01-30 02:40:00');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('23', 'Gregg', 'Stokes', 'larson.janie@example.org', '3640035591455', 'f', '2016-03-13', 'Pagacfort', '997', '53b20fb2-f3b4-3dae-94d0-0186cc5d77f2', '2018-08-20 21:23:27');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('24', 'Ayana', 'Hintz', 'jwyman@example.net', '4536765918749', 'f', '1979-02-10', 'Port Soniaville', '368', '8748e34a-bf05-36ee-9391-5ecabfdf0552', '1980-05-28 22:15:29');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('25', 'Johnny', 'Schroeder', 'ayden.berge@example.org', '667086442287', 'm', '2018-11-23', 'Port Sonny', '131', '80861d94-cbed-3481-b9da-46b3dfa45002', '1979-04-20 08:24:16');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('26', 'Jerad', 'O\'Kon', 'schuster.torey@example.com', '9955458835234', 'm', '2003-05-06', 'Port Austyn', '53', '3923905f-9a87-3544-9ee3-ddd1e6c3f34e', '1985-05-25 05:53:16');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('27', 'Alanna', 'Baumbach', 'bcasper@example.com', '2593449441254', 'm', '1986-07-12', 'South Carmel', '223', '60874a56-182a-3295-9680-2a807859cd0f', '1972-12-30 00:42:07');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('28', 'Sigurd', 'Cruickshank', 'tcummerata@example.com', '793433483778', 'm', '1975-01-25', 'Port Boshire', '33', 'bf230869-a7bb-3e8e-9e36-de9f196c6469', '2005-05-10 09:31:47');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('29', 'Ewell', 'Walker', 'frami.jerod@example.com', '13360367218', 'm', '1992-03-31', 'Kalehaven', '321', '9ee07900-14ab-369e-a290-77bc3d561792', '1986-10-29 14:30:47');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('30', 'Layne', 'Gaylord', 'ilene.vandervort@example.net', '1412115432444', 'f', '2011-12-24', 'North Alethamouth', '235', 'ef3de0b4-a971-3593-a4ce-4084193d4f86', '1987-07-17 07:10:54');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('31', 'Toby', 'Jerde', 'aubrey.spencer@example.org', '9516855756104', 'm', '1987-04-29', 'North Reggie', '252', '61083e15-e131-3968-b55c-e3064b52d04a', '1971-05-13 09:04:25');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('32', 'Maria', 'Rogahn', 'spencer.keyshawn@example.org', '4501667283318', 'f', '1973-07-29', 'Arvelfort', '848', '66901f96-c557-38cd-a62d-2a5cf4c7e740', '1970-11-13 02:45:32');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('33', 'Enid', 'Hermiston', 'wintheiser.lizeth@example.net', '1760388026236', 'f', '1978-12-23', 'Port Adellaport', '970', '6fbbf284-face-3bc7-928c-98c24bfde3fe', '2019-10-13 06:04:35');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('34', 'Doug', 'Kreiger', 'burnice.tillman@example.org', '2542865995629', 'm', '1983-02-27', 'Hirtheborough', '232', '1cb68e2e-79a9-38d3-a379-c1d683d382f7', '1980-10-03 12:51:21');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('35', 'Breanne', 'Gleason', 'brenna79@example.org', '8424663895438', 'm', '1998-01-11', 'Hoegertown', '648', '3ef8f1c0-e1a6-3b3f-983f-e7f9c0db7373', '1993-01-26 16:41:57');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('36', 'Crawford', 'Nader', 'schuster.pamela@example.net', '1288037050314', 'f', '2013-03-24', 'Mertzview', '478', 'd5789ab9-e7ba-3621-8d3a-d44877d9c755', '1983-03-10 07:14:46');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('37', 'Rudolph', 'Homenick', 'ekunde@example.com', '9845061953008', 'f', '2017-12-18', 'East Imogene', '436', '86680d54-99e9-3dcf-96ff-1934edbfb114', '2003-05-21 13:57:07');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('38', 'Ansley', 'Nitzsche', 'valerie.raynor@example.com', '6091566944635', 'm', '2006-01-01', 'Sipeschester', '61', 'd62e7ce8-695d-3de8-891e-c94cbd05c21f', '2001-01-16 00:29:49');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('39', 'Sally', 'Lindgren', 'gunnar.abernathy@example.org', '6882159534469', 'm', '1977-10-06', 'East Johnnieton', '82', '01003a88-d4a5-3cb1-b60d-762f158a1c49', '1988-01-11 19:26:37');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('40', 'Chester', 'VonRueden', 'ana97@example.net', '4088141889315', 'm', '2011-08-05', 'McDermottville', '799', 'e849b955-76fe-3e5a-8ca1-3151526d3e0e', '2007-05-25 05:18:13');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('41', 'Rosalinda', 'Kshlerin', 'hreynolds@example.com', '15147668174', 'f', '1994-03-11', 'East Blanche', '534', 'd6ee99bb-4b0b-3869-9853-2958a4ccd8b9', '2006-04-09 09:13:22');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('42', 'Geo', 'Cummerata', 'willa.pollich@example.net', '81679232367', 'f', '1976-06-15', 'Lake Gudrun', '10', 'fd7571b0-eacd-3d16-818a-b8fb1a503dd5', '2005-03-15 06:11:41');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('43', 'Art', 'Leuschke', 'zaria.gutkowski@example.com', '2538991294705', 'f', '2018-12-15', 'East Jonasbury', '564', '08501753-3a6e-3abe-aa8c-d21a224c8e52', '1994-11-29 03:23:57');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('44', 'Amanda', 'Graham', 'naomi43@example.com', '6480573231843', 'm', '1994-05-28', 'North Minaside', '979', '5674942f-151c-37bc-9629-6682fdb89f2b', '2006-01-05 06:50:59');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('45', 'Germaine', 'Prohaska', 'uwilliamson@example.com', '6993654446574', 'f', '1970-04-09', 'Port Sylvia', '906', '09f4a9ef-bcfe-311d-8cfb-40437dd69cdc', '1973-01-28 09:59:00');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('46', 'Berniece', 'Schaefer', 'luciano37@example.net', '819025627990', 'f', '2014-01-19', 'Fishermouth', '897', 'cbedc6f8-8924-3188-808a-4f5fea6e2f9d', '1991-04-17 09:41:32');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('47', 'Keeley', 'Mraz', 'adelbert17@example.net', '2393360449380', 'f', '1971-05-14', 'Parisianfurt', '735', '9f360cd1-93af-34a4-806f-5c3a8a5ed23c', '2017-11-01 23:34:06');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('48', 'Katelyn', 'Predovic', 'cormier.maggie@example.org', '8120170568178', 'f', '1998-03-12', 'Port Rosanna', '636', '9252d4b2-ea52-3292-b70d-d14bc48f2a6a', '2014-02-05 05:22:30');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('49', 'Myrtice', 'Boyer', 'aurelio92@example.net', '7813074826772', 'f', '1977-07-11', 'Daytonstad', '305', 'da65ea3e-5981-3491-8108-ee30dc94563b', '1995-12-23 15:25:41');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('50', 'Randy', 'Welch', 'rhiannon98@example.com', '9429130710718', 'f', '2016-05-06', 'East Jaedenville', '123', '5c95fcb4-de05-3c8f-8059-7c8d13dde0d2', '2013-06-08 20:15:31');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('51', 'Joshua', 'Spinka', 'champlin.coy@example.com', '9841258414529', 'f', '1993-05-26', 'Lake Augustaport', '26', '062fb61f-8bc0-3867-823f-f992a66da99b', '1971-02-28 22:35:36');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('52', 'Jeanie', 'Williamson', 'hilpert.katrina@example.com', '4083809405920', 'f', '2009-04-18', 'Larsonton', '347', '44e11dca-5476-3bf5-b7d5-35b5f9821aa5', '1993-05-08 20:11:14');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('53', 'Mossie', 'Labadie', 'hickle.ward@example.org', '3873295258114', 'm', '2016-03-18', 'Joytown', '193', 'f7311d6e-8c27-3bc9-870b-adef3b6c347d', '1986-01-09 01:45:08');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('54', 'Viviane', 'Monahan', 'pearlie66@example.org', '4511621519179', 'm', '1983-04-12', 'Haneport', '973', 'a0923678-a5e6-3552-8a72-ca38d8171605', '2016-07-09 21:06:54');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('55', 'Madisen', 'Lebsack', 'merritt23@example.org', '873758397841', 'f', '2007-05-06', 'East Broderickland', '509', 'd70454f4-1cf4-35c5-bc45-7fa9ad0a61a6', '1983-06-09 05:21:59');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('56', 'Maribel', 'Friesen', 'travon.huel@example.net', '2655295795599', 'f', '1985-11-09', 'Purdytown', '324', '96cd4e34-b9a6-34c3-b999-5d39474a8220', '1976-12-29 22:24:46');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('57', 'Precious', 'Spencer', 'delpha89@example.com', '7430500990038', 'f', '2010-04-24', 'North Nelle', '185', '8333eea7-100e-3d8b-ac6f-fe45daece087', '1982-05-07 02:16:04');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('58', 'Terry', 'Becker', 'zkutch@example.net', '4214067884053', 'f', '1998-01-08', 'New Trever', '520', '60411413-643f-3864-8c69-13e8a98c1b03', '2012-07-20 00:08:36');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('59', 'Sheldon', 'Considine', 'langosh.daren@example.com', '2104470093598', 'm', '2016-11-30', 'Rolfsonside', '650', 'dc3f39a8-bdd1-3a41-b461-29517d00bfce', '1982-07-02 12:51:43');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('60', 'Jan', 'Bernhard', 'melany86@example.org', '2590016116058', 'f', '1975-04-30', 'Port Lewis', '498', '4a5b257e-35cd-3a2d-ab5e-59b05502c55d', '1976-09-24 04:12:56');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('61', 'Luna', 'Bins', 'kaden.mitchell@example.com', '1008511848165', 'm', '1988-04-23', 'Port Dayana', '561', '39a346be-bdd5-3a2d-af94-773eac0b85ff', '1976-05-21 14:01:59');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('62', 'Ronaldo', 'Jacobs', 'kelsie18@example.net', '3946094272664', 'f', '2009-02-28', 'North Scottyville', '548', 'ee70ce34-4e61-3973-b6f1-5be057f0c74c', '2017-11-23 09:25:15');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('63', 'Alisha', 'Pagac', 'vada25@example.net', '4897064746274', 'm', '1992-08-29', 'South Damionburgh', '352', 'a62f88be-9323-36e9-a7fa-6c73082248f4', '2010-06-10 16:00:41');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('64', 'Raoul', 'Gerhold', 'epollich@example.com', '3050488434801', 'f', '1979-09-04', 'East Augustus', '894', '7886f5c9-13c7-3305-9ae1-aab83913f3d2', '1991-09-30 17:25:43');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('65', 'Vita', 'Lang', 'ucronin@example.com', '1722737121771', 'f', '1987-08-22', 'Lake Jared', '62', '4d53db80-46b7-33cb-ac7b-9d970956ddd7', '1980-08-27 00:59:20');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('66', 'Colton', 'Schamberger', 'nestor.armstrong@example.net', '7440771420837', 'f', '2007-07-16', 'Feeneyburgh', '646', 'f57982a0-a8d6-37b5-9d15-a38d725ce506', '2009-08-12 15:33:27');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('67', 'Clemmie', 'Blick', 'wendy27@example.net', '1217177591043', 'f', '1974-06-08', 'East Rachellehaven', '828', '854c1476-4105-3608-9976-53e6ad55f6fa', '1978-09-10 11:08:21');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('68', 'Destini', 'Kiehn', 'yboehm@example.org', '509654566011', 'm', '2020-09-01', 'East Samanthastad', '241', '4e09db1a-eed4-387a-ac77-fdcbc8f46173', '1972-09-21 23:02:04');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('69', 'Juliana', 'Heathcote', 'emelia.cummerata@example.net', '1967917197249', 'f', '1988-02-05', 'Lake Okeyfort', '559', '78be41d7-9857-3d62-b4e8-15f13aa58846', '1970-09-28 04:13:14');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('70', 'Daron', 'Rempel', 'crona.dino@example.org', '841417750702', 'f', '1973-04-30', 'North Ashlee', '360', '99d6ed1d-5093-31eb-a69d-75fabef895f2', '2012-12-15 05:21:22');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('71', 'Kody', 'Goodwin', 'bosco.kevin@example.org', '6875491928768', 'f', '2008-12-01', 'Brianfurt', '372', 'fb9a3f90-7188-3fe4-96cd-b482be61e07f', '1988-06-02 08:53:08');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('72', 'Giles', 'Hodkiewicz', 'ypfannerstill@example.com', '5871574832442', 'm', '2005-03-22', 'South Scarlettbury', '778', '33843b72-40d1-3edc-bde5-083fdf7b0725', '2017-03-28 03:03:18');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('73', 'Marcelina', 'Johns', 'abel.gutmann@example.com', '845513733089', 'm', '2004-11-28', 'Daughertyland', '116', '9a07f5b4-38bb-3ad2-9179-d762ff2a9e1d', '1971-05-28 04:38:26');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('74', 'Whitney', 'Mraz', 'gstreich@example.org', '5553005727793', 'f', '2010-04-27', 'North Randalside', '952', '616870db-9261-339a-8f16-bcf1badc7720', '2001-06-19 07:39:18');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('75', 'Felton', 'Klein', 'skiles.chanel@example.com', '5180249853270', 'm', '2010-07-11', 'Nolanview', '816', '26bb6e80-c185-33ec-a9f5-294df964c3c6', '2011-04-23 18:38:22');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('76', 'Cordelia', 'Eichmann', 'octavia78@example.net', '7668980954626', 'm', '2003-06-19', 'Zulaufville', '712', 'a953de5d-ead8-3733-997f-bfce8e08e675', '2020-05-11 04:30:21');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('77', 'Katelyn', 'Haley', 'reichmann@example.net', '2409930888111', 'f', '1979-04-04', 'West Fosterhaven', '807', '2538278e-7e19-3264-a328-fe925301b6de', '2000-09-01 00:00:47');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('78', 'Roy', 'Rice', 'altenwerth.ernestina@example.org', '3881406808479', 'f', '2011-02-28', 'Alyshaton', '875', 'a7ead7b2-5cc0-3e6d-b3ea-d4b751a5ae85', '1983-05-26 15:32:48');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('79', 'Eunice', 'Kerluke', 'ehilpert@example.net', '7693649840255', 'm', '2007-07-08', 'South Adelineton', '849', '7e06f21f-9355-31ce-a5d6-8182bd44e416', '1970-06-01 21:59:29');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('80', 'Mohammed', 'Schmitt', 'reichel.brooklyn@example.net', '6934590501255', 'f', '1975-09-20', 'West Elouise', '666', 'a7f69db8-f26b-37c1-9956-0df5d6ce35bd', '1998-05-16 05:37:23');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('81', 'Jacquelyn', 'Schumm', 'allie85@example.org', '7937839719144', 'm', '1998-04-12', 'Nikolausburgh', '702', 'ef5a1796-fd41-379e-9d97-7e0accbc61f6', '1994-12-07 01:04:30');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('82', 'Stacey', 'Price', 'runolfsson.leopold@example.net', '8332411082965', 'f', '1995-04-04', 'Ritchiefurt', '967', 'bfe25d98-6cec-3b23-b420-cd95edacf6d6', '2005-03-26 04:34:36');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('83', 'Lyric', 'Corwin', 'prohaska.dena@example.net', '8222845969652', 'f', '1994-06-22', 'Lake Christelleshire', '699', 'f43bc457-4e4a-334a-8f78-e7fe30c8523a', '1995-09-12 02:08:43');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('84', 'Jasmin', 'Hilll', 'gstamm@example.com', '5722219593115', 'f', '2001-09-09', 'Bradyport', '127', '46eaebc2-80ac-3b19-ab0c-629738ba7ca0', '1978-12-25 18:06:01');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('85', 'Idell', 'Rodriguez', 'rutherford.alison@example.org', '6555761046735', 'f', '2008-05-16', 'Monroeburgh', '480', 'ac9358e1-5a7a-3059-9cb1-3c760dd80314', '1978-02-05 15:37:27');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('86', 'Hans', 'Borer', 'alexandra.bernhard@example.org', '9387338545801', 'm', '2003-04-22', 'West Madonnaberg', '332', 'b6352eb0-65df-37ee-9ddd-a8a882d574f3', '2000-10-27 14:17:32');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('87', 'Ross', 'Senger', 'dulce29@example.net', '4927779786064', 'm', '1991-05-31', 'Lake Laila', '675', '83f663f1-7e03-397c-bb1d-6f7da4b32521', '1999-10-24 03:36:09');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('88', 'Tania', 'Medhurst', 'nils.kunze@example.net', '7804915634731', 'm', '2001-12-17', 'Hymanland', '986', 'bf51c24e-be7a-3cb1-8bf4-500939faabb4', '1984-07-07 16:05:18');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('89', 'Susana', 'Hickle', 'hills.maya@example.net', '7681011869249', 'm', '1982-07-09', 'Brantstad', '754', 'ddf68051-4282-359e-814b-260695011d61', '1991-07-01 20:28:56');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('90', 'Megane', 'Marks', 'cruickshank.karelle@example.org', '4645710844672', 'm', '1991-08-10', 'Heathcotemouth', '474', '2fa92e7b-f183-32f9-9601-f5fbe870a9d2', '2005-09-09 22:11:12');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('91', 'Markus', 'Haag', 'christiansen.rickey@example.org', '6231851173023', 'm', '2012-10-09', 'East Karine', '291', '9c770260-9291-3e0f-929c-7c1a8d3e5f9b', '1991-04-16 19:04:39');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('92', 'Enoch', 'Lemke', 'spencer.chet@example.org', '4118843725502', 'f', '1993-05-21', 'Danialstad', '430', '8ddb1543-bf1a-3dbf-aacb-da69499c964c', '1980-09-09 15:55:26');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('93', 'Bonnie', 'Wintheiser', 'ocronin@example.com', '3012299179562', 'f', '2001-09-27', 'Carolineview', '960', '3c1c45bc-9557-3dff-836b-d47cb5943f33', '2020-02-29 01:07:44');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('94', 'Isabella', 'Keebler', 'raphaelle05@example.org', '1122503457965', 'f', '1992-08-11', 'Lake Lorenhaven', '732', '6b228eca-f367-3822-97ad-f6019e4d90b6', '1979-02-19 09:46:51');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('95', 'Connor', 'Jerde', 'christ.gleason@example.com', '568554341173', 'm', '1974-07-17', 'Gaylordport', '164', '64c420b0-dd65-3d39-8264-91144f612f2e', '1986-09-06 12:52:37');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('96', 'Chloe', 'Upton', 'glover.camden@example.com', '6498811701058', 'f', '1978-02-14', 'Bechtelarside', '747', 'f3d8f542-e776-3f0f-a318-e5ff25f07285', '2014-12-24 02:23:23');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('97', 'Wava', 'Hamill', 'lea28@example.org', '8596700686580', 'f', '2013-08-11', 'Framiberg', '662', '9e552e27-c6d2-3ed2-ae13-0cb8b549e8c8', '2005-08-29 22:36:29');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('98', 'Audie', 'Gulgowski', 'huel.kadin@example.org', '1249240807034', 'f', '1983-09-01', 'Weissnatton', '485', '18b0ddeb-5ca0-3af4-a10f-aafcedcd8f65', '1980-05-20 15:14:06');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('99', 'Kenna', 'Funk', 'lemke.kaylee@example.com', '3319087145212', 'f', '1983-06-05', 'Greenholttown', '414', '10ecb025-7197-3b93-839f-0db3fb09ebf4', '2011-06-10 21:05:06');
INSERT INTO `users` (`id`, `name`, `surname`, `email`, `phone`, `gender`, `birthday`, `hometown`, `photo_id`, `pass`, `created_at`) VALUES ('100', 'Eleanore', 'Larson', 'buford.mayer@example.org', '680205083352', 'f', '2009-05-21', 'Shawnatown', '139', '655e6822-afbf-3df4-a8a3-17b525b3ce7a', '1997-10-14 13:54:46');

INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Дарья','Попова','rthomazinb@ox.ac.uk',8151557164,'f','1984-11-28','Воронеж',NULL,'32afa0b02c8399d1960509c3fbd4cc75ab4dcce2','2020-09-25 22:09:27.0')
,('Ирина','Гончарова','gambridgec@sakura.ne.jp',2907266453,'f','1984-08-24','Самара',NULL,'afd3e457d3b9f6f880623163ea8f72889777a58b','2020-09-25 22:09:27.0')
,('Марина','Закусилова','mantosikd@tinypic.com',5949091863,'f','1981-04-16','Новосибирск',NULL,'9154186410a62369bdf4fd2bd632ca3511b270a7','2020-09-25 22:09:27.0')
,('Елена','Нагина','rtabere@admin.ch',6966471579,'f','1988-08-10','Пермь',NULL,'9bc443a6e52541784d52b69acc39343526886b11','2020-09-25 22:09:27.0')
,('Валерия','Платошкина','ckendellf@bloglines.com',1078902682,'f','1980-01-07','Красноярск',NULL,'229aedb0a417bccab3ee0cbd89a4b1afaa080c51','2020-09-25 22:09:27.0')
,('Станислав','Светляков','amckeandg@behance.net',9642922963,'m','1984-05-19','Тюмень',NULL,'584b9241b06cfe87131bfdba7b53e877ec3bd940','2020-09-25 22:09:27.0')
,('Ирина','Черникова','csantryh@mit.edu',3118473791,'f','1982-10-20','Екатеринбург',NULL,'129797dcb95127ce0541faa8d91d8f1969da0f45','2020-09-25 22:09:27.0')
,('Алиса','Зайцева','dharcasei@dailymotion.com',4568198247,'f','1989-04-03','Воронеж',NULL,'ea63b484704b7a8316da4025260b864453adb948','2020-09-25 22:09:27.0')
,('Ольга','Застрожнова','drouthamj@senate.gov',9259428337,'f','1983-05-07','Москва',NULL,'9b1f31426e9caf75d46b9b4a7c58c1941daa33f0','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Ирина','Сушкова','eshetliff0@virginia.edu',9442875153,'f','1984-12-19','Волгоград',NULL,'9d0f9f7cdbe467af211a5d5bc91e2e16da891521','2020-09-25 22:09:27.0')
,('Анна','Бавыкина','ldeguara1@bing.com',6774820315,'f','1982-04-19','Казань',NULL,'3866567f83079af02f517913d98a34e8a5514111','2020-09-25 22:09:27.0')
,('Марина','Киреева','cdominick2@cnn.com',4056088011,'f','1984-04-26','Казань',NULL,'37cda6f77b46bb92ebfea535bdd89d6a145ee28a','2020-09-25 22:09:27.0')
,('Елена','Михайлова','dbydaway3@hugedomains.com',2159168663,'f','1980-02-08','Красноярск',NULL,'340287d956987900a051e920136b2c1c17351321','2020-09-25 22:09:27.0')
,('Любовь','Чиликова','hpullin4@state.gov',2619617364,'f','1983-11-22','Тольятти',NULL,'d4a54226f86124d38f463d60c3658a32be191e0e','2020-09-25 22:09:27.0')
,('Елена','Селиванова','lhulme5@tamu.edu',1315489478,'f','1982-03-27','Волгоград',NULL,'4cbd30f625fd3440804baf6f509246e8ff81d46b','2020-09-25 22:09:27.0')
,('Сергей','Лисовой','ngrzesiak6@blogspot.com',1253462931,'m','1988-08-03','Краснодар',NULL,'89d65795895ed1c2f48114474ef37c92e1796dee','2020-09-25 22:09:27.0')
,('Михаил','Назарьев','ewathall7@slate.com',8696039405,'m','1984-06-06','Волгоград',NULL,'011af674acb2a19440bb6a013d33dd9a231d53a4','2020-09-25 22:09:27.0')
,('Алексей','Метлицкий','epindar8@oracle.com',2981339919,'m','1980-04-24','Краснодар',NULL,'e3e589b0cc498fb982ed1cbae5d20d3766e97b36','2020-09-25 22:09:27.0')
,('Эльвира','Белоусова','jdelacoste9@chicagotribune.com',4051023201,'f','1987-12-19','Челябинск',NULL,'2def62b6a77064a15b157222f1b43bb538a0293e','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Екатерина','Власова','sdowgilla@salon.com',7146665929,'f','1984-04-11','Краснодар',NULL,'eb7fabdc4b4f70445a27467544e2a742dfad7bbb','2020-09-25 22:09:27.0')
,('Юрий','Волчкевич','mhouchenb@jalbum.net',5826283675,'m','1981-10-15','Воронеж',NULL,'1e65c000a98a92396d4ef31ec8d7740cbf578830','2020-09-25 22:09:27.0')
,('Евгений','Волынкин','rcogarc@storify.com',9707035248,'m','1981-03-19','Саратов',NULL,'3627f911a7a4141f007ff0d25aa85f061f734742','2020-09-25 22:09:27.0')
,('Владимир','Воробьев','gbartold@guardian.co.uk',8788528067,'m','1980-06-23','Красноярск',NULL,'0be3ef277eac3ac46d547b579848cea67e075952','2020-09-25 22:09:27.0')
,('Дмитрий','Лопухов','dcuffline@harvard.edu',7107508285,'m','1983-11-03','Нижний Новгород',NULL,'5d3e5e579aa758ea28c1f53a6de174ee1f714701','2020-09-25 22:09:27.0')
,('Ольга','Лохмачева','ctymf@uiuc.edu',6146928162,'f','1980-01-23','Самара',NULL,'f89b2d6443e511fd742d16a5404b19d541f89f10','2020-09-25 22:09:27.0')
,('Маргарита','Овчинникова','vshelveyg@census.gov',5013560236,'f','1981-05-20','Казань',NULL,'14aac374085e2782a8f1510f1bf49722b040731c','2020-09-25 22:09:27.0')
,('Вячеслав','Погорельский','sworboyh@about.me',6068012327,'m','1988-01-05','Пермь',NULL,'5530cf46cf0b1b5e787723e83012f93a5cd6b832','2020-09-25 22:09:27.0')
,('Владимир','Полищук','cmayhoi@xrea.com',6081230164,'m','1987-10-25','Ростов-на-Дону',NULL,'7ee4a9f5be784f551cfcb2d23698bc31b4e4069f','2020-09-25 22:09:27.0')
,('Игорь','Токарев','jromushkinj@census.gov',8843970434,'m','1985-07-08','Новосибирск',NULL,'a430faa2a1494af65cfa7cd72a7f46e1fad301c6','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Евгений','Турбин','npesselk@buzzfeed.com',6414312198,'m','1987-08-18','Москва',NULL,'1fa46ebf47f51c03b98c8379934b4b0182853ec3','2020-09-25 22:09:27.0')
,('Анна','Колтакова','nhackettl@omniture.com',9059884608,'f','1989-03-04','Пермь',NULL,'e59558fde6118d3eb58c5b624bedf28b41da0ac7','2020-09-25 22:09:27.0')
,('Максим','Попов','cwillimentm@livejournal.com',6549392162,'m','1989-05-01','Санкт-Петербург',NULL,'1bc1a0536d38b6216b74a2819436ba0a925206c8','2020-09-25 22:09:27.0')
,('Юлия','Черепнина','civensn@deliciousdays.com',8361146361,'f','1982-04-09','Самара',NULL,'47c16b5079e4409b613bcedfe75fcfa8c486963f','2020-09-25 22:09:27.0')
,('Андрей','Мошкин','rbrougho@elegantthemes.com',7586396136,'m','1980-04-06','Екатеринбург',NULL,'ebb1057b6e438535963f3706ba15dd6a2df8926b','2020-09-25 22:09:27.0')
,('Евгений','Бучнев','aandersenp@cisco.com',8482399498,'m','1982-01-29','Тюмень',NULL,'9aeec57f845984b9ec57d44acd8d4990b2f21824','2020-09-25 22:09:27.0')
,('Екатерина','Кретинина','anorquoyq@home.pl',5605843880,'f','1989-07-09','Пермь',NULL,'b1ac483a02563c28d48284145535076aa39931ab','2020-09-25 22:09:27.0')
,('Павел','Трунтаев','bferrieresr@amazon.co.jp',8608680584,'m','1986-03-07','Уфа',NULL,'e430a8c6a2f7272b9e5f295a7ecac609555be589','2020-09-25 22:09:27.0')
,('Юлия','Печенкина','soffilers@biblegateway.com',1682297034,'f','1987-03-26','Краснодар',NULL,'8ac622757e94e702a3798d851b21d6d1d3ee5450','2020-09-25 22:09:27.0')
,('Михаил','Хрипков','srobilartt@wix.com',4765849891,'m','1987-02-04','Новосибирск',NULL,'44c2349e85e97eda950d824a82ab37c2da75bf92','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Ольга','Черникова','adabbotdoyleu@latimes.com',3659256004,'f','1980-07-25','Самара',NULL,'151acd87edd4c6d68ce4a92bc846f2abeae49b8e','2020-09-25 22:09:27.0')
,('Максим','Бахтерев','gmedlerv@desdev.cn',7849899275,'m','1986-12-27','Санкт-Петербург',NULL,'4613c2845f696b03d37b801e0cdab710fb6beaea','2020-09-25 22:09:27.0')
,('Екатерина','Попова','pschonfelderw@icio.us',9788815521,'f','1989-01-09','Нижний Новгород',NULL,'3a4548bbbbed1c9d604750295dd22b34b706427f','2020-09-25 22:09:27.0')
,('Марина','Свиридова','klilleyx@ftc.gov',7449749232,'f','1982-12-26','Казань',NULL,'07dc7b613035be338b2d299bf481d9ced8731129','2020-09-25 22:09:27.0')
,('Сергей','Цурканов','dtribey@foxnews.com',9461404246,'m','1985-07-24','Казань',NULL,'4f2d890e00efe71d86b23d64aa3ab7c7f6c2262b','2020-09-25 22:09:27.0')
,('Алла','Толмачева','alukockz@google.co.jp',5057501481,'f','1984-08-18','Омск',NULL,'cd21e4ceb76f06cbe1d3ecd30345701dfc01f28c','2020-09-25 22:09:27.0')
,('Алексей','Суворов','acorrington10@barnesandnoble.com',2034001863,'m','1984-08-12','Санкт-Петербург',NULL,'7fe1c2e54c91bb20754abe19f3633ecb294f69ce','2020-09-25 22:09:27.0')
,('Виталия','Бредихина','lradbourn11@diigo.com',5033419317,'f','1988-09-01','Пермь',NULL,'a1313b86956b58564bf1bc069cfdeaec107b235b','2020-09-25 22:09:27.0')
,('Елена','Бумакова','hdudeney12@digg.com',6621801231,'f','1987-01-10','Москва',NULL,'b29ff9bce316ab42dfe8b8ae997b551fd05ba3a4','2020-09-25 22:09:27.0')
,('Галина','Максимова','bpressnell13@cargocollective.com',9315587169,'f','1988-05-14','Уфа',NULL,'3f88873d6babca57eb1c5371be6a431c415c6ae5','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Евгения','Мельченко','gtaber14@ask.com',2634109732,'f','1981-07-24','Самара',NULL,'af711421307bf3ea53e2a1fd5c7cdc47bc0464d4','2020-09-25 22:09:27.0')
,('Татьяна','Переславцева','harchell15@businessinsider.com',9437670910,'f','1985-08-23','Омск',NULL,'6da0975df3909e3928a20d54fbbca3c0361ff060','2020-09-25 22:09:27.0')
,('Татьяна','Ситало','ssullly16@umn.edu',2822890926,'f','1988-02-03','Санкт-Петербург',NULL,'e02ed0156bcadbc65c407e4f6d0c907449dcfb49','2020-09-25 22:09:27.0')
,('Ирина','Анисимова','ndunkerly17@elpais.com',6667018887,'f','1989-11-15','Нижний Новгород',NULL,'e08d50568524e1712fd178b2d453eccaec3497d9','2020-09-25 22:09:27.0')
,('Наталья','Домарева','bbass18@cloudflare.com',4094890532,'f','1985-09-18','Уфа',NULL,'52bb52432e2afd23c8da1f5587ba6dcfc5321b3e','2020-09-25 22:09:27.0')
,('Ирина','Сидельникова','hrivett19@nyu.edu',3198003378,'f','1988-03-18','Красноярск',NULL,'ecabdafeec47fe7ae2303f3482e875ec47a504aa','2020-09-25 22:09:27.0')
,('Ираида','Воронюк','bpiggen1a@networkadvertising.org',6147416992,'f','1983-04-04','Москва',NULL,'efaf246cf8b3e0fe4795e9a6bc33e852dcf76bb2','2020-09-25 22:09:27.0')
,('Юлия','Азарова','epiers1b@constantcontact.com',5283489590,'f','1983-10-13','Казань',NULL,'c7f7a47fbda0cd6cd1e0d34265521b26dd561592','2020-09-25 22:09:27.0')
,('Мария','Ефимова','mizod1c@1und1.de',9077450643,'f','1988-06-04','Казань',NULL,'2cddeecac91feeb2f03c5b2eb5a0cda8407bf25b','2020-09-25 22:09:27.0')
,('Юлия','Кондратьева','iwhetnell1d@kickstarter.com',4854790930,'f','1981-07-19','Уфа',NULL,'1e570efd00e3262785cf1dcd9eb0dc4ecb6a213d','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Юлия','Косарева','clamonby1e@boston.com',5239735195,'f','1987-11-04','Новосибирск',NULL,'659c44b7d1deec5ba15d5c2a24345a655f536cf8','2020-09-25 22:09:27.0')
,('Ирина','Лакомова','ssimeons1f@scribd.com',8902784216,'f','1981-11-11','Санкт-Петербург',NULL,'b48da6b9f87aa771566ab1d75cb69081105f6a50','2020-09-25 22:09:27.0')
,('Анна','Полуэктова','lroggerone1g@engadget.com',8414878509,'f','1981-10-20','Уфа',NULL,'2d10eec8cdac3f29976908c3efa65aed77028732','2020-09-25 22:09:27.0')
,('Ольга','Никулина','astandfield1h@themeforest.net',9347973825,'f','1989-09-28','Омск',NULL,'8113bb2b1039acc5d314fb74840c11963c2d0671','2020-09-25 22:09:27.0')
,('Юлия','Максименко','educkit1i@globo.com',4777653528,'f','1987-11-29','Новосибирск',NULL,'49c2e20c7e932772449c133770fcb6fababacdae','2020-09-25 22:09:27.0')
,('Татьяна','Асеева','khudless1j@oakley.com',9035161534,'f','1989-05-27','Волгоград',NULL,'5009a649664092e862d0eaaf055391e453889bbb','2020-09-25 22:09:27.0')
,('Екатерина','Шипилова','msandiland1k@unesco.org',4366159925,'f','1984-11-30','Пермь',NULL,'94b83db9e43e7aed7fa9bcf13adc71aa179f89cb','2020-09-25 22:09:27.0')
,('Елена','Янкова','mtrevers1l@amazon.com',7266747785,'f','1988-11-26','Новосибирск',NULL,'2cee62ceb700cc6f95e628d60a75b17b1732ef65','2020-09-25 22:09:27.0')
,('Евгений','Красавин','uruffle1m@free.fr',7366490172,'m','1984-10-16','Ростов-на-Дону',NULL,'b02744a3459bf40c24434c311c7028547ad70889','2020-09-25 22:09:27.0')
,('Анна','Яньшина','lpetruskevich1n@statcounter.com',8016989162,'f','1984-11-18','Воронеж',NULL,'3314213f61429d374db27ef36b8caf681f649050','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Наталья','Мироненко','awinnett1o@hao123.com',5606350937,'f','1986-07-13','Екатеринбург',NULL,'012724188466775fd1b41ce9803a36dca24a63b6','2020-09-25 22:09:27.0')
,('Людмила','Дадонова','bfurphy1p@nifty.com',9375852898,'f','1982-06-07','Краснодар',NULL,'9f3614ed85067d90f9a882975f6a8d4dfc3f43df','2020-09-25 22:09:27.0')
,('Ольга','Мордасова','sstemp1q@theglobeandmail.com',6523490247,'f','1981-01-16','Краснодар',NULL,'44ffb111616d23edfc480f0639b63d4d065147aa','2020-09-25 22:09:27.0')
,('Елена','Рыжкова','gmazin1r@fotki.com',5301390113,'f','1986-06-25','Новосибирск',NULL,'c5e9fcc1e5c3991df06be270bdc1ccb4cd8c5ac1','2020-09-25 22:09:27.0')
,('Екатерина','Богомолова','lkrale1s@google.com.br',8271364242,'f','1982-03-10','Пермь',NULL,'99d6158bc261ca00d6dcf348dbf9ea368a1ae46b','2020-09-25 22:09:27.0')
,('Марина','Голощапова','ojosefs1t@shinystat.com',3192842536,'f','1988-06-07','Москва',NULL,'7ba41712fe6615ae0cf36ee45daf697ccb143563','2020-09-25 22:09:27.0')
,('Инна','Дибцева','apietesch1u@marketwatch.com',4447992090,'f','1986-12-17','Ростов-на-Дону',NULL,'3d7d5ac699eef8151fe1b7bfd533a321b56bb59d','2020-09-25 22:09:27.0')
,('Дмитрий','Попов','lgow1v@example.com',7897075774,'m','1981-08-23','Ростов-на-Дону',NULL,'176936e9534c8e4b7fa4e2823745770ee0b64880','2020-09-25 22:09:27.0')
,('Галина','Рукавицына','cmarte1w@globo.com',2396829153,'f','1986-03-14','Новосибирск',NULL,'e396e8928248b9331ee11b9c0c5a4653d6ad2fad','2020-09-25 22:09:27.0')
,('Никита','Рыкунов','lruddock1x@wikimedia.org',8866042922,'m','1981-09-03','Москва',NULL,'5750b294231512ca402800e4eef400036e08507d','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Анастасия','Рыкунова','jscirman1y@about.me',9518059825,'f','1989-06-12','Красноярск',NULL,'deb3e4b9c818260e9adf17b225f45234390713cf','2020-09-25 22:09:27.0')
,('Юрий','Саблин','tkitchingman1z@omniture.com',9061846141,'m','1988-02-24','Тюмень',NULL,'dc4a7a560f689bf62ddc9aa22bbd64becceffca6','2020-09-25 22:09:27.0')
,('Алексей','Самсонов','mlangman20@biblegateway.com',6284148195,'m','1981-07-20','Екатеринбург',NULL,'3b802df74686705a1d5ed6c253b0d588bb02103c','2020-09-25 22:09:27.0')
,('Екатерина','Соколова','jtuff21@yandex.ru',6686191671,'f','1984-09-14','Волгоград',NULL,'32800bf3d9a44c1e74c4c697989d4d265c100716','2020-09-25 22:09:27.0')
,('Татьяна','Афанасьева','dtidbold22@forbes.com',4804069885,'f','1987-05-15','Москва',NULL,'fb762d0873e171610eace7e45c4728888990524d','2020-09-25 22:09:27.0')
,('Алексей','Болгов','hspivie23@artisteer.com',9391944702,'m','1987-11-26','Омск',NULL,'581e202c66b30b0c2382af4e8d3eac3c831d0ddd','2020-09-25 22:09:27.0')
,('Дмитрий','Древаль','dsimkiss24@youtu.be',8197243501,'m','1983-01-19','Краснодар',NULL,'6b1258bd81342cb6d68ecb3b2fbeeba913bf70f3','2020-09-25 22:09:27.0')
,('Максим','Дубатовкин','ttichelaar25@i2i.jp',1835522933,'m','1985-10-13','Москва',NULL,'0e903f53c20657667ee04e67eba9bf70d13e8248','2020-09-25 22:09:27.0')
,('Сергей','Простаков','vbyard26@dedecms.com',3912001914,'m','1980-03-11','Воронеж',NULL,'e0d1f2c5ea78335ecc106a2d371616cedfc21505','2020-09-25 22:09:27.0')
,('Александр','Пономарев','lduigenan27@list-manage.com',9018710320,'m','1986-12-08','Саратов',NULL,'8b8123b5ccb6aa6c06dbda8c75f91f62f44d5fe3','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Андрей','Косяков','svery28@nsw.gov.au',1155125246,'m','1981-11-12','Казань',NULL,'965cbe4558dce829055d547a3866f7d982997940','2020-09-25 22:09:27.0')
,('Дмитрий','Косяков','slitzmann29@timesonline.co.uk',4947082181,'m','1983-03-05','Краснодар',NULL,'460c92435c10f0ae5c3bb7596bc3ed757cbee69f','2020-09-25 22:09:27.0')
,('Людмила','Скаба','jgiacomini2a@youtu.be',1236239169,'f','1989-01-28','Воронеж',NULL,'a1cc4ab2add1ed470fa93495ece29978a51f8c00','2020-09-25 22:09:27.0')
,('Дмитрий','Смольянинов','edurston2b@google.ca',2249473665,'m','1987-10-17','Тольятти',NULL,'1976170ea8cb1a94b5572e5e67baad29c1a569fa','2020-09-25 22:09:27.0')
,('Вячеслав','Допперт','kfoulks2c@sphinn.com',8301549057,'m','1981-10-02','Тюмень',NULL,'5de1843e1bce099134f41d1522c17363245fc778','2020-09-25 22:09:27.0')
,('Елена','Стрыгина','jboken2d@wordpress.com',1086531264,'f','1988-05-04','Волгоград',NULL,'deddfab8a1ec0d8b3395b3d692ddae01aafcfc22','2020-09-25 22:09:27.0')
,('Сергей','Анисимов','gcottage2e@prlog.org',5525263441,'m','1982-03-13','Саратов',NULL,'e6582cbf8420fc471078f4e118fade0afb9830eb','2020-09-25 22:09:27.0')
,('Вячеслав','Гамов','hstrotone2f@devhub.com',7393531761,'m','1982-11-10','Красноярск',NULL,'4fdd2cbb6dfa134449dc7c0186f8ab86c56058f2','2020-09-25 22:09:27.0')
,('Юрий','Довка','vtremmel2g@ed.gov',6139086790,'m','1980-01-29','Саратов',NULL,'c2230720a13c0dbe4123d982a09fdfb421d85ae1','2020-09-25 22:09:27.0')
,('Александр','Калинин','jcarlesso2h@google.co.jp',3392340667,'m','1982-10-29','Воронеж',NULL,'1e32b1e9e9066c24064cafebf9ed40aaf3aa647b','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Николай','Пивоваров','mrucklidge2i@amazon.co.jp',7988872107,'m','1988-05-20','Краснодар',NULL,'204b2aedb33e12cdf4a3a0e9737e945870b17081','2020-09-25 22:09:27.0')
,('Алексей','Тимошенко','aprydie2j@vistaprint.com',6741632937,'m','1989-09-17','Саратов',NULL,'ce449325f74a523bc1556da3d19921c684259925','2020-09-25 22:09:27.0')
,('Екатерина','Богомолова','dbeardsall2k@dmoz.org',3151907707,'f','1988-12-27','Тольятти',NULL,'f1967dc12ed090fa0dd7259e2485cce97865e4d1','2020-09-25 22:09:27.0')
,('Марина','Голощапова','rbulford2l@goodreads.com',7783646176,'f','1986-02-11','Екатеринбург',NULL,'60ada1812162902fdf036cd8f41aed0b1ae31866','2020-09-25 22:09:27.0')
,('Инна','Дибцева','rblankenship2m@aol.com',4963297188,'f','1986-01-05','Волгоград',NULL,'74f7ad69beb17f40608046522c6cfe2ab75ffdfb','2020-09-25 22:09:27.0')
,('Дмитрий','Попов','lsiveter2n@cnbc.com',9517280949,'m','1982-02-26','Красноярск',NULL,'c99c810a5782926b16d2aae0f5a029c3ca0de755','2020-09-25 22:09:27.0')
,('Галина','Рукавицына','csamples2o@wordpress.com',3923826386,'f','1984-11-06','Челябинск',NULL,'3a19575039593db8300b30e3051cf15890783bbc','2020-09-25 22:09:27.0')
,('Никита','Рыкунов','bwhitby2p@furl.net',8487221955,'m','1984-06-03','Краснодар',NULL,'404bb0046780c0377ef1e96ce9001a701668c6c6','2020-09-25 22:09:27.0')
,('Анастасия','Рыкунова','sbearman2q@ebay.co.uk',8066940781,'f','1986-02-13','Тюмень',NULL,'2d9f4c408a47c268a31fc39809d2fb04a2a04ec3','2020-09-25 22:09:27.0')
,('Юрий','Саблин','kscobie2r@sciencedaily.com',8186433808,'m','1982-11-23','Уфа',NULL,'d0f98fc4b115f0ca2122f1ea0f53cdff006e0a90','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Алексей','Самсонов','afickena@businessweek.com',1437600801,'m','1986-03-09','Самара',NULL,'a6042fbaffba5d97f05baf9bfe6163722d1d640d','2020-09-25 22:09:27.0')
,('Екатерина','Соколова','mbaynhamb@howstuffworks.com',9798286372,'f','1982-08-25','Пермь',NULL,'60fb33d672eff5d474f18309e11320f40b7e7b4f','2020-09-25 22:09:27.0')
,('Татьяна','Афанасьева','doxterbyc@ovh.net',5794027202,'f','1981-09-06','Волгоград',NULL,'9967a9836ae9a490691dc6a7abf921c13de7693b','2020-09-25 22:09:27.0')
,('Алексей','Болгов','ndurekd@facebook.com',4243478042,'m','1986-08-21','Челябинск',NULL,'f0fe0f1cc166c63a8a8ec4ed6b0d56d4a6dc12c5','2020-09-25 22:09:27.0')
,('Дмитрий','Древаль','echildse@sohu.com',7191538491,'m','1983-05-17','Красноярск',NULL,'c94230c5967832c1cab80d57668a6d2418f3ce0e','2020-09-25 22:09:27.0')
,('Максим','Дубоваткин','agrigorushkinf@infoseek.co.jp',5466692275,'m','1984-05-26','Волгоград',NULL,'81d0d1ebcd2d75030d7f2fceab8e229e2795b1f2','2020-09-25 22:09:27.0')
,('Сергей','Простаков','hmcganng@umn.edu',3805318987,'m','1987-02-03','Уфа',NULL,'b896871061ded2bcdd77430613f262046c0465e5','2020-09-25 22:09:27.0')
,('Александр','Пономарев','mcumberpatchh@macromedia.com',9972401583,'m','1984-07-17','Пермь',NULL,'4ecb30007604ee7baf41e5b68cf4bb5e45cfb9c9','2020-09-25 22:09:27.0')
,('Максим','Паршин','ebankei@senate.gov',1672124574,'m','1985-04-26','Санкт-Петербург',NULL,'7bc86a9ac9b93f30c1af49c7423cc27c2773bd57','2020-09-25 22:09:27.0')
,('Алексей','Петров','tbrandij@cyberchimps.com',6387066678,'m','1987-06-13','Краснодар',NULL,'6b3dd04daee595084ee9ff21279fe2b27cf87d3b','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Николай','Сидоров','kbarthramk@springer.com',4521952112,'m','1984-09-21','Самара',NULL,'6c99e35fcb1313640ecc9ef074767cd912cb5fa3','2020-09-25 22:09:27.0')
,('Александр','Ворфоломеев','snewlandl@qq.com',4552946215,'m','1983-09-08','Челябинск',NULL,'9e27dbd35bf80d7b000b78987f8136742db78694','2020-09-25 22:09:27.0')
,('Алексей','Алехин','rstredderm@slideshare.net',5019199432,'m','1981-03-28','Екатеринбург',NULL,'162f709959774d806963d0f4cf7946c3fd2d8a48','2020-09-25 22:09:27.0')
,('Екатерина','Паршина','gpimn@github.com',8393364396,'f','1984-05-16','Челябинск',NULL,'6213391ec7ef13d231e308d9e37d27bc3826f5d0','2020-09-25 22:09:27.0')
,('Наталья','Трубицына','lbiniono@examiner.com',6376414090,'f','1987-08-20','Москва',NULL,'c416fe919541a2135942fae312c6b9fa450b9910','2020-09-25 22:09:27.0')
,('Екатерина','Паршина','jkreberp@i2i.jp',7506356015,'f','1987-08-27','Челябинск',NULL,'59c2c1bab5ce4f157ca65c0008d9dded06f77747','2020-09-25 22:09:27.0')
,('Евгения','Кривцова','mburnhamsq@baidu.com',1633500921,'f','1987-11-28','Красноярск',NULL,'d39dd4390bdcd9c5d439c0fe6a3c4a327af221eb','2020-09-25 22:09:27.0')
,('Анастасия','Бурмистрова','wlangtreer@example.com',9894901275,'f','1980-11-03','Уфа',NULL,'b703cb35fb2298673e577f461482a2faeaaf1eab','2020-09-25 22:09:27.0')
,('Елена','Воронова','cburlays@pen.io',2018695545,'f','1980-04-12','Тольятти',NULL,'b00c41bb74b9ae30d9513d48a1245e618fc5b210','2020-09-25 22:09:27.0')
,('Наталья','Заводскова','filymanovt@nydailynews.com',3372167202,'f','1986-10-29','Пермь',NULL,'1b79c1723c0a8c65120d12a6be69a8fb9970a5b6','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Сергей','Воронин','ckluliseku@theguardian.com',2624066456,'m','1985-06-21','Тюмень',NULL,'d92336e60a1c39ef40a442db8758173836d127ad','2020-09-25 22:09:27.0')
,('Юлия','Баранова','fpointinv@yale.edu',8826412568,'f','1986-04-11','Челябинск',NULL,'6b3a60494a2592cf1f643059de580662cc6cc524','2020-09-25 22:09:27.0')
,('Марина','Семикоз','hsisnerosw@surveymonkey.com',2822165316,'f','1981-04-23','Самара',NULL,'b8d39e2a6a1b8add765f7f8cc02785f15d692c1c','2020-09-25 22:09:27.0')
,('Андрей','Буланый','gbretonx@clickbank.net',1823731974,'m','1989-06-04','Казань',NULL,'83097b2b4d64b3e3c90487facd26beb9515434f4','2020-09-25 22:09:27.0')
,('Мария','Тафинцева','smcivery@networkadvertising.org',9835391400,'f','1987-02-07','Екатеринбург',NULL,'97f853a5ca84ffbd28b671b50e4da74c31091289','2020-09-25 22:09:27.0')
,('Ольга','Аксененкова','cmacnamaraz@arstechnica.com',3841390714,'f','1984-05-14','Пермь',NULL,'c559cb1c9fc131914c12fe954f336adfcfce9dc0','2020-09-25 22:09:27.0')
,('Виктория','Лунева','mseamer10@uol.com.br',7213293360,'f','1985-04-28','Уфа',NULL,'8d9633614bbba01c2321c8ae792e81076353018e','2020-09-25 22:09:27.0')
,('Александр','Федоров','mjanew11@tuttocitta.it',5226134225,'m','1986-12-29','Саратов',NULL,'bc80127d933e0d328ecdae39339f46eee4466085','2020-09-25 22:09:27.0')
,('Любовь','Корчагина','isibbald12@livejournal.com',9967628912,'f','1980-09-13','Омск',NULL,'83ddcad57c2f0fdad119f7ef5b0868b5bbc6db39','2020-09-25 22:09:27.0')
,('Ольга','Щербинина','ocuardall13@mashable.com',9827001278,'f','1983-02-13','Нижний Новгород',NULL,'7d73b3cf8f25f66e0dcda5cdf5b86cc95a40087f','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Александр','Лебедев','cwelbourn14@unblog.fr',1243478465,'m','1982-09-05','Воронеж',NULL,'7d5b5340ccd8aa195530d45b0d531874c3157744','2020-09-25 22:09:27.0')
,('Павел','Островерхов','mheyball15@wordpress.com',9958667317,'m','1980-04-20','Ростов-на-Дону',NULL,'38ceff79c9a3dc3022a29d4a321b8e1c1f9d573c','2020-09-25 22:09:27.0')
,('Юлия','Гаршина','wbirth16@virginia.edu',4644317051,'f','1982-11-19','Челябинск',NULL,'0705130b93d6ad48ed4a4cf1121b6c2da22451a5','2020-09-25 22:09:27.0')
,('Юлия','Якушева','tpenas17@yahoo.com',5124099962,'f','1986-12-01','Казань',NULL,'a4855604e4b371d4fc08269aadf4e53f41572af2','2020-09-25 22:09:27.0')
,('Александр','Поротиков','nwinder18@mail.ru',2443934792,'m','1989-01-27','Ростов-на-Дону',NULL,'7736a217376b568df8b3ccf9abb2b33d369651ab','2020-09-25 22:09:27.0')
,('Антон','Гончаров','lforsard19@spotify.com',3353138089,'m','1984-05-12','Воронеж',NULL,'5e89b185348a2952d14d63ca8a8e918cbe76ffb6','2020-09-25 22:09:27.0')
,('Юлия','Захарова','sfenech1a@multiply.com',9601298201,'f','1988-05-29','Тюмень',NULL,'29836521a8aaf747e81a4b73815567d2f0c391f2','2020-09-25 22:09:27.0')
,('Елена','Тарасова','jlehrle1b@trellian.com',3135058629,'f','1985-05-20','Челябинск',NULL,'1a774e0a50f50122bf651dfcac8fbd7093fbadfe','2020-09-25 22:09:27.0')
,('Татьяна','Белоусова','rrowbrey1c@engadget.com',9137682198,'f','1989-04-11','Пермь',NULL,'6612e2fcf05eb06abf6a270836c6bb0929881d2d','2020-09-25 22:09:27.0')
,('Кристина','Комова','gboken1d@pbs.org',7535680736,'f','1983-08-14','Санкт-Петербург',NULL,'bb35c705937669867fcb722070e7beb2d10ab622','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Максим','Никитин','ebakhrushin1e@nationalgeographic.com',7735098294,'m','1980-05-29','Краснодар',NULL,'ae2706b4f4b393f95331b1686ed391bc4d5c997a','2020-09-25 22:09:27.0')
,('Оксана','Снегирева','rdrugan1f@domainmarket.com',7267503662,'f','1986-05-20','Волгоград',NULL,'117e128e47bf9990fb42667c532fea870148154e','2020-09-25 22:09:27.0')
,('Виктория','Руднева','ladamec1g@businessweek.com',6437005614,'f','1981-06-21','Пермь',NULL,'e161196978199abbf0aae9db3646c92160edb97a','2020-09-25 22:09:27.0')
,('Елена','Аржанова','sdehooch1h@liveinternet.ru',3264294858,'f','1980-11-03','Тюмень',NULL,'27a45adcbb383228b8998eb3074059471a3143f0','2020-09-25 22:09:27.0')
,('Федор','Шипко','glammertz1i@go.com',8854406327,'m','1989-05-14','Самара',NULL,'f6576f732765b8b40fd758bcc0a83b65dea45ca1','2020-09-25 22:09:27.0')
,('Юлия','Тамбовцева','ghuzzey1j@creativecommons.org',5792854326,'f','1983-01-10','Саратов',NULL,'27c2a6980f55455a7de39f0f4afbe96a112ae5c7','2020-09-25 22:09:27.0')
,('Ольга','Козаренко','tcubbini1k@list-manage.com',8076928589,'f','1981-09-01','Краснодар',NULL,'8da5db5f87ef06c2f7fb67846068d728e1f4fde2','2020-09-25 22:09:27.0')
,('Наталья','Волкова','pdanels1l@studiopress.com',3467878579,'f','1985-12-07','Омск',NULL,'60c3e33d3702766312b99c42d1be3a98b5e3eeaa','2020-09-25 22:09:27.0')
,('Юлия','Лысакова','mlarrett1m@china.com.cn',6804310209,'f','1981-06-26','Саратов',NULL,'3cfb6181608ca073d4d59432c71d36ce3fb1bdbe','2020-09-25 22:09:27.0')
,('Владимир','Почепцов','dswancott1n@time.com',4101819985,'m','1987-01-02','Нижний Новгород',NULL,'c3b0adc093cbc45a0e02275a13a1f7e3609b257e','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Евгения','Конникова','cmorsey1o@purevolume.com',4578422856,'f','1989-10-09','Волгоград',NULL,'9f85a0b32ae7fb3e952fa6f38de5a5405fc03810','2020-09-25 22:09:27.0')
,('Наталья','Козлитина','bkennler1p@reddit.com',5302291765,'f','1983-03-02','Новосибирск',NULL,'c75642bc2173f416bae563603aef9c3cee7a220e','2020-09-25 22:09:27.0')
,('Марат','Назмиев','chuckett1q@istockphoto.com',3696664396,'m','1989-02-16','Санкт-Петербург',NULL,'632cad88930380e011ef6423ac7a615cb62d81c7','2020-09-25 22:09:27.0')
,('Дмитрий','Тимашов','dhowbrook1r@go.com',4771920220,'m','1983-02-13','Тюмень',NULL,'38860af616b46f31444b2e0e570318a3b6491f77','2020-09-25 22:09:27.0')
,('Александр','Маричев','mosiaghail1s@dagondesign.com',1703242914,'m','1981-08-01','Казань',NULL,'6403618b2d91965c995eeb165fb1810c5494a3e1','2020-09-25 22:09:27.0')
,('Дина','Савельева','tvanni1t@soundcloud.com',1277342028,'f','1987-12-03','Ростов-на-Дону',NULL,'1e031de4f2b7a76c2f622b63cb1c6844c90094ec','2020-09-25 22:09:27.0')
,('Федор','Шипко','athickin1u@linkedin.com',5234996624,'m','1989-02-21','Санкт-Петербург',NULL,'9f02e6161b06ca3568c93d900f54cf24334c6c97','2020-09-25 22:09:27.0')
,('Василий','Безрученко','dhaylands1v@list-manage.com',3877536636,'m','1982-04-26','Санкт-Петербург',NULL,'8b70f86d265f5e021b157d3ead188efb0ea3374f','2020-09-25 22:09:27.0')
,('Дмитрий','Литаврин','gtaplow1w@imgur.com',9947066870,'m','1983-05-10','Омск',NULL,'5ea7a3f00a784345a7c7df7dbf303921565c4bf2','2020-09-25 22:09:27.0')
,('Константин','Стародубцев','ccatto1x@intel.com',9286831036,'m','1986-08-23','Волгоград',NULL,'fabb15a627158fbc7f8be2119755ef0ecf08e81a','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Ольга','Кузнецова','jselway1y@odnoklassniki.ru',3532624836,'f','1986-09-15','Нижний Новгород',NULL,'0558138813a372455cce703fefc719b65604da68','2020-09-25 22:09:27.0')
,('Антон','Борников','goflaherty1z@umich.edu',7377444639,'m','1983-02-10','Казань',NULL,'73351c9bf23a7e4e03f29ebd37b949ae1b866d09','2020-09-25 22:09:27.0')
,('Роман','Тарарыков','bhercules20@ycombinator.com',3451661646,'m','1988-04-13','Саратов',NULL,'ab4de688bf85cf865982dc2f2dc5a7e062ba54e5','2020-09-25 22:09:27.0')
,('Ольга','Ищенко','njirzik21@utexas.edu',1132812314,'f','1985-12-04','Екатеринбург',NULL,'843d6df418382066775420211bf9f923b6885c62','2020-09-25 22:09:27.0')
,('Павел','Трунтаев','lbradbeer22@pinterest.com',2312476133,'m','1985-05-21','Тольятти',NULL,'a34f88e21214740c1f0713a0b7158f035371ae52','2020-09-25 22:09:27.0')
,('Марина','Власова','vtosney23@lycos.com',5978627731,'f','1983-09-18','Санкт-Петербург',NULL,'a90f3046a469a20d596d46f5868a3236cb56b410','2020-09-25 22:09:27.0')
,('Сергей','Беляев','pfairnington24@baidu.com',2489356708,'m','1986-07-11','Уфа',NULL,'78239b73d2286ecc07f0931666564f334b39bf0e','2020-09-25 22:09:27.0')
,('Татьяна','Морозова','jskellion25@about.me',8806637099,'f','1989-07-02','Екатеринбург',NULL,'ef981b22143faa2ddd2e3e7938bf604de1020059','2020-09-25 22:09:27.0')
,('Татьяна','Нестерова','lnealon26@hexun.com',9413536022,'f','1986-05-01','Казань',NULL,'5eccaf8d7038358b307c14336cd565cb49f365c3','2020-09-25 22:09:27.0')
,('Евгений','Волынкин','bpresland27@ihg.com',5752887260,'m','1989-09-16','Москва',NULL,'c2b671c251b4ed3838644585b047d0a1a3704133','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Надежда','Реукова','cemlyn28@wikispaces.com',9404156548,'f','1982-12-22','Казань',NULL,'95c0a7d5089c0ccf6fe8c88113462c2ab6950a17','2020-09-25 22:09:27.0')
,('Марина','Лямзина','lokinedy29@aboutads.info',5614317170,'f','1984-02-11','Екатеринбург',NULL,'425f5bab4afc290c1ec5e904cbed27fcf4c97f71','2020-09-25 22:09:27.0')
,('Любовь','Карташова','ewestgarth2a@home.pl',9468369832,'f','1981-12-25','Тольятти',NULL,'4b069e5454103bc745477798dd66ea134c242a92','2020-09-25 22:09:27.0')
,('Алексей','Золототрубов','adebell2b@netlog.com',2003010211,'m','1984-08-30','Красноярск',NULL,'2d7566a285d69d24b2ad0753bbaeddc945aecc83','2020-09-25 22:09:27.0')
,('Татьяна','Гуляева','cwinchcomb2c@friendfeed.com',9006045417,'f','1989-07-27','Воронеж',NULL,'c4ec50ac1c3064f80f4cfd877ba2563928a33e27','2020-09-25 22:09:27.0')
,('Юлия','Сысоева','yzanardii2d@google.com.au',9613106434,'f','1987-11-14','Новосибирск',NULL,'87acb7a49196ed113ddf732a9a41a1291a68cb87','2020-09-25 22:09:27.0')
,('Александр','Борисов','jpierce2e@ftc.gov',6559915444,'m','1982-05-17','Краснодар',NULL,'10253a915f1b47f3032c84c71d7fd86a5a6624e8','2020-09-25 22:09:27.0')
,('Анатолий','Косинов','lbottini2f@whitehouse.gov',3036324530,'m','1983-06-01','Самара',NULL,'d1532c3b8e8682bc769b2606320a1a0f54fc5925','2020-09-25 22:09:27.0')
,('Ольга','Меланьина','wweaben2g@amazon.com',3193637029,'f','1981-05-06','Красноярск',NULL,'6df61ed9ad812e2f327ae87bc855302c28f1c2e0','2020-09-25 22:09:27.0')
,('Ольга','Дубищева','dborrow2h@oaic.gov.au',3234549546,'f','1987-04-11','Москва',NULL,'4e33f3ac62368f7104b84612d0b1ab5181cdd11b','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Федор','Шипко','pcoverdill2i@youtube.com',9608691146,'m','1984-06-14','Ростов-на-Дону',NULL,'5ccde04c88913a29f096d5ccfc1e9ec0cce67a71','2020-09-25 22:09:27.0')
,('Татьяна','Севостьянова','lbaldam2j@qq.com',8065210191,'f','1980-07-11','Новосибирск',NULL,'26a73caff7a0774d854d085586394becd291dc84','2020-09-25 22:09:27.0')
,('Инна','Красникова','rdunstan2k@gmpg.org',2141664371,'f','1987-11-03','Казань',NULL,'b6f4fe122245e18ccbdf12bcf354bd693a87fedc','2020-09-25 22:09:27.0')
,('Светлана','Гарьковская','mmcglade2l@google.de',9804639490,'f','1981-05-20','Красноярск',NULL,'c6ae3d969345bc2cacf2cf324468e5bae8fd449c','2020-09-25 22:09:27.0')
,('Эльза','Самороковская','fantal2m@hp.com',8894215795,'f','1987-05-10','Красноярск',NULL,'e643ae9bdbefd5da4c4e18a47c46f2db8b33f603','2020-09-25 22:09:27.0')
,('Елена','Орлова','brichings2n@dropbox.com',3913069006,'f','1988-08-11','Самара',NULL,'5f37954b9fce380080982e51adba07e0718d0052','2020-09-25 22:09:27.0')
,('Галина','Стрельникова','lmundy2o@yellowbook.com',3699040307,'f','2020-09-05','Тюмень',NULL,'0b5fcf87309858b956cc164df1a61acf8ca4773a','2020-09-25 22:09:27.0')
,('Светлана','Назарова','aelsom2p@engadget.com',2811501912,'f','1984-04-07','Омск',NULL,'ad20ef3e300cc51ec105d937689feecfca82b66c','2020-09-25 22:09:27.0')
,('Антон','Шарыкин','sholleran2q@technorati.com',8866959892,'m','1989-03-04','Санкт-Петербург',NULL,'e28882d420f3f02df4ef85cf57a7900520dd19bf','2020-09-25 22:09:27.0')
,('Ирина','Хусаинова','jpalfreeman2r@example.com',6843424170,'f','1983-12-28','Тольятти',NULL,'b607f0f3ba714a20ee76785f523585be6fa4a022','2020-09-25 22:09:27.0')
;
INSERT INTO users (name,surname,email,phone,gender,birthday,hometown,photo_id,pass,created_at) VALUES 
('Дарья','Иванова','jpalfreeman@example.com',6843424170,'f','1999-12-28','Омск',NULL,'b607f0f3ba714a20ee76785f523585be6fa4a022','2020-09-25 22:09:27.0')
,('Иван','Иванов','jpalfreeman11@example.com',6843424170,'f','1999-12-28','Красноярск',NULL,'b607f0f3ba714a20ee76785f523585be6fa4a022','2020-09-25 22:09:27.0')
,('Сергей','Иванов','11jpalfreeman11@example.com',6843424170,'f','1992-10-20','Казань',NULL,'b607f0f3ba714a20ee76785f523585be6fa4a022','2020-09-25 22:09:27.0')
,('Дмитрий','Иванов','131jpalfreeman11@example.com',6843424170,'f','1980-12-28','Красноярск',NULL,'b607f0f3ba714a20ee76785f523585be6fa4a022','2020-09-25 22:09:27.0')
,('Пётр','Иванов','13sss1jpalfreeman11@example.com',6843424170,'f','2003-01-12','Омск',NULL,'b607f0f3ba714a20ee76785f523585be6fa4a022','2020-09-25 22:09:27.0')
;

INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('2', '9', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('4', '1', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('11', '69', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('15', '2', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('20', '4', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('25', '63', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('26', '73', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('27', '85', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('28', '68', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('29', '7', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('50', '19', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('51', '18', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('56', '41', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('63', '87', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('67', '23', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('74', '8', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('75', '3', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('84', '5', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('85', '52', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('91', '42', 1);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('92', '39', 0);
INSERT INTO `users_communities` (`user_id`, `community_id`, `is_admin`) VALUES ('98', '76', 1);

-- INSERT ... SET

INSERT INTO users 
set
name='Ольга',surname='Кумачова',email='olga568@mail.ru',phone='7954098654',gender='f',birthday='1977-01-04',hometown='Москва',pass='546jdfhsdh56k5jdisofj5';
	
-- INSERT ... select
insert communities
select * from snet1.communities;
Query OK, 100 rows affected (0.01 sec)

insert communities (name)
select name from snet1.communities;
Records: 100  Duplicates: 0  Warnings: 0

-- select
select * from communities;
+-----+----------------------------------------------------------+
| id  | name                                                     |
+-----+----------------------------------------------------------+
|  75 | Automated 4thgeneration matrix                           |
| 101 | Automated 4thgeneration matrix                           |
|   5 | Business-focused object-oriented implementation          |
| 102 | Business-focused object-oriented implementation          |
|  58 | Centralized high-level hub                               |
| 103 | Centralized high-level hub                               |
|  41 | Centralized radical complexity                           |
| 104 | Centralized radical complexity                           |
|  51 | Cloned exuding time-frame                                |
| 105 | Cloned exuding time-frame                                |
|  12 | Configurable object-oriented task-force                  |
| 106 | Configurable object-oriented task-force                  |
|  63 | Cross-group value-added alliance                         |
| 107 | Cross-group value-added alliance                         |
|  55 | Cross-platform fault-tolerant framework                  |
| 108 | Cross-platform fault-tolerant framework                  |
|  24 | Customer-focused systematic solution                     |
| 109 | Customer-focused systematic solution                     |
|  53 | De-engineered exuding info-mediaries                     |
| 110 | De-engineered exuding info-mediaries                     |
|  40 | Decentralized zerotolerance analyzer                     |
| 111 | Decentralized zerotolerance analyzer                     |
|  42 | Distributed multi-tasking circuit                        |
| 112 | Distributed multi-tasking circuit                        |
|  18 | Distributed responsive extranet                          |
| 113 | Distributed responsive extranet                          |
|  59 | Diverse foreground hub                                   |
| 114 | Diverse foreground hub                                   |
|  60 | Diverse radical ability                                  |
| 115 | Diverse radical ability                                  |
|  22 | Diverse systematic structure                             |
| 116 | Diverse systematic structure                             |
|  94 | Down-sized mobile matrices                               |
| 117 | Down-sized mobile matrices                               |
| 100 | Down-sized non-volatile focusgroup                       |
| 118 | Down-sized non-volatile focusgroup                       |
|  79 | Enhanced 4thgeneration workforce                         |
| 119 | Enhanced 4thgeneration workforce                         |
|  84 | Enterprise-wide 24hour instructionset                    |
| 120 | Enterprise-wide 24hour instructionset                    |
|  86 | Enterprise-wide client-server utilisation                |
| 121 | Enterprise-wide client-server utilisation                |
|  65 | Enterprise-wide stable attitude                          |
| 122 | Enterprise-wide stable attitude                          |
|  26 | Expanded logistical hierarchy                            |
| 123 | Expanded logistical hierarchy                            |
|  89 | Expanded responsive groupware                            |
| 124 | Expanded responsive groupware                            |
|  31 | Extended clear-thinking collaboration                    |
| 125 | Extended clear-thinking collaboration                    |
|  68 | Extended dedicated access                                |
| 126 | Extended dedicated access                                |
|  88 | Extended local GraphicInterface                          |
| 127 | Extended local GraphicInterface                          |
|  52 | Facetoface web-enabled moderator                         |
| 128 | Facetoface web-enabled moderator                         |
|  62 | Front-line discrete product                              |
| 129 | Front-line discrete product                              |
|  73 | Front-line maximized localareanetwork                    |
| 130 | Front-line maximized localareanetwork                    |
|  44 | Fully-configurable responsive moratorium                 |
| 131 | Fully-configurable responsive moratorium                 |
|  30 | Fully-configurable tangible implementation               |
| 132 | Fully-configurable tangible implementation               |
|  97 | Function-based 5thgeneration model                       |
| 133 | Function-based 5thgeneration model                       |
|  72 | Function-based contextually-based challenge              |
| 134 | Function-based contextually-based challenge              |
|  43 | Fundamental interactive contingency                      |
| 135 | Fundamental interactive contingency                      |
|  71 | Future-proofed intermediate framework                    |
| 136 | Future-proofed intermediate framework                    |
|   4 | Grass-roots background focusgroup                        |
| 137 | Grass-roots background focusgroup                        |
|  21 | Grass-roots neutral forecast                             |
| 138 | Grass-roots neutral forecast                             |
|  35 | Grass-roots optimizing strategy                          |
| 139 | Grass-roots optimizing strategy                          |
|  81 | Grass-roots zeroadministration systemengine              |
| 140 | Grass-roots zeroadministration systemengine              |
|  99 | Innovative radical function                              |
| 141 | Innovative radical function                              |
|  34 | Intuitive intangible analyzer                            |
| 142 | Intuitive intangible analyzer                            |
|  46 | Intuitive needs-based migration                          |
| 143 | Intuitive needs-based migration                          |
|  61 | Inverse multimedia product                               |
| 144 | Inverse multimedia product                               |
|  25 | Managed actuating groupware                              |
| 145 | Managed actuating groupware                              |
|  28 | Mandatory motivating customerloyalty                     |
| 146 | Mandatory motivating customerloyalty                     |
|  56 | Multi-channelled 24/7 protocol                           |
| 147 | Multi-channelled 24/7 protocol                           |
|  29 | Multi-channelled methodical firmware                     |
| 148 | Multi-channelled methodical firmware                     |
|  64 | Multi-lateral explicit policy                            |
| 149 | Multi-lateral explicit policy                            |
|  67 | Multi-layered bifurcated solution                        |
| 150 | Multi-layered bifurcated solution                        |
|  14 | Multi-layered explicit systemengine                      |
| 151 | Multi-layered explicit systemengine                      |
|  32 | Multi-layered value-added installation                   |
| 152 | Multi-layered value-added installation                   |
|  23 | Networked multimedia artificialintelligence              |
| 153 | Networked multimedia artificialintelligence              |
|  19 | Open-architected executive project                       |
| 154 | Open-architected executive project                       |
|  33 | Open-architected mission-critical GraphicalUserInterface |
| 155 | Open-architected mission-critical GraphicalUserInterface |
|  98 | Operative bifurcated array                               |
| 156 | Operative bifurcated array                               |
|  45 | Operative zeroadministration orchestration               |
| 157 | Operative zeroadministration orchestration               |
|  87 | Optional content-based firmware                          |
| 158 | Optional content-based firmware                          |
|  93 | Persevering 3rdgeneration forecast                       |
| 159 | Persevering 3rdgeneration forecast                       |
|  10 | Persistent regional product                              |
| 160 | Persistent regional product                              |
|  20 | Phased value-added time-frame                            |
| 161 | Phased value-added time-frame                            |
|   8 | Polarised encompassing firmware                          |
| 162 | Polarised encompassing firmware                          |
|  70 | Polarised grid-enabled interface                         |
| 163 | Polarised grid-enabled interface                         |
|  78 | Polarised mission-critical conglomeration                |
| 164 | Polarised mission-critical conglomeration                |
|  77 | Pre-emptive contextually-based flexibility               |
| 165 | Pre-emptive contextually-based flexibility               |
|  27 | Pre-emptive hybrid utilisation                           |
| 166 | Pre-emptive hybrid utilisation                           |
|   3 | Profit-focused background throughput                     |
| 167 | Profit-focused background throughput                     |
|  80 | Programmable bandwidth-monitored access                  |
| 168 | Programmable bandwidth-monitored access                  |
|  83 | Programmable zerotolerance extranet                      |
| 169 | Programmable zerotolerance extranet                      |
|  54 | Public-key grid-enabled customerloyalty                  |
| 170 | Public-key grid-enabled customerloyalty                  |
|  49 | Public-key grid-enabled structure                        |
| 171 | Public-key grid-enabled structure                        |
|  15 | Public-key radical interface                             |
| 172 | Public-key radical interface                             |
|   1 | Quality-focused non-volatile core                        |
| 173 | Quality-focused non-volatile core                        |
|   2 | Re-contextualized eco-centric extranet                   |
| 174 | Re-contextualized eco-centric extranet                   |
|  76 | Re-contextualized systemic benchmark                     |
| 175 | Re-contextualized systemic benchmark                     |
|  11 | Re-contextualized uniform capability                     |
| 176 | Re-contextualized uniform capability                     |
|  47 | Re-engineered solution-oriented projection               |
| 177 | Re-engineered solution-oriented projection               |
|  82 | Reactive 5thgeneration standardization                   |
| 178 | Reactive 5thgeneration standardization                   |
|  39 | Reactive leadingedge flexibility                         |
| 179 | Reactive leadingedge flexibility                         |
|   6 | Reactive multi-state function                            |
| 180 | Reactive multi-state function                            |
|  66 | Reverse-engineered solution-oriented functionalities     |
| 181 | Reverse-engineered solution-oriented functionalities     |
|  16 | Right-sized 5thgeneration definition                     |
| 182 | Right-sized 5thgeneration definition                     |
|  38 | Right-sized clear-thinking hub                           |
| 183 | Right-sized clear-thinking hub                           |
|  96 | Robust global approach                                   |
| 184 | Robust global approach                                   |
|  95 | Secured cohesive GraphicInterface                        |
| 185 | Secured cohesive GraphicInterface                        |
|  48 | Secured encompassing support                             |
| 186 | Secured encompassing support                             |
|  69 | Secured high-level systemengine                          |
| 187 | Secured high-level systemengine                          |
|  90 | Streamlined well-modulated customerloyalty               |
| 188 | Streamlined well-modulated customerloyalty               |
|  85 | Synergistic background model                             |
| 189 | Synergistic background model                             |
|  57 | Synergistic didactic time-frame                          |
| 190 | Synergistic didactic time-frame                          |
|  13 | Synergized explicit workforce                            |
| 191 | Synergized explicit workforce                            |
|  50 | Synergized fresh-thinking methodology                    |
| 192 | Synergized fresh-thinking methodology                    |
|  92 | Synergized heuristic customerloyalty                     |
| 193 | Synergized heuristic customerloyalty                     |
|   9 | Up-sized bi-directional encryption                       |
| 194 | Up-sized bi-directional encryption                       |
|  37 | Up-sized impactful analyzer                              |
| 195 | Up-sized impactful analyzer                              |
|  36 | Up-sized intermediate algorithm                          |
| 196 | Up-sized intermediate algorithm                          |
|  17 | User-centric demand-driven task-force                    |
| 197 | User-centric demand-driven task-force                    |
|  74 | Virtual executive matrix                                 |
| 198 | Virtual executive matrix                                 |
|  91 | Vision-oriented optimal customerloyalty                  |
| 199 | Vision-oriented optimal customerloyalty                  |
|   7 | Visionary intermediate focusgroup                        |
| 200 | Visionary intermediate focusgroup                        |
+-----+----------------------------------------------------------+
200 rows in set (0.00 sec)
select * from communities order by id; -- ASC сортировка по возрастанию, DESC сортировка по убыванию

+-----+----------------------------------------------------------+
| id  | name                                                     |
+-----+----------------------------------------------------------+
|   1 | Quality-focused non-volatile core                        |
|   2 | Re-contextualized eco-centric extranet                   |
|   3 | Profit-focused background throughput                     |
|   4 | Grass-roots background focusgroup                        |
|   5 | Business-focused object-oriented implementation          |
|   6 | Reactive multi-state function                            |
|   7 | Visionary intermediate focusgroup                        |
|   8 | Polarised encompassing firmware                          |
|   9 | Up-sized bi-directional encryption                       |
|  10 | Persistent regional product                              |
|  11 | Re-contextualized uniform capability                     |
|  12 | Configurable object-oriented task-force                  |
|  13 | Synergized explicit workforce                            |
|  14 | Multi-layered explicit systemengine                      |
|  15 | Public-key radical interface                             |
|  16 | Right-sized 5thgeneration definition                     |
|  17 | User-centric demand-driven task-force                    |
|  18 | Distributed responsive extranet                          |
|  19 | Open-architected executive project                       |
|  20 | Phased value-added time-frame                            |
|  21 | Grass-roots neutral forecast                             |
|  22 | Diverse systematic structure                             |
|  23 | Networked multimedia artificialintelligence              |
|  24 | Customer-focused systematic solution                     |
|  25 | Managed actuating groupware                              |
|  26 | Expanded logistical hierarchy                            |
|  27 | Pre-emptive hybrid utilisation                           |
|  28 | Mandatory motivating customerloyalty                     |
|  29 | Multi-channelled methodical firmware                     |
|  30 | Fully-configurable tangible implementation               |
|  31 | Extended clear-thinking collaboration                    |
|  32 | Multi-layered value-added installation                   |
|  33 | Open-architected mission-critical GraphicalUserInterface |
|  34 | Intuitive intangible analyzer                            |
|  35 | Grass-roots optimizing strategy                          |
|  36 | Up-sized intermediate algorithm                          |
|  37 | Up-sized impactful analyzer                              |
|  38 | Right-sized clear-thinking hub                           |
|  39 | Reactive leadingedge flexibility                         |
|  40 | Decentralized zerotolerance analyzer                     |
|  41 | Centralized radical complexity                           |
|  42 | Distributed multi-tasking circuit                        |
|  43 | Fundamental interactive contingency                      |
|  44 | Fully-configurable responsive moratorium                 |
|  45 | Operative zeroadministration orchestration               |
|  46 | Intuitive needs-based migration                          |
|  47 | Re-engineered solution-oriented projection               |
|  48 | Secured encompassing support                             |
|  49 | Public-key grid-enabled structure                        |
|  50 | Synergized fresh-thinking methodology                    |
|  51 | Cloned exuding time-frame                                |
|  52 | Facetoface web-enabled moderator                         |
|  53 | De-engineered exuding info-mediaries                     |
|  54 | Public-key grid-enabled customerloyalty                  |
|  55 | Cross-platform fault-tolerant framework                  |
|  56 | Multi-channelled 24/7 protocol                           |
|  57 | Synergistic didactic time-frame                          |
|  58 | Centralized high-level hub                               |
|  59 | Diverse foreground hub                                   |
|  60 | Diverse radical ability                                  |
|  61 | Inverse multimedia product                               |
|  62 | Front-line discrete product                              |
|  63 | Cross-group value-added alliance                         |
|  64 | Multi-lateral explicit policy                            |
|  65 | Enterprise-wide stable attitude                          |
|  66 | Reverse-engineered solution-oriented functionalities     |
|  67 | Multi-layered bifurcated solution                        |
|  68 | Extended dedicated access                                |
|  69 | Secured high-level systemengine                          |
|  70 | Polarised grid-enabled interface                         |
|  71 | Future-proofed intermediate framework                    |
|  72 | Function-based contextually-based challenge              |
|  73 | Front-line maximized localareanetwork                    |
|  74 | Virtual executive matrix                                 |
|  75 | Automated 4thgeneration matrix                           |
|  76 | Re-contextualized systemic benchmark                     |
|  77 | Pre-emptive contextually-based flexibility               |
|  78 | Polarised mission-critical conglomeration                |
|  79 | Enhanced 4thgeneration workforce                         |
|  80 | Programmable bandwidth-monitored access                  |
|  81 | Grass-roots zeroadministration systemengine              |
|  82 | Reactive 5thgeneration standardization                   |
|  83 | Programmable zerotolerance extranet                      |
|  84 | Enterprise-wide 24hour instructionset                    |
|  85 | Synergistic background model                             |
|  86 | Enterprise-wide client-server utilisation                |
|  87 | Optional content-based firmware                          |
|  88 | Extended local GraphicInterface                          |
|  89 | Expanded responsive groupware                            |
|  90 | Streamlined well-modulated customerloyalty               |
|  91 | Vision-oriented optimal customerloyalty                  |
|  92 | Synergized heuristic customerloyalty                     |
|  93 | Persevering 3rdgeneration forecast                       |
|  94 | Down-sized mobile matrices                               |
|  95 | Secured cohesive GraphicInterface                        |
|  96 | Robust global approach                                   |
|  97 | Function-based 5thgeneration model                       |
|  98 | Operative bifurcated array                               |
|  99 | Innovative radical function                              |
| 100 | Down-sized non-volatile focusgroup                       |
| 101 | Automated 4thgeneration matrix                           |
| 102 | Business-focused object-oriented implementation          |
| 103 | Centralized high-level hub                               |
| 104 | Centralized radical complexity                           |
| 105 | Cloned exuding time-frame                                |
| 106 | Configurable object-oriented task-force                  |
| 107 | Cross-group value-added alliance                         |
| 108 | Cross-platform fault-tolerant framework                  |
| 109 | Customer-focused systematic solution                     |
| 110 | De-engineered exuding info-mediaries                     |
| 111 | Decentralized zerotolerance analyzer                     |
| 112 | Distributed multi-tasking circuit                        |
| 113 | Distributed responsive extranet                          |
| 114 | Diverse foreground hub                                   |
| 115 | Diverse radical ability                                  |
| 116 | Diverse systematic structure                             |
| 117 | Down-sized mobile matrices                               |
| 118 | Down-sized non-volatile focusgroup                       |
| 119 | Enhanced 4thgeneration workforce                         |
| 120 | Enterprise-wide 24hour instructionset                    |
| 121 | Enterprise-wide client-server utilisation                |
| 122 | Enterprise-wide stable attitude                          |
| 123 | Expanded logistical hierarchy                            |
| 124 | Expanded responsive groupware                            |
| 125 | Extended clear-thinking collaboration                    |
| 126 | Extended dedicated access                                |
| 127 | Extended local GraphicInterface                          |
| 128 | Facetoface web-enabled moderator                         |
| 129 | Front-line discrete product                              |
| 130 | Front-line maximized localareanetwork                    |
| 131 | Fully-configurable responsive moratorium                 |
| 132 | Fully-configurable tangible implementation               |
| 133 | Function-based 5thgeneration model                       |
| 134 | Function-based contextually-based challenge              |
| 135 | Fundamental interactive contingency                      |
| 136 | Future-proofed intermediate framework                    |
| 137 | Grass-roots background focusgroup                        |
| 138 | Grass-roots neutral forecast                             |
| 139 | Grass-roots optimizing strategy                          |
| 140 | Grass-roots zeroadministration systemengine              |
| 141 | Innovative radical function                              |
| 142 | Intuitive intangible analyzer                            |
| 143 | Intuitive needs-based migration                          |
| 144 | Inverse multimedia product                               |
| 145 | Managed actuating groupware                              |
| 146 | Mandatory motivating customerloyalty                     |
| 147 | Multi-channelled 24/7 protocol                           |
| 148 | Multi-channelled methodical firmware                     |
| 149 | Multi-lateral explicit policy                            |
| 150 | Multi-layered bifurcated solution                        |
| 151 | Multi-layered explicit systemengine                      |
| 152 | Multi-layered value-added installation                   |
| 153 | Networked multimedia artificialintelligence              |
| 154 | Open-architected executive project                       |
| 155 | Open-architected mission-critical GraphicalUserInterface |
| 156 | Operative bifurcated array                               |
| 157 | Operative zeroadministration orchestration               |
| 158 | Optional content-based firmware                          |
| 159 | Persevering 3rdgeneration forecast                       |
| 160 | Persistent regional product                              |
| 161 | Phased value-added time-frame                            |
| 162 | Polarised encompassing firmware                          |
| 163 | Polarised grid-enabled interface                         |
| 164 | Polarised mission-critical conglomeration                |
| 165 | Pre-emptive contextually-based flexibility               |
| 166 | Pre-emptive hybrid utilisation                           |
| 167 | Profit-focused background throughput                     |
| 168 | Programmable bandwidth-monitored access                  |
| 169 | Programmable zerotolerance extranet                      |
| 170 | Public-key grid-enabled customerloyalty                  |
| 171 | Public-key grid-enabled structure                        |
| 172 | Public-key radical interface                             |
| 173 | Quality-focused non-volatile core                        |
| 174 | Re-contextualized eco-centric extranet                   |
| 175 | Re-contextualized systemic benchmark                     |
| 176 | Re-contextualized uniform capability                     |
| 177 | Re-engineered solution-oriented projection               |
| 178 | Reactive 5thgeneration standardization                   |
| 179 | Reactive leadingedge flexibility                         |
| 180 | Reactive multi-state function                            |
| 181 | Reverse-engineered solution-oriented functionalities     |
| 182 | Right-sized 5thgeneration definition                     |
| 183 | Right-sized clear-thinking hub                           |
| 184 | Robust global approach                                   |
| 185 | Secured cohesive GraphicInterface                        |
| 186 | Secured encompassing support                             |
| 187 | Secured high-level systemengine                          |
| 188 | Streamlined well-modulated customerloyalty               |
| 189 | Synergistic background model                             |
| 190 | Synergistic didactic time-frame                          |
| 191 | Synergized explicit workforce                            |
| 192 | Synergized fresh-thinking methodology                    |
| 193 | Synergized heuristic customerloyalty                     |
| 194 | Up-sized bi-directional encryption                       |
| 195 | Up-sized impactful analyzer                              |
| 196 | Up-sized intermediate algorithm                          |
| 197 | User-centric demand-driven task-force                    |
| 198 | Virtual executive matrix                                 |
| 199 | Vision-oriented optimal customerloyalty                  |
| 200 | Visionary intermediate focusgroup                        |
+-----+----------------------------------------------------------+
200 rows in set (0.00 sec)

select surname, hometown, email from users;

+--------------+-----------------+----------------------------------+
| surname      | hometown        | email                            |
+--------------+-----------------+----------------------------------+
| Кумачова     | Москва          | olga568@mail.ru                  |
| Попова       | Воронеж         | rthomazinb@ox.ac.uk              |
| Гончарова    | Самара          | gambridgec@sakura.ne.jp          |
| Закусилова   | Новосибирск     | mantosikd@tinypic.com            |
| Нагина       | Пермь           | rtabere@admin.ch                 |
| Платошкина   | Красноярск      | ckendellf@bloglines.com          |
| Светляков    | Тюмень          | amckeandg@behance.net            |
| Черникова    | Екатеринбург    | csantryh@mit.edu                 |
| Зайцева      | Воронеж         | dharcasei@dailymotion.com        |
| Застрожнова  | Москва          | drouthamj@senate.gov             |
| Сушкова      | Волгоград       | eshetliff0@virginia.edu          |
| Бавыкина     | Казань          | ldeguara1@bing.com               |
| Киреева      | Казань          | cdominick2@cnn.com               |
| Михайлова    | Красноярск      | dbydaway3@hugedomains.com        |
| Чиликова     | Тольятти        | hpullin4@state.gov               |
| Селиванова   | Волгоград       | lhulme5@tamu.edu                 |
| Лисовой      | Краснодар       | ngrzesiak6@blogspot.com          |
| Назарьев     | Волгоград       | ewathall7@slate.com              |
| Метлицкий    | Краснодар       | epindar8@oracle.com              |
| Белоусова    | Челябинск       | jdelacoste9@chicagotribune.com   |
| Власова      | Краснодар       | sdowgilla@salon.com              |
| Волчкевич    | Воронеж         | mhouchenb@jalbum.net             |
| Волынкин     | Саратов         | rcogarc@storify.com              |
| Воробьев     | Красноярск      | gbartold@guardian.co.uk          |
| Лопухов      | Нижний Новгород | dcuffline@harvard.edu            |
| Лохмачева    | Самара          | ctymf@uiuc.edu                   |
| Овчинникова  | Казань          | vshelveyg@census.gov             |
| Погорельский | Пермь           | sworboyh@about.me                |
| Полищук      | Ростов-на-Дону  | cmayhoi@xrea.com                 |
| Токарев      | Новосибирск     | jromushkinj@census.gov           |
| Турбин       | Москва          | npesselk@buzzfeed.com            |
| Колтакова    | Пермь           | nhackettl@omniture.com           |
| Попов        | Санкт-Петербург | cwillimentm@livejournal.com      |
| Черепнина    | Самара          | civensn@deliciousdays.com        |
| Мошкин       | Екатеринбург    | rbrougho@elegantthemes.com       |
| Бучнев       | Тюмень          | aandersenp@cisco.com             |
| Кретинина    | Пермь           | anorquoyq@home.pl                |
| Трунтаев     | Уфа             | bferrieresr@amazon.co.jp         |
| Печенкина    | Краснодар       | soffilers@biblegateway.com       |
| Хрипков      | Новосибирск     | srobilartt@wix.com               |
| Черникова    | Самара          | adabbotdoyleu@latimes.com        |
| Бахтерев     | Санкт-Петербург | gmedlerv@desdev.cn               |
| Попова       | Нижний Новгород | pschonfelderw@icio.us            |
| Свиридова    | Казань          | klilleyx@ftc.gov                 |
| Цурканов     | Казань          | dtribey@foxnews.com              |
| Толмачева    | Омск            | alukockz@google.co.jp            |
| Суворов      | Санкт-Петербург | acorrington10@barnesandnoble.com |
| Бредихина    | Пермь           | lradbourn11@diigo.com            |
| Бумакова     | Москва          | hdudeney12@digg.com              |
| Максимова    | Уфа             | bpressnell13@cargocollective.com |
| Мельченко    | Самара          | gtaber14@ask.com                 |
| Переславцева | Омск            | harchell15@businessinsider.com   |
| Ситало       | Санкт-Петербург | ssullly16@umn.edu                |
| Анисимова    | Нижний Новгород | ndunkerly17@elpais.com           |
| Домарева     | Уфа             | bbass18@cloudflare.com           |
| Сидельникова | Красноярск      | hrivett19@nyu.edu                |
| Воронюк      | Москва          | bpiggen1a@networkadvertising.org |
| Азарова      | Казань          | epiers1b@constantcontact.com     |
| Ефимова      | Казань          | mizod1c@1und1.de                 |
| Кондратьева  | Уфа             | iwhetnell1d@kickstarter.com      |
| Косарева     | Новосибирск     | clamonby1e@boston.com            |
| Лакомова     | Санкт-Петербург | ssimeons1f@scribd.com            |
| Полуэктова   | Уфа             | lroggerone1g@engadget.com        |
| Никулина     | Омск            | astandfield1h@themeforest.net    |
| Максименко   | Новосибирск     | educkit1i@globo.com              |
| Асеева       | Волгоград       | khudless1j@oakley.com            |
| Шипилова     | Пермь           | msandiland1k@unesco.org          |
| Янкова       | Новосибирск     | mtrevers1l@amazon.com            |
| Красавин     | Ростов-на-Дону  | uruffle1m@free.fr                |
| Яньшина      | Воронеж         | lpetruskevich1n@statcounter.com  |
| Мироненко    | Екатеринбург    | awinnett1o@hao123.com            |
| Дадонова     | Краснодар       | bfurphy1p@nifty.com              |
| Мордасова    | Краснодар       | sstemp1q@theglobeandmail.com     |
| Рыжкова      | Новосибирск     | gmazin1r@fotki.com               |
| Богомолова   | Пермь           | lkrale1s@google.com.br           |
| Голощапова   | Москва          | ojosefs1t@shinystat.com          |
| Дибцева      | Ростов-на-Дону  | apietesch1u@marketwatch.com      |
| Попов        | Ростов-на-Дону  | lgow1v@example.com               |
| Рукавицына   | Новосибирск     | cmarte1w@globo.com               |
| Рыкунов      | Москва          | lruddock1x@wikimedia.org         |
| Рыкунова     | Красноярск      | jscirman1y@about.me              |
| Саблин       | Тюмень          | tkitchingman1z@omniture.com      |
| Самсонов     | Екатеринбург    | mlangman20@biblegateway.com      |
| Соколова     | Волгоград       | jtuff21@yandex.ru                |
| Афанасьева   | Москва          | dtidbold22@forbes.com            |
| Болгов       | Омск            | hspivie23@artisteer.com          |
| Древаль      | Краснодар       | dsimkiss24@youtu.be              |
| Дубатовкин   | Москва          | ttichelaar25@i2i.jp              |
| Простаков    | Воронеж         | vbyard26@dedecms.com             |
| Пономарев    | Саратов         | lduigenan27@list-manage.com      |
| Косяков      | Казань          | svery28@nsw.gov.au               |
| Косяков      | Краснодар       | slitzmann29@timesonline.co.uk    |
| Скаба        | Воронеж         | jgiacomini2a@youtu.be            |
| Смольянинов  | Тольятти        | edurston2b@google.ca             |
| Допперт      | Тюмень          | kfoulks2c@sphinn.com             |
| Стрыгина     | Волгоград       | jboken2d@wordpress.com           |
| Анисимов     | Саратов         | gcottage2e@prlog.org             |
| Гамов        | Красноярск      | hstrotone2f@devhub.com           |
| Довка        | Саратов         | vtremmel2g@ed.gov                |
| Калинин      | Воронеж         | jcarlesso2h@google.co.jp         |
| Пивоваров    | Краснодар       | mrucklidge2i@amazon.co.jp        |
| Тимошенко    | Саратов         | aprydie2j@vistaprint.com         |
| Богомолова   | Тольятти        | dbeardsall2k@dmoz.org            |
| Голощапова   | Екатеринбург    | rbulford2l@goodreads.com         |
| Дибцева      | Волгоград       | rblankenship2m@aol.com           |
| Попов        | Красноярск      | lsiveter2n@cnbc.com              |
| Рукавицына   | Челябинск       | csamples2o@wordpress.com         |
| Рыкунов      | Краснодар       | bwhitby2p@furl.net               |
| Рыкунова     | Тюмень          | sbearman2q@ebay.co.uk            |
| Саблин       | Уфа             | kscobie2r@sciencedaily.com       |
| Самсонов     | Самара          | afickena@businessweek.com        |
| Соколова     | Пермь           | mbaynhamb@howstuffworks.com      |
| Афанасьева   | Волгоград       | doxterbyc@ovh.net                |
| Болгов       | Челябинск       | ndurekd@facebook.com             |
| Древаль      | Красноярск      | echildse@sohu.com                |
| Дубоваткин   | Волгоград       | agrigorushkinf@infoseek.co.jp    |
| Простаков    | Уфа             | hmcganng@umn.edu                 |
| Пономарев    | Пермь           | mcumberpatchh@macromedia.com     |
| Паршин       | Санкт-Петербург | ebankei@senate.gov               |
| Петров       | Краснодар       | tbrandij@cyberchimps.com         |
| Сидоров      | Самара          | kbarthramk@springer.com          |
| Ворфоломеев  | Челябинск       | snewlandl@qq.com                 |
| Алехин       | Екатеринбург    | rstredderm@slideshare.net        |
| Паршина      | Челябинск       | gpimn@github.com                 |
| Трубицына    | Москва          | lbiniono@examiner.com            |
| Паршина      | Челябинск       | jkreberp@i2i.jp                  |
| Кривцова     | Красноярск      | mburnhamsq@baidu.com             |
| Бурмистрова  | Уфа             | wlangtreer@example.com           |
| Воронова     | Тольятти        | cburlays@pen.io                  |
| Заводскова   | Пермь           | filymanovt@nydailynews.com       |
| Воронин      | Тюмень          | ckluliseku@theguardian.com       |
| Баранова     | Челябинск       | fpointinv@yale.edu               |
| Семикоз      | Самара          | hsisnerosw@surveymonkey.com      |
| Буланый      | Казань          | gbretonx@clickbank.net           |
| Тафинцева    | Екатеринбург    | smcivery@networkadvertising.org  |
| Аксененкова  | Пермь           | cmacnamaraz@arstechnica.com      |
| Лунева       | Уфа             | mseamer10@uol.com.br             |
| Федоров      | Саратов         | mjanew11@tuttocitta.it           |
| Корчагина    | Омск            | isibbald12@livejournal.com       |
| Щербинина    | Нижний Новгород | ocuardall13@mashable.com         |
+--------------+-----------------+----------------------------------+

select * from users limit 5;
+----+--------+------------+-------------------------+------------+--------+------------+-------------+----------+------------------------------------------+---------------------+
| id | name   | surname    | email                   | phone      | gender | birthday   | hometown    | photo_id | pass                                     | created_at          |
+----+--------+------------+-------------------------+------------+--------+------------+-------------+----------+------------------------------------------+---------------------+
|  1 | Ольга  | Кумачова   | olga568@mail.ru         | 7954098654 | f      | 1977-01-04 | Москва      |     NULL | 546jdfhsdh56k5jdisofj5                   | 2020-10-02 12:45:40 |
|  2 | Дарья  | Попова     | rthomazinb@ox.ac.uk     | 8151557164 | f      | 1984-11-28 | Воронеж     |     NULL | 32afa0b02c8399d1960509c3fbd4cc75ab4dcce2 | 2020-09-25 22:09:27 |
|  3 | Ирина  | Гончарова  | gambridgec@sakura.ne.jp | 2907266453 | f      | 1984-08-24 | Самара      |     NULL | afd3e457d3b9f6f880623163ea8f72889777a58b | 2020-09-25 22:09:27 |
|  4 | Марина | Закусилова | mantosikd@tinypic.com   | 5949091863 | f      | 1981-04-16 | Новосибирск |     NULL | 9154186410a62369bdf4fd2bd632ca3511b270a7 | 2020-09-25 22:09:27 |
|  5 | Елена  | Нагина     | rtabere@admin.ch        | 6966471579 | f      | 1988-08-10 | Пермь       |     NULL | 9bc443a6e52541784d52b69acc39343526886b11 | 2020-09-25 22:09:27 |
+----+--------+------------+-------------------------+------------+--------+------------+-------------+----------+------------------------------------------+---------------------+
select * from users limit 3 offset 8; -- идентично select * from users limit 8,3;
+----+-------+-------------+---------------------------+------------+--------+------------+-----------+----------+------------------------------------------+---------------------+
| id | name  | surname     | email                     | phone      | gender | birthday   | hometown  | photo_id | pass                                     | created_at          |
+----+-------+-------------+---------------------------+------------+--------+------------+-----------+----------+------------------------------------------+---------------------+
|  9 | Алиса | Зайцева     | dharcasei@dailymotion.com | 4568198247 | f      | 1989-04-03 | Воронеж   |     NULL | ea63b484704b7a8316da4025260b864453adb948 | 2020-09-25 22:09:27 |
| 10 | Ольга | Застрожнова | drouthamj@senate.gov      | 9259428337 | f      | 1983-05-07 | Москва    |     NULL | 9b1f31426e9caf75d46b9b4a7c58c1941daa33f0 | 2020-09-25 22:09:27 |
| 11 | Ирина | Сушкова     | eshetliff0@virginia.edu   | 9442875153 | f      | 1984-12-19 | Волгоград |     NULL | 9d0f9f7cdbe467af211a5d5bc91e2e16da891521 | 2020-09-25 22:09:27 |
+----+-------+-------------+---------------------------+------------+--------+------------+-----------+----------+------------------------------------------+---------------------+
select concat(surname,' ',name) persons from users;
+-----------------------+
| persons               |
+-----------------------+
| Ворфоломеев Александр |
| Калинин Александр     |
| Пономарев Александр   |
| Пономарев Александр   |
| Федоров Александр     |
| Алехин Алексей        |
| Болгов Алексей        |
| Болгов Алексей        |
| Метлицкий Алексей     |
| Петров Алексей        |
| Самсонов Алексей      |
| Самсонов Алексей      |
| Суворов Алексей       |
| Тимошенко Алексей     |
| Зайцева Алиса         |
| Толмачева Алла        |
| Бурмистрова Анастасия |
| Рыкунова Анастасия    |
| Рыкунова Анастасия    |
| Буланый Андрей        |
| Косяков Андрей        |
| Мошкин Андрей         |
| Бавыкина Анна         |
| Колтакова Анна        |
| Полуэктова Анна       |
| Яньшина Анна          |
| Платошкина Валерия    |
| Лунева Виктория       |
| Бредихина Виталия     |
| Воробьев Владимир     |
| Полищук Владимир      |
| Гамов Вячеслав        |
| Допперт Вячеслав      |
| Погорельский Вячеслав |
| Максимова Галина      |
| Рукавицына Галина     |
| Рукавицына Галина     |
| Попова Дарья          |
| Древаль Дмитрий       |
| Древаль Дмитрий       |
| Косяков Дмитрий       |
| Лопухов Дмитрий       |
| Попов Дмитрий         |
| Попов Дмитрий         |
| Смольянинов Дмитрий   |
| Бучнев Евгений        |
| Волынкин Евгений      |
| Красавин Евгений      |
| Турбин Евгений        |
| Кривцова Евгения      |
| Мельченко Евгения     |
| Богомолова Екатерина  |
| Богомолова Екатерина  |
| Власова Екатерина     |
| Кретинина Екатерина   |
| Паршина Екатерина     |
| Паршина Екатерина     |
| Попова Екатерина      |
| Соколова Екатерина    |
| Соколова Екатерина    |
| Шипилова Екатерина    |
| Бумакова Елена        |
| Воронова Елена        |
| Михайлова Елена       |
| Нагина Елена          |
| Рыжкова Елена         |
| Селиванова Елена      |
| Стрыгина Елена        |
| Янкова Елена          |
| Токарев Игорь         |
| Дибцева Инна          |
| Дибцева Инна          |
| Воронюк Ираида        |
| Анисимова Ирина       |
| Гончарова Ирина       |
| Лакомова Ирина        |
| Сидельникова Ирина    |
| Сушкова Ирина         |
| Черникова Ирина       |
| Корчагина Любовь      |
| Чиликова Любовь       |
| Дадонова Людмила      |
| Скаба Людмила         |
| Бахтерев Максим       |
| Дубатовкин Максим     |
| Дубоваткин Максим     |
| Паршин Максим         |
| Попов Максим          |
| Овчинникова Маргарита |
| Голощапова Марина     |
| Голощапова Марина     |
| Закусилова Марина     |
| Киреева Марина        |
| Свиридова Марина      |
| Семикоз Марина        |
| Ефимова Мария         |
| Тафинцева Мария       |
| Назарьев Михаил       |
| Хрипков Михаил        |
| Домарева Наталья      |
| Заводскова Наталья    |
| Мироненко Наталья     |
| Трубицына Наталья     |
| Рыкунов Никита        |
| Рыкунов Никита        |
| Пивоваров Николай     |
| Сидоров Николай       |
| Аксененкова Ольга     |
| Застрожнова Ольга     |
| Кумачова Ольга        |
| Лохмачева Ольга       |
| Мордасова Ольга       |
| Никулина Ольга        |
| Черникова Ольга       |
| Щербинина Ольга       |
| Трунтаев Павел        |
| Анисимов Сергей       |
| Воронин Сергей        |
| Лисовой Сергей        |
| Простаков Сергей      |
| Простаков Сергей      |
| Цурканов Сергей       |
| Светляков Станислав   |
| Асеева Татьяна        |
| Афанасьева Татьяна    |
| Афанасьева Татьяна    |
| Переславцева Татьяна  |
| Ситало Татьяна        |
| Белоусова Эльвира     |
| Азарова Юлия          |
| Баранова Юлия         |
| Кондратьева Юлия      |
| Косарева Юлия         |
| Максименко Юлия       |
| Печенкина Юлия        |
| Черепнина Юлия        |
| Волчкевич Юрий        |
| Довка Юрий            |
| Саблин Юрий           |
| Саблин Юрий           |
+-----------------------+
select concat(SUBSTRING(name,1,1), '. ',surname) persons from users;
+-----------------+
| persons         |
+-----------------+
| А. Ворфоломеев  |
| А. Калинин      |
| А. Пономарев    |
| А. Пономарев    |
| А. Федоров      |
| А. Алехин       |
| А. Болгов       |
| А. Болгов       |
| А. Метлицкий    |
| А. Петров       |
| А. Самсонов     |
| А. Самсонов     |
| А. Суворов      |
| А. Тимошенко    |
| А. Зайцева      |
| А. Толмачева    |
| А. Бурмистрова  |
| А. Рыкунова     |
| А. Рыкунова     |
| А. Буланый      |
| А. Косяков      |
| А. Мошкин       |
| А. Бавыкина     |
| А. Колтакова    |
| А. Полуэктова   |
| А. Яньшина      |
| В. Платошкина   |
| В. Лунева       |
| В. Бредихина    |
| В. Воробьев     |
| В. Полищук      |
| В. Гамов        |
| В. Допперт      |
| В. Погорельский |
| Г. Максимова    |
| Г. Рукавицына   |
| Г. Рукавицына   |
| Д. Попова       |
| Д. Древаль      |
| Д. Древаль      |
| Д. Косяков      |
| Д. Лопухов      |
| Д. Попов        |
| Д. Попов        |
| Д. Смольянинов  |
| Е. Бучнев       |
| Е. Волынкин     |
| Е. Красавин     |
| Е. Турбин       |
| Е. Кривцова     |
| Е. Мельченко    |
| Е. Богомолова   |
| Е. Богомолова   |
| Е. Власова      |
| Е. Кретинина    |
| Е. Паршина      |
| Е. Паршина      |
| Е. Попова       |
| Е. Соколова     |
| Е. Соколова     |
| Е. Шипилова     |
| Е. Бумакова     |
| Е. Воронова     |
| Е. Михайлова    |
| Е. Нагина       |
| Е. Рыжкова      |
| Е. Селиванова   |
| Е. Стрыгина     |
| Е. Янкова       |
| И. Токарев      |
| И. Дибцева      |
| И. Дибцева      |
| И. Воронюк      |
| И. Анисимова    |
| И. Гончарова    |
| И. Лакомова     |
| И. Сидельникова |
| И. Сушкова      |
| И. Черникова    |
| Л. Корчагина    |
| Л. Чиликова     |
| Л. Дадонова     |
| Л. Скаба        |
| М. Бахтерев     |
| М. Дубатовкин   |
| М. Дубоваткин   |
| М. Паршин       |
| М. Попов        |
| М. Овчинникова  |
| М. Голощапова   |
| М. Голощапова   |
| М. Закусилова   |
| М. Киреева      |
| М. Свиридова    |
| М. Семикоз      |
| М. Ефимова      |
| М. Тафинцева    |
| М. Назарьев     |
| М. Хрипков      |
| Н. Домарева     |
| Н. Заводскова   |
| Н. Мироненко    |
| Н. Трубицына    |
| Н. Рыкунов      |
| Н. Рыкунов      |
| Н. Пивоваров    |
| Н. Сидоров      |
| О. Аксененкова  |
| О. Застрожнова  |
| О. Кумачова     |
| О. Лохмачева    |
| О. Мордасова    |
| О. Никулина     |
| О. Черникова    |
| О. Щербинина    |
| П. Трунтаев     |
| С. Анисимов     |
| С. Воронин      |
| С. Лисовой      |
| С. Простаков    |
| С. Простаков    |
| С. Цурканов     |
| С. Светляков    |
| Т. Асеева       |
| Т. Афанасьева   |
| Т. Афанасьева   |
| Т. Переславцева |
| Т. Ситало       |
| Э. Белоусова    |
| Ю. Азарова      |
| Ю. Баранова     |
| Ю. Кондратьева  |
| Ю. Косарева     |
| Ю. Максименко   |
| Ю. Печенкина    |
| Ю. Черепнина    |
| Ю. Волчкевич    |
| Ю. Довка        |
| Ю. Саблин       |
| Ю. Саблин       |
+-----------------+
select distinct hometown from users;
+-----------------+
| hometown        |
+-----------------+
| Москва          |
| Воронеж         |
| Самара          |
| Новосибирск     |
| Пермь           |
| Красноярск      |
| Тюмень          |
| Екатеринбург    |
| Волгоград       |
| Казань          |
| Тольятти        |
| Краснодар       |
| Челябинск       |
| Саратов         |
| Нижний Новгород |
| Ростов-на-Дону  |
| Санкт-Петербург |
| Уфа             |
| Омск            |
+-----------------+
select * from users where hometown = 'Санкт-Петербург';
+-----+---------+----------+----------------------------------+------------+--------+------------+-----------------+----------+------------------------------------------+---------------------+
| id  | name    | surname  | email                            | phone      | gender | birthday   | hometown        | photo_id | pass                                     | created_at          |
+-----+---------+----------+----------------------------------+------------+--------+------------+-----------------+----------+------------------------------------------+---------------------+
|  33 | Максим  | Попов    | cwillimentm@livejournal.com      | 6549392162 | m      | 1989-05-01 | Санкт-Петербург |     NULL | 1bc1a0536d38b6216b74a2819436ba0a925206c8 | 2020-09-25 22:09:27 |
|  42 | Максим  | Бахтерев | gmedlerv@desdev.cn               | 7849899275 | m      | 1986-12-27 | Санкт-Петербург |     NULL | 4613c2845f696b03d37b801e0cdab710fb6beaea | 2020-09-25 22:09:27 |
|  47 | Алексей | Суворов  | acorrington10@barnesandnoble.com | 2034001863 | m      | 1984-08-12 | Санкт-Петербург |     NULL | 7fe1c2e54c91bb20754abe19f3633ecb294f69ce | 2020-09-25 22:09:27 |
|  53 | Татьяна | Ситало   | ssullly16@umn.edu                | 2822890926 | f      | 1988-02-03 | Санкт-Петербург |     NULL | e02ed0156bcadbc65c407e4f6d0c907449dcfb49 | 2020-09-25 22:09:27 |
|  62 | Ирина   | Лакомова | ssimeons1f@scribd.com            | 8902784216 | f      | 1981-11-11 | Санкт-Петербург |     NULL | b48da6b9f87aa771566ab1d75cb69081105f6a50 | 2020-09-25 22:09:27 |
| 119 | Максим  | Паршин   | ebankei@senate.gov               | 1672124574 | m      | 1985-04-26 | Санкт-Петербург |     NULL | 7bc86a9ac9b93f30c1af49c7423cc27c2773bd57 | 2020-09-25 22:09:27 |
+-----+---------+----------+----------------------------------+------------+--------+------------+-----------------+----------+------------------------------------------+---------------------+
select name,surname, birthday 
	from users where birthday >= '1981-12-25' 
	order by birthday;
+-----------+--------------+------------+
| name      | surname      | birthday   |
+-----------+--------------+------------+
| Евгений   | Бучнев       | 1982-01-29 |
| Дмитрий   | Попов        | 1982-02-26 |
| Екатерина | Богомолова   | 1982-03-10 |
| Сергей    | Анисимов     | 1982-03-13 |
| Елена     | Селиванова   | 1982-03-27 |
| Юлия      | Черепнина    | 1982-04-09 |
| Анна      | Бавыкина     | 1982-04-19 |
| Людмила   | Дадонова     | 1982-06-07 |
| Екатерина | Соколова     | 1982-08-25 |
| Ирина     | Черникова    | 1982-10-20 |
| Александр | Калинин      | 1982-10-29 |
| Вячеслав  | Гамов        | 1982-11-10 |
| Юрий      | Саблин       | 1982-11-23 |
| Марина    | Свиридова    | 1982-12-26 |
| Дмитрий   | Древаль      | 1983-01-19 |
| Ольга     | Щербинина    | 1983-02-13 |
| Дмитрий   | Косяков      | 1983-03-05 |
| Ираида    | Воронюк      | 1983-04-04 |
| Ольга     | Застрожнова  | 1983-05-07 |
| Дмитрий   | Древаль      | 1983-05-17 |
| Александр | Ворфоломеев  | 1983-09-08 |
| Юлия      | Азарова      | 1983-10-13 |
| Дмитрий   | Лопухов      | 1983-11-03 |
| Любовь    | Чиликова     | 1983-11-22 |
| Екатерина | Власова      | 1984-04-11 |
| Марина    | Киреева      | 1984-04-26 |
| Ольга     | Аксененкова  | 1984-05-14 |
| Екатерина | Паршина      | 1984-05-16 |
| Станислав | Светляков    | 1984-05-19 |
| Максим    | Дубоваткин   | 1984-05-26 |
| Никита    | Рыкунов      | 1984-06-03 |
| Михаил    | Назарьев     | 1984-06-06 |
| Александр | Пономарев    | 1984-07-17 |
| Алексей   | Суворов      | 1984-08-12 |
| Алла      | Толмачева    | 1984-08-18 |
| Ирина     | Гончарова    | 1984-08-24 |
| Екатерина | Соколова     | 1984-09-14 |
| Николай   | Сидоров      | 1984-09-21 |
| Евгений   | Красавин     | 1984-10-16 |
| Галина    | Рукавицына   | 1984-11-06 |
| Анна      | Яньшина      | 1984-11-18 |
| Дарья     | Попова       | 1984-11-28 |
| Екатерина | Шипилова     | 1984-11-30 |
| Ирина     | Сушкова      | 1984-12-19 |
| Максим    | Паршин       | 1985-04-26 |
| Виктория  | Лунева       | 1985-04-28 |
| Сергей    | Воронин      | 1985-06-21 |
| Игорь     | Токарев      | 1985-07-08 |
| Сергей    | Цурканов     | 1985-07-24 |
| Татьяна   | Переславцева | 1985-08-23 |
| Наталья   | Домарева     | 1985-09-18 |
| Максим    | Дубатовкин   | 1985-10-13 |
| Инна      | Дибцева      | 1986-01-05 |
| Марина    | Голощапова   | 1986-02-11 |
| Анастасия | Рыкунова     | 1986-02-13 |
| Павел     | Трунтаев     | 1986-03-07 |
| Алексей   | Самсонов     | 1986-03-09 |
| Галина    | Рукавицына   | 1986-03-14 |
| Юлия      | Баранова     | 1986-04-11 |
| Елена     | Рыжкова      | 1986-06-25 |
| Наталья   | Мироненко    | 1986-07-13 |
| Алексей   | Болгов       | 1986-08-21 |
| Наталья   | Заводскова   | 1986-10-29 |
| Александр | Пономарев    | 1986-12-08 |
| Инна      | Дибцева      | 1986-12-17 |
| Максим    | Бахтерев     | 1986-12-27 |
| Александр | Федоров      | 1986-12-29 |
| Елена     | Бумакова     | 1987-01-10 |
| Сергей    | Простаков    | 1987-02-03 |
| Михаил    | Хрипков      | 1987-02-04 |
| Мария     | Тафинцева    | 1987-02-07 |
| Юлия      | Печенкина    | 1987-03-26 |
| Татьяна   | Афанасьева   | 1987-05-15 |
| Алексей   | Петров       | 1987-06-13 |
| Евгений   | Турбин       | 1987-08-18 |
| Наталья   | Трубицына    | 1987-08-20 |
| Екатерина | Паршина      | 1987-08-27 |
| Дмитрий   | Смольянинов  | 1987-10-17 |
| Владимир  | Полищук      | 1987-10-25 |
| Юлия      | Косарева     | 1987-11-04 |
| Алексей   | Болгов       | 1987-11-26 |
| Евгения   | Кривцова     | 1987-11-28 |
| Юлия      | Максименко   | 1987-11-29 |
| Эльвира   | Белоусова    | 1987-12-19 |
| Вячеслав  | Погорельский | 1988-01-05 |
| Татьяна   | Ситало       | 1988-02-03 |
| Юрий      | Саблин       | 1988-02-24 |
| Ирина     | Сидельникова | 1988-03-18 |
| Елена     | Стрыгина     | 1988-05-04 |
| Галина    | Максимова    | 1988-05-14 |
| Николай   | Пивоваров    | 1988-05-20 |
| Мария     | Ефимова      | 1988-06-04 |
| Марина    | Голощапова   | 1988-06-07 |
| Сергей    | Лисовой      | 1988-08-03 |
| Елена     | Нагина       | 1988-08-10 |
| Виталия   | Бредихина    | 1988-09-01 |
| Елена     | Янкова       | 1988-11-26 |
| Екатерина | Богомолова   | 1988-12-27 |
| Екатерина | Попова       | 1989-01-09 |
| Людмила   | Скаба        | 1989-01-28 |
| Анна      | Колтакова    | 1989-03-04 |
| Алиса     | Зайцева      | 1989-04-03 |
| Максим    | Попов        | 1989-05-01 |
| Татьяна   | Асеева       | 1989-05-27 |
| Андрей    | Буланый      | 1989-06-04 |
| Анастасия | Рыкунова     | 1989-06-12 |
| Екатерина | Кретинина    | 1989-07-09 |
| Алексей   | Тимошенко    | 1989-09-17 |
| Ольга     | Никулина     | 1989-09-28 |
| Ирина     | Анисимова    | 1989-11-15 |
+-----------+--------------+------------+
select name,surname, birthday 
	from users where birthday >= '1981-12-25' and birthday <= '1987-11-03';

select name,surname, birthday 
	from users where birthday between '1981-12-25' and '1983-11-03';
+-----------+-------------+------------+
| name      | surname     | birthday   |
+-----------+-------------+------------+
| Ирина     | Черникова   | 1982-10-20 |
| Ольга     | Застрожнова | 1983-05-07 |
| Анна      | Бавыкина    | 1982-04-19 |
| Елена     | Селиванова  | 1982-03-27 |
| Дмитрий   | Лопухов     | 1983-11-03 |
| Юлия      | Черепнина   | 1982-04-09 |
| Евгений   | Бучнев      | 1982-01-29 |
| Марина    | Свиридова   | 1982-12-26 |
| Ираида    | Воронюк     | 1983-04-04 |
| Юлия      | Азарова     | 1983-10-13 |
| Людмила   | Дадонова    | 1982-06-07 |
| Екатерина | Богомолова  | 1982-03-10 |
| Дмитрий   | Древаль     | 1983-01-19 |
| Дмитрий   | Косяков     | 1983-03-05 |
| Сергей    | Анисимов    | 1982-03-13 |
| Вячеслав  | Гамов       | 1982-11-10 |
| Александр | Калинин     | 1982-10-29 |
| Дмитрий   | Попов       | 1982-02-26 |
| Юрий      | Саблин      | 1982-11-23 |
| Екатерина | Соколова    | 1982-08-25 |
| Дмитрий   | Древаль     | 1983-05-17 |
| Александр | Ворфоломеев | 1983-09-08 |
| Ольга     | Щербинина   | 1983-02-13 |
+-----------+-------------+------------+

select name,surname,hometown from users where hometown != 'Казань';
+-----------+--------------+-----------------+
| name      | surname      | hometown        |
+-----------+--------------+-----------------+
| Ольга     | Кумачова     | Москва          |
| Дарья     | Попова       | Воронеж         |
| Ирина     | Гончарова    | Самара          |
| Марина    | Закусилова   | Новосибирск     |
| Елена     | Нагина       | Пермь           |
| Валерия   | Платошкина   | Красноярск      |
| Станислав | Светляков    | Тюмень          |
| Ирина     | Черникова    | Екатеринбург    |
| Алиса     | Зайцева      | Воронеж         |
| Ольга     | Застрожнова  | Москва          |
| Ирина     | Сушкова      | Волгоград       |
| Елена     | Михайлова    | Красноярск      |
| Любовь    | Чиликова     | Тольятти        |
| Елена     | Селиванова   | Волгоград       |
| Сергей    | Лисовой      | Краснодар       |
| Михаил    | Назарьев     | Волгоград       |
| Алексей   | Метлицкий    | Краснодар       |
| Эльвира   | Белоусова    | Челябинск       |
| Екатерина | Власова      | Краснодар       |
| Юрий      | Волчкевич    | Воронеж         |
| Евгений   | Волынкин     | Саратов         |
| Владимир  | Воробьев     | Красноярск      |
| Дмитрий   | Лопухов      | Нижний Новгород |
| Ольга     | Лохмачева    | Самара          |
| Вячеслав  | Погорельский | Пермь           |
| Владимир  | Полищук      | Ростов-на-Дону  |
| Игорь     | Токарев      | Новосибирск     |
| Евгений   | Турбин       | Москва          |
| Анна      | Колтакова    | Пермь           |
| Максим    | Попов        | Санкт-Петербург |
| Юлия      | Черепнина    | Самара          |
| Андрей    | Мошкин       | Екатеринбург    |
| Евгений   | Бучнев       | Тюмень          |
| Екатерина | Кретинина    | Пермь           |
| Павел     | Трунтаев     | Уфа             |
| Юлия      | Печенкина    | Краснодар       |
| Михаил    | Хрипков      | Новосибирск     |
| Ольга     | Черникова    | Самара          |
| Максим    | Бахтерев     | Санкт-Петербург |
| Екатерина | Попова       | Нижний Новгород |
| Алла      | Толмачева    | Омск            |
| Алексей   | Суворов      | Санкт-Петербург |
| Виталия   | Бредихина    | Пермь           |
| Елена     | Бумакова     | Москва          |
| Галина    | Максимова    | Уфа             |
| Евгения   | Мельченко    | Самара          |
| Татьяна   | Переславцева | Омск            |
| Татьяна   | Ситало       | Санкт-Петербург |
| Ирина     | Анисимова    | Нижний Новгород |
| Наталья   | Домарева     | Уфа             |
| Ирина     | Сидельникова | Красноярск      |
| Ираида    | Воронюк      | Москва          |
| Юлия      | Кондратьева  | Уфа             |
| Юлия      | Косарева     | Новосибирск     |
| Ирина     | Лакомова     | Санкт-Петербург |
| Анна      | Полуэктова   | Уфа             |
| Ольга     | Никулина     | Омск            |
| Юлия      | Максименко   | Новосибирск     |
| Татьяна   | Асеева       | Волгоград       |
| Екатерина | Шипилова     | Пермь           |
| Елена     | Янкова       | Новосибирск     |
| Евгений   | Красавин     | Ростов-на-Дону  |
| Анна      | Яньшина      | Воронеж         |
| Наталья   | Мироненко    | Екатеринбург    |
| Людмила   | Дадонова     | Краснодар       |
| Ольга     | Мордасова    | Краснодар       |
| Елена     | Рыжкова      | Новосибирск     |
| Екатерина | Богомолова   | Пермь           |
| Марина    | Голощапова   | Москва          |
| Инна      | Дибцева      | Ростов-на-Дону  |
| Дмитрий   | Попов        | Ростов-на-Дону  |
| Галина    | Рукавицына   | Новосибирск     |
| Никита    | Рыкунов      | Москва          |
| Анастасия | Рыкунова     | Красноярск      |
| Юрий      | Саблин       | Тюмень          |
| Алексей   | Самсонов     | Екатеринбург    |
| Екатерина | Соколова     | Волгоград       |
| Татьяна   | Афанасьева   | Москва          |
| Алексей   | Болгов       | Омск            |
| Дмитрий   | Древаль      | Краснодар       |
| Максим    | Дубатовкин   | Москва          |
| Сергей    | Простаков    | Воронеж         |
| Александр | Пономарев    | Саратов         |
| Дмитрий   | Косяков      | Краснодар       |
| Людмила   | Скаба        | Воронеж         |
| Дмитрий   | Смольянинов  | Тольятти        |
| Вячеслав  | Допперт      | Тюмень          |
| Елена     | Стрыгина     | Волгоград       |
| Сергей    | Анисимов     | Саратов         |
| Вячеслав  | Гамов        | Красноярск      |
| Юрий      | Довка        | Саратов         |
| Александр | Калинин      | Воронеж         |
| Николай   | Пивоваров    | Краснодар       |
| Алексей   | Тимошенко    | Саратов         |
| Екатерина | Богомолова   | Тольятти        |
| Марина    | Голощапова   | Екатеринбург    |
| Инна      | Дибцева      | Волгоград       |
| Дмитрий   | Попов        | Красноярск      |
| Галина    | Рукавицына   | Челябинск       |
| Никита    | Рыкунов      | Краснодар       |
| Анастасия | Рыкунова     | Тюмень          |
| Юрий      | Саблин       | Уфа             |
| Алексей   | Самсонов     | Самара          |
| Екатерина | Соколова     | Пермь           |
| Татьяна   | Афанасьева   | Волгоград       |
| Алексей   | Болгов       | Челябинск       |
| Дмитрий   | Древаль      | Красноярск      |
| Максим    | Дубоваткин   | Волгоград       |
| Сергей    | Простаков    | Уфа             |
| Александр | Пономарев    | Пермь           |
| Максим    | Паршин       | Санкт-Петербург |
| Алексей   | Петров       | Краснодар       |
| Николай   | Сидоров      | Самара          |
| Александр | Ворфоломеев  | Челябинск       |
| Алексей   | Алехин       | Екатеринбург    |
| Екатерина | Паршина      | Челябинск       |
| Наталья   | Трубицына    | Москва          |
| Екатерина | Паршина      | Челябинск       |
| Евгения   | Кривцова     | Красноярск      |
| Анастасия | Бурмистрова  | Уфа             |
| Елена     | Воронова     | Тольятти        |
| Наталья   | Заводскова   | Пермь           |
| Сергей    | Воронин      | Тюмень          |
| Юлия      | Баранова     | Челябинск       |
| Марина    | Семикоз      | Самара          |
| Мария     | Тафинцева    | Екатеринбург    |
| Ольга     | Аксененкова  | Пермь           |
| Виктория  | Лунева       | Уфа             |
| Александр | Федоров      | Саратов         |
| Любовь    | Корчагина    | Омск            |
| Ольга     | Щербинина    | Нижний Новгород |
+-----------+--------------+-----------------+
select name,surname,hometown from users where hometown <> 'Омск';
+-----------+--------------+-----------------+
| name      | surname      | hometown        |
+-----------+--------------+-----------------+
| Ольга     | Кумачова     | Москва          |
| Дарья     | Попова       | Воронеж         |
| Ирина     | Гончарова    | Самара          |
| Марина    | Закусилова   | Новосибирск     |
| Елена     | Нагина       | Пермь           |
| Валерия   | Платошкина   | Красноярск      |
| Станислав | Светляков    | Тюмень          |
| Ирина     | Черникова    | Екатеринбург    |
| Алиса     | Зайцева      | Воронеж         |
| Ольга     | Застрожнова  | Москва          |
| Ирина     | Сушкова      | Волгоград       |
| Анна      | Бавыкина     | Казань          |
| Марина    | Киреева      | Казань          |
| Елена     | Михайлова    | Красноярск      |
| Любовь    | Чиликова     | Тольятти        |
| Елена     | Селиванова   | Волгоград       |
| Сергей    | Лисовой      | Краснодар       |
| Михаил    | Назарьев     | Волгоград       |
| Алексей   | Метлицкий    | Краснодар       |
| Эльвира   | Белоусова    | Челябинск       |
| Екатерина | Власова      | Краснодар       |
| Юрий      | Волчкевич    | Воронеж         |
| Евгений   | Волынкин     | Саратов         |
| Владимир  | Воробьев     | Красноярск      |
| Дмитрий   | Лопухов      | Нижний Новгород |
| Ольга     | Лохмачева    | Самара          |
| Маргарита | Овчинникова  | Казань          |
| Вячеслав  | Погорельский | Пермь           |
| Владимир  | Полищук      | Ростов-на-Дону  |
| Игорь     | Токарев      | Новосибирск     |
| Евгений   | Турбин       | Москва          |
| Анна      | Колтакова    | Пермь           |
| Максим    | Попов        | Санкт-Петербург |
| Юлия      | Черепнина    | Самара          |
| Андрей    | Мошкин       | Екатеринбург    |
| Евгений   | Бучнев       | Тюмень          |
| Екатерина | Кретинина    | Пермь           |
| Павел     | Трунтаев     | Уфа             |
| Юлия      | Печенкина    | Краснодар       |
| Михаил    | Хрипков      | Новосибирск     |
| Ольга     | Черникова    | Самара          |
| Максим    | Бахтерев     | Санкт-Петербург |
| Екатерина | Попова       | Нижний Новгород |
| Марина    | Свиридова    | Казань          |
| Сергей    | Цурканов     | Казань          |
| Алексей   | Суворов      | Санкт-Петербург |
| Виталия   | Бредихина    | Пермь           |
| Елена     | Бумакова     | Москва          |
| Галина    | Максимова    | Уфа             |
| Евгения   | Мельченко    | Самара          |
| Татьяна   | Ситало       | Санкт-Петербург |
| Ирина     | Анисимова    | Нижний Новгород |
| Наталья   | Домарева     | Уфа             |
| Ирина     | Сидельникова | Красноярск      |
| Ираида    | Воронюк      | Москва          |
| Юлия      | Азарова      | Казань          |
| Мария     | Ефимова      | Казань          |
| Юлия      | Кондратьева  | Уфа             |
| Юлия      | Косарева     | Новосибирск     |
| Ирина     | Лакомова     | Санкт-Петербург |
| Анна      | Полуэктова   | Уфа             |
| Юлия      | Максименко   | Новосибирск     |
| Татьяна   | Асеева       | Волгоград       |
| Екатерина | Шипилова     | Пермь           |
| Елена     | Янкова       | Новосибирск     |
| Евгений   | Красавин     | Ростов-на-Дону  |
| Анна      | Яньшина      | Воронеж         |
| Наталья   | Мироненко    | Екатеринбург    |
| Людмила   | Дадонова     | Краснодар       |
| Ольга     | Мордасова    | Краснодар       |
| Елена     | Рыжкова      | Новосибирск     |
| Екатерина | Богомолова   | Пермь           |
| Марина    | Голощапова   | Москва          |
| Инна      | Дибцева      | Ростов-на-Дону  |
| Дмитрий   | Попов        | Ростов-на-Дону  |
| Галина    | Рукавицына   | Новосибирск     |
| Никита    | Рыкунов      | Москва          |
| Анастасия | Рыкунова     | Красноярск      |
| Юрий      | Саблин       | Тюмень          |
| Алексей   | Самсонов     | Екатеринбург    |
| Екатерина | Соколова     | Волгоград       |
| Татьяна   | Афанасьева   | Москва          |
| Дмитрий   | Древаль      | Краснодар       |
| Максим    | Дубатовкин   | Москва          |
| Сергей    | Простаков    | Воронеж         |
| Александр | Пономарев    | Саратов         |
| Андрей    | Косяков      | Казань          |
| Дмитрий   | Косяков      | Краснодар       |
| Людмила   | Скаба        | Воронеж         |
| Дмитрий   | Смольянинов  | Тольятти        |
| Вячеслав  | Допперт      | Тюмень          |
| Елена     | Стрыгина     | Волгоград       |
| Сергей    | Анисимов     | Саратов         |
| Вячеслав  | Гамов        | Красноярск      |
| Юрий      | Довка        | Саратов         |
| Александр | Калинин      | Воронеж         |
| Николай   | Пивоваров    | Краснодар       |
| Алексей   | Тимошенко    | Саратов         |
| Екатерина | Богомолова   | Тольятти        |
| Марина    | Голощапова   | Екатеринбург    |
| Инна      | Дибцева      | Волгоград       |
| Дмитрий   | Попов        | Красноярск      |
| Галина    | Рукавицына   | Челябинск       |
| Никита    | Рыкунов      | Краснодар       |
| Анастасия | Рыкунова     | Тюмень          |
| Юрий      | Саблин       | Уфа             |
| Алексей   | Самсонов     | Самара          |
| Екатерина | Соколова     | Пермь           |
| Татьяна   | Афанасьева   | Волгоград       |
| Алексей   | Болгов       | Челябинск       |
| Дмитрий   | Древаль      | Красноярск      |
| Максим    | Дубоваткин   | Волгоград       |
| Сергей    | Простаков    | Уфа             |
| Александр | Пономарев    | Пермь           |
| Максим    | Паршин       | Санкт-Петербург |
| Алексей   | Петров       | Краснодар       |
| Николай   | Сидоров      | Самара          |
| Александр | Ворфоломеев  | Челябинск       |
| Алексей   | Алехин       | Екатеринбург    |
| Екатерина | Паршина      | Челябинск       |
| Наталья   | Трубицына    | Москва          |
| Екатерина | Паршина      | Челябинск       |
| Евгения   | Кривцова     | Красноярск      |
| Анастасия | Бурмистрова  | Уфа             |
| Елена     | Воронова     | Тольятти        |
| Наталья   | Заводскова   | Пермь           |
| Сергей    | Воронин      | Тюмень          |
| Юлия      | Баранова     | Челябинск       |
| Марина    | Семикоз      | Самара          |
| Андрей    | Буланый      | Казань          |
| Мария     | Тафинцева    | Екатеринбург    |
| Ольга     | Аксененкова  | Пермь           |
| Виктория  | Лунева       | Уфа             |
| Александр | Федоров      | Саратов         |
| Ольга     | Щербинина    | Нижний Новгород |
+-----------+--------------+-----------------+

select name,surname,hometown from users where hometown in ('Тольятти', 'Санкт-Петербург', 'Красноярск');

+-----------+--------------+-----------------+
| name      | surname      | hometown        |
+-----------+--------------+-----------------+
| Валерия   | Платошкина   | Красноярск      |
| Елена     | Михайлова    | Красноярск      |
| Любовь    | Чиликова     | Тольятти        |
| Владимир  | Воробьев     | Красноярск      |
| Максим    | Попов        | Санкт-Петербург |
| Максим    | Бахтерев     | Санкт-Петербург |
| Алексей   | Суворов      | Санкт-Петербург |
| Татьяна   | Ситало       | Санкт-Петербург |
| Ирина     | Сидельникова | Красноярск      |
| Ирина     | Лакомова     | Санкт-Петербург |
| Анастасия | Рыкунова     | Красноярск      |
| Дмитрий   | Смольянинов  | Тольятти        |
| Вячеслав  | Гамов        | Красноярск      |
| Екатерина | Богомолова   | Тольятти        |
| Дмитрий   | Попов        | Красноярск      |
| Дмитрий   | Древаль      | Красноярск      |
| Максим    | Паршин       | Санкт-Петербург |
| Евгения   | Кривцова     | Красноярск      |
| Елена     | Воронова     | Тольятти        |
+-----------+--------------+-----------------+

select name,surname,hometown from users 
	where hometown = 'Москва'
	or hometown = 'Тольятти'
 	or hometown = 'Казань';
+-----------+-------------+----------+
| name      | surname     | hometown |
+-----------+-------------+----------+
| Ольга     | Кумачова    | Москва   |
| Ольга     | Застрожнова | Москва   |
| Анна      | Бавыкина    | Казань   |
| Марина    | Киреева     | Казань   |
| Любовь    | Чиликова    | Тольятти |
| Маргарита | Овчинникова | Казань   |
| Евгений   | Турбин      | Москва   |
| Марина    | Свиридова   | Казань   |
| Сергей    | Цурканов    | Казань   |
| Елена     | Бумакова    | Москва   |
| Ираида    | Воронюк     | Москва   |
| Юлия      | Азарова     | Казань   |
| Мария     | Ефимова     | Казань   |
| Марина    | Голощапова  | Москва   |
| Никита    | Рыкунов     | Москва   |
| Татьяна   | Афанасьева  | Москва   |
| Максим    | Дубатовкин  | Москва   |
| Андрей    | Косяков     | Казань   |
| Дмитрий   | Смольянинов | Тольятти |
| Екатерина | Богомолова  | Тольятти |
| Наталья   | Трубицына   | Москва   |
| Елена     | Воронова    | Тольятти |
| Андрей    | Буланый     | Казань   |
+-----------+-------------+----------+

select name,surname,hometown, gender from users 
	where (hometown = 'Красноярск' or hometown ='Тольятти') and gender='f';
+-----------+--------------+------------+--------+
| name      | surname      | hometown   | gender |
+-----------+--------------+------------+--------+
| Валерия   | Платошкина   | Красноярск | f      |
| Елена     | Михайлова    | Красноярск | f      |
| Любовь    | Чиликова     | Тольятти   | f      |
| Ирина     | Сидельникова | Красноярск | f      |
| Анастасия | Рыкунова     | Красноярск | f      |
| Екатерина | Богомолова   | Тольятти   | f      |
| Евгения   | Кривцова     | Красноярск | f      |
| Елена     | Воронова     | Тольятти   | f      |
+-----------+--------------+------------+--------+

select name,surname from users where surname like 'Бе%';

+---------+-----------+
| name    | surname   |
+---------+-----------+
| Эльвира | Белоусова |
+---------+-----------+

select name,surname from users where surname like '%ва';
+-----------+--------------+
| name      | surname      |
+-----------+--------------+
| Алиса     | Зайцева      |
| Алла      | Толмачева    |
| Анастасия | Бурмистрова  |
| Анастасия | Рыкунова     |
| Анастасия | Рыкунова     |
| Анна      | Колтакова    |
| Анна      | Полуэктова   |
| Виктория  | Лунева       |
| Галина    | Максимова    |
| Дарья     | Попова       |
| Евгения   | Кривцова     |
| Екатерина | Богомолова   |
| Екатерина | Богомолова   |
| Екатерина | Власова      |
| Екатерина | Попова       |
| Екатерина | Соколова     |
| Екатерина | Соколова     |
| Екатерина | Шипилова     |
| Елена     | Бумакова     |
| Елена     | Воронова     |
| Елена     | Михайлова    |
| Елена     | Рыжкова      |
| Елена     | Селиванова   |
| Елена     | Янкова       |
| Инна      | Дибцева      |
| Инна      | Дибцева      |
| Ирина     | Анисимова    |
| Ирина     | Гончарова    |
| Ирина     | Лакомова     |
| Ирина     | Сидельникова |
| Ирина     | Сушкова      |
| Ирина     | Черникова    |
| Любовь    | Чиликова     |
| Людмила   | Дадонова     |
| Маргарита | Овчинникова  |
| Марина    | Голощапова   |
| Марина    | Голощапова   |
| Марина    | Закусилова   |
| Марина    | Киреева      |
| Марина    | Свиридова    |
| Мария     | Ефимова      |
| Мария     | Тафинцева    |
| Наталья   | Домарева     |
| Наталья   | Заводскова   |
| Ольга     | Аксененкова  |
| Ольга     | Застрожнова  |
| Ольга     | Кумачова     |
| Ольга     | Лохмачева    |
| Ольга     | Мордасова    |
| Ольга     | Черникова    |
| Татьяна   | Асеева       |
| Татьяна   | Афанасьева   |
| Татьяна   | Афанасьева   |
| Татьяна   | Переславцева |
| Эльвира   | Белоусова    |
| Юлия      | Азарова      |
| Юлия      | Баранова     |
| Юлия      | Кондратьева  |
| Юлия      | Косарева     |
+-----------+--------------+
select name,surname from users where surname like 'Бе_ва';
Empty set (0.00 sec)

select count(*) from users;
+----------+
| count(*) |
+----------+
|      140 |
+----------+
select min(birthday) from users;
+---------------+
| min(birthday) |
+---------------+
| 1977-01-04    |
+---------------+

select gender, count(*) from users group by gender;
+--------+----------+
| gender | count(*) |
+--------+----------+
| f      |       83 |
| m      |       57 |
+--------+----------+

select gender, count(*) from users group by gender having count(*) >=10;
+--------+----------+
| gender | count(*) |
+--------+----------+
| f      |       83 |
| m      |       57 |
+--------+----------+

select * from friend_requests where initiator_user_id = 1;
+-------------------+----------------+------------+---------------------+---------------------+
| initiator_user_id | target_user_id | status     | requested_at        | confirmed_at        |
+-------------------+----------------+------------+---------------------+---------------------+
|                 1 |            100 | unfriended | 2020-02-23 07:38:51 | 1985-08-07 02:25:47 |
+-------------------+----------------+------------+---------------------+---------------------+

-- UPDATE 
update friend_requests 
	set status = 'unfriended'
	where initiator_user_id = 41 and target_user_id = 59;
	Query OK, 1 row affected (0.00 sec)
	Rows matched: 1  Changed: 1  Warnings: 0
|                41 |             59 | unfriended | 2009-12-29 19:16:08 | 2020-10-02 13:12:14 |
    
	
-- TRUCATE 
delete from communities where name = 'R%';
delete from communities where id between 5 and 21;

+-----+----------------------------------------------------------+
| id  | name                                                     |
+-----+----------------------------------------------------------+
|   9 | autem                                                    |
|  75 | Automated 4thgeneration matrix                           |
| 101 | Automated 4thgeneration matrix                           |
| 102 | Business-focused object-oriented implementation          |
|  58 | Centralized high-level hub                               |
| 103 | Centralized high-level hub                               |
|  41 | Centralized radical complexity                           |
| 104 | Centralized radical complexity                           |
|  51 | Cloned exuding time-frame                                |
| 105 | Cloned exuding time-frame                                |
| 106 | Configurable object-oriented task-force                  |
|  63 | Cross-group value-added alliance                         |
| 107 | Cross-group value-added alliance                         |
|  55 | Cross-platform fault-tolerant framework                  |
| 108 | Cross-platform fault-tolerant framework                  |
|  24 | Customer-focused systematic solution                     |
| 109 | Customer-focused systematic solution                     |
|  53 | De-engineered exuding info-mediaries                     |
| 110 | De-engineered exuding info-mediaries                     |
|  40 | Decentralized zerotolerance analyzer                     |
| 111 | Decentralized zerotolerance analyzer                     |
|  12 | dicta                                                    |
|  42 | Distributed multi-tasking circuit                        |
| 112 | Distributed multi-tasking circuit                        |
| 113 | Distributed responsive extranet                          |
|  59 | Diverse foreground hub                                   |
| 114 | Diverse foreground hub                                   |
|  60 | Diverse radical ability                                  |
| 115 | Diverse radical ability                                  |
|  22 | Diverse systematic structure                             |
| 116 | Diverse systematic structure                             |
|  94 | Down-sized mobile matrices                               |
| 117 | Down-sized mobile matrices                               |
| 100 | Down-sized non-volatile focusgroup                       |
| 118 | Down-sized non-volatile focusgroup                       |
|  79 | Enhanced 4thgeneration workforce                         |
| 119 | Enhanced 4thgeneration workforce                         |
|  13 | enim                                                     |
|  84 | Enterprise-wide 24hour instructionset                    |
| 120 | Enterprise-wide 24hour instructionset                    |
|  86 | Enterprise-wide client-server utilisation                |
| 121 | Enterprise-wide client-server utilisation                |
|  65 | Enterprise-wide stable attitude                          |
| 122 | Enterprise-wide stable attitude                          |
|  16 | eos                                                      |
|  15 | et                                                       |
|  26 | Expanded logistical hierarchy                            |
| 123 | Expanded logistical hierarchy                            |
|  89 | Expanded responsive groupware                            |
| 124 | Expanded responsive groupware                            |
|  14 | explicabo                                                |
|  31 | Extended clear-thinking collaboration                    |
| 125 | Extended clear-thinking collaboration                    |
|  68 | Extended dedicated access                                |
| 126 | Extended dedicated access                                |
|  88 | Extended local GraphicInterface                          |
| 127 | Extended local GraphicInterface                          |
|  52 | Facetoface web-enabled moderator                         |
| 128 | Facetoface web-enabled moderator                         |
|  62 | Front-line discrete product                              |
| 129 | Front-line discrete product                              |
|  73 | Front-line maximized localareanetwork                    |
| 130 | Front-line maximized localareanetwork                    |
|  17 | fugiat                                                   |
|  44 | Fully-configurable responsive moratorium                 |
| 131 | Fully-configurable responsive moratorium                 |
|  30 | Fully-configurable tangible implementation               |
| 132 | Fully-configurable tangible implementation               |
|  97 | Function-based 5thgeneration model                       |
| 133 | Function-based 5thgeneration model                       |
|  72 | Function-based contextually-based challenge              |
| 134 | Function-based contextually-based challenge              |
|  43 | Fundamental interactive contingency                      |
| 135 | Fundamental interactive contingency                      |
|  71 | Future-proofed intermediate framework                    |
| 136 | Future-proofed intermediate framework                    |
|   4 | Grass-roots background focusgroup                        |
| 137 | Grass-roots background focusgroup                        |
| 138 | Grass-roots neutral forecast                             |
|  35 | Grass-roots optimizing strategy                          |
| 139 | Grass-roots optimizing strategy                          |
|  81 | Grass-roots zeroadministration systemengine              |
| 140 | Grass-roots zeroadministration systemengine              |
|  99 | Innovative radical function                              |
| 141 | Innovative radical function                              |
|  34 | Intuitive intangible analyzer                            |
| 142 | Intuitive intangible analyzer                            |
|  46 | Intuitive needs-based migration                          |
| 143 | Intuitive needs-based migration                          |
|  61 | Inverse multimedia product                               |
| 144 | Inverse multimedia product                               |
|  18 | magni                                                    |
|  25 | Managed actuating groupware                              |
| 145 | Managed actuating groupware                              |
|  28 | Mandatory motivating customerloyalty                     |
| 146 | Mandatory motivating customerloyalty                     |
|   5 | molestias                                                |
|  56 | Multi-channelled 24/7 protocol                           |
| 147 | Multi-channelled 24/7 protocol                           |
|  29 | Multi-channelled methodical firmware                     |
| 148 | Multi-channelled methodical firmware                     |
|  64 | Multi-lateral explicit policy                            |
| 149 | Multi-lateral explicit policy                            |
|  67 | Multi-layered bifurcated solution                        |
| 150 | Multi-layered bifurcated solution                        |
| 151 | Multi-layered explicit systemengine                      |
|  32 | Multi-layered value-added installation                   |
| 152 | Multi-layered value-added installation                   |
|  23 | Networked multimedia artificialintelligence              |
| 153 | Networked multimedia artificialintelligence              |
|  19 | nostrum                                                  |
|   6 | nulla                                                    |
| 154 | Open-architected executive project                       |
|  33 | Open-architected mission-critical GraphicalUserInterface |
| 155 | Open-architected mission-critical GraphicalUserInterface |
|  98 | Operative bifurcated array                               |
| 156 | Operative bifurcated array                               |
|  45 | Operative zeroadministration orchestration               |
| 157 | Operative zeroadministration orchestration               |
|  87 | Optional content-based firmware                          |
| 158 | Optional content-based firmware                          |
|   7 | perferendis                                              |
|  93 | Persevering 3rdgeneration forecast                       |
| 159 | Persevering 3rdgeneration forecast                       |
| 160 | Persistent regional product                              |
|  21 | perspiciatis                                             |
| 161 | Phased value-added time-frame                            |
| 162 | Polarised encompassing firmware                          |
|  70 | Polarised grid-enabled interface                         |
| 163 | Polarised grid-enabled interface                         |
|  78 | Polarised mission-critical conglomeration                |
| 164 | Polarised mission-critical conglomeration                |
|  77 | Pre-emptive contextually-based flexibility               |
| 165 | Pre-emptive contextually-based flexibility               |
|  27 | Pre-emptive hybrid utilisation                           |
| 166 | Pre-emptive hybrid utilisation                           |
|   3 | Profit-focused background throughput                     |
| 167 | Profit-focused background throughput                     |
|  80 | Programmable bandwidth-monitored access                  |
| 168 | Programmable bandwidth-monitored access                  |
|  83 | Programmable zerotolerance extranet                      |
| 169 | Programmable zerotolerance extranet                      |
|  54 | Public-key grid-enabled customerloyalty                  |
| 170 | Public-key grid-enabled customerloyalty                  |
|  49 | Public-key grid-enabled structure                        |
| 171 | Public-key grid-enabled structure                        |
| 172 | Public-key radical interface                             |
|   1 | Quality-focused non-volatile core                        |
| 173 | Quality-focused non-volatile core                        |
|  20 | qui                                                      |
|   8 | quo                                                      |
|   2 | Re-contextualized eco-centric extranet                   |
| 174 | Re-contextualized eco-centric extranet                   |
|  76 | Re-contextualized systemic benchmark                     |
| 175 | Re-contextualized systemic benchmark                     |
| 176 | Re-contextualized uniform capability                     |
|  47 | Re-engineered solution-oriented projection               |
| 177 | Re-engineered solution-oriented projection               |
|  82 | Reactive 5thgeneration standardization                   |
| 178 | Reactive 5thgeneration standardization                   |
|  39 | Reactive leadingedge flexibility                         |
| 179 | Reactive leadingedge flexibility                         |
| 180 | Reactive multi-state function                            |
|  66 | Reverse-engineered solution-oriented functionalities     |
| 181 | Reverse-engineered solution-oriented functionalities     |
| 182 | Right-sized 5thgeneration definition                     |
|  38 | Right-sized clear-thinking hub                           |
| 183 | Right-sized clear-thinking hub                           |
|  96 | Robust global approach                                   |
| 184 | Robust global approach                                   |
|  95 | Secured cohesive GraphicInterface                        |
| 185 | Secured cohesive GraphicInterface                        |
|  48 | Secured encompassing support                             |
| 186 | Secured encompassing support                             |
|  69 | Secured high-level systemengine                          |
| 187 | Secured high-level systemengine                          |
|  90 | Streamlined well-modulated customerloyalty               |
| 188 | Streamlined well-modulated customerloyalty               |
|  85 | Synergistic background model                             |
| 189 | Synergistic background model                             |
|  57 | Synergistic didactic time-frame                          |
| 190 | Synergistic didactic time-frame                          |
| 191 | Synergized explicit workforce                            |
|  50 | Synergized fresh-thinking methodology                    |
| 192 | Synergized fresh-thinking methodology                    |
|  92 | Synergized heuristic customerloyalty                     |
| 193 | Synergized heuristic customerloyalty                     |
|  11 | tempore                                                  |
|  10 | ullam                                                    |
| 194 | Up-sized bi-directional encryption                       |
|  37 | Up-sized impactful analyzer                              |
| 195 | Up-sized impactful analyzer                              |
|  36 | Up-sized intermediate algorithm                          |
| 196 | Up-sized intermediate algorithm                          |
| 197 | User-centric demand-driven task-force                    |
|  74 | Virtual executive matrix                                 |
| 198 | Virtual executive matrix                                 |
|  91 | Vision-oriented optimal customerloyalty                  |
| 199 | Vision-oriented optimal customerloyalty                  |
| 200 | Visionary intermediate focusgroup                        |
+-----+----------------------------------------------------------+


set foreign_key_checks = 0; 
truncate table posts;
set foreign_key_checks = 1;

-- 
show create table posts;


