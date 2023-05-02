-- Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.
CREATE TABLE Analysis
(
an_id  SERIAL PRIMARY KEY,
an_name VARCHAR(100) NOT NULL,
an_cost INT NOT NULl,
an_price INT NOT NULL,
an_grop VARCHAR(45)
);
INSERT INTO Analysis(an_name,an_cost,an_price,an_grop) 
VALUES
('Gamma', 52642, 50000, 'metrix'),
("Delta", 57127, 55000, 'gogo'),
("Sigma", 9000, 7000,'metrix');

CREATE TABLE Groups1
(
gr_id  SERIAL PRIMARY KEY,
gr_name VARCHAR(100) NOT NULL,
gr_temp INT NOT NULl
);
INSERT INTO Groups1(gr_name,gr_temp) 
VALUES
("metrix", 15),
("gogo", 55);

CREATE TABLE Orders1
(
ord_id  SERIAL PRIMARY KEY,
ord_datetime datetime,
ord_an INT NOT NULl
);
INSERT INTO Orders1(ord_datetime,ord_an) 
VALUES
('2020-02-01 15:54:42' ,1),
('2020-02-05 12:10:10',2),
('2020-01-01 7:25:35',3);

SELECT ord_datetime FROM Orders1;

CREATE VIEW results AS
SELECT an_name as name, an_cost as cost FROM Analysis
WHERE Analysis.an_id = Orders1.ord_an and DAYOFMONTH(Orders1.ord_datetime) > '2020-02-05 00:00:00';







