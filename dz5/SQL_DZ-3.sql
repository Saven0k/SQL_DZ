--  Добавьте новый столбец под названием «время до следующей станции».
-- Чтобы получить это значение, мы вычитаем время станций для пар смежных станций. 
-- Мы можем вычислить это значение без использования оконной функции SQL, но это может быть очень сложно. 
-- Проще это сделать с помощью оконной функции LEAD . Эта функция сравнивает значения из одной строки со следующей строкой, чтобы получить результат. 
-- В этом случае функция сравнивает значения в столбце «время» для станции со станцией сразу после нее.

CREATE TABLE Station
(
Train_id INT,
station VARCHAR(100) NOT NULL,
station_time time
);
INSERT INTO Station(Train_id,station,station_time) 
VALUES
(110, 'San Francisco', '10:00:00'),
(110, 'Redwood City', '10:54:00'),
(110, 'Palo Alto','11:02:00'),
(110, 'San Jose', '12:35:00'),
(120, 'San Francisco', '11:00:00'),
(120, 'Palo Alto','12:49:00'),
(120, 'San Jose','13:30:00');

SELECT * FROM Station;

-- SELECT *, TIMEDIFF((SELECT Station.station_time as st FROM Station WHERE Train_id = 110), (LEAD(st))) FROM Station;

-- ALTER TABLE Station ADD COLUMN time_to_next_station time;



SELECT * FROM Station;