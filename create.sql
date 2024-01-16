-- SQL syntax for create tables
CREATE TABLE IF NOT EXISTS formula_1(
	id serial not null,
	reglementari varchar(300) null,
	pneuri varchar(300) null,
	punctaj varchar(300) null,
	steaguri varchar(300) null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS echipe(
	id serial not null,
	formula_1_id integer not null,
	nume varchar(300) not null,
	tara_origine varchar(300) not null,
	an_infiintare integer not null,
	existente bool not null,
	primary key(id),
	foreign key(formula_1_id) references formula_1(id)
);
CREATE TABLE IF NOT EXISTS manageri(
	id serial not null,
	nume varchar(300) not null,
	ani_vechime integer not null,
	email varchar(300) not null,
	echipa varchar(300) not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS manageri_echipe(
	id serial not null,
	echipe_id integer not null,
	manageri_id integer not null,
	primary key(id),
	foreign key(echipe_id) references echipe(id),
	foreign key(manageri_id) references manageri(id)
);
CREATE TABLE IF NOT EXISTS piloti(
	id serial not null,
	nume varchar(300) not null,
	varsta integer not null,
	echipa varchar(300) not null,
	campionate_castigate integer not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS echipe_piloti(
	id serial not null,
	echipe_id integer not null,
	piloti_id integer not null,
	primary key(id),
	foreign key(echipe_id) references echipe(id),
	foreign key(piloti_id) references piloti(id)
);
CREATE TABLE IF NOT EXISTS masini(
	id serial not null,
	denumire varchar(300) not null,
	echipa_apartinatoare varchar(300) not null,
	culori varchar(500) not null,
	primary key(id)
);
CREATE TABLE IF NOT EXISTS piloti_masini(
	id serial not null,
	piloti_id integer not null,
	masini_id integer not null,
	primary key(id),
	foreign key(piloti_id) references piloti(id),
	foreign key(masini_id) references masini(id)
);
CREATE TABLE IF NOT EXISTS circuite(
	id serial not null,
	formula_1_id integer not null,
	nume varchar(300) not null,
	tara varchar(300) not null,
	nr_sicane integer null,
	nr_tururi integer not null,
	primary key(id),
	foreign key(formula_1_id) references formula_1(id)
);
CREATE TABLE IF NOT EXISTS curse(
	id serial not null,
	circuite_id integer not null,
	tip varchar(300) not null,
	ziua_cursei varchar(300) not null,
	media_spectatorilor integer not null,
	primary key(id),
	foreign key(circuite_id) references circuite(id)
);
CREATE TABLE IF NOT EXISTS sponsori(
	id serial not null,
	echipe_id integer not null,
	piloti_id integer not null,
	nume varchar(300) not null,
	investitie varchar(300) not null,
	primary key(id),
	foreign key(echipe_id) references echipe(id),
	foreign key(piloti_id) references piloti(id)
);