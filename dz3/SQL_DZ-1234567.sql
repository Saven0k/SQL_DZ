USE my_first_sql;

CREATE TABLE CUSTOMERS(
	cnum   INT,  
    cname varchar(45),
    city varchar(45),
    rating INT,
    snum int
);
INSERT INTO CUSTOMERS(cnum, cname,city, rating,snum )
VALUES 
(2001, "Hoffman", "LOndon", 100, 1001),
(2002, "giovanni", "Rome", 200, 1003),
(2003, "Liu", "SanJose", 200, 1002),
(2004,"Grass","Berlin",300,1002),
(2006, "Clemens", "London", 100,1001),
(2008,"Cisneros", "SanJose", 300,1007),
(2007, "Pereira", "Rome",100,1004)
; 
-- 1
-- 1. Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, 
-- sname, snum, comm. (к первой или второй таблице, используя SELECT)
SELECT city, cname, snum, cnum FROM CUSTOMERS; -- не нашел в данной таблице city,sname,snum,comn
-- 2
-- Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем каждого заказчика в городе San Jose. (“заказчики”)
SELECT rating, city FROM CUSTOMERS WHERE city ='SanJose';
-- 3
-- Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без каких бы то ни было повторений. 
-- (уникальные значения в “snum“ “Продавцы”)
SELECT distinct snum FROM CUSTOMERS;
-- 4
-- Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G. Используется оператор "LIKE": (“заказчики”)
SELECT * FROM CUSTOMERS WHERE cname LIKE "G%";
-- 5 таблицу не создал(очень много писать
-- Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000. (“Заказы”, “amt” - сумма)
SELECT * FROM ORDERS WHERE amt > 1000;
-- 6
-- Напишите запрос который выбрал бы наименьшую сумму заказа.
SELECT min(amt) FROM ORDERS;
-- 7
--  Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых рейтинг больше 100 и они находятся не в Риме.
SELECT cname FROM CUSTOMERS WHERE city != 'Rome' and rating > 100;

