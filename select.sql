--SQL fule for select

--1 tabel
SELECT * from formula_1;
SELECT reglementari from formula_1;
SELECT id, punctaj from formula_1;
SELECT steaguri as flags from formula_1;
SELECT * from formula_1 ORDER BY pneuri ASC;
SELECT id from formula_1 LIMIT 5;
SELECT * from formula_1 where punctaj LIKE 'Cel%';
SELECT * from formula_1 where steaguri IS NULL;
SELECT * from formula_1 where id BETWEEN 22 AND 44;
SELECT reglementari from formula_1 WHERE id = 5 OR id < 5;

--2 tabel
