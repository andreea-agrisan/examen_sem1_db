--SQL file for select

--1 tabel
SELECT * from formula_1;
SELECT reglementari from formula_1;
SELECT id, punctaj from formula_1;
SELECT steaguri as flags from formula_1;
SELECT * from formula_1 ORDER BY pneuri ASC;
SELECT id from formula_1 limit 5;
SELECT * from formula_1 where punctaj like 'Cel%';
SELECT * from formula_1 where steaguri is NULL;
SELECT COUNT(pneuri) as numar_pneuri from formula_1;
SELECT reglementari from formula_1 where id = 5 or id < 5;
SELECT SUM(id) as suma from formula_1;
SELECT MIN(id) as minim from formula_1;
SELECT MAX(id) as maxim from formula_1;
SELECT AVG(id) as media from formula_1;

--2 tabel
SELECT * from echipe;
SELECT * from echipe where existente = True;
SELECT AVG(an_infiintare) as medie from echipe;
SELECT MAX(an_infiintare) as ultimul_an from echipe;
SELECT nume, tara_origine from echipe where tara_origine like 'Italia%';
SELECT MIN(an_infiintare) as debut from echipe;
SELECT * from echipe ORDER BY formula_1_id desc;
SELECT COUNT(nume) from echipe;
SELECT SUM(id) as suma from echipe;
SELECT tara_origine from echipe where id between 10 and 25;
SELECT distinct tara_origine from echipe;
SELECT nume as echipe_actuale from echipe limit 10;

--3 tabel
SELECT * from manageri;
SELECT nume, echipa from manageri where echipa like 'Ferrari%';
SELECT MIN(ani_vechime) as debut from manageri;
SELECT email, ani_vechime from manageri ORDER BY ani_vechime asc;
SELECT AVG(ani_vechime) as medie from manageri;
SELECT * from manageri where id = 5 or id < 10;
SELECT MAX(ani_vechime) as ultimul_an from manageri;
SELECT id, echipa as constructori from manageri ORDER BY id desc;
SELECT nume from manageri where ani_vechime between 5 and 15;
SELECT SUM(ani_vechime) as suma from manageri;
SELECT COUNT(*) as numar_randuri from manageri;

--4 tabel
SELECT * from piloti;
SELECT COUNT(nume) as numar_piloti from piloti;
SELECT MAX(campionate_castigate) as cel_mai_experimentat from piloti;
SELECT nume, campionate_castigate from piloti where campionate_castigate between 3 and 10;
SELECT distinct echipa from piloti;
SELECT * from piloti where campionate_castigate <> 0;
SELECT AVG(varsta) as media from piloti;
SELECT varsta, nume from piloti ORDER BY varsta asc;
SELECT SUM(campionate_castigate) as suma from piloti;
SELECT MIN(varsta) as cel_mai_tanar from piloti;
SELECT nume, echipa from piloti where echipa in ('RedBull', 'McLaren');
SELECT nume as piloti_actuali from piloti limit 20;

--5 tabel
SELECT * from masini;
SELECT COUNT(*) from masini;
SELECT distinct echipa_apartinatoare from masini;
SELECT culori, echipa_apartinatoare from masini GROUP BY culori, echipa_apartinatoare;
SELECT id, denumire from masini ORDER BY denumire;
SELECT denumire as modele_masini_actuale from masini limit 30;
SELECT * from masini where id > 30;
SELECT echipa_apartinatoare, denumire from masini where echipa_apartinatoare in ('AlphaTauri', 'RedBull');
SELECT distinct culori, echipa_apartinatoare from masini;
SELECT denumire, culori from masini ORDER BY denumire desc;
SELECT * from masini where culori like 'albastru%';
SELECT SUM(id) as suma from masini;
SELECT MIN(id) as minim from masini;
SELECT MAX(id) as maxim from masini;
SELECT AVG(id) as media from masini;

--6 tabel
SELECT * from circuite;
SELECT AVG(nr_sicane) as media_sicanelor from circuite;
SELECT nume, tara from circuite GROUP BY tara, nume;
SELECT MAX(nr_tururi) from circuite;
SELECT MIN(nr_tururi) from circuite;
SELECT COUNT(distinct nr_sicane) from circuite;
SELECT nume as circuite_actuale, tara from circuite limit 23;
SELECT nume, nr_tururi from circuite where nr_tururi >70;
SELECT nume, nr_tururi from circuite ORDER BY nr_tururi asc;
SELECT tara, nume, nr_sicane from circuite where nr_sicane <16;
SELECT tara, SUM(nr_tururi) as suma_totala from circuite GROUP BY tara HAVING SUM(nr_tururi) > 100;

--7 tabel
SELECT * from curse;
SELECT COUNT(*) as numar_randuri from curse;
SELECT MIN(media_spectatorilor) from curse;
SELECT distinct tip from curse;
SELECT ziua_cursei, media_spectatorilor from curse GROUP BY ziua_cursei, media_spectatorilor;
SELECT * from curse where media_spectatorilor > 400000;
SELECT * from curse where ziua_cursei like 'Duminica%';
SELECT tip, ziua_cursei, media_spectatorilor as spectatori_2023 from curse limit 69;
SELECT tip, MAX(media_spectatorilor) as valoare_maxima from curse GROUP BY tip HAVING MAX(media_spectatorilor) > 450000;
SELECT circuite_id as cursa_finala, media_spectatorilor from curse where circuite_id in (23);
SELECT AVG(media_spectatorilor) from curse;
SELECT SUM(media_spectatorilor) from curse;

--8 tabel
SELECT * from sponsori;
SELECT nume, investitie from sponsori where investitie < 2500000;
SELECT id, nume as sponsori_actuali from sponsori limit 20;
SELECT piloti_id, nume from sponsori ORDER BY nume desc;
SELECT * from sponsori where nume like 'S%';
SELECT SUM(investitie) as investitia_totala from sponsori; 
SELECT echipe_id, investitie from sponsori where echipe_id between 10 and 20;
SELECT MAX(investitie) as inestitia_maxima from sponsori;
SELECT distinct investitie from sponsori;
SELECT COUNT(nume) as numar_sponsori from sponsori;
SELECT AVG(investitie) as media from sponsori;
SELECT MIN(investitie) from sponsori;