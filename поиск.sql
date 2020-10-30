-- 1. Найти фанфик(и) в жанре "Ужасы" с возрастным рейтингом "NC" - пример обычной выборки
select id, title from fanfics where genre='Ужасы' and age_raiting='NC'; 

-- 2.  Рейтинг отзывчивых пользователей (от тех, которые оставили больше всего комментариев к фанфикам, до тех, кто оставил меньше всего)
select user_id
	, count(*) as allcomments
	from comments
	group by user_id
	order by allcomments desc;
    
-- 3. 10 самых успешных авторов (чьи фанфики получили больше всего лайков) - JOIN

SELECT af.author_id `Автор`, af.fanfic_id `fic.id`, fl.number_of_likes `Лайк`
FROM `fanfics_authors` af
INNER JOIN `fanfics_likes` fl ON af.fanfic_id = fl.fanfic_id
order by fl.number_of_likes desc
limit 1, 10;

-- 4. Авторы, в чьих фанфиках ведущие отношения имеют категорию 'Другие виды отношений' - вложенные запросы

SELECT author_id 
from fanfics_authors
where fanfic_id in (SELECT id FROM fanfics WHERE relashionsip = 'Другие виды отношений');

-- 5. Вывести названия фанфиков, которые были добавлены в сборник 'Избранное'
SELECT title 
from fanfics
where id in (SELECT fanfic_id FROM users_collections WHERE collection_name = 'Избранное');

-- 6. Посчитать сколько подарков с определенным названием дарили друг другу пользователи. - группировка

SELECT gift, count(*) as allgfits FROM gifts GROUP BY gift order by allgfits desc;
