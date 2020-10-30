-- 1. Триггер, запрещающий вставлять данные в fanfics с ошибочной датой создания puplished_at

DROP TRIGGER IF EXISTS finalproject.true_puplished_at;

DELIMITER $$
$$
create trigger true_puplished_at
before insert
on fanfics for EACH row
begin
	if new.puplished_at >= current_date() then
	signal sqlstate '45000' set message_text = 'Update canceled. The fanfic cannot be written in the future';
	end if;
end$$
DELIMITER ;

-- 2. Процедура поиска фанфиков с общим возрастным рейтингом или общим жанром или общей категорией отношений.

drop procedure if exists common_fanfics;

delimiter //
create procedure common_fanfics(in fanfic INT)
  begin
	-- общий возрастной рейтинг
	select f2.id
	from fanfics f1
	join fanfics f2 
	    on f1.age_raiting = f2.age_raiting
	where f1.id = fanfic 
	    and f2.id != fanfic 
	
		union 
		
	-- общий жанр
	select fg2.id
	from fanfics fg1
	join fanfics fg2 
	    on fg1.genre = fg2.genre
	where fg1.id = fanfic
	    and fg2.id <> fanfic 

		union 
	-- общая категория отношений
	select frl2.id
	from fanfics frl1
	join fanfics frl2 
	    on frl1.relashionsip = frl2.relashionsip
	where frl1.id = fanfic
	    and frl2.id <> fanfic 

	;
end//
delimiter ;

call common_fanfics(1);
