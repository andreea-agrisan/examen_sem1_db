--SQL file for delete

--8 tabel
DELETE from sponsori WHERE nume='Meta';
DELETE from sponsori WHERE investitie=1231234 and piloti_id=47;
DELETE from sponsori WHERE nume='NoData' and id=22;
DELETE from sponsori WHERE piloti_id=33;
DELETE from sponsori WHERE echipe_id=45 and id=45;
DELETE from sponsori WHERE nume like 'K%' and echipe_id<5;
DELETE from sponsori WHERE investitie=4444444 and piloti_id=50;
DELETE from sponsori WHERE piloti_id=16;
DELETE from sponsori WHERE investitie=4444444 and nume like 'Cont%';
DELETE from sponsori;

--7 tabel
DELETE from curse WHERE tip='Exercitiu' and circuite_id=26;
DELETE from curse WHERE circuite_id=49;
DELETE from curse WHERE ziua_cursei like 'Sam%' and media_spectatorilor=333333;
DELETE from curse WHERE media_spectatorilor=400000 and tip='Sprint';
DELETE from curse WHERE tip='Calificare' and circuite_id<6;
DELETE from curse WHERE ziua_cursei='Joi' and circuite_id>2 and circuite_id<6;
DELETE from curse WHERE media_spectatorilor=400000 and tip='RACE';
DELETE from curse WHERE circuite_id=50;
DELETE from curse WHERE ziua_cursei='Joi';
DELETE from curse;

--6 tabel
DELETE from circuite WHERE nume like 'Zand%';
DELETE from circuite WHERE tara='SUA';
DELETE from circuite WHERE nr_sicane<5;
DELETE from circuite WHERE nr_tururi>70;
DELETE from circuite WHERE tara like 'Est%' and nr_sicane<20;
DELETE from circuite WHERE formula_1_id=15;
DELETE from circuite WHERE nume in ('Ring') and formula_1_id=25;
DELETE from circuite WHERE id=46;
DELETE from circuite WHERE nr_sicane>15;
DELETE from circuite;

--5 tabel
DELETE from masini WHERE denumire like 'nu%';
DELETE from masini WHERE culori='sclipici, caprui' and denumire like 'aragaz%';
DELETE from masini WHERE echipa_apartinatoare='Lotus' and id=31;
DELETE from masini WHERE denumire='191';
DELETE from masini WHERE id=35;
DELETE from masini WHERE culori='maroz';
DELETE from masini WHERE echipa_apartinatoare in ('FaruFaraBec');
DELETE from masini WHERE id=10;
DELETE from masini WHERE culori like 'verde%';
DELETE from masini;

--4 tabel
DELETE from piloti WHERE campionate_castigate=0;
DELETE from piloti WHERE echipa='Lotus';
DELETE from piloti WHERE nume like 'Schuma%';
DELETE from piloti WHERE varsta>60;
DELETE from piloti WHERE id>45;
DELETE from piloti WHERE campionate_castigate=5 and varsta=27;
DELETE from piloti WHERE echipa='Haas';
DELETE from piloti WHERE nume in ('Oompa');
DELETE from piloti WHERE varsta<25;
DELETE from piloti;

--3 tabel
DELETE from manageri WHERE nume like 'Tost%';
DELETE from manageri WHERE ani_vechime=1 and email like 'bruno.%';
DELETE from manageri WHERE email like 'gun.%';
DELETE from manageri WHERE echipa='Minardi';
DELETE from manageri WHERE id=15;
DELETE from manageri WHERE nume in ('Vasseur');
DELETE from manageri WHERE ani_vechime>5;
DELETE from manageri WHERE email in ('ste.fit');
DELETE from manageri WHERE echipa='NoData';
DELETE from manageri;

--2 tabel
DELETE from echipe WHERE nume like 'Fry%';
DELETE from echipe WHERE tara_origine='Africa de Sud';
DELETE from echipe WHERE an_infiintare<1960;
DELETE from echipe WHERE existente=True and an_infiintare=1991;
DELETE from echipe WHERE id>46;
DELETE from echipe WHERE nume in ('Pacific');
DELETE from echipe WHERE tara_origine='NoData' and id=40;
DELETE from echipe WHERE an_infiintare=2024;
DELETE from echipe WHERE existente=False;
DELETE from echipe;

--1 tabel
DELETE from formula_1 WHERE reglementari='Sasiu';
DELETE from formula_1 WHERE pneuri like 'DUR%';
DELETE from formula_1 WHERE punctaj in ('1 punct');
DELETE from formula_1 WHERE steaguri='GALBEN';
DELETE from formula_1 WHERE id<5;
DELETE from formula_1 WHERE reglementari like 'Penalizare%';
DELETE from formula_1 WHERE pneuri in ('MOALE') and id=17;
DELETE from formula_1 WHERE punctaj like 'puncte%';
DELETE from formula_1 WHERE steaguri in ('Steag') or id=42;
DELETE from formula_1;