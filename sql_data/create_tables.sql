create table smash (
	tipo varchar(20),
	n int,
	ale varchar(40),
	leo varchar(40),
	sandro varchar(40),
	siwei varchar(40),
	win varchar(20),
	win1 varchar(20),
	constraint vincolo_su_numero check (n > 0),
	constraint pk primary key(tipo,n)
);

alter table smash
add constraint nome_giusto_win
check ((win = 'Ale' or win = 'Leo' or win = 'Sandro' or win = 'Siwei') and
      (win1 = 'Ale' or win1 = 'Leo' or win1 = 'Sandro' or win1 = 'Siwei' or win1 = null));

create table kills (
	tipo varchar(20),
	n int,
	uccide varchar(20),
	ucciso varchar(20),
	come varchar(40),
	constraint vincolo_su_numero_k check (n > 0),
	constraint fk_k foreign key (tipo,n) references smash(tipo,n)
);

create table deaths (
	tipo varchar(20),
	n int,
	chi varchar(20),
	come varchar(40),
	constraint vincolo_su_numero_d check (n > 0),
	constraint fk_d foreign key (tipo,n) references smash(tipo,n)
);