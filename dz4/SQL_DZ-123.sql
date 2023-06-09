-- 1.Вывести на экран, сколько машин каждого цвета для машин марок BMW и LADA
USE my_first_sql;
-- Собеседования
CREATE TABLE  AUTO 
(       
	REGNUM VARCHAR(10) PRIMARY KEY, 
	MARK VARCHAR(10), 
	COLOR VARCHAR(15),
	RELEASEDT DATE, 
	PHONENUM VARCHAR(15)
);
 
 -- AUTO
INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111114,'LADA', 'КРАСНЫЙ', date'2008-01-01', '9152222221');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111115,'VOLVO', 'КРАСНЫЙ', date'2013-01-01', '9173333334');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111116,'BMW', 'СИНИЙ', date'2015-01-01', '9173333334');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111121,'AUDI', 'СИНИЙ', date'2009-01-01', '9173333332');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111122,'AUDI', 'СИНИЙ', date'2011-01-01', '9213333336');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111113,'BMW', 'ЗЕЛЕНЫЙ', date'2007-01-01', '9214444444');


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111126,'LADA', 'ЗЕЛЕНЫЙ', date'2005-01-01', null);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111117,'BMW', 'СИНИЙ', date'2005-01-01', null);


INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111119,'LADA', 'СИНИЙ', date'2017-01-01', 9213333331);

SELECT * FROM AUTO;

-- 2.Вывести на экран марку авто(количество) и количество авто не этой марки.
SELECT mark ,color, COUNT(*) AS Kolv
FROM auto
where MARK = 'BMW' or MARK = 'LADA'
GROUP BY color,mark;
-- 2
SELECT COUNT(*) as 'gg', mark, ((SELECT COUNT(*) FROM auto) - COUNT(*)) from auto group by mark;  -- В шоке что так можно( надеюсь правильно!

-- 3
-- Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.

create table test_a (id INT, test varchar(10));
create table test_b (id INT);

insert into test_a(id, test) values

(10, 'A'),

(20, 'A'),

(30, 'F'),

(40, 'D'),

(50, 'C');

insert into test_b(id) values

(10),

(30),

(50);


select test_a.id
from test_a
left join test_b
on test_b.id = test_a.id 
where test_b.id is null;



