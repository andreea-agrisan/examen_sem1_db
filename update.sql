--SQL file for update

--1 tabel
UPDATE formula_1 SET pneuri='Pneu FOARTE DUR' WHERE id=12;
UPDATE formula_1 SET pneuri='Pneu DUR' WHERE id=13 and reglementari is null;
UPDATE formula_1 as F1 SET punctaj='Primul loc = 25 puncte' WHERE id=20;
UPDATE formula_1 SET steaguri='GALBEN' WHERE steaguri like 'Steag GALBEN%';
UPDATE formula_1 SET steaguri='Steag VERDE ALB-NEGRU' WHERE steaguri in ('Steag VERDE ALB-NEGRU divizat pe diagonala');
UPDATE formula_1 SET pneuri='Pneu MEDIU' WHERE id=14;
UPDATE formula_1 SET pneuri='Pneu MOALE' WHERE pneuri like 'Pneu SOFT%';
UPDATE formula_1 SET pneuri='Pneu FOARTE MOALE' WHERE pneuri in ('Pneu SUPERSOFT');
UPDATE formula_1 SET pneuri='Pneu EXTREM DE MOALE' WHERE id=17;
UPDATE formula_1 SET pneuri='Pneu INTERMEDIAR' WHERE pneuri like 'INTERMEDIATE%';
UPDATE formula_1 SET pneuri='Pneu UMED' WHERE pneuri in ('Pneu WET');

--2 tabel
UPDATE echipe SET nume='Romeo Alfa' WHERE an_infiintare=1950 and existente = True;
UPDATE echipe SET tara_origine='Italia' WHERE tara_origine='Elvetia' or id=1;
UPDATE echipe SET an_infiintare=1999 WHERE nume like 'Haas';
UPDATE echipe SET existente=True WHERE an_infiintare in (1963);
UPDATE echipe SET tara_origine='Peru' WHERE an_infiintare < 1960;
UPDATE echipe SET nume='RedBull' WHERE id between 10 and 13;
UPDATE echipe SET an_infiintare=2024 WHERE tara_origine = 'Regatul Unit';
UPDATE echipe SET existente=True WHERE nume like 'L%';
UPDATE echipe SET tara_origine='NoData' WHERE existente <> True;
UPDATE echipe SET nume='Senna Academy' WHERE id=23 and existente=True;

--3 tabel
UPDATE manageri SET nume='Famin Bruno' WHERE echipa like 'Alpine%';
UPDATE manageri SET email='redbull.manager@f1.com' WHERE ani_vechime=18;
UPDATE manageri SET ani_vechime = 5 WHERE id in (SELECT id FROM manageri ORDER BY ani_vechime DESC LIMIT 5);
UPDATE manageri SET echipa='Alfa Romeo Sauber' WHERE id in (3);
UPDATE manageri SET nume='Ferereu Vasile' WHERE echipa like 'Frederic Vasseur%';
UPDATE manageri SET email='jenifo.polez@f1.com' WHERE ani_vechime=3 and id=41;
UPDATE manageri SET ani_vechime=9 WHERE nume='Stephen Fitzpatrick';
UPDATE manageri SET echipa='NoData' WHERE ani_vechime=3;
UPDATE manageri SET nume='jOST cAPITO' WHERE echipa like 'Williams';
UPDATE manageri SET nume='No Name' WHERE email in ('.com');

--4 tabel
UPDATE piloti SET echipa='Papaya' WHERE id=5 and varsta=21;
UPDATE piloti SET nume='Vali Boss' WHERE varsta=34 and campionate_castigate=0;
UPDATE piloti SET campionate_castigate=5 WHERE varsta<30;
UPDATE piloti SET varsta=45 WHERE id>48;
UPDATE piloti SET echipa='Redbull 2' WHERE varsta in (40);
UPDATE piloti SET nume='Spinaru Nicolae' WHERE id=38;
UPDATE piloti SET campionate_castigate=1 WHERE echipa like 'Haas%';
UPDATE piloti SET varsta=452 WHERE id= 15 or varsta=41;
UPDATE piloti SET echipa='Haas' WHERE nume like 'Alain%';
UPDATE piloti SET nume='Oompa Loompa' WHERE echipa in ('Williams');

--5 tabel
UPDATE masini SET denumire='nu merge' WHERE echipa_apartinatoare like 'Haas%';
UPDATE masini SET echipa_apartinatoare=' Oracle RedBull Racing' WHERE culori like 'rosu, albastru, galben, alb%';
UPDATE masini SET culori='maroz' WHERE id=50;
UPDATE masini SET denumire='aragaz3159' WHERE denumire like 'RA272%';
UPDATE masini SET echipa_apartinatoare='FaruFaraBec' WHERE id=22;
UPDATE masini SET culori='argintiu, blue baby' WHERE echipa_apartinatoare like 'Jordan%';
UPDATE masini SET denumire='RoataDeRezerva' WHERE denumire in ('Martin');
UPDATE masini SET echipa_apartinatoare='R0BL0X' WHERE culori like 'rosu, alb, verde%';
UPDATE masini SET culori='sclipici, caprui' WHERE id>21 and id<44;
UPDATE masini SET denumire='314MPalac' WHERE denumire in ('Minardi');

--6 tabel
UPDATE circuite SET nume='Tarlisua Ring' WHERE nr_sicane=15 and id=25;
UPDATE circuite SET nume='Ansamblu 3/4 Caransebes' WHERE tara like 'Arabia%';
UPDATE circuite SET tara='Guineea Bisau' WHERE tara='Africa de Sud';
UPDATE circuite SET nr_sicane=69 WHERE nr_tururi=75 and tara like 'SUA%';
UPDATE circuite SET nr_tururi=5722 WHERE nume in ('Vegas');
UPDATE circuite SET tara='Timoru de Est' WHERE formula_1_id>45;
UPDATE circuite SET nr_sicane=2 WHERE nr_tururi=58;
UPDATE circuite SET nr_tururi=12 WHERE id=45 or tara like 'Jap%';
UPDATE circuite SET nume='Creasta Mijlocie Toplita' WHERE id=38;
UPDATE circuite SET tara='Cambodgia' WHERE tara='Malaezia';

--7 tabel
UPDATE curse SET tip='Sprint' WHERE media_spectatorilor=380000;
UPDATE curse SET ziua_cursei='Joi' WHERE ziua_cursei like 'Vineri%';
UPDATE curse SET media_spectatorilor=400000 WHERE circuite_id>45;
UPDATE curse SET tip='Exercitiu' WHERE tip in ('Antrenament') or id<10;
UPDATE curse SET ziua_cursei='Maine' WHERE media_spectatorilor>450000;
UPDATE curse SET media_spectatorilor=100000 WHERE tip='Antrenament';
UPDATE curse SET tip='Qualification' WHERE id>30 and id<40;
UPDATE curse SET ziua_cursei='NoData' WHERE media_spectatorilor<200000;
UPDATE curse SET media_spectatorilor=333333 WHERE tip like 'Calificare%' and circuite_id<10;
UPDATE curse SET tip='RACE' WHERE ziua_cursei in ('Duminica');

--8 tabel
UPDATE sponsori SET nume='NoData' WHERE investitie<2000000;
UPDATE sponsori SET investitie=2222222 WHERE investitie>3000000;
UPDATE sponsori SET nume='KFC' WHERE id<15;
UPDATE sponsori SET investitie=1231234 WHERE nume like 'K%' and piloti_id=15;
UPDATE sponsori SET nume='Continental' WHERE echipe_id>47;
UPDATE sponsori SET investitie=3213210 WHERE investitie=200000;
UPDATE sponsori SET nume='NoName' WHERE id=23 and echipe_id=23;
UPDATE sponsori SET investitie=4444444 WHERE nume like 'C%';
UPDATE sponsori SET nume='Meta' WHERE piloti_id=35;
UPDATE sponsori SET investitie=5555550 WHERE nume in ('M');