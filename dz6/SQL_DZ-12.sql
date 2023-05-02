USE mydatabase;
-- 1. Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.

-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '

DELIMITER //
CREATE FUNCTION sec(secs INT)
RETURNS VARCHAR(250)
LANGUAGE SQL DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER
BEGIN
	DECLARE days  INT DEFAULT 0;
	DECLARE hourse INT DEFAULT 0;
	DECLARE min INT DEFAULT 0;
	DECLARE sec INT DEFAULT 0;
	DECLARE res VARCHAR(250) DEFAULT " ";
	WHILE secs>0 do
		IF secs > 86400 THEN
			SET days = secs/86400;
			SET secs = secs-(86400*days);
			SET hourse = secs/3600;
			SET secs = secs -(3600*hourse);
			SET min = secs/60;
			SET secs=secs-(60*min);
			SET sec = secs;
			SET res=CONCAT(day,"day",hourse,"hours",min,"minutes",sec,"second");
			RETURN res;

		ELSEIF secs>3600 THEN
			SET hourse = secs/3600;
			SET secs = secs -(3600*hourse);
			SET min = secs/60;
			SET secs=secs-(60*min);
			SET sec = secs;
			SET res=CONCAT(0,"day",hourse,"hours",min,"minutes",sec,"second");
			RETURN res;

		ELSEIF secs>60 THEN
			SET min = secs/60;
			SET secs=secs-(60*min);
			SET sec = secs;
			SET res=CONCAT(0,"day",0,"hours",min,"minutes",sec,"second");
			RETURN res;

		ELSE
			SET sec = secs;
			SET res=CONCAT(0,"day",0,"hours",0,"minutes",sec,"second");
			RETURN res;
		END IF;
	END WHILE;

END //
DELIMETR ;


SECELT sec(12345);




-- 2. Выведите только четные числа от 1 до 10 включительно.

-- Пример: 2,4,6,8,10 (можно сделать через шаг + 2: х = 2, х+=2)

DELIMITER //
CREATE FUNCTION even_numbers(n INT)
RETURNS INT
LANGUAGE SQL DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER
BEGIN
	DECLARE res INT DEFAULT "";
	WHILE n <=10 DO
		RETURN n;
		SET n = n +2;
	END WHILE;
END //
DELIMITER ;

SELECT even_number(10);