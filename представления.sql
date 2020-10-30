-- 1. Представление, которое выводит название фанфика из таблицы fanfics и его количество лайков из таблицы fanfics_likes по убыванию лайков.
CREATE OR replace VIEW view_count_likes
as
select 
	concat (f.title) as title
	, number_of_likes as likes
from fanfics_likes fl 
join fanfics f
on f.id = fl.fanfic_id
group by id
order by likes desc;

-- проверка
select * from view_count_likes;

 
-- 2. Предствление, которое выводит количество фанфиков для каждого жанра.
 CREATE OR REPLACE VIEW genres_quantity 
 AS 
 SELECT genre, count(*) AS quantity FROM fanfics GROUP BY genre;
 
-- проверка
SELECT * FROM genres_quantity;