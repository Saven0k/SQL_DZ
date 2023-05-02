USE my_first_sql;

CREATE TABLE gg(
	id SERIAL PRIMARY KEY,  
    nam varchar(45),
    surname varchar(45),
    speciality varchar(45),
    seniority INT,
    salary int,
    age int
);
INSERT INTO gg(nam, surname,speciality,seniority,salary,age)
VALUES 
("Вася", "Васькин", "начальник", 40,100000,60),
("Петя", "Петькин","начальник", 8 , 77000,  30),
("Катя", "Катькина","инженер", 2, 70000, 25),
("Саша","Санькин","инженер",12, 50000 , 35),
("Иван","Иванов","Рабочий", 40,30000,40), 
("Петр","Петров","Рабочий", 20,25000,35), 
("Сидор","Сидоров","Рабочий", 10,2000,28), 
("Антон","Антонов","Рабочий", 8,19000,25), 
("Юра","Юркин","Рабочий", 5,15000,22), 
("Максим","Воронин","Рабочий", 2,11000,24),
("Юра","Галкин","Рабочий", 3 , 12000, 59),
("Люся","Люськина","уборщик", 10,10000,49)
;

-- 1
SELECT * FROM gg ORDER By salary;

SELECT * FROM gg ORDER By salary DESC;

-- 2
SELECT salary FROM gg order by salary desc LIMIT 5; -- не то
SELECT salary FROM gg order by salary LIMIT 7, 5; -- не честно
SELECT * FROM (SELECT salary FROM gg ORDER BY salary DeSC LIMIT 5) t ORDER BY salary;
-- 3
-- Отсортируйте поле “зарплата” в порядке убывания и возрастания

-- Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой (возможен подзапрос)

-- Выполните группировку всех сотрудников по специальности , суммарная зарплата которых превышает 100000
SELECT speciality, sum(salary) as sum FROM gg group by speciality having sum > 100000;