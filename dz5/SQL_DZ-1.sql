	--  1. Создайте представление, в которое попадут автомобили стоимостью до 25 000 долларов

CREATE TABLE cars
(
id  SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
cost INT NOT NULl
);

INSERT INTO cars(name,cost) 
VALUES
("Audi", 52642),
("Mersedes", 57127),
("Skoda", 9000),
("Volvo", 29000),
("Bently", 350000),
("Citroen",21000),
("Hummer", 41400),
("Volswagen",21600);

SELECT * From cars;

-- 2. Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW)

CREATE VIEW car As
SELECT * from cars
WHERE cost > 25000;

Select * from car;

ALTER VIEW car AS
SELECT * from cars
WHERE cost >  30000;

SELECT * from car;

-- 3. Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE VIEW car1  AS
SELECT * from cars
WHERE name='Audi' or name='Skoda';

SELECT * FROM  car1;

