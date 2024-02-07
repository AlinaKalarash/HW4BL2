-- Додавання працівників
INSERT INTO worker (ID, NAME, BIRTHDAY, LEVEL, SALARY) VALUES
(1, 'Іванов Іван', 1990, 'Trainee', 800),
(2, 'Петров Петро', 1985, 'Junior', 1200),
(3, 'Сидоров Олексій', 1982, 'Middle', 2500),
(4, 'Коваленко Марина', 1988, 'Senior', 6000),
(5, 'Павлова Анна', 1995, 'Junior', 1100),
(6, 'Федоров Дмитро', 1992, 'Middle', 2700),
(7, 'Бондаренко Ірина', 1983, 'Senior', 7000),
(8, 'Литвиненко Сергій', 1987, 'Trainee', 900),
(9, 'Шевченко Олена', 1993, 'Middle', 3000),
(10, 'Ковальчук Володимир', 1980, 'Senior', 8000);

-- Додавання клієнтів
INSERT INTO client (ID, CLIENT_ID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Додавання проєктів
INSERT INTO project (ID, CLIENT_ID, START_DATE, FINISH_DATE) VALUES
(1, 1, '2023-01-01', '2023-04-30'),
(2, 2, '2022-09-15', '2023-05-31'),
(3, 3, '2022-11-10', '2023-03-20'),
(4, 4, '2023-02-20', '2023-06-30'),
(5, 5, '2022-12-05', '2023-07-15'),
(6, 6, '2023-01-20', '2023-08-10'),
(7, 7, '2023-03-10', '2023-10-05'),
(8, 8, '2022-10-01', '2023-09-30'),
(9, 9, '2023-04-15', '2024-01-10'),
(10, 10, '2022-12-20', '2023-11-30');

-- Назначення працівників на проєкти
INSERT INTO project_worker (PROJECT_ID, WORKER_ID) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10)
(1, 3),
(2, 2);