 drop database if exists finalproject;
 create database finalproject character set utf8mb4;
 use finalproject;
 
drop table if exists fanfics;
create table fanfics(
	id serial primary key, -- serial = bigint unsigned not null auto_increment unique
	title varchar(50),
    relashionsip enum('Джен', 'Гет', 'Слэш', 'Фемслэш', 'Другие виды отношений'),
    genre enum('Комедия','Драма', 'Ужасы', 'Фэнтези', 'Научная фантастика', 'Реализм', 'Мистика', 'Детектив', 'Боевик', 'Психология','Статья'),
    age_raiting enum('G', 'PG', 'R', 'NC'),
	puplished_at date
);

INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('1', 'Aut unde velit.', 'Слэш', 'Ужасы', 'R', '1973-07-31');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('2', 'Qui aut et.', 'Гет', 'Психология', 'NC', '1973-05-23');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('3', 'Autem asperiores omnis.', 'Слэш', 'Мистика', 'R', '1998-03-27');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('4', 'Dolor cupiditate voluptas.', 'Гет', 'Фэнтези', 'PG', '1976-08-28');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('5', 'Quaerat sint maiores.', 'Фемслэш', 'Реализм', 'NC', '1996-10-24');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('6', 'Dolorum expedita.', 'Другие виды отношений', 'Реализм', 'PG', '1990-07-02');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('7', 'Hic nihil.', 'Гет', 'Драма', 'G', '2001-05-12');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('8', 'Ut laudantium ut.', 'Джен', 'Статья', 'G', '1983-05-12');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('9', 'Et ullam adipisci.', 'Слэш', 'Ужасы', 'NC', '2020-10-04');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('10', 'Id veritatis quia.', 'Слэш', 'Научная фантастика', 'NC', '2013-10-11');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('11', 'Vel et.', 'Гет', 'Научная фантастика', 'R', '2020-08-23');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('12', 'Velit eos.', 'Джен', 'Детектив', 'PG', '1978-07-21');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('13', 'Esse eius.', 'Слэш', 'Мистика', 'G', '1996-08-07');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('14', 'Et ut.', 'Другие виды отношений', 'Реализм', 'R', '2000-05-29');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('15', 'Et iure.', 'Джен', 'Психология', 'R', '2007-03-03');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('16', 'Molestiae possimus voluptate.', 'Другие виды отношений', 'Комедия', 'R', '1988-07-12');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('17', 'Facere perferendis dolor.', 'Джен', 'Статья', 'NC', '2002-01-21');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('18', 'Itaque consequatur.', 'Фемслэш', 'Детектив', 'NC', '1978-02-15');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('19', 'Aliquam distinctio totam.', 'Другие виды отношений', 'Ужасы', 'PG', '2014-10-22');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('20', 'Quam voluptas explicabo.', 'Другие виды отношений', 'Реализм', 'R', '2009-05-25');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('21', 'Facere eum.', 'Слэш', 'Ужасы', 'PG', '2020-05-10');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('22', 'Qui non error.', 'Другие виды отношений', 'Фэнтези', 'NC', '2014-12-06');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('23', 'Molestiae expedita.', 'Фемслэш', 'Детектив', 'NC', '1986-02-20');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('24', 'Sed nulla maxime.', 'Гет', 'Драма', 'G', '2017-09-25');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('25', 'Atque voluptatum consequuntur.', 'Джен', 'Мистика', 'G', '1982-11-17');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('26', 'Eum ratione.', 'Слэш', 'Комедия', 'R', '2018-03-03');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('27', 'Totam tempore non.', 'Другие виды отношений', 'Детектив', 'PG', '1970-10-15');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('28', 'Neque rerum.', 'Фемслэш', 'Психология', 'G', '1976-01-26');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('29', 'Cupiditate quis et.', 'Гет', 'Научная фантастика', 'PG', '2013-12-22');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('30', 'Sint voluptas.', 'Джен', 'Ужасы', 'R', '1973-09-27');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('31', 'Sint esse.', 'Джен', 'Психология', 'PG', '2018-11-10');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('32', 'Laudantium ratione.', 'Другие виды отношений', 'Комедия', 'PG', '2003-05-17');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('33', 'Voluptatem tempore at.', 'Другие виды отношений', 'Боевик', 'PG', '2000-12-08');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('34', 'Minima qui nostrum.', 'Джен', 'Комедия', 'NC', '2010-01-25');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('35', 'Ut architecto.', 'Фемслэш', 'Фэнтези', 'G', '2009-05-26');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('36', 'Assumenda autem repellat.', 'Другие виды отношений', 'Психология', 'R', '1981-03-18');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('37', 'Quidem rerum.', 'Джен', 'Реализм', 'R', '1991-06-09');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('38', 'Ut sunt.', 'Джен', 'Статья', 'G', '1985-06-19');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('39', 'Eveniet et.', 'Фемслэш', 'Детектив', 'NC', '2000-02-17');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('40', 'Commodi et iusto.', 'Джен', 'Драма', 'PG', '1983-03-12');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('41', 'Et fuga ad.', 'Гет', 'Драма', 'PG', '1987-06-28');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('42', 'Ea aliquid.', 'Фемслэш', 'Боевик', 'NC', '2018-02-19');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('43', 'Facilis ea.', 'Фемслэш', 'Боевик', 'PG', '2012-10-02');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('44', 'Impedit ex vero.', 'Джен', 'Научная фантастика', 'G', '2007-11-18');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('45', 'Ea totam et.', 'Гет', 'Драма', 'NC', '1979-01-14');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('46', 'Vel in consequatur.', 'Другие виды отношений', 'Мистика', 'G', '1983-01-05');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('47', 'Enim occaecati laborum.', 'Другие виды отношений', 'Ужасы', 'PG', '1984-06-08');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('48', 'Qui quo consequatur.', 'Гет', 'Психология', 'PG', '2009-05-03');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('49', 'Consectetur est quidem.', 'Гет', 'Детектив', 'NC', '1990-01-18');
INSERT INTO `fanfics` (`id`, `title`, `relashionsip`, `genre`, `age_raiting`, `puplished_at`) VALUES ('50', 'Sit sunt.', 'Другие виды отношений', 'Фэнтези', 'G', '2004-05-15');


drop table if exists users;
create table users(
	id serial primary key, -- serial = bigint unsigned not null auto_increment unique
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

INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('1', 'kade35', 'Qui quas facere ut cum quia ducimus. Cumque quo et numquam quae. Illum consequuntur voluptatem tempore iure. Et error facilis fuga fuga veritatis enim.', '603', 'cparker@example.com', '238887366', 0, '1971-03-23 04:36:40');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('2', 'herzog.lucile', 'Excepturi delectus accusamus suscipit et possimus ut sit. Labore voluptas quam aliquid. Itaque sunt ratione rerum non. Provident est aliquam velit enim est velit.', '269', 'river.block@example.org', '', 1, '2007-01-08 16:03:26');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('3', 'green90', 'Ad exercitationem voluptates et non. Et voluptatem velit ratione ut sunt. Ex consectetur et iusto blanditiis dolores ut perspiciatis amet.', '318', 'kblock@example.com', '3', 0, '1982-06-08 17:40:07');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('4', 'gaetano07', 'Consequatur et reprehenderit illo. Aut aut soluta consequuntur voluptatibus sunt rerum qui. Nam nostrum soluta voluptatibus ipsa. Excepturi dolor recusandae quaerat earum sint accusamus.', '775', 'oran.leannon@example.com', '8', 0, '2005-04-18 07:32:51');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('5', 'sarah.wuckert', 'Quia et assumenda eos. Qui error quis esse consectetur ut ut. Aut similique omnis eligendi ut.', '279', 'terrance.gislason@example.org', '2551530', 0, '2017-07-23 00:59:10');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('6', 'braun.dorothea', 'Nihil ducimus deserunt perferendis est nam. Quibusdam pariatur accusantium optio quidem nihil aliquam. Soluta sit consectetur animi nihil nobis et.', '879', 'beer.ethan@example.net', '9452', 1, '2014-11-06 12:05:00');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('7', 'cronin.alford', 'Officiis consequatur eveniet et dicta error. Ipsa nobis voluptas tempora labore. Laboriosam vel est aut et placeat voluptas. Fugiat neque nam impedit eos. Reprehenderit nulla occaecati impedit doloremque sed quaerat.', '742', 'schuster.alicia@example.net', '5365', 1, '1975-10-10 04:09:44');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('8', 'devin.reichert', 'Eum illo pariatur animi aspernatur reiciendis et veniam sint. Consequatur ea cumque fugit fuga ut sit quis. Delectus hic adipisci harum corrupti. Sapiente hic itaque atque voluptatem a.', '43', 'erling37@example.com', '31197', 0, '2006-08-16 16:47:27');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('9', 'ismael.dicki', 'Aut suscipit dicta rem dolorem placeat odit. Et qui a qui. Dolorem aspernatur vel voluptatem aut dolor.', '679', 'hthiel@example.org', '76332648', 1, '2016-03-08 13:42:19');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('10', 'adams.ryleigh', 'Tenetur numquam numquam architecto dicta eum. Occaecati aliquam quod pariatur ut nesciunt occaecati. Est magni ducimus molestias porro quia.', '655', 'hassie39@example.org', '56706', 0, '2012-11-07 15:28:50');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('11', 'kim01', 'Est a facere sed occaecati modi molestias eum. Nostrum nisi dolores dolor nesciunt minima ex et. Illum voluptatem praesentium nostrum quis in est. Autem recusandae quo autem.', '809', 'vernice96@example.com', '2474', 0, '2013-01-04 18:21:16');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('12', 'libby34', 'Culpa unde maiores aut. Nemo eius voluptas fuga facilis et dolorem rerum ipsam. Reprehenderit aliquam quas reiciendis ipsum consequatur quam.', '847', 'annalise.harvey@example.com', '45269178', 1, '1991-11-04 03:02:24');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('13', 'johnpaul.rohan', 'Dignissimos qui debitis quas ut voluptas non aut quisquam. Asperiores inventore enim sunt animi quaerat aliquid odit. Reprehenderit beatae repudiandae maiores vel ut.', '994', 'vince78@example.org', '910175', 0, '1990-07-28 03:16:59');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('14', 'gislason.arnold', 'Id omnis et autem ut est accusamus autem. Eum est aut velit voluptas ut et. Qui aliquid aut ut mollitia asperiores. Est qui quas dolores pariatur doloribus.', '929', 'okuneva.merlin@example.com', '5823', 0, '1973-03-19 20:42:23');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('15', 'botsford.vinnie', 'Fugiat ipsa et et asperiores sit mollitia in. Vitae et tenetur velit incidunt molestias.', '561', 'pfannerstill.marietta@example.com', '2096168', 0, '1990-06-12 11:30:51');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('16', 'emma.grant', 'Et consectetur repudiandae eligendi eaque sunt neque quam. Perferendis nostrum debitis deleniti recusandae ut sed.', '970', 'ofahey@example.com', '6919463', 0, '2000-06-05 18:05:04');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('17', 'royal.douglas', 'A sapiente quas maiores odio enim quisquam facere et. Tenetur ratione rerum officiis nobis magnam autem libero.', '488', 'lueilwitz.laura@example.org', '62', 1, '1994-11-14 12:09:54');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('18', 'o\'hara.audie', 'Libero est sint architecto quasi fuga recusandae adipisci totam. Est eius quidem doloremque autem sint. Distinctio debitis sit facilis sint qui velit velit.', '32', 'mills.ressie@example.com', '414918486', 0, '1982-07-06 16:07:08');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('19', 'halvorson.dixie', 'Error corrupti praesentium in quae officia. At maiores ut consequatur fugit et delectus. Quo consequatur cupiditate mollitia sed aut. Aliquam corporis quibusdam ut provident vero.', '820', 'fbahringer@example.com', '17364966', 0, '1978-01-27 04:58:29');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('20', 'ondricka.hallie', 'Vero consequatur doloremque sequi vero. Voluptates magnam quae eius nemo doloremque laboriosam odit. Eum sed eligendi quasi voluptas. Nihil est sed nihil velit.', '904', 'champlin.alysson@example.net', '2258492', 0, '2006-09-09 06:31:43');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('21', 'pacocha.albina', 'Ad rerum voluptates porro ut praesentium ut. Est dolore ut ut eos error. Vitae ea qui quo itaque commodi. Omnis quae consequuntur libero error consequatur sequi quia.', '965', 'mozell41@example.org', '994', 0, '1978-01-14 11:27:01');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('22', 'stanford46', 'Qui quasi nostrum est nisi nihil tempore tenetur ratione. Perspiciatis ut rerum fugiat aut accusamus. Libero omnis placeat reprehenderit similique consequatur.', '545', 'ransom73@example.org', '279', 1, '2003-03-14 18:16:05');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('23', 'berry23', 'Et aut aliquid minima consequatur. Quo quasi perspiciatis mollitia quis. Fugit delectus est officiis libero qui deserunt.', '21', 'rebeca89@example.org', '160', 0, '1976-11-16 10:44:06');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('24', 'estevan.homenick', 'Reprehenderit sapiente itaque ut explicabo ad in. Et commodi est et dolor consequatur veniam. Nemo occaecati id veritatis in vel.', '851', 'dane26@example.org', '13', 0, '2016-11-21 13:01:22');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('25', 'arne.johnston', 'Voluptatem totam quis provident quasi accusantium. Laborum et hic quod. Enim fugit harum quis iusto.', '372', 'kruecker@example.com', '98143279', 0, '2017-05-20 11:25:48');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('26', 'patience.deckow', 'Architecto necessitatibus nisi libero nobis consectetur. Dolor laudantium commodi corrupti sit aut. Maxime ab sed sed.', '864', 'hartmann.kenneth@example.net', '375095', 0, '1994-03-07 12:34:23');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('27', 'durgan.kiara', 'Doloribus placeat cupiditate et quo explicabo. Reprehenderit libero dolorum eos voluptas. Impedit quia aut voluptates aut. Magnam vitae similique necessitatibus dolor corporis sed.', '498', 'tschimmel@example.net', '4167', 0, '1988-01-09 18:48:58');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('28', 'herta.hessel', 'Sit sed est ut ipsum cumque est nam dicta. Saepe enim laborum aspernatur ut quia distinctio. Asperiores et quaerat minima. Iste consectetur veritatis quam accusamus doloribus quis ea.', '432', 'tristin.crist@example.net', '273156753', 0, '1982-12-12 02:20:48');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('29', 'maia44', 'Eaque voluptatum consectetur id repellat quia nobis id. Blanditiis enim rerum ab adipisci mollitia repudiandae. Expedita harum iusto sed quisquam rerum. Porro est vero occaecati.', '77', 'nicola95@example.com', '326417', 0, '1970-04-29 23:42:33');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('30', 'lisette.krajcik', 'In fugiat et atque sed maxime aspernatur voluptas. Beatae sunt quos ex ratione vel veritatis. Est at itaque alias quidem corporis ipsa quia.', '510', 'savanah.tillman@example.net', '342409', 0, '1997-07-04 05:58:47');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('31', 'nolan.cullen', 'Architecto ducimus quia ea dolores quia. Officia nemo voluptas id impedit recusandae voluptate officiis. Sed nihil cum veniam sunt quisquam qui in.', '370', 'tyrese86@example.net', '3807', 0, '1980-12-11 17:06:37');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('32', 'wehner.santiago', 'Aut temporibus nihil explicabo perspiciatis ut et voluptas non. Perferendis quaerat repellat beatae natus est. Iusto consequatur aut voluptatibus velit nisi deserunt quaerat saepe. Possimus velit est tempora est perspiciatis earum.', '231', 'clifton53@example.org', '44', 0, '1980-01-20 01:48:43');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('33', 'prohaska.claudia', 'Impedit unde sit molestias est cupiditate iusto. Alias eum facilis aut. Qui est ut eaque autem consequuntur in. Est assumenda placeat ipsum aliquam nesciunt.', '855', 'wshields@example.net', '4294030', 1, '1980-05-01 17:05:26');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('34', 'scottie24', 'Quia at dolor enim ut. Cupiditate voluptatum quaerat non rerum impedit eos.', '174', 'ruby38@example.org', '264', 1, '1978-02-03 05:50:00');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('35', 'lhilll', 'Fuga rem aliquid recusandae nihil quas praesentium cupiditate beatae. Cumque qui eligendi deleniti sed ipsa sint tempora. Enim aut dolorem asperiores.', '588', 'towne.hollis@example.org', '649919', 0, '1987-04-02 15:57:17');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('36', 'berge.name', 'Velit et et quis et maxime laudantium. Suscipit ullam rerum doloremque autem et corrupti. A voluptas excepturi facere explicabo enim rerum.', '75', 'alexane58@example.net', '80289', 0, '2009-08-10 02:13:19');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('37', 'bartell.chandler', 'Explicabo corrupti quis eius laboriosam unde ut. At quasi et id voluptatem praesentium cumque.', '961', 'roel81@example.net', '5737', 0, '1995-05-20 09:03:31');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('38', 'utremblay', 'Laudantium neque sed laborum labore nostrum quia autem. Distinctio labore corrupti aliquid error. Ipsa dignissimos et velit quo.', '206', 'hlang@example.com', '26915', 1, '2019-05-11 13:17:29');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('39', 'madelyn17', 'Molestiae et est voluptatibus ipsa harum. Ratione rerum iste ut adipisci enim animi. Fugiat repellat optio molestias consequatur eveniet. Sit commodi veritatis exercitationem ut voluptas qui molestiae.', '723', 'skiles.erick@example.org', '485', 0, '2013-08-13 05:14:57');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('40', 'nlueilwitz', 'Temporibus molestiae saepe nesciunt qui voluptatem dignissimos nobis. Aliquam aut amet voluptatum quibusdam. At sit atque dolorum quis repellat esse. Mollitia et magnam placeat quidem voluptatem voluptatem aut. Quia sint delectus quibusdam doloribus aliquid sint.', '220', 'beahan.irwin@example.org', '22544', 0, '2007-08-21 00:13:27');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('41', 'oren26', 'Rerum dolor laudantium nam officiis consequuntur beatae repudiandae. Ullam modi dolorum deserunt molestiae voluptatem. Cum aut amet fugit sint. Nisi quam quae atque.', '849', 'cletus.hane@example.net', '57707447', 1, '1993-04-07 06:47:38');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('42', 'nroberts', 'Quia et alias qui consectetur incidunt laborum. Qui nostrum perspiciatis hic quibusdam ipsa. Fuga voluptatum voluptate rerum aut vel labore eius.', '304', 'nicolette61@example.net', '3478136', 0, '1973-04-11 09:24:37');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('43', 'xkovacek', 'Voluptatibus eum velit assumenda ipsa eum nobis atque. Animi explicabo ad aut aliquid consequatur. Quae repellendus sed fugiat ut officia dolore iusto. Repudiandae tempora error similique possimus.', '980', 'vjaskolski@example.org', '823346', 1, '1987-10-25 04:13:36');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('44', 'kroob', 'Placeat repellendus mollitia rerum fugit dolorem. Totam est dolorum vel dolores voluptatibus et ullam. Rem omnis est aut voluptatem excepturi perferendis ex.', '705', 'lorena94@example.com', '4', 1, '2007-08-28 03:43:23');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('45', 'mohr.carmine', 'Ipsum qui illo pariatur saepe. Voluptas et non fugit dolores. Error laudantium velit fugit. Ut earum quibusdam dolore omnis aut animi dignissimos.', '609', 'heather05@example.org', '920', 0, '1974-06-02 19:43:46');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('46', 'trinity.bashirian', 'At ipsam vero aut. Perferendis quis perferendis dolorem aut tenetur. Sint repudiandae sint qui quia quam non sed.', '441', 'hilll.josianne@example.org', '649965', 0, '2003-01-31 23:40:49');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('47', 'jovanny.murazik', 'Et minus fugit nostrum itaque sit harum rerum. Deserunt veritatis fugit voluptate quia. Eius excepturi et earum cumque. Minus ipsa et vero qui aut debitis ex.', '423', 'powlowski.remington@example.org', '9', 0, '1992-12-06 09:38:10');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('48', 'sanford.micaela', 'Voluptates qui molestiae et. Explicabo culpa nihil deserunt voluptas ut architecto ut. Laboriosam animi omnis temporibus excepturi fugit ad a.', '218', 'amurray@example.com', '84', 0, '1987-10-06 15:59:09');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('49', 'boyer.donavon', 'Repellat ipsam nostrum et et numquam dolor quia. Omnis qui voluptatem corporis. Ut ullam a optio ea quo eligendi tempore.', '467', 'sherwood44@example.org', '9540612', 0, '1985-06-16 13:39:37');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('50', 'rohan.nathaniel', 'Expedita est nihil voluptatem natus repudiandae consequatur quod. Consectetur ut consequuntur perspiciatis esse quo amet facilis voluptas. Ea excepturi velit voluptate voluptas cumque quisquam.', '737', 'pouros.cora@example.net', '7', 0, '1995-03-31 08:26:16');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('51', 'nina15', 'Voluptas eveniet quibusdam optio quaerat a pariatur voluptate. Minus quo voluptatem soluta quaerat eos. Sit officiis deleniti quo ex mollitia. Provident dolore numquam doloribus eius sunt corrupti.', '302', 'ramona42@example.net', '264518890', 0, '1973-09-21 06:25:35');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('52', 'metz.annabell', 'Nemo corrupti ut voluptas aperiam tempora neque asperiores. Architecto autem consequatur veritatis dolorem porro nesciunt. Deserunt eius velit ab. Est blanditiis neque eos earum ea quis.', '90', 'nolan.remington@example.net', '300', 1, '1994-10-13 20:23:22');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('53', 'hammes.caroline', 'Sed debitis numquam repellat. Sed sequi esse itaque rerum quidem omnis est. Autem provident ut fugit dolorem voluptas eos officiis.', '172', 'jhermiston@example.net', '9497631', 0, '1976-09-28 16:56:58');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('54', 'windler.jules', 'Ratione totam earum eveniet et. Voluptates ut omnis quis. Eum voluptas quibusdam velit qui ratione eos aut.', '149', 'crona.austen@example.org', '1113454', 0, '1982-11-04 08:00:45');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('55', 'kraig.anderson', 'Qui sit nihil esse ea et esse. Est perferendis ipsum consequatur suscipit. Harum tempora minima eos cum cum nihil.', '833', 'ifeil@example.com', '316859', 0, '1990-09-30 08:00:30');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('56', 'fgottlieb', 'Nobis dolorem numquam necessitatibus aut dolores. Nihil sit sint nostrum nisi aspernatur repellat maxime. Repudiandae et sit reiciendis iure. Quo quia ut magni nihil aliquid.', '248', 'blesch@example.net', '73582979', 0, '2004-06-29 18:44:47');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('57', 'jfranecki', 'Nisi eveniet modi quasi illo aperiam sed. Unde est expedita optio possimus. Et est sunt distinctio porro natus. Sed quo rerum repellendus asperiores eum dignissimos.', '911', 'sophie36@example.org', '2', 0, '1970-05-14 00:57:13');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('58', 'atrantow', 'Explicabo est non minima quasi ut est incidunt. Ut nam est quo possimus fugiat. Praesentium ut nulla et laborum. Voluptatem nemo et qui qui et id maxime.', '361', 'ova.tremblay@example.com', '86', 0, '1996-02-02 12:36:41');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('59', 'bjohnson', 'Qui et quis libero quaerat. Temporibus et et incidunt amet vel quisquam et. Iste incidunt necessitatibus dolor id. Sit ut ut quo sequi voluptate est omnis non.', '852', 'slind@example.org', '513518', 0, '1981-10-29 11:41:16');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('60', 'hahn.alejandra', 'Est maxime consequatur minima sint et rerum. Vitae qui quia nam earum. Deserunt quia sed nam voluptatibus est sed. Consequatur autem minima at natus.', '363', 'aliyah84@example.org', '642', 1, '1976-02-04 01:27:06');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('61', 'destin52', 'Beatae ex provident vel dicta quo dolores asperiores beatae. Laudantium quo quam cupiditate illo dolorum. Cupiditate quibusdam voluptatem nobis dolores voluptatem. Alias architecto et iure laborum veniam sit.', '466', 'karina43@example.org', '599', 1, '1982-02-01 22:31:51');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('62', 'carolanne13', 'Error voluptas illum expedita aut aut. Minima quo dolorem dolorem. Eius et et ex porro molestias minus. Provident labore commodi unde vel aut sed quia. Architecto voluptatem culpa pariatur sequi in eligendi.', '944', 'ethan58@example.org', '4510973', 0, '1989-08-28 21:49:09');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('63', 'tlind', 'Ullam sed qui laboriosam minima alias impedit ea. A explicabo omnis ut quia. Non asperiores nihil sunt beatae nam dolorem exercitationem. Quasi quia omnis velit nobis eius consequatur.', '666', 'ukozey@example.net', '275313', 0, '1973-07-19 18:55:31');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('64', 'annamarie77', 'Quis omnis non iusto voluptatem eveniet nisi aut. A ex rerum aspernatur eum vel. Dolor necessitatibus in suscipit est optio quia.', '720', 'rnikolaus@example.net', '262', 0, '2012-08-04 15:32:09');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('65', 'runolfsson.angelita', 'Similique exercitationem rerum numquam aut provident. Maiores eaque necessitatibus vero. Enim reiciendis consectetur fuga quia voluptas officiis.', '409', 'uaufderhar@example.com', '7744', 0, '1992-04-07 06:05:50');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('66', 'vincenzo54', 'Vel voluptatem et et est nisi consectetur voluptas. Sed provident facilis iusto optio. Nemo veniam accusamus tenetur similique.', '894', 'lucious.kirlin@example.org', '7924', 0, '2011-11-22 13:01:06');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('67', 'kenton.goodwin', 'Qui ut ea dicta blanditiis consequatur est. Sit nobis magnam quo laborum eveniet qui. Veniam sed culpa nihil nam. Velit et nisi repellendus est laudantium adipisci. Sint qui quis molestiae porro magnam at a.', '832', 'kiehn.tomasa@example.org', '2225384', 0, '1970-08-03 01:35:07');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('68', 'larkin.alberta', 'Qui est molestiae nobis sequi quis voluptate. Id dolorem mollitia ipsa nostrum officia perspiciatis eos. Commodi quae quaerat consequatur nulla architecto.', '781', 'gwendolyn68@example.com', '38', 0, '2014-03-19 02:06:24');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('69', 'treichel', 'Beatae mollitia sint et facilis sint quo sit. Et quidem magnam modi voluptatem et mollitia. Ut facilis iusto quisquam neque culpa autem quia.', '367', 'lkuvalis@example.org', '172631', 1, '2015-10-01 13:37:08');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('70', 'reynolds.dorian', 'Neque animi cumque eum sint. Omnis optio sunt ut sed omnis aut illo sed. Quibusdam accusamus quia velit voluptate magni.', '319', 'bessie67@example.net', '930828', 0, '1977-03-02 19:14:37');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('71', 'halie.shields', 'Dolores est assumenda deleniti quae necessitatibus veniam aut rem. Possimus sunt aut quia temporibus alias qui maxime et.', '2', 'nicolas.norbert@example.org', '625764', 1, '2020-02-29 22:32:45');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('72', 'carlie82', 'Saepe animi velit fugiat sunt. Ut non eum consequatur voluptatem. Nemo minima sequi vel nulla sit.', '442', 'tillman.sigrid@example.org', '314261', 1, '1972-09-15 02:24:45');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('73', 'koepp.geovanny', 'Est distinctio tempore autem cum odio. Et consequatur veritatis accusamus porro sapiente. Rerum omnis suscipit molestias dignissimos laudantium. Magnam nihil non non et repudiandae.', '404', 'bria.gerhold@example.org', '83939027', 0, '2007-10-04 21:56:26');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('74', 'elvera81', 'Consectetur et esse dicta autem. Aperiam nihil facere ad deserunt quam non. Incidunt earum asperiores molestiae fugiat eligendi quia.', '215', 'bill68@example.org', '2295232', 0, '2008-12-07 12:18:21');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('75', 'lacey.bailey', 'Et odio quam veniam cupiditate. Minus qui enim fuga et ea quis nisi. Ut praesentium ad amet sit quae. Accusamus quas omnis quae maiores error dolor voluptates. At sit harum aut pariatur.', '111', 'minerva.kassulke@example.org', '94', 1, '1983-03-05 13:04:25');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('76', 'becker.cleve', 'Sit asperiores maiores est sint soluta. Autem nostrum delectus est consequatur in eveniet. Veritatis ab modi asperiores voluptas. Minus vero molestiae rerum quod fugiat eius ad fuga.', '977', 'caleigh.monahan@example.org', '253014894', 1, '2001-06-14 17:13:23');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('77', 'sheila40', 'Nemo ut vel et consequatur quos totam itaque qui. Qui voluptatem iste reiciendis. Dolor laudantium dolore expedita ut. Officiis inventore perspiciatis beatae iste.', '28', 'hills.adell@example.org', '2770', 0, '1999-10-19 11:35:42');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('78', 'monahan.kristian', 'Est quia et reprehenderit accusantium cumque qui ipsum. Doloribus et nihil repellat nesciunt repellendus. Necessitatibus est consequuntur enim enim in. Nesciunt et sit ipsam et iste enim.', '661', 'jones.alessandra@example.org', '61', 0, '1979-12-16 20:36:09');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('79', 'mikayla.adams', 'Ipsa repellat ea fuga mollitia doloremque suscipit assumenda. Accusantium velit molestiae id consequatur hic sed ut. Ullam ad voluptatibus repudiandae voluptatibus ut. Sunt facilis est animi dolores.', '324', 'lauren30@example.net', '78681119', 0, '2020-03-30 21:31:19');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('80', 'cathy.rippin', 'Quaerat harum et quae modi. Quo rerum assumenda omnis qui tenetur voluptatibus consequatur. Rerum molestiae explicabo rem voluptas illo eum nisi. Non quaerat debitis sit nihil explicabo asperiores consequatur.', '46', 'brakus.golda@example.com', '6987753', 0, '1979-06-02 21:33:26');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('81', 'luna18', 'Adipisci nesciunt nihil aliquid omnis eveniet cum. In aspernatur et corrupti totam aut ut. Autem aut sunt reprehenderit hic quia vel excepturi. Est repellat ipsa quia sunt aut cumque perferendis iure.', '203', 'harmony.dare@example.com', '18679502', 0, '1980-11-10 20:40:12');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('82', 'torey10', 'Incidunt ut pariatur nihil amet sunt fugiat quia. Odit eius ratione et aspernatur at omnis cum. Distinctio voluptas voluptatum ut itaque voluptatibus ea molestias. Sunt omnis quasi tenetur facere qui dolore omnis. Ipsa tempore fuga consequatur ducimus.', '669', 'gottlieb.dallin@example.net', '5872303', 1, '1989-04-10 15:35:16');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('83', 'santiago73', 'Nihil voluptatem ut tempore. Et dolores eius alias nesciunt rem. Sint nihil sunt porro et quaerat magnam.', '654', 'towne.alaina@example.net', '680184146', 0, '1995-07-31 01:09:07');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('84', 'fkunde', 'Voluptas ab a libero nisi similique. Consequatur possimus quis sit minima. Quibusdam doloribus sint asperiores sunt. Voluptas ex dolor dolorem ex minima sed.', '131', 'dterry@example.net', '161', 1, '2010-05-03 12:57:52');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('85', 'elenor97', 'Pariatur itaque quis rerum dolores pariatur. Est porro enim temporibus unde porro ipsum vitae. Ut ad quaerat omnis qui voluptatem officia ducimus. Et harum reiciendis dolor velit dolorem ab nulla.', '86', 'beer.macie@example.net', '5123', 0, '1997-12-10 20:23:31');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('86', 'eriberto.balistreri', 'Quia ad neque temporibus velit quis. Sint quibusdam esse ut modi asperiores officiis neque. Reprehenderit expedita in ullam officiis non in.', '974', 'alysha75@example.net', '41041751', 1, '1976-08-10 05:28:29');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('87', 'delfina.wyman', 'Omnis officia a possimus quos in. Distinctio voluptas magnam ut assumenda accusantium sit ducimus. Sit expedita incidunt voluptates inventore laudantium maxime.', '968', 'ryan.braulio@example.org', '701', 0, '1972-11-16 05:01:41');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('88', 'howell.hipolito', 'Omnis labore ipsam error nam. Labore quis consequuntur voluptatem quas. Autem est consequatur id architecto sunt consequatur. Similique porro et est molestiae praesentium debitis.', '311', 'reece96@example.net', '9208409', 0, '1990-10-04 20:02:24');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('89', 'apurdy', 'In voluptatibus nemo et. Sunt ut expedita modi iure. Error dignissimos quod commodi.', '152', 'sipes.anne@example.net', '35390', 0, '1989-07-02 14:26:29');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('90', 'clovis.shields', 'Ut in cumque esse quia sit in. Odio molestias aut fuga consequatur soluta. Occaecati consequatur ea exercitationem sunt consequatur atque.', '740', 'bernice.schiller@example.org', '386133', 0, '1971-11-18 12:48:47');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('91', 'pcremin', 'Autem ut non porro minima. Inventore expedita laboriosam perferendis nemo. Cum est voluptate sed et. Voluptas dolores sequi aliquam vel.', '761', 'jodie39@example.org', '272', 1, '2014-04-09 12:47:04');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('92', 'jaden.waters', 'Quia quos quo vel rem. Vero quod non itaque sapiente numquam. Nemo ut dolore quod. Sapiente veniam vero similique quis. Vel earum veniam quo.', '576', 'nicholas.lowe@example.org', '30', 0, '1971-09-12 11:01:00');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('93', 'johnson.summer', 'In velit aut quis iusto aut id est veritatis. Odio enim fuga qui ut et dolores voluptatum. Dolore quo animi et. Voluptates eveniet quaerat quos quo ea.', '917', 'stan.grady@example.com', '333128', 0, '2008-10-20 10:01:13');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('94', 'little.jesse', 'Aut eligendi accusantium rerum praesentium delectus qui. Qui necessitatibus magni quisquam. Nulla excepturi voluptas animi velit architecto. Est voluptatem doloribus beatae reprehenderit.', '260', 'aditya42@example.com', '79', 0, '2015-12-11 12:31:15');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('95', 'skiles.edna', 'Rem ea voluptatem nam at in facilis quod. Velit odit maxime sint quia maxime in enim. Inventore sunt sed quasi vel.', '539', 'lloyd41@example.org', '60031', 1, '2003-05-17 08:50:06');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('96', 'ufranecki', 'Non id iste consectetur illum. Rerum fuga soluta ab a vel officiis. Ea vero tenetur nisi aspernatur asperiores labore necessitatibus expedita.', '38', 'pkovacek@example.com', '20047', 0, '1995-06-09 01:00:33');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('97', 'wilfrid07', 'Ut dolor sequi dolores vitae porro. Corporis blanditiis quam et et non cumque ratione sit. Quisquam magni incidunt laborum. Eius ut modi doloremque neque hic ducimus. Ipsa excepturi placeat rem voluptatem.', '347', 'anna78@example.net', '43104', 0, '1996-06-21 01:49:14');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('98', 'hand.alysson', 'Omnis voluptates pariatur qui non id dolor placeat. Et ullam nihil quasi expedita explicabo. Libero voluptates repellat ut alias.', '830', 'sasha.pfeffer@example.net', '20', 1, '2003-05-16 16:25:46');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('99', 'madge97', 'Dolorum eos eveniet velit cumque. Tempora quia voluptas inventore totam. Quia recusandae placeat quae perspiciatis et est. Excepturi et quidem quae doloremque dolor pariatur a.', '183', 'armando.cassin@example.net', '1', 0, '1992-03-08 20:41:47');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('100', 'xsipes', 'Non earum magnam eaque reiciendis odit ut occaecati. Deleniti modi quia ut consequatur facilis ipsa voluptatem iste. Dolorem iure et sint delectus corporis aut.', '171', 'qkunde@example.com', '31', 0, '2001-06-08 19:19:17');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('101', 'rwehner', 'Molestiae hic aliquam magnam tenetur. Reiciendis aut non sunt officia. Et recusandae sapiente qui. Est ipsa sit doloribus perspiciatis suscipit aut iusto voluptatem.', '811', 'uframi@example.net', '149', 0, '1995-05-06 19:26:05');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('102', 'wilderman.bennett', 'Consequatur non fuga quia voluptatum. Ut reprehenderit sit reprehenderit quaerat ab. Facilis nesciunt consequatur sit excepturi. Quia blanditiis explicabo suscipit. Ea alias quidem iusto autem occaecati consequatur molestiae.', '590', 'ewunsch@example.com', '42', 0, '2020-08-08 02:59:35');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('103', 'callie65', 'Suscipit reprehenderit et illo qui. Molestiae qui esse est quae esse et qui. Dolor vitae cum aut ut ab et adipisci iusto.', '216', 'shania70@example.net', '654458', 1, '1984-10-19 12:32:27');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('104', 'ggibson', 'Accusamus ex praesentium qui voluptate non in. Veritatis expedita nihil impedit ipsa beatae sint. Consectetur inventore eaque iusto. Non velit repudiandae inventore occaecati rerum voluptatem nisi dolores. Voluptatem in maiores quia vero.', '548', 'madaline.hauck@example.net', '11', 0, '2016-09-23 15:03:43');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('105', 'kathryne.ebert', 'Non illum veniam ea sed libero omnis fuga. Optio minima id quos est. Ducimus totam cum culpa qui nobis ut ad.', '225', 'kelsie.homenick@example.com', '295815967', 1, '1973-09-07 12:08:24');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('106', 'timothy.pagac', 'Facilis eos eaque aut atque ut voluptatem animi. Non eveniet omnis id tenetur.', '56', 'mozelle83@example.org', '848', 0, '1980-06-21 06:34:14');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('107', 'ethan.medhurst', 'Atque in et sint iste voluptate consequatur et voluptatem. Voluptatibus voluptates ut exercitationem dolor ut. Aliquid mollitia expedita dignissimos illum. Laborum fugiat ullam velit nesciunt. Dolores sint necessitatibus reiciendis ut nam autem nemo.', '972', 'kessler.emmanuelle@example.net', '87213', 0, '2011-10-30 19:54:21');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('108', 'madelyn.dickinson', 'Laborum harum quas ea autem perspiciatis. Veniam reiciendis ut consequuntur est tempore. Voluptatem est vel minus et explicabo. Omnis sed eum ad animi quia veritatis.', '184', 'stiedemann.henriette@example.net', '685825416', 1, '1994-05-16 08:13:39');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('109', 'lawson12', 'Voluptatum aut autem molestias ipsum repellendus cumque quas. Possimus aut sunt dolores et distinctio doloribus. Dolorem eum nemo in tempora quas modi ut mollitia.', '623', 'fredy.kling@example.net', '25738', 0, '2016-09-20 13:38:34');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('110', 'rene.carroll', 'Non quia amet iste sunt quisquam perferendis perferendis. Culpa sit aut minima id laboriosam. Eum non quasi doloremque perspiciatis et ea.', '688', 'zachariah78@example.net', '98760', 0, '2002-06-02 08:12:55');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('111', 'wilfrid.pfeffer', 'Ea inventore itaque repudiandae repellendus minima nulla sit. Quasi non et sed facilis repellat ab provident illo. Dolor praesentium voluptas corporis numquam illo.', '271', 'tconnelly@example.com', '67080110', 1, '1988-11-08 14:58:00');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('112', 'howe.eileen', 'Occaecati tenetur consequatur recusandae ipsum facere est. Ut voluptate quos non.', '133', 'deanna83@example.com', '63157', 0, '1986-04-10 05:50:37');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('113', 'zoe.okuneva', 'Voluptas cum odit quasi qui ipsa. Fugiat eaque tempore itaque aut nisi ab expedita. Dolorum recusandae optio voluptas. Est rerum et non.', '621', 'dratke@example.org', '9631863', 0, '2003-11-21 01:34:31');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('114', 'alysa.schumm', 'Eos libero quibusdam ea magni aut rerum excepturi architecto. Fugiat et pariatur ut voluptas. Delectus sit asperiores quos iure possimus voluptatibus. Ut ut reiciendis est harum aut non alias.', '784', 'merle00@example.net', '5', 0, '1999-10-31 01:59:47');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('115', 'vivian37', 'Impedit et est consectetur. Assumenda incidunt rerum est inventore optio. Qui consequatur sit qui quia soluta quia.', '652', 'tiana.krajcik@example.net', '4432', 0, '1978-10-28 04:36:24');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('116', 'cassidy60', 'Labore rerum ut quae nihil culpa modi. Adipisci porro qui veniam magni et ex.', '440', 'ratke.ruth@example.com', '67271428', 0, '1977-11-17 03:31:31');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('117', 'hermann.hilbert', 'Exercitationem blanditiis labore enim qui quia. Et nulla qui quos ab. Porro dolores voluptatibus illum perferendis ratione ullam quia. Et nihil nam totam dolor at.', '163', 'ferne.ratke@example.org', '7331242', 0, '1994-12-23 23:22:14');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('118', 'bblanda', 'Magni ipsa rerum ullam. Incidunt illum eos aut blanditiis iusto sed. Dolor qui sint pariatur repellendus. Rerum eos excepturi exercitationem quasi dolorum.', '137', 'irunte@example.org', '3382', 1, '2010-11-01 01:32:44');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('119', 'georgiana50', 'Placeat laudantium consectetur quia ad et. Suscipit quis qui dolores voluptas quod fugit. Eligendi minus mollitia beatae non error quod reiciendis. Quia accusamus voluptates sapiente commodi laborum nemo.', '712', 'ned73@example.com', '2298140', 0, '2009-05-17 10:21:34');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('120', 'gwolf', 'Distinctio repudiandae harum minima saepe corrupti qui voluptatem. Ut eos quae sint dolores. Suscipit laborum quos quisquam et quo aut dolores.', '278', 'jettie.wunsch@example.net', '641399', 0, '1998-07-10 10:04:51');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('121', 'tpowlowski', 'Quasi quisquam harum ut at labore non. Voluptatem vero laboriosam qui ea. Voluptas delectus aliquam molestiae inventore. Fugit repudiandae aliquam sed eius voluptatem modi repellat magni.', '578', 'arau@example.net', '1251090', 1, '2006-02-08 01:42:00');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('122', 'fannie.rutherford', 'Eveniet ipsa nostrum ipsum nam rem laudantium tenetur. Labore vel atque doloremque laudantium. Quasi libero ipsa necessitatibus consequatur ex.', '905', 'rempel.simeon@example.org', '29100352', 0, '2013-09-05 11:07:36');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('123', 'joana92', 'Quos deleniti autem ab incidunt provident. Tempora non aut voluptatum aut. Sed eum voluptatem accusantium aliquid neque deleniti dignissimos. Sit consequuntur nobis ut autem autem impedit aut. Maxime fuga eos culpa unde commodi ex corrupti.', '645', 'cathryn.mccullough@example.com', '23204842', 0, '2014-09-30 10:09:25');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('124', 'alena.bergnaum', 'Rerum harum sunt est odit cupiditate. Expedita modi eaque officia vitae eaque illum. Vel labore aut sequi molestiae quos atque. In et omnis iusto quam saepe quasi atque ipsa.', '685', 'paucek.davonte@example.net', '9721', 0, '1984-08-25 19:12:19');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('125', 'boris.thompson', 'Aut molestias eum aut at. Rerum aliquid dolor ullam maxime non. Voluptate aliquam laudantium eveniet velit. Laborum voluptatibus quis aliquam unde modi autem autem. Aliquid voluptas et excepturi porro illo nulla praesentium expedita.', '483', 'ken.hessel@example.com', '366604', 0, '2011-10-28 08:06:16');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('126', 'misael.weissnat', 'Est est consectetur laborum non. Amet dolores et omnis. Aut aut et at doloribus. Rerum quis nemo itaque blanditiis enim reprehenderit eum.', '542', 'remington.vandervort@example.org', '789027524', 0, '2001-03-02 10:59:24');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('127', 'elnora.dicki', 'Non est ut omnis iste ea quaerat. Nam error saepe necessitatibus harum rerum.', '807', 'abdullah64@example.net', '9411', 0, '1998-12-25 06:22:39');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('128', 'halvorson.brody', 'Quos dolorem earum dolores nostrum est aliquam. Facere nesciunt earum pariatur quisquam quis et. Eaque temporibus neque eos ut deserunt.', '841', 'aheller@example.org', '40561004', 1, '2017-05-09 18:04:46');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('129', 'kshlerin.anne', 'Et tempora saepe sunt dolorem aut omnis quia. Magnam temporibus aut rerum voluptates repellat qui autem. Provident distinctio hic magnam nemo molestiae. Quam neque officiis perspiciatis nostrum. Cumque dolorem pariatur rem magnam nemo culpa beatae.', '158', 'shermiston@example.com', '296928317', 0, '2006-11-25 00:59:36');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('130', 'mcclure.muhammad', 'Eius totam incidunt voluptas dolor. Quis error laboriosam incidunt. Eos ut laboriosam atque neque tempora architecto. Maiores adipisci non ut. Dignissimos rem quae voluptatem deserunt.', '533', 'serenity74@example.com', '2473', 0, '1985-03-06 16:35:08');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('131', 'mosinski', 'Accusamus veniam dolores qui natus. Optio voluptas similique magnam doloribus. Expedita voluptate qui non molestiae explicabo non eius excepturi. Sit dolore rem sunt.', '354', 'westley.gislason@example.net', '62784', 0, '1999-09-07 11:23:00');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('132', 'lreilly', 'Sunt molestias molestiae et et tempore. Sit expedita est fugiat saepe dolores. Ex voluptatem sint aut. Maiores eum temporibus sint.', '281', 'julio.parker@example.org', '555246', 0, '1972-08-24 19:50:59');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('133', 'adrienne18', 'Ut nihil eum recusandae sequi voluptates. Ut commodi facere qui et ad delectus autem officiis. Ut cupiditate suscipit dolore recusandae rerum magni. Eaque eius quisquam qui et consequatur tempore quis.', '315', 'idell96@example.net', '87233', 0, '1981-08-10 10:46:50');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('134', 'jerrod.monahan', 'Dolorem beatae dicta quos soluta hic aliquam minima libero. Iste dolores ex et exercitationem corrupti et. Sint odio vel vitae voluptatem similique. Rerum enim labore excepturi dolor voluptates.', '698', 'zulauf.gerald@example.net', '54454449', 1, '2016-01-20 12:13:53');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('135', 'christop56', 'Officia rerum modi voluptas omnis. Asperiores sed et incidunt rerum a. Et voluptate culpa iste rem ex ullam modi.', '291', 'smith.josefina@example.net', '371', 0, '1985-05-25 10:25:33');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('136', 'hudson99', 'Itaque fugit explicabo ratione minima iste rerum. Nemo rerum qui qui quae. Et voluptas dicta earum mollitia voluptatem omnis omnis.', '913', 'lynch.paris@example.org', '210939749', 0, '1975-06-09 04:39:39');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('137', 'suzanne56', 'Iusto quae voluptas sed at sed facere ad. Blanditiis eos rerum est animi placeat dolor quidem. Perspiciatis et voluptas possimus qui porro placeat aut.', '155', 'gutkowski.erling@example.net', '32', 0, '1993-03-07 04:11:09');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('138', 'mohammed.deckow', 'Et qui eum quo asperiores quo distinctio atque suscipit. Earum alias asperiores cum.', '494', 'johns.dorris@example.org', '420087', 0, '2004-11-06 04:32:07');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('139', 'deckow.jessika', 'Sapiente modi voluptas omnis illo quod ut. Eius cupiditate accusamus et officiis. Tenetur non sapiente sunt autem autem enim est. Repellat dolor voluptatem nulla architecto aliquid expedita aut.', '376', 'lowe.saul@example.net', '3225148', 0, '1987-11-04 00:45:04');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('140', 'marcia.streich', 'Excepturi possimus inventore aut molestiae cupiditate. Illum nam deleniti fuga rerum nulla autem aperiam. Officia consequatur esse aliquam cupiditate.', '805', 'dkemmer@example.org', '41621955', 0, '2011-09-19 23:25:17');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('141', 'roxanne74', 'Totam et et illum ullam et. Autem est error voluptatum odit maxime dolorem doloribus nam. Est aut ducimus rerum consectetur numquam at rem.', '586', 'mdicki@example.com', '800461', 0, '1971-12-19 09:48:46');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('142', 'lsenger', 'Facere dolores architecto corporis libero. Dolore unde at iusto in. Doloribus ullam consequuntur voluptas quia. Hic quo quia qui accusantium est eum.', '327', 'blanda.dario@example.com', '30614', 0, '1987-09-09 07:59:14');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('143', 'jamar.simonis', 'Aut error vitae totam voluptate necessitatibus repudiandae quia. Aut aut unde consequatur. Et quae accusamus nulla est hic. Repudiandae voluptas dolor deserunt labore. Veniam quaerat unde error corrupti et esse.', '380', 'emmanuelle.hyatt@example.org', '66420723', 0, '1980-03-15 07:46:39');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('144', 'jrau', 'Est atque veritatis et perferendis explicabo id. Voluptas velit nisi amet. Earum ipsam minus ut culpa maxime impedit voluptate at. Tempore rerum porro est.', '722', 'frank.kutch@example.org', '92843280', 0, '1970-09-27 00:07:28');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('145', 'ward.jayne', 'Veritatis hic laborum iste vitae necessitatibus expedita ipsum voluptatum. Dolorem quia est cumque culpa nulla. Tenetur impedit cupiditate odio similique.', '245', 'florida93@example.com', '951', 0, '2019-02-15 22:46:35');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('146', 'glenda87', 'Aut ex vel unde quidem eveniet eos. Vero ut possimus ut perspiciatis vero doloribus. Recusandae excepturi doloremque et aliquid fuga.', '178', 'hyatt.herta@example.org', '85095', 0, '1993-11-20 08:30:49');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('147', 'ugleichner', 'Inventore et dicta rem. Dolores repellendus occaecati nesciunt aut distinctio. Architecto vel enim et quia dolorum optio amet.', '176', 'ghoppe@example.org', '533524715', 1, '2012-07-09 22:09:02');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('148', 'dandre91', 'Voluptatem dolore dolor illo et quam vel possimus aut. Qui dignissimos tenetur natus et neque. Autem mollitia dolorum eaque unde tenetur tempora. Doloremque cumque id aut qui dolor qui porro qui.', '794', 'jnolan@example.org', '8917057', 0, '1987-02-09 16:30:37');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('149', 'cassandra.bosco', 'Atque qui dolorem veniam non labore rerum. Porro aut deleniti voluptatum sed magnam. Quia eum qui vel facere assumenda et. Reprehenderit ducimus ipsa dolorem facere aut adipisci.', '896', 'bert.stark@example.com', '745692233', 1, '2009-03-23 04:00:33');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('150', 'stanton.jerel', 'In enim maiores quam animi. Et sint iure tempore consequatur doloribus quo. Quisquam ex fugiat repellendus omnis minima. Molestiae modi ut animi accusantium saepe minus.', '454', 'maybell90@example.org', '35', 1, '2005-12-15 23:44:48');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('151', 'lchristiansen', 'Error sed temporibus est est aut expedita. Vel minima vel quo repellat. Voluptas quia est eum magni enim.', '359', 'jensen98@example.org', '563638', 0, '1981-08-26 00:23:44');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('152', 'alec.kovacek', 'Itaque quidem eaque et id nihil vitae iusto. Natus quibusdam aut sunt minus eius adipisci est voluptatem. Quo dolor beatae alias voluptatem. Ut quod illum eum temporibus aperiam cumque error sint.', '628', 'vledner@example.net', '97', 0, '1971-11-13 15:00:22');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('153', 'gconnelly', 'Laboriosam rerum et amet autem sit. Eos at aut sed adipisci. Odio dolorum magni suscipit officia non magni.', '699', 'concepcion44@example.org', '796696', 0, '1993-03-23 18:56:39');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('154', 'rasheed.koelpin', 'Odio ut in error dolor nostrum voluptas atque. Eum sapiente et porro distinctio nobis sit. Quidem voluptatem enim ut temporibus animi ipsa. Sint consequatur et amet vero.', '138', 'paula10@example.org', '976854254', 1, '1994-12-14 09:14:18');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('155', 'hollis.johns', 'Dicta qui est voluptatem voluptatum. Ut sit blanditiis nobis accusamus architecto. Quae non quia corrupti delectus et. Fuga amet et temporibus. Sint fugit commodi recusandae maiores illum quas fuga dolor.', '981', 'qjerde@example.org', '727110531', 0, '1979-08-30 22:35:23');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('156', 'jenkins.zena', 'Est ut facilis ipsa maxime totam. Ea amet reprehenderit officia et. Magni libero iste consequatur harum consequuntur. Dolorem nulla veniam omnis nesciunt.', '157', 'madge51@example.org', '878639', 0, '2006-05-26 20:50:59');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('157', 'considine.una', 'Delectus qui possimus asperiores consequatur incidunt ex inventore. Quia minima quod dicta quis autem. Nobis suscipit provident deserunt quisquam natus ut. Quia perspiciatis molestiae eius. Qui veniam quasi reiciendis neque repellendus voluptates repellat aut.', '827', 'hhayes@example.com', '99751', 0, '2004-02-04 13:35:18');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('158', 'kutch.camron', 'Minima iusto alias eos commodi unde saepe tempore. Quis alias beatae delectus aut quia quas veniam. Accusamus ex officia iure doloremque aliquid voluptatem ullam est. Magni maxime qui quas possimus omnis.', '729', 'hester.feeney@example.com', '39809565', 0, '1995-09-05 14:46:10');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('159', 'qpadberg', 'Corporis qui quia dolorum consequatur voluptas. Cum itaque doloremque necessitatibus consequatur officia officia. Repellat fuga hic necessitatibus ullam. Explicabo doloremque voluptatem architecto dolores corporis repellat.', '389', 'schroeder.jaron@example.org', '937261', 1, '1995-01-09 18:19:20');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('160', 'braun.tanya', 'Non non quisquam nulla accusantium iste reiciendis. Voluptates aut itaque est dolor sed maiores. Aut animi enim natus placeat.', '558', 'hand.nichole@example.org', '17', 0, '2004-09-15 04:05:15');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('161', 'clifford74', 'Commodi explicabo eos et neque voluptatem consectetur. Sed sint exercitationem sint maiores a quae eos. Reprehenderit aut eveniet natus qui.', '207', 'vandervort.kellen@example.net', '9788543', 1, '2018-05-28 15:29:11');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('162', 'pouros.ardith', 'A voluptates et beatae ex aut. Nihil dolorem qui aperiam aut laboriosam.', '900', 'jast.vernice@example.org', '299398061', 0, '1980-11-29 00:23:27');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('163', 'wilderman.lindsey', 'Nam dolorum pariatur dolores vel aut. Similique delectus ipsa hic alias. Perspiciatis in reiciendis rerum ea harum. Sint exercitationem recusandae cupiditate adipisci accusamus et qui.', '750', 'isom.gusikowski@example.org', '480420439', 1, '2000-09-13 23:03:06');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('164', 'wilma.boyle', 'Sequi molestias aut et alias. Earum dolorem error occaecati sit soluta quia. Delectus cupiditate reiciendis sunt in dolorem laboriosam tempore. Odio incidunt molestiae maxime aliquid. Nulla facilis aut dolorem.', '237', 'bode.zelda@example.com', '8878', 0, '2008-11-08 17:11:25');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('165', 'lavon71', 'Quas laboriosam autem quam quod vel nihil impedit suscipit. Dolores sed et consectetur asperiores rerum ducimus deleniti. Ut dolorem eum aut sed et corrupti.', '826', 'vince28@example.com', '73036', 0, '2005-08-13 12:48:05');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('166', 'vfeest', 'Voluptatem dolorem delectus eaque minima perferendis repellendus. Voluptates voluptas maiores expedita facilis. Repellendus ipsum natus provident. Voluptas temporibus non quos accusamus incidunt est non.', '966', 'mswift@example.com', '183143', 0, '2010-02-01 09:18:08');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('167', 'lillian.skiles', 'Animi ipsa libero soluta consequatur dolorum. Officiis ducimus et inventore voluptate. Et autem unde at nostrum dolorem dicta.', '690', 'rhettinger@example.com', '999502', 1, '2015-08-19 00:32:45');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('168', 'eugene.considine', 'Fuga minima repudiandae quod voluptas doloremque laboriosam sit. Consectetur sed similique eos qui iusto voluptas molestiae. Sit dolore dolor est recusandae officia. Est alias perspiciatis voluptatem alias error similique placeat.', '769', 'chelsea78@example.com', '51', 0, '1993-05-27 03:38:11');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('169', 'egutkowski', 'Est odio sunt quis fugit omnis ipsam quis. Enim nesciunt a est debitis est consequatur. Quaerat quidem laboriosam doloremque molestiae.', '910', 'barrows.keagan@example.net', '90', 0, '1976-10-23 17:34:56');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('170', 'howe.cedrick', 'Blanditiis sit delectus fuga hic ipsum unde. Rem est numquam mollitia voluptas aut non est. Eligendi libero debitis dolor ipsam ut. Rem iusto ex numquam aliquam dicta autem quo commodi.', '366', 'ledner.price@example.net', '3076244', 0, '1976-10-05 13:44:53');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('171', 'mariah12', 'Accusamus vel facere cumque dolores non porro quos explicabo. Nihil repellendus perferendis quo exercitationem. Aut repellendus sapiente consequatur nobis. Similique quae est iusto sit unde et sequi.', '643', 'nettie.botsford@example.org', '39771548', 0, '2011-01-16 20:42:24');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('172', 'norris65', 'Molestiae dolorem unde et vel. Eius ducimus repellendus deleniti debitis quasi. Illo itaque pariatur quas rerum.', '804', 'kaelyn64@example.org', '46362182', 0, '1982-09-05 08:47:18');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('173', 'marion68', 'Ipsa nihil dicta cupiditate deleniti qui adipisci. Rerum cupiditate velit possimus sed molestiae voluptas. Aliquid nam facilis aut et expedita quidem saepe modi. Eum accusamus sit fuga dolorem maiores repellendus soluta. Voluptatem eaque maxime quae corporis asperiores.', '602', 'rubye60@example.org', '380602', 0, '1977-11-20 22:32:59');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('174', 'cloyd99', 'Placeat molestiae modi praesentium. Amet totam blanditiis asperiores magni. Nostrum asperiores aut omnis ut aperiam magnam itaque.', '606', 'eliza.steuber@example.com', '580475', 1, '1978-12-15 20:07:06');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('175', 'lazaro74', 'Quia incidunt occaecati velit illo temporibus. Et nemo non est numquam. Necessitatibus deserunt odio soluta tempore. Sit eaque optio rem veniam ullam quidem.', '421', 'emily77@example.com', '981', 1, '2004-05-10 09:57:57');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('176', 'karina73', 'Saepe odit quam et reiciendis aspernatur natus sit ut. Sunt nulla in culpa impedit et expedita. Omnis saepe doloremque fugiat. Hic qui aut dolor totam ut repellat inventore.', '546', 'dwill@example.net', '14', 0, '2012-03-24 10:28:26');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('177', 'hreinger', 'Officia atque sint mollitia sint. Illum officiis voluptatem explicabo corporis cum nemo ut fuga. Dolor rerum suscipit officia explicabo voluptas rerum quae dolores. Est unde eos consequuntur ex natus consequatur quidem qui.', '267', 'otorp@example.com', '71034420', 0, '1973-11-13 01:19:54');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('178', 'vladimir.hamill', 'Distinctio omnis illo saepe tempora porro. Iusto aspernatur alias at architecto ex optio. Non qui sit rerum sunt.', '45', 'herminio.daugherty@example.net', '555', 0, '2008-07-26 10:27:57');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('179', 'moses.boehm', 'Iusto fuga non minima aut. Quidem cum odio et quaerat repudiandae minima omnis. Ratione non voluptatem necessitatibus. Quibusdam aut ut voluptatem provident fuga reiciendis.', '316', 'jarrod.bins@example.com', '785877', 1, '2001-06-09 20:27:42');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('180', 'ulabadie', 'Unde et est dolorum. Vel optio voluptatem qui ipsum molestias. Ipsa itaque quis rerum hic dolore quibusdam.', '975', 'cbashirian@example.com', '83993', 0, '2014-03-05 01:07:09');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('181', 'vpagac', 'Optio ratione enim cum. Asperiores vitae iste eos. Vero et minus sint inventore et ex accusantium.', '310', 'noemy.marvin@example.org', '295', 1, '2006-06-16 13:15:35');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('182', 'nsauer', 'Eaque autem officia ut voluptatem quia repellendus. Facere quod voluptas aspernatur occaecati sunt fugit tenetur. Omnis sint qui autem ducimus. Quos ratione possimus esse ex iste.', '566', 'kara68@example.net', '4576585', 1, '2017-06-07 22:22:22');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('183', 'landen57', 'Consectetur quo amet quis velit sequi vero. Vel accusantium enim non. Quos harum optio velit vitae. Nulla unde minima deleniti asperiores facilis omnis aut.', '128', 'stevie11@example.org', '424415', 0, '1986-06-25 13:38:28');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('184', 'leonora.heathcote', 'Sed dolores cumque fugiat qui ex. Similique vel fugit consequuntur voluptatibus. Aliquam et expedita corporis provident odio nisi sunt. Quibusdam cumque reiciendis praesentium voluptas vero.', '148', 'audie.kris@example.org', '1482', 0, '1983-10-11 21:53:04');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('185', 'blaze.treutel', 'Deleniti eligendi porro vel non quasi quidem saepe. Ab itaque est occaecati temporibus expedita rerum. Non aut sunt illum et velit ut atque. Nobis quia quia eum porro dolorem consequatur.', '523', 'geo.feest@example.com', '345859', 0, '2014-08-16 12:54:12');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('186', 'owalsh', 'Quisquam et dolores voluptatem sit repudiandae assumenda. Id dicta ratione architecto dolore. Repellat aliquam magni animi eveniet rerum rem molestiae. Quam nemo non aut nostrum quia quas accusantium veniam.', '544', 'kevon64@example.net', '9358351', 0, '1970-09-26 06:25:49');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('187', 'rafaela53', 'Minima voluptatibus doloremque voluptatem facilis voluptate tempore non quae. Porro voluptatem occaecati repellendus sunt autem. Eos doloribus dolorum placeat non praesentium aliquid cum.', '882', 'joanny.marvin@example.com', '5655424', 1, '2002-06-27 17:52:56');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('188', 'pouros.hipolito', 'Voluptas distinctio voluptas ut ab aut velit quaerat mollitia. Tempore placeat quod minus consequuntur placeat ab praesentium. Sit id explicabo omnis et.', '725', 'ed91@example.com', '610', 1, '1992-01-23 14:25:43');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('189', 'alowe', 'Aut magnam sed explicabo et voluptatem rerum labore. Error voluptas quo quas consequatur vitae iusto deleniti. Harum quia laborum enim ullam ipsa sed. At laboriosam molestiae quisquam aut omnis quia et.', '711', 'kleannon@example.com', '58', 0, '1988-12-11 12:51:44');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('190', 'lucio.rowe', 'Animi recusandae officia repellat natus praesentium. Facilis autem modi et cupiditate commodi corporis maxime velit. Provident fuga quasi aspernatur beatae asperiores. Et inventore sed dolorum doloribus vitae cum.', '52', 'rogahn.jane@example.net', '39', 0, '1997-02-23 07:42:13');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('191', 'carson.johnston', 'Ut ut perspiciatis ut neque molestiae est in optio. Omnis inventore enim autem ut eum fugiat. Dolores sed iste vitae consequatur cumque facilis. Facilis ut voluptas quo corporis ea.', '107', 'ymorar@example.net', '70', 0, '2001-04-18 05:11:23');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('192', 'marks.fern', 'Ad at accusantium sequi accusamus quod maiores omnis. Dolore voluptatem dolor voluptas corporis nobis rerum recusandae. Soluta facere cupiditate dolores placeat aliquid et. Saepe esse quaerat occaecati aut dolor rerum.', '964', 'josiah.metz@example.com', '16961169', 0, '1980-10-21 15:22:17');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('193', 'mhowe', 'Voluptas dolores reprehenderit eos minima cum in. Molestias itaque placeat et perferendis similique praesentium sunt. Molestias consequatur rerum unde alias modi id sit. Quo nostrum pariatur consequatur quibusdam laborum quidem voluptatem asperiores.', '204', 'melvin.collins@example.com', '63014', 0, '2017-07-06 09:09:42');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('194', 'cgorczany', 'Consequatur mollitia dolorem est neque molestias et. Fugit iure voluptate suscipit. Voluptatem eos in earum. Sit error exercitationem rerum delectus distinctio molestias. Laudantium voluptatibus nam sunt totam.', '427', 'yost.monserrat@example.net', '51367961', 1, '1989-10-03 23:18:51');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('195', 'brandon.goldner', 'Aliquid officiis occaecati quia aliquam voluptatem enim velit. Iure molestias sint saepe fuga. Iure eligendi dolore dolorem corrupti.', '755', 'okuneva.gerda@example.org', '200409', 0, '2009-11-07 09:04:16');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('196', 'lelah27', 'Veniam ut facilis a aut et esse. Soluta qui delectus dolores et a ducimus aliquam. Minus optio culpa temporibus magnam quisquam rerum est. Amet odit non sit consectetur cupiditate accusamus.', '704', 'bryana.effertz@example.com', '1603', 1, '1973-06-29 12:19:11');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('197', 'aspinka', 'Nesciunt quia accusamus ut voluptas. Enim molestiae sit consequuntur fuga tempore autem. Et dolore ea velit reprehenderit voluptate et. Neque quisquam et et vel eum totam.', '236', 'vicente.green@example.org', '3896', 1, '2004-03-27 08:10:03');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('198', 'khackett', 'Neque veniam dolores deleniti voluptates libero iusto. Delectus inventore eligendi aut. Quas et accusamus sed aut consequatur natus. Eum saepe nemo est et maiores et odio qui.', '783', 'howell.barbara@example.org', '33658888', 0, '1982-01-21 17:31:13');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('199', 'dallin.rempel', 'Ipsa voluptatem magnam expedita est voluptatem sint est provident. Quas neque corrupti et atque dolorum nobis est. Omnis ut doloremque nesciunt aperiam vel.', '571', 'ole.hahn@example.com', '6901196', 0, '2001-10-09 16:54:36');
INSERT INTO `users` (`id`, `nickname`, `description`, `photo_id`, `email`, `pass`, `is_author`, `created_at`) VALUES ('200', 'donnelly.bailey', 'Odio sed aliquid ipsam in consequatur ut. Ipsum eius ipsum qui ut molestiae error. Repellat et et deleniti ipsam.', '582', 'cole.ricardo@example.com', '133541', 0, '1996-11-22 11:22:44');


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

INSERT INTO authors (user_id, nickname, description, photo_id, email, pass, created_at) SELECT id, nickname, description, photo_id, email, pass, created_at FROM users WHERE is_author=1;

drop table if exists fanfics_authors;
create table fanfics_authors(
	author_id bigint unsigned not null,
    fanfic_id bigint unsigned not null,
    foreign key(author_id) references users (id),
    foreign key(fanfic_id) references fanfics (id)
);

INSERT INTO `fanfics_authors` VALUES ('17','36'),
('181','18'),
('41','3'),
('44','38'),
('194','17'),
('76','14'),
('167','29'),
('163','35'),
('33','7'),
('6','49'),
('105','10'),
('103','43'),
('34','16'),
('98','1'),
('179','11'),
('150','21'),
('161','33'),
('154','42'),
('72','40'),
('9','26'),
('75','41'),
('12','24'),
('174','44'),
('182','48'),
('95','20'),
('121','27'),
('187','30'),
('128','23'),
('2','13'),
('108','28'),
('91','4'),
('69','12'),
('84','25'),
('118','6'),
('52','45'),
('86','50'),
('196','9'),
('60','15'),
('134','5'),
('147','31'),
('188','22'),
('111','46'),
('82','37'),
('71','8'),
('7','19'),
('149','47'),
('22','39'),
('43','32'),
('38','2'),
('197','34'); 

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

INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('1', '148', '2', 'At esse illum dignissimos ullam ut quia nam.', '1972-04-21 09:17:30', '1980-10-25 23:02:39');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('2', '195', '1', 'Distinctio cupiditate iste sapiente quia ea maxime suscipit nostrum. Quia asperiores minus porro.', '1984-08-30 21:13:06', '2015-07-31 18:46:29');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('3', '166', '6', 'Quasi officia incidunt quae rerum soluta.', '1986-12-12 00:01:23', '1996-05-19 06:53:52');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('4', '34', '42', 'Culpa et porro qui qui reiciendis consequatur consectetur.', '1996-02-12 13:01:52', '2001-02-08 16:47:52');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('5', '168', '20', 'Et reprehenderit optio accusamus exercitationem eos velit hic numquam.', '2016-01-21 15:37:13', '2010-08-07 07:36:36');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('6', '151', '28', 'Quo odio omnis natus. Enim quo doloremque consequuntur aut delectus quidem.', '2001-02-04 22:23:08', '2010-10-15 10:23:59');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('7', '43', '18', 'Commodi commodi rerum et et nam quo laboriosam iste. Ducimus ut ea et voluptatem autem eum numquam.', '1989-06-11 16:23:59', '1979-02-14 08:23:00');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('8', '23', '23', 'Officiis recusandae et in quod.', '2003-09-10 10:01:27', '2009-09-11 02:39:48');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('9', '53', '38', 'In omnis velit asperiores nam aliquam et doloremque. Optio et eaque sit.', '1989-01-18 11:33:04', '2008-03-01 15:31:36');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('10', '198', '30', 'Distinctio aliquid earum dolor.', '1992-01-16 01:14:50', '1974-10-17 06:33:04');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('11', '165', '8', 'Iure odit vero maiores harum.', '1989-09-13 12:31:13', '2009-06-14 15:09:07');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('12', '77', '19', 'Ut odio quidem sint soluta aliquid accusamus pariatur. Ducimus incidunt laborum corrupti nostrum.', '2009-07-01 20:05:12', '1984-12-04 10:31:39');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('13', '86', '14', 'Vitae sed et ut consequuntur architecto.', '1991-01-11 14:46:06', '1976-03-20 18:46:53');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('14', '100', '16', 'Modi praesentium tenetur nemo harum occaecati velit. Culpa facilis est ut aut ut sit.', '2017-08-12 00:02:36', '1994-01-09 10:59:09');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('15', '16', '38', 'Qui ut totam voluptas inventore. Pariatur optio et vero ipsam nemo deserunt quod.', '1992-10-01 07:56:57', '2016-11-05 18:35:41');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('16', '61', '41', 'Aut placeat dolorum quidem quam dolor.', '2001-10-25 03:30:24', '2002-02-17 05:22:59');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('17', '156', '14', 'Enim aspernatur fugit eum omnis aut aliquid voluptas.', '1998-04-17 18:22:45', '1993-04-18 03:11:08');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('18', '168', '31', 'Delectus delectus explicabo ex asperiores sequi.', '2007-04-18 13:34:35', '2019-07-04 15:38:34');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('19', '78', '1', 'Nulla aperiam molestiae et sed nam.', '2009-08-17 05:47:25', '1987-12-07 13:35:42');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('20', '86', '12', 'Et quaerat quibusdam accusantium voluptatem omnis rem. Id et distinctio aut et delectus harum.', '1988-01-02 07:20:31', '2009-09-17 00:29:00');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('21', '79', '10', 'Quos soluta quaerat molestiae voluptatibus et. Enim doloremque quas aut facere optio.', '1989-10-21 18:13:55', '1981-09-24 06:22:25');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('22', '154', '31', 'Est corrupti dolores perferendis suscipit.', '1998-12-06 06:08:41', '2019-10-25 20:07:31');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('23', '108', '45', 'Ad et et et rem.', '2015-02-02 19:22:45', '1998-08-23 10:24:51');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('24', '14', '41', 'Temporibus minima aut qui ratione soluta ut laborum ut. Quas autem a facilis.', '1996-04-10 06:07:38', '1973-03-29 15:03:29');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('25', '129', '3', 'Minima est possimus cupiditate quas. Eos consequatur sit sed nisi ea quo animi.', '1972-08-03 07:06:32', '1999-05-01 06:19:15');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('26', '77', '24', 'Ipsam quos id impedit et ut.', '2015-10-12 07:19:28', '1994-05-28 18:20:17');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('27', '41', '39', 'Saepe sit illum ab. Quo illo quos ratione.', '1976-02-25 23:13:43', '2000-01-16 13:58:47');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('28', '169', '32', 'Ut voluptatem autem provident sed veniam.', '2018-08-23 20:51:54', '2003-02-14 03:28:59');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('29', '8', '17', 'Laboriosam quisquam est sunt iusto.', '1981-04-15 02:11:30', '1983-11-27 08:37:25');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('30', '189', '6', 'Dolore et omnis harum illum qui dolor qui. Aut et nulla tempore suscipit deserunt voluptates dolores.', '2007-11-18 21:33:02', '1995-06-15 12:07:07');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('31', '19', '13', 'Non magni quia totam.', '1971-12-03 05:24:52', '2009-09-04 04:42:01');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('32', '187', '44', 'Quibusdam a similique fugiat adipisci at.', '1998-06-17 21:13:05', '2004-02-10 07:38:25');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('33', '106', '39', 'Nihil consequatur nihil eius quam suscipit.', '2017-06-23 18:23:20', '1972-10-09 09:31:19');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('34', '95', '46', 'Rerum impedit aut suscipit doloremque et minima alias magni.', '1982-04-04 07:57:18', '1977-04-04 21:01:00');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('35', '155', '46', 'Sed neque ut quia aperiam sint quo.', '1995-12-16 13:25:04', '2002-03-25 11:53:52');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('36', '27', '9', 'Vel odio consequatur sunt magni aut nemo quidem.', '1983-01-13 20:16:59', '1994-04-11 18:08:36');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('37', '18', '46', 'Quod optio debitis et dolore dignissimos.', '2019-06-13 19:14:10', '1991-02-04 15:11:37');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('38', '155', '32', 'Quibusdam alias tempora non non cumque ipsam.', '1983-05-12 00:24:55', '2010-09-01 12:37:23');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('39', '157', '42', 'Et iusto et et sequi blanditiis voluptatum.', '1977-03-11 19:18:07', '2015-10-27 15:49:00');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('40', '86', '22', 'Perferendis est in doloribus ut et vel omnis. Possimus consequatur aut libero illo magni saepe.', '1992-06-21 00:00:20', '1999-09-30 01:40:38');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('41', '180', '41', 'Commodi aut nulla minima dicta totam. Voluptatem a rerum sed laboriosam.', '2005-09-18 00:50:46', '2003-06-28 03:44:37');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('42', '178', '5', 'Veritatis aut ut enim commodi facilis.', '1989-02-20 22:00:45', '2011-10-01 10:55:04');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('43', '116', '37', 'Esse eos libero qui eum mollitia sed sint.', '2007-07-24 15:06:41', '1997-07-24 21:43:43');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('44', '147', '31', 'Repudiandae repellat sint velit est. Ea illo minus placeat voluptas et et quasi dolor.', '2005-05-23 10:30:26', '1983-05-20 16:14:58');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('45', '14', '34', 'Esse laudantium aliquid iste repudiandae nihil eos amet inventore. Facere rem ut quam in et nesciunt.', '1973-09-28 18:51:41', '2000-10-22 09:48:07');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('46', '146', '9', 'Nostrum unde veniam qui sunt minima vero cupiditate repudiandae. Veniam nulla perspiciatis blanditiis ea voluptatem.', '2007-05-17 01:24:31', '2008-03-10 08:30:35');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('47', '185', '33', 'Ipsum quia est debitis quis illo aut voluptates. Libero nihil excepturi et facilis.', '2019-01-13 21:36:00', '1988-02-02 09:23:32');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('48', '7', '23', 'Aut ut cum esse qui et.', '1983-03-12 21:12:16', '1985-01-18 19:15:06');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('49', '86', '26', 'Ut voluptatem praesentium dolorem ducimus est ut error adipisci.', '2004-04-04 04:13:29', '2004-02-17 11:50:34');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('50', '73', '11', 'Ut ut repellendus nulla sequi reprehenderit. Nostrum voluptatem cupiditate dolorem in.', '1998-05-30 15:43:43', '2006-03-06 05:50:23');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('51', '82', '25', 'Dolor omnis aspernatur occaecati non asperiores omnis.', '1988-04-15 23:21:06', '2016-05-07 19:36:18');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('52', '74', '25', 'Autem sed vitae quibusdam. Aut rerum quam inventore consequatur ut distinctio dignissimos.', '2007-05-18 21:24:32', '2015-01-07 03:05:13');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('53', '79', '7', 'Rem aut neque ducimus voluptas suscipit ducimus.', '1993-01-16 20:01:26', '2010-01-05 15:19:44');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('54', '26', '9', 'Saepe consequatur tempore consequuntur. Voluptas est debitis omnis dolorum dolorem eum ut.', '2014-06-17 18:36:52', '2019-05-10 02:39:18');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('55', '196', '28', 'Impedit illo expedita eligendi quia quas.', '1994-06-30 04:51:43', '2006-09-10 01:53:44');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('56', '120', '44', 'Voluptatem quod voluptas maxime ipsam.', '2017-10-08 12:44:44', '2005-10-25 18:14:24');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('57', '74', '25', 'Atque odio enim non occaecati et consequatur qui. Blanditiis dolorem corporis voluptate possimus.', '2009-10-14 00:45:29', '1993-09-12 19:41:57');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('58', '195', '48', 'Aperiam molestiae sunt facilis eum libero commodi earum. Ducimus dolorum quasi nihil aut quaerat libero unde.', '2014-11-07 15:43:32', '1972-01-27 00:29:30');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('59', '43', '36', 'Quia voluptas hic libero cumque doloremque cumque.', '2002-06-06 08:31:31', '1970-03-19 00:06:40');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('60', '112', '15', 'Ex vitae totam natus labore.', '2012-02-29 15:54:45', '1976-06-06 12:21:02');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('61', '76', '15', 'Sunt hic culpa explicabo quo accusamus.', '1985-11-18 20:55:07', '1986-08-23 10:46:42');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('62', '89', '16', 'Numquam ut in qui illo odit nostrum libero. Et atque sunt exercitationem rerum in totam illum delectus.', '1996-07-03 04:49:38', '2012-02-06 03:59:17');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('63', '189', '24', 'Ea voluptas nostrum animi laudantium rem.', '2007-12-24 19:21:05', '1991-05-17 09:37:59');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('64', '151', '19', 'Molestias sit perferendis architecto quo. Qui quia nihil voluptatem.', '1986-05-20 14:51:06', '1992-11-19 23:51:48');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('65', '197', '6', 'Similique est eaque expedita asperiores corporis voluptas.', '1974-03-09 01:30:16', '2011-09-09 15:15:05');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('66', '115', '20', 'Impedit et unde necessitatibus est. Animi perferendis unde minus amet.', '1974-03-22 08:57:04', '1993-04-30 01:35:58');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('67', '122', '47', 'Nostrum quidem doloribus ratione eligendi pariatur.', '2006-04-29 22:38:59', '1990-09-30 10:04:38');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('68', '178', '1', 'Vitae tenetur deleniti ullam. Quis harum consequatur inventore repellendus at.', '1992-09-11 16:31:21', '1989-07-02 17:11:17');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('69', '16', '1', 'Voluptatem qui cumque cumque corrupti quia nemo. Natus hic dolores quo voluptas sit.', '1971-09-22 03:28:08', '1975-10-16 01:10:49');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('70', '36', '3', 'Quas quis voluptas eum praesentium vel. Iure dignissimos omnis ab est recusandae dicta consequatur.', '2014-03-03 19:15:10', '2000-07-26 09:03:25');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('71', '114', '39', 'Aut voluptate sunt non atque quia est earum. Assumenda doloremque accusantium consectetur qui.', '2012-03-19 00:10:48', '1987-05-24 20:46:55');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('72', '187', '47', 'Dolores culpa voluptates qui delectus.', '1995-11-19 05:40:06', '1972-03-14 12:28:53');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('73', '53', '46', 'Eos minima autem eligendi at eum. Et omnis qui officiis reprehenderit excepturi.', '1991-07-02 23:51:07', '1974-03-06 09:57:41');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('74', '177', '24', 'Qui cupiditate dicta cum.', '1992-06-07 18:34:24', '2001-06-02 07:58:12');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('75', '123', '22', 'Sit omnis nam error assumenda. Ex dolores fuga est.', '1982-10-10 04:47:57', '2010-07-03 23:05:02');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('76', '153', '50', 'Earum accusamus perspiciatis ratione ad autem.', '1979-11-09 13:21:38', '1991-01-31 05:31:05');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('77', '146', '11', 'Architecto inventore distinctio architecto suscipit. Sint nesciunt nobis odio est quaerat fugit.', '1997-03-20 10:07:17', '1982-08-07 12:22:28');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('78', '59', '34', 'Sed ducimus totam qui est. Sunt fuga similique consequatur occaecati quod.', '1975-05-19 20:23:26', '1989-10-14 17:26:42');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('79', '137', '3', 'Molestias quasi cupiditate est vitae eligendi.', '2009-01-08 13:07:19', '1973-03-05 22:03:38');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('80', '9', '34', 'Culpa quam dignissimos ut aspernatur deleniti ducimus.', '1989-05-27 17:48:10', '2010-03-14 02:55:28');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('81', '33', '31', 'Consequatur et et rem exercitationem. Sed qui est aliquam aut id atque.', '1991-09-12 11:55:08', '2009-08-02 01:39:07');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('82', '11', '39', 'Eum voluptas molestiae inventore molestiae magni maxime aut voluptas. Eos voluptatem quo distinctio impedit.', '1973-04-27 17:56:15', '1972-08-17 08:15:14');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('83', '111', '48', 'Voluptatem repellat laborum fugiat sed fugiat ut quidem.', '2008-07-02 08:26:13', '1995-11-13 17:52:56');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('84', '155', '32', 'Alias culpa porro eos sint qui harum facilis.', '1986-06-26 18:24:49', '1992-08-03 04:58:45');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('85', '192', '48', 'Aut quos voluptas nobis quos. Nemo odio delectus beatae totam praesentium quidem.', '1986-01-23 03:58:02', '2015-11-13 15:56:35');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('86', '139', '27', 'Quo est dolorem occaecati nesciunt aut. Eum exercitationem et mollitia neque aut.', '2019-08-27 00:34:25', '1992-07-14 10:46:44');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('87', '146', '32', 'Et sed natus temporibus sed quo cumque vel praesentium. Cum in eos officia exercitationem aliquam qui ullam reprehenderit.', '1973-09-08 10:39:52', '2019-07-25 23:55:11');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('88', '93', '50', 'Voluptatem perspiciatis rerum et cum quod. Voluptatem facere rem quasi non perferendis qui rerum.', '1970-10-12 03:08:45', '1986-01-06 00:25:46');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('89', '107', '18', 'Sed nostrum sint occaecati tempora nobis iusto modi. At ratione beatae commodi doloribus.', '2012-11-11 14:53:12', '1988-03-20 17:53:20');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('90', '95', '8', 'Et exercitationem ut aut dolorem rerum molestiae doloremque. Sint eum ut exercitationem iure enim.', '2015-08-22 15:06:05', '1994-02-22 14:08:26');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('91', '157', '12', 'Commodi iste dolores mollitia aut sed illum. Voluptates necessitatibus voluptatem ad numquam quibusdam voluptatem.', '2008-04-07 06:08:43', '2015-05-15 21:25:00');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('92', '28', '26', 'Quo laborum libero blanditiis aut.', '1982-09-23 22:40:37', '2013-09-02 00:43:36');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('93', '89', '22', 'Quos voluptatem voluptatem repellat et veritatis voluptas esse accusantium. Et consequuntur neque sed labore.', '2002-05-26 21:06:02', '1986-05-25 10:45:35');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('94', '36', '7', 'Incidunt qui rerum mollitia nihil fugiat ullam voluptatem atque. Sint facere sed et.', '2011-07-28 16:17:53', '1992-10-23 10:33:44');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('95', '95', '12', 'Error sit reprehenderit placeat excepturi quidem.', '2016-10-26 20:39:57', '2011-11-30 16:47:13');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('96', '158', '32', 'Dolor laboriosam quaerat fuga quod. Laborum corporis qui qui incidunt.', '2009-06-27 17:43:12', '1971-07-09 17:20:41');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('97', '168', '42', 'Reprehenderit nemo qui fuga et.', '2010-12-28 21:05:01', '1999-10-19 09:39:59');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('98', '81', '20', 'Voluptatibus hic quod dolorem laboriosam voluptas quos.', '2001-07-16 00:06:34', '1993-08-23 04:19:15');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('99', '157', '9', 'Aut totam velit exercitationem ut.', '2004-02-14 14:51:44', '2015-10-08 00:40:03');
INSERT INTO `comments` (`id`, `user_id`, `fanfic_id`, `body`, `created_at`, `updated_at`) VALUES ('100', '5', '37', 'Neque in exercitationem sint nihil et odio. Illum voluptatem amet ipsum numquam ut est voluptatum.', '1994-09-11 19:25:10', '2001-09-09 23:30:15');


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

INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('1', '71', '38', 'Et vitae accusamus vel consequatur in eos sit. Dolorem molestiae ullam inventore numquam hic laborum et.', 1, '1988-09-03 21:36:36');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('2', '64', '178', 'Autem est dolor qui alias porro sapiente aliquid earum.', 0, '2003-12-02 05:00:14');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('3', '71', '191', 'Reprehenderit eos perferendis odit et repellendus.', 0, '1981-02-23 20:25:50');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('4', '114', '138', 'Commodi velit alias quaerat in.', 1, '2003-07-30 01:35:38');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('5', '4', '189', 'Molestias et temporibus eligendi rerum omnis aut ratione.', 0, '2003-12-22 21:49:11');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('6', '41', '51', 'Accusamus ad consectetur provident possimus. Neque sit aut maiores error sapiente veritatis.', 0, '2013-02-01 14:53:17');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('7', '44', '6', 'Aut illo aut et est sit ut. Aspernatur maiores vitae id est veniam corrupti laboriosam.', 1, '1999-10-08 11:35:11');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('8', '196', '136', 'Commodi modi voluptatem voluptas iste at et sint.', 1, '2012-02-24 10:19:25');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('9', '55', '50', 'Rerum nulla tempora ut perspiciatis error.', 1, '2008-09-15 03:15:32');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('10', '150', '1', 'Vel enim veniam illo debitis.', 0, '2005-09-03 11:12:11');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('11', '161', '93', 'Doloremque aperiam libero et aut ducimus. Ex molestias ut repellendus voluptas eligendi quibusdam sunt possimus.', 1, '1984-10-08 03:51:06');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('12', '16', '34', 'Delectus aut et eos aperiam reiciendis dolor natus.', 1, '2015-07-27 23:53:35');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('13', '137', '53', 'Nobis optio excepturi perferendis est ut. Quae aliquam esse possimus amet qui.', 1, '2014-12-10 10:09:23');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('14', '187', '195', 'Ipsum numquam voluptatum vel atque.', 0, '1976-02-01 02:27:56');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('15', '190', '38', 'Aut qui architecto inventore aut nostrum quo voluptas aliquid.', 0, '2001-12-06 11:03:16');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('16', '83', '61', 'Voluptatibus optio eius corporis.', 0, '1991-05-30 09:34:24');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('17', '75', '147', 'Consequatur est nobis quae itaque repudiandae beatae. Perspiciatis rerum et doloremque minus.', 0, '1994-04-10 01:11:21');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('18', '38', '146', 'Voluptatibus et accusamus impedit error consequatur vero.', 0, '1972-09-29 03:24:39');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('19', '137', '151', 'Dicta delectus impedit necessitatibus repudiandae quisquam in.', 0, '1972-07-31 12:06:32');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('20', '83', '141', 'Hic rerum eum quidem aut culpa modi inventore. Et rerum laudantium nam nostrum et neque nisi.', 0, '2007-11-17 06:32:56');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('21', '139', '124', 'Quasi officiis mollitia nobis aut ipsum iste. Cupiditate expedita ut tenetur eum quam minus.', 0, '2016-06-07 14:24:12');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('22', '191', '183', 'Saepe deleniti quo harum voluptatibus voluptas eum. Excepturi voluptatibus iste optio.', 1, '1974-08-21 08:33:45');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('23', '130', '187', 'Ratione architecto voluptatem similique.', 0, '1975-06-12 13:29:31');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('24', '118', '184', 'Adipisci totam corporis enim incidunt illum. Alias natus quam aut necessitatibus.', 0, '1971-07-09 22:31:47');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('25', '36', '68', 'Incidunt aut veniam consectetur earum.', 0, '2001-12-21 23:01:38');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('26', '185', '197', 'Voluptatem sunt error beatae architecto architecto doloribus tempore. Aspernatur quia aliquam et excepturi quo veniam voluptatem.', 1, '2004-04-22 18:28:39');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('27', '161', '200', 'Sapiente non voluptatem sunt laborum nisi.', 1, '2004-02-12 05:05:56');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('28', '30', '97', 'Quaerat at autem illum saepe eaque assumenda nihil. Nihil et expedita dicta aperiam cupiditate eligendi.', 1, '1985-08-12 00:26:34');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('29', '52', '16', 'Eius ullam neque aut et aut vitae praesentium.', 1, '1988-03-25 11:43:13');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('30', '91', '41', 'Quas ipsa reprehenderit non consectetur. Adipisci vel nulla sint sapiente laudantium.', 1, '1995-11-06 18:29:05');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('31', '54', '174', 'Incidunt non corporis et dicta sint dolorem. Sit omnis laborum enim nobis debitis.', 0, '1972-01-11 23:39:43');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('32', '102', '128', 'Fuga pariatur quos eveniet aperiam.', 1, '2012-07-05 18:36:51');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('33', '120', '139', 'Error deserunt nisi voluptatum dicta assumenda esse aliquam.', 0, '2014-10-27 11:59:11');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('34', '73', '57', 'Aut necessitatibus temporibus voluptatibus non doloribus ea. Ea distinctio saepe excepturi et distinctio sed rerum.', 0, '2000-10-01 11:22:36');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('35', '90', '156', 'Ut ullam deserunt voluptatibus. Sint voluptatem incidunt saepe quia.', 0, '1974-01-05 21:01:49');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('36', '197', '29', 'Inventore esse quo tempora praesentium quaerat. Consequatur voluptas architecto ut nihil.', 1, '1997-03-24 06:44:05');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('37', '79', '187', 'In nihil quis ratione ipsum porro. Veniam quasi architecto nobis sit et.', 0, '2007-12-18 05:14:41');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('38', '12', '8', 'Tempore consequuntur facere sit nulla aut at dolor. Ut qui nesciunt sit.', 0, '1970-05-01 00:54:12');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('39', '173', '129', 'Hic necessitatibus quod qui sint vel dolorum.', 1, '1989-07-29 21:34:40');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('40', '191', '9', 'Earum optio voluptatem quis quis. Ratione unde earum aperiam vitae qui.', 0, '2010-03-15 17:49:04');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('41', '197', '175', 'Voluptas necessitatibus delectus aut velit aspernatur rerum.', 0, '1998-02-15 09:07:53');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('42', '5', '157', 'Quod eius similique voluptatem aut.', 0, '2004-08-07 01:39:37');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('43', '175', '35', 'Molestiae aperiam a dolor doloribus dolorum at quia.', 0, '2014-08-31 07:17:28');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('44', '54', '26', 'Assumenda id et accusantium aut repellat facere voluptate ut.', 1, '2003-11-07 17:58:18');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('45', '51', '145', 'Fuga eligendi ut unde et.', 1, '2000-07-29 23:40:41');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('46', '67', '104', 'Cupiditate veniam voluptatum nemo hic animi.', 1, '1980-02-14 06:17:52');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('47', '119', '168', 'Impedit quaerat iusto reiciendis provident.', 0, '2013-01-10 04:25:21');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('48', '31', '39', 'Veritatis numquam fugit alias eaque porro quo.', 1, '1985-11-07 22:32:19');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('49', '107', '104', 'Libero ratione vel eligendi asperiores temporibus est voluptas.', 1, '1999-12-18 01:55:03');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('50', '95', '196', 'Fuga dolor occaecati voluptatem aut. Dolor qui porro iste dolorem qui.', 1, '2002-10-07 15:09:06');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('51', '59', '91', 'Quia delectus nihil ut eligendi tempore tempore deleniti nulla.', 1, '2014-12-11 06:35:18');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('52', '25', '137', 'Perferendis enim sint eius.', 1, '1978-05-20 16:58:43');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('53', '78', '36', 'Omnis minima illum corporis id ea. Saepe deserunt quae eum qui corrupti excepturi blanditiis.', 1, '1986-10-04 11:12:32');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('54', '145', '50', 'Exercitationem quia amet voluptatum exercitationem quis id.', 1, '1975-04-02 21:59:56');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('55', '165', '135', 'Enim animi molestiae aut laboriosam.', 1, '1984-08-29 00:34:24');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('56', '59', '162', 'Quidem velit dolorem nesciunt quas.', 0, '2014-07-13 07:48:28');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('57', '110', '64', 'Consequuntur corrupti adipisci dolores molestiae ullam. Vero molestiae rem corrupti eaque perferendis non explicabo.', 0, '2001-04-24 08:50:24');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('58', '118', '85', 'Quia rerum modi maxime eum voluptates cupiditate.', 1, '1988-01-03 17:55:03');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('59', '98', '172', 'Autem quam iste praesentium saepe.', 1, '2009-10-26 20:46:56');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('60', '110', '148', 'Asperiores id exercitationem quam quos impedit.', 1, '1989-07-27 06:42:06');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('61', '116', '177', 'Unde ut sed totam accusamus similique voluptates dolor.', 0, '2013-07-07 11:58:35');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('62', '51', '35', 'Et nam molestiae corrupti voluptatem rerum.', 0, '1993-09-29 06:59:28');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('63', '145', '82', 'Voluptatem eum pariatur optio similique iste quia aspernatur. Magnam qui et quos qui dolores et dignissimos.', 0, '1984-06-30 21:59:53');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('64', '73', '51', 'Tempore qui sunt nihil unde sed nemo est. Tempora corporis quos dolores dolorum.', 1, '1997-11-26 07:20:15');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('65', '186', '167', 'Ad blanditiis reprehenderit quis ab voluptate autem.', 0, '1988-08-28 02:59:39');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('66', '47', '44', 'Quae maxime possimus beatae officiis. Distinctio velit magni quod sed quam praesentium velit deleniti.', 1, '1974-02-27 22:37:35');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('67', '57', '72', 'Explicabo officiis dolorem tempora rerum. Neque reprehenderit a doloremque deserunt enim possimus.', 0, '1978-06-27 08:16:23');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('68', '181', '135', 'Reprehenderit placeat modi accusamus quia.', 1, '1986-12-30 08:55:55');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('69', '107', '125', 'Libero inventore sapiente beatae ut. Iure repudiandae hic labore harum cupiditate non quia voluptas.', 1, '2011-02-01 14:52:34');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('70', '184', '71', 'Distinctio quia nisi sequi a.', 0, '1984-06-24 05:52:30');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('71', '60', '43', 'Quas sit corporis eos voluptatem doloremque. Porro dolores exercitationem adipisci.', 0, '1976-05-18 10:02:23');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('72', '32', '170', 'Qui tempora quam eum earum aut.', 0, '1981-03-05 05:16:55');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('73', '106', '150', 'Similique voluptatum veritatis magni odio.', 0, '1977-01-03 09:52:00');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('74', '54', '3', 'Voluptates fugiat dignissimos similique sint dolorem ut ipsam minima. Rerum et iure et perspiciatis architecto corporis voluptatem.', 1, '2008-01-24 16:54:08');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('75', '122', '164', 'Alias fugiat vitae voluptas qui beatae odio nisi.', 1, '1987-09-15 13:20:04');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('76', '151', '37', 'Aut iure laborum vel cumque id at.', 1, '1992-09-17 02:22:39');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('77', '141', '2', 'Sint enim eum commodi dignissimos qui optio cumque. Illum aspernatur error maiores eos est quas rerum ad.', 1, '1980-06-19 04:06:06');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('78', '71', '85', 'Ex est quo iste ullam. Voluptatem aperiam consequatur facere a consectetur deleniti sunt.', 0, '1975-08-21 04:56:05');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('79', '83', '144', 'Est consequuntur excepturi tempore quisquam esse quisquam ipsam ipsa. Vero veritatis provident laudantium est at similique.', 0, '2004-04-24 23:00:52');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('80', '136', '68', 'Non quisquam iure ducimus blanditiis. Facilis deserunt tenetur ipsam sed beatae eaque ipsam.', 0, '2020-09-02 17:01:50');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('81', '110', '183', 'Labore sed amet quisquam libero ut et dolor. Esse assumenda expedita consequatur officiis ea fuga atque.', 0, '1998-08-26 23:10:17');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('82', '112', '167', 'Aut rem voluptas asperiores eius nam ex.', 0, '1989-08-14 00:27:16');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('83', '54', '92', 'Magnam nesciunt nostrum eaque sit eveniet illo.', 0, '1982-07-19 17:44:21');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('84', '101', '160', 'Consequatur quis et nisi saepe. Iste veniam sint tempore totam labore voluptatem.', 0, '2012-04-25 16:52:19');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('85', '17', '85', 'Molestias voluptates quaerat tenetur quis atque voluptas doloribus nihil.', 1, '2000-03-06 08:53:16');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('86', '31', '76', 'Dolorem facere quas eaque minima. Numquam aut et rem vel aut.', 0, '1991-10-16 21:50:41');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('87', '128', '63', 'Molestiae dolor voluptates est nulla dignissimos aut fugiat. Dolorem rem fugit blanditiis assumenda excepturi.', 1, '1994-06-04 02:20:32');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('88', '45', '33', 'Aut perspiciatis reprehenderit distinctio sed et.', 1, '1990-11-22 02:59:29');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('89', '13', '98', 'Iure laudantium sed harum voluptatem. Velit aliquid autem labore id odio possimus.', 1, '1993-12-29 01:15:24');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('90', '36', '134', 'Officia voluptatem quis ab dignissimos.', 1, '2016-10-10 23:19:52');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('91', '62', '186', 'Non vitae est impedit nihil qui.', 0, '2015-09-19 14:32:03');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('92', '171', '2', 'Omnis delectus at quas incidunt enim voluptates. Delectus ipsum eaque molestiae tempore fugiat dolorem.', 0, '1993-03-08 05:23:19');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('93', '187', '42', 'Suscipit officiis ex at.', 1, '2014-07-12 14:38:06');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('94', '86', '70', 'Eius voluptatem quaerat ex quaerat molestias.', 0, '2015-11-05 02:42:16');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('95', '185', '22', 'In ratione mollitia qui.', 1, '2019-10-05 14:37:45');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('96', '137', '94', 'Velit voluptatem rerum voluptas occaecati sint est. Earum cumque molestiae eos at quod quos.', 1, '1973-06-08 17:09:05');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('97', '4', '49', 'Architecto deleniti in ut quas magni commodi illum. Velit hic modi voluptatibus exercitationem officiis.', 0, '1979-12-02 06:27:25');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('98', '61', '57', 'Est occaecati ducimus impedit in amet voluptate autem.', 0, '1991-08-01 15:23:02');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('99', '141', '162', 'Dignissimos qui praesentium ullam accusamus assumenda. Autem voluptate enim esse ipsa.', 0, '2005-07-20 03:39:39');
INSERT INTO `direct_messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_read`, `created_at`) VALUES ('100', '17', '157', 'Praesentium corporis dignissimos nemo necessitatibus consequatur quos. Quam quis itaque delectus voluptas.', 1, '2020-07-18 20:14:29');


drop table if exists fanfics_likes;
create table fanfics_likes(
	fanfic_id bigint unsigned not null, 
    number_of_likes bigint unsigned not null, 
	foreign key (fanfic_id) references fanfics (id),
	primary key (fanfic_id)
);

INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('1', '164');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('2', '174');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('3', '184');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('4', '150');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('5', '51');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('6', '36');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('7', '3');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('8', '65');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('9', '36');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('10', '90');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('11', '165');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('12', '62');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('13', '94');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('14', '32');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('15', '36');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('16', '2');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('17', '9');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('18', '95');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('19', '127');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('20', '43');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('21', '128');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('22', '133');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('23', '184');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('24', '125');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('25', '15');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('26', '148');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('27', '193');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('28', '39');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('29', '175');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('30', '43');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('31', '167');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('32', '81');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('33', '21');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('34', '48');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('35', '156');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('36', '90');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('37', '89');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('38', '56');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('39', '56');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('40', '170');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('41', '117');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('42', '162');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('43', '69');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('44', '155');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('45', '162');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('46', '45');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('47', '130');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('48', '55');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('49', '4');
INSERT INTO `fanfics_likes` (`fanfic_id`, `number_of_likes`) VALUES ('50', '189');

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
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('4', '5', 'Вдохновения', '1982-05-22 07:07:49');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('5', '48', 'Пиши ещё!', '2008-10-10 09:30:52');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('6', '152', 'Спасибо', '1987-10-11 17:23:27');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('9', '20', 'Пиши ещё!', '2001-03-31 23:14:13');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('10', '81', 'Спасибо', '2001-04-11 17:55:45');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('11', '98', 'Пиши ещё!', '1989-08-07 16:33:28');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('12', '181', 'Лучшему автору', '2003-11-17 02:09:28');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('13', '16', 'Спасибо', '2011-03-22 15:51:51');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('13', '46', 'Лучшему автору', '2008-01-25 12:19:26');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('16', '73', 'Лучшему автору', '1988-05-08 10:34:50');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('20', '193', 'Лучшему автору', '1976-01-07 23:16:11');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('23', '88', 'Спасибо', '2000-04-11 09:42:32');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('27', '82', 'Вдохновения', '2008-03-29 05:03:30');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('28', '20', 'Вдохновения', '1970-05-13 06:56:18');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('28', '23', 'Пиши ещё!', '2011-02-08 11:00:29');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('29', '72', 'Вдохновения', '1991-11-23 04:54:58');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('32', '51', 'Спасибо', '1983-10-20 03:21:45');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('40', '193', 'Лучшему автору', '1986-07-31 09:48:28');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('44', '101', 'Вдохновения', '2003-06-12 04:57:30');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('46', '168', 'Вдохновения', '2001-11-27 16:01:59');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('46', '183', 'Лучшему автору', '1983-10-25 03:10:49');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('48', '37', 'Спасибо', '1978-07-28 12:37:31');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('48', '47', 'Пиши ещё!', '1984-06-04 00:06:14');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('52', '28', 'Спасибо', '2019-06-15 13:29:28');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('55', '85', 'Пиши ещё!', '1988-02-15 20:58:14');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('56', '73', 'Пиши ещё!', '2019-10-30 08:57:39');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('61', '11', 'Пиши ещё!', '1985-11-15 06:18:56');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('61', '136', 'Пиши ещё!', '2009-10-24 13:57:48');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('61', '146', 'Лучшему автору', '2001-08-17 18:04:34');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('62', '7', 'Спасибо', '1990-04-22 12:14:21');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('66', '12', 'Вдохновения', '1986-09-07 16:32:43');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('67', '55', 'Спасибо', '1982-11-05 11:54:30');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('67', '75', 'Вдохновения', '1996-10-27 11:23:40');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('70', '138', 'Пиши ещё!', '1991-05-10 18:32:19');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('71', '177', 'Лучшему автору', '1989-11-16 13:24:51');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('72', '34', 'Спасибо', '1992-11-19 19:41:58');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('72', '63', 'Вдохновения', '1974-10-27 10:43:52');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('72', '175', 'Лучшему автору', '1970-08-03 15:32:33');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('75', '103', 'Спасибо', '2006-11-02 12:40:22');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('76', '20', 'Лучшему автору', '2019-10-11 02:32:39');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('77', '88', 'Вдохновения', '1989-11-15 12:37:45');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('78', '79', 'Вдохновения', '1985-02-16 16:52:35');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('83', '198', 'Лучшему автору', '2003-06-28 16:04:56');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('86', '60', 'Спасибо', '1997-12-20 04:54:53');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('92', '50', 'Лучшему автору', '1975-01-21 12:46:54');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('92', '155', 'Пиши ещё!', '1986-10-29 11:05:47');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('97', '33', 'Пиши ещё!', '1972-02-22 05:24:27');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('98', '27', 'Лучшему автору', '1997-10-10 22:18:28');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('105', '21', 'Лучшему автору', '1992-06-01 07:39:16');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('106', '38', 'Лучшему автору', '2004-03-01 11:08:01');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('110', '62', 'Спасибо', '1986-09-17 19:32:04');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('110', '65', 'Спасибо', '1979-03-31 07:01:06');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('115', '169', 'Спасибо', '2008-06-28 05:39:31');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('116', '146', 'Пиши ещё!', '1990-05-31 13:45:50');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('118', '133', 'Лучшему автору', '1975-11-24 16:28:14');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('119', '79', 'Вдохновения', '2007-11-26 03:44:03');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('119', '87', 'Пиши ещё!', '1974-12-09 18:33:49');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('120', '112', 'Вдохновения', '2000-09-28 20:38:50');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('122', '98', 'Лучшему автору', '2004-02-12 06:58:14');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('129', '56', 'Вдохновения', '2019-11-28 10:14:05');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('130', '34', 'Пиши ещё!', '1975-07-09 05:45:32');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('130', '119', 'Пиши ещё!', '2011-03-11 03:36:12');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('136', '115', 'Лучшему автору', '1995-04-26 22:52:06');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('137', '177', 'Пиши ещё!', '1989-09-01 10:36:06');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('143', '30', 'Вдохновения', '1973-01-06 02:27:30');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('144', '125', 'Спасибо', '1988-08-09 02:40:30');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('144', '190', 'Лучшему автору', '1993-03-17 00:54:40');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('145', '146', 'Пиши ещё!', '1992-11-10 05:07:32');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('146', '150', 'Вдохновения', '2018-11-21 22:07:59');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('148', '144', 'Спасибо', '1998-05-12 07:00:12');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('148', '186', 'Лучшему автору', '1987-10-18 04:10:39');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('149', '190', 'Лучшему автору', '1993-10-15 03:07:39');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('152', '157', 'Лучшему автору', '2012-09-06 21:41:00');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('153', '29', 'Спасибо', '1970-09-06 16:49:38');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('154', '128', 'Спасибо', '1993-04-08 00:00:23');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('155', '176', 'Спасибо', '1997-02-17 15:49:22');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('157', '28', 'Лучшему автору', '2005-07-22 17:52:06');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('158', '177', 'Пиши ещё!', '2004-04-21 00:05:42');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('159', '88', 'Лучшему автору', '1989-09-04 10:13:14');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('160', '40', 'Спасибо', '2007-11-20 20:08:54');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('161', '194', 'Спасибо', '2001-06-13 15:35:36');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('162', '69', 'Пиши ещё!', '2001-03-23 05:53:54');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('164', '41', 'Пиши ещё!', '1974-05-23 01:02:41');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('164', '87', 'Лучшему автору', '2019-08-24 03:14:08');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('166', '47', 'Вдохновения', '1994-03-25 04:41:15');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('167', '102', 'Пиши ещё!', '1992-08-14 12:54:50');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('167', '108', 'Вдохновения', '1987-06-18 06:42:45');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('168', '109', 'Вдохновения', '2004-11-02 21:11:53');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('168', '150', 'Вдохновения', '1991-09-11 23:28:20');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('169', '171', 'Лучшему автору', '1991-12-27 15:00:24');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('173', '173', 'Лучшему автору', '1982-08-23 09:28:58');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('173', '186', 'Пиши ещё!', '2011-10-12 18:14:46');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('174', '94', 'Спасибо', '2007-08-18 14:50:19');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('176', '102', 'Вдохновения', '1973-09-12 16:39:16');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('178', '18', 'Лучшему автору', '2012-03-28 13:16:40');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('183', '126', 'Лучшему автору', '1996-07-14 03:49:19');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('185', '190', 'Лучшему автору', '1971-04-01 16:14:19');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('189', '29', 'Лучшему автору', '1987-06-08 19:28:59');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('193', '74', 'Вдохновения', '2020-02-15 17:13:23');
INSERT INTO `gifts` (`to_user_id`, `from_user_id`, `gift`, `gifted_at`) VALUES ('198', '107', 'Вдохновения', '1986-09-07 15:09:33');

drop table if exists users_collections;
create table users_collections(
	id serial primary key,
	user_id bigint unsigned not null,
    fanfic_id bigint unsigned not null,
    collection_name enum('Избранное','Жду продолжения','Планирую прочитать'),
    foreign key (user_id) references users (id),
	foreign key (fanfic_id) references fanfics (id)
);

INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('1', '183', '49', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('2', '111', '8', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('3', '12', '29', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('4', '175', '13', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('5', '155', '25', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('6', '100', '22', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('7', '142', '27', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('8', '80', '10', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('9', '106', '7', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('10', '63', '21', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('11', '41', '31', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('12', '6', '47', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('13', '97', '50', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('14', '55', '11', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('15', '165', '20', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('16', '117', '37', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('17', '73', '7', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('18', '177', '22', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('19', '141', '38', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('20', '137', '24', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('21', '50', '9', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('22', '182', '48', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('23', '142', '16', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('24', '28', '12', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('25', '85', '23', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('26', '130', '32', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('27', '10', '34', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('28', '110', '27', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('29', '134', '42', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('30', '149', '25', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('31', '43', '17', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('32', '44', '29', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('33', '92', '6', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('34', '200', '9', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('35', '173', '34', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('36', '128', '6', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('37', '172', '28', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('38', '13', '29', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('39', '169', '10', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('40', '159', '14', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('41', '129', '23', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('42', '180', '35', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('43', '23', '23', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('44', '45', '40', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('45', '54', '49', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('46', '54', '24', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('47', '59', '25', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('48', '11', '38', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('49', '119', '3', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('50', '183', '23', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('51', '147', '28', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('52', '113', '30', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('53', '18', '32', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('54', '31', '47', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('55', '164', '48', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('56', '41', '24', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('57', '78', '5', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('58', '31', '26', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('59', '109', '19', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('60', '57', '41', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('61', '69', '28', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('62', '58', '32', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('63', '8', '18', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('64', '77', '32', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('65', '79', '15', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('66', '17', '7', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('67', '169', '33', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('68', '144', '47', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('69', '54', '44', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('70', '174', '5', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('71', '163', '4', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('72', '110', '10', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('73', '34', '36', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('74', '141', '36', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('75', '16', '50', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('76', '105', '22', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('77', '106', '41', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('78', '11', '29', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('79', '31', '22', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('80', '39', '28', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('81', '147', '14', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('82', '135', '29', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('83', '184', '20', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('84', '101', '10', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('85', '51', '19', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('86', '54', '4', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('87', '88', '41', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('88', '54', '31', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('89', '104', '49', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('90', '63', '30', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('91', '190', '42', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('92', '4', '24', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('93', '130', '4', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('94', '9', '40', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('95', '103', '12', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('96', '69', '13', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('97', '103', '1', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('98', '163', '22', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('99', '81', '16', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('100', '123', '33', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('101', '137', '45', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('102', '145', '6', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('103', '140', '50', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('104', '145', '11', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('105', '192', '2', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('106', '164', '46', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('107', '175', '42', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('108', '77', '26', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('109', '183', '22', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('110', '63', '22', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('111', '132', '33', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('112', '133', '9', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('113', '134', '24', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('114', '120', '4', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('115', '159', '11', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('116', '146', '24', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('117', '19', '23', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('118', '119', '40', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('119', '90', '16', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('120', '2', '21', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('121', '70', '42', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('122', '62', '11', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('123', '133', '35', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('124', '147', '29', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('125', '23', '3', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('126', '199', '39', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('127', '140', '33', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('128', '189', '19', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('129', '27', '28', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('130', '89', '47', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('131', '151', '9', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('132', '80', '43', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('133', '125', '50', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('134', '128', '4', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('135', '60', '33', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('136', '95', '33', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('137', '95', '40', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('138', '173', '7', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('139', '95', '30', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('140', '141', '30', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('141', '128', '35', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('142', '73', '17', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('143', '72', '16', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('144', '141', '25', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('145', '170', '8', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('146', '83', '31', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('147', '63', '41', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('148', '90', '47', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('149', '160', '5', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('150', '2', '5', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('151', '146', '25', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('152', '149', '10', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('153', '53', '31', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('154', '67', '37', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('155', '40', '2', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('156', '65', '42', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('157', '148', '35', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('158', '34', '5', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('159', '198', '44', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('160', '117', '42', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('161', '4', '50', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('162', '88', '17', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('163', '162', '45', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('164', '55', '31', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('165', '195', '14', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('166', '141', '35', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('167', '153', '23', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('168', '180', '2', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('169', '9', '12', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('170', '152', '12', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('171', '54', '5', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('172', '15', '1', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('173', '153', '12', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('174', '19', '38', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('175', '23', '34', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('176', '118', '7', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('177', '135', '2', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('178', '92', '24', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('179', '183', '37', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('180', '17', '45', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('181', '2', '40', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('182', '117', '39', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('183', '46', '25', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('184', '159', '14', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('185', '143', '28', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('186', '102', '49', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('187', '127', '30', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('188', '196', '20', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('189', '165', '4', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('190', '30', '47', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('191', '150', '37', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('192', '12', '21', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('193', '153', '26', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('194', '179', '34', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('195', '50', '49', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('196', '113', '13', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('197', '152', '8', 'Планирую прочитать');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('198', '5', '50', 'Жду продолжения');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('199', '127', '41', 'Избранное');
INSERT INTO `users_collections` (`id`, `user_id`, `fanfic_id`, `collection_name`) VALUES ('200', '52', '18', 'Жду продолжения');
