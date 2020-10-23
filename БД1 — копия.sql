DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
	created_at DATETIME NOT NULL, -- время и дата создания записи
	target_id BIGINT NOT NULL, -- идентификатор первичного ключа
	table_name ENUM('users', 'catalogs' ,'products') NOT NULL, -- название таблицы
	name VARCHAR(255) -- содержимое поля name
) ENGINE = Archive;


DELIMITER //

DROP TRIGGER IF EXISTS trg_users_logs_create//
CREATE TRIGGER trg_users_logs_create AFTER INSERT ON users
FOR EACH ROW 
BEGIN
	INSERT INTO logs SET created_at = NOW(), 
   						target_id = NEW.id,
   						table_name = 'users',
   						name = NEW.name;
END//

DROP TRIGGER IF EXISTS trg_catalogs_logs_create//
CREATE TRIGGER trg_catalogs_logs_create AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN
	INSERT INTO logs SET created_at = NOW(), 
   						target_id = NEW.id,
   						table_name = 'catalogs',
   						name = NEW.name;
END//


DROP TRIGGER IF EXISTS trg_products_logs_create//
CREATE TRIGGER trg_products_logs_create AFTER INSERT ON products
FOR EACH ROW 
BEGIN
	INSERT INTO logs SET created_at = NOW(), 
   						target_id = NEW.id,
   						table_name = 'products',
   						name = NEW.name;
END//

DELIMITER ;


