/*
kills
		attacchi smash AS-
		final smash SF-
		meteora MET-
		Aereo Posteriore AIR-
		neutral b NB-
		down b DB-
		up b UB-
		side b SB-
		fuoco amico FA-
		footstool FS-
		altro O-
deaths
		autodistruzione SD-
		fuoco amico FA-
		mancato recupero MR-
		'BUG'

		smash lato AS-
		smash su AS-
		smash giù AS-
		Aereo Posteriore su AIR-
		Aereo Posteriore davanti AIR-
		Aereo Posteriore dietro AIR-
		Aereo Posteriore sotto AIR-
		neutral b NB-
		down b DB-
		up b UB-
		side b SB-
		in corsa
		meteora MET-
		Grab
		final smash SF-
		fuoco amico FA-
		shield break
		peculiarity
		footstool FS-
		altro O-
];

soccer no
*/
-----------------------------------------------------------------------------------------------------------------------------

alter table kills
drop constraint if exists nome_giusto;

alter table kills 
add constraint nome_giusto 
check ((uccide = 'Ale' or uccide = 'Leo' or uccide = 'Sandro' or uccide = 'Siwei')
	and (ucciso = 'Ale' or ucciso = 'Leo' or ucciso = 'Sandro' or ucciso = 'Siwei'));
-----------------------------------------------------------------------------------------------------------------------------
alter table kills
drop constraint if exists kill_giusto;

alter table kills 
add constraint kill_giusto
check (come = 'Smash Laterale' or come = 'Smash in Su' or come = 'Smash in Giù'
	or come = 'Aereo Frontale' or come = 'Aereo Posteriore' or come = 'Aereo in Su' or come = 'Aereo in Giù' or come = 'Aereo Standard'
	or come = 'Speciale Standard' or come = 'Speciale Laterale' or come = 'Speciale in Su' or come = 'Speciale in Giù'
	or come = 'In Corsa' or come = 'Meteora' or come = 'Grab' or come = 'Scudo Rotto' or come = 'Fuoco Amico' or come = 'Footstool'
	or come = 'Smash Finale' or come = 'Altro' or come = 'Peculiare');
-----------------------------------------------------------------------------------------------------------------------------
alter table deaths
drop constraint if exists nome_giusto_deaths;

alter table deaths
add constraint nome_giusto_deaths
check (chi = 'Ale' or chi = 'Leo' or chi = 'Sandro' or chi = 'Siwei');
-----------------------------------------------------------------------------------------------------------------------------
alter table deaths
drop constraint if exists death_giusto;

alter table deaths
add constraint death_giusto
check (come = 'Autodistruzione' or come = 'Mancato Recupero' or come = 'Fuoco Amico' or come = 'BUG' or come = 'Scudo Rotto'
------------MARIO
		or come = '3D Land' --(moving)
		or come = 'Golden Plains' --(moving, coins stage)
		or come = 'Mushroomy Kingdom' --(moving)
		or come = 'Mushroom Kingdom' --(pipes and POW)
		or come = 'Mario Bros.' --(throwing crabs/koopa)
		or come = 'Paper Mario' --(moving)
		or come = 'Figure-8 Circuit' --(macchine)
		or come = 'Mario Circuit' --(macchine)
		or come = 'Princess Peach Castle'
		or come = 'Mushroom Kingdom U' --(thief)
		or come = 'Rainbow Cruise'
		or come = 'Mushroom Kingdom II' --(carpet)
------------DONKEY KONG
		or come = 'Jungle Japes' --(fiume)
		or come = '75m' --(dk)
		or come = 'Kongo Jungle' --(cannoni)
------------YOSHI
		or come = 'Yoshis Island' --(moving)
		or come = 'Super Happy Tree' --(nuvole)		
------------ZELDA
		or come = 'Spirit Train' --(treno)
		or come = 'Gerudo Valley' --(ice/fire)
		or come = 'Hyrule Castle' --(tornado)
		or come = 'Bridge of Eldin' --(ponte)
		or come = 'Pirate Ship' --(barca o sfondo cannoni)
		or come = 'Skyloft' --(moving)
------------METROID
		or come = 'Norfair' --(lava)
		or come = 'Brinstar Depths' --(moving)
		or come = 'Frigate Orpheon' --(flip screen)
		or come = 'Brinstar' --(green acid stage)
------------KIRBY
		or come = 'Dream Land GB' --(moving)
		or come = 'Green Greens' --(esplosivi)
		or come = 'Halberd' --(moving)
------------STAR FOX
		or come = 'Corneria' --(ships)
------------POKEMON		
		or come = 'Saffron City' --(pokemon)
		or come = 'Prism Tower' --(moving)
		or come = 'Spear Pillar' --(palkia/dialga)
		or come = 'Unova Pokemon League' --(reshiram,zekrom...)
		or come = 'Kalos Pokemon League' --(colonne di fuoco)
		or come = 'Pokemon Stadium 2' --(tapirulan)
------------F-ZERO
		or come = 'Port Town Aero Dive' --(macchine)
		or come = 'Big Blue' --(moving, macchine)
		or come = 'Mute City SNES' --(macchine)
------------EARTHBOUND
		or come = 'New Pork City' --(ultimate chimera, bridge)
		or come = 'Magicant' --(flying man)
------------PIKMIN
		or come = 'Distant Planet' --(fiume)
		or come = 'Garden of Hope' --(granchio)
------------WARIO
		or come = 'WarioWare Inc.' --(macchine)
		or come = 'Gamer' --(mamma)
------------ALTRO NINTENDO
		or come = 'Wuhu Island' --(moving)			
		or come = 'Summit' --(ghiaccio e pesce)
		or come = 'Find Mii' --(re delle tenebre, moving)
		or come = 'Living Room' --(lego/tetris)
		or come = 'Gaur Plain' --(metal face)
		or come = 'Balloon Fight' --(SCHIFO)
		or come = 'Skyworld' --(piattaforme)
		or come = 'Palutenas Temple' --(spike ball)
		or come = 'Flat Zone X' --(game e watch)
		or come = 'Garreg Mach Monastery' --(fe, moving)
		or come = 'Castle Siege' --(fe, moving)
		or come = 'PictoChat 2' --random bullshit
		or come = 'Tortimer Island' --water shark
------------ALTRO TERZE
		or come = 'Windy Hill Zone' --(molla)
		or come = 'Green Hill Zone' --(disappearing platform)
		or come = 'Wily Castle' --(yellow devil)
		or come = 'Midgar'
		or come = 'Pac-Land' --(moving)
		or come = 'Yggdrasils Altar' --(moving)
);
-----------------------------------------------------------------------------------------------------------------------------
delete from kills;
delete from deaths;



--Single-998
insert into kills values ('Single',998,'Siwei','Leo','Speciale Standard'),
 ('Single',998,'Leo','Ale','Smash Finale'),
 ('Single',998,'Leo','Siwei','Smash Laterale'),
 ('Single',998,'Siwei','Sandro','Smash Laterale'),
 ('Single',998,'Sandro','Ale','Smash Laterale'),
 ('Single',998,'Leo','Siwei','Smash in Su'),
 ('Single',998,'Siwei','Leo','Smash Laterale'),
 ('Single',998,'Siwei','Sandro','Smash Finale'),
 ('Single',998,'Siwei','Ale','Smash Finale'),
 ('Single',998,'Leo','Siwei','Speciale in Su'),
 ('Single',998,'Sandro','Leo','Speciale in Giù');


--Single-997
insert into kills values ('Single',997,'Sandro','Leo','Smash Laterale'),
 ('Single',997,'Sandro','Siwei','Smash Laterale'),
 ('Single',997,'Sandro','Ale','Altro'),
 ('Single',997,'Leo','Siwei','Smash Finale'),
 ('Single',997,'Leo','Ale','Smash Finale'),
 ('Single',997,'Siwei','Sandro','Smash Laterale'),
 ('Single',997,'Siwei','Leo','Speciale Standard'),
 ('Single',997,'Sandro','Ale','Peculiare'),
 ('Single',997,'Siwei','Sandro','Altro'),
 ('Single',997,'Sandro','Siwei','Speciale in Giù'),
 ('Single',997,'Sandro','Leo','Altro');

insert into deaths values ('Single',997,'Sandro','Mancato Recupero');


--Single-996
insert into kills values ('Single',996,'Ale','Siwei','Altro'),
 ('Single',996,'Siwei','Sandro','Smash in Su'),
 ('Single',996,'Sandro','Leo','Aereo Posteriore'),
 ('Single',996,'Siwei','Ale','In Corsa'),
 ('Single',996,'Leo','Siwei','Smash Finale'),
 ('Single',996,'Leo','Ale','Aereo in Giù'),
 ('Single',996,'Ale','Sandro','Aereo Posteriore'),
 ('Single',996,'Ale','Leo','Meteora'),
 ('Single',996,'Sandro','Siwei','In Corsa'),
 ('Single',996,'Ale','Sandro','Aereo Posteriore'),
 ('Single',996,'Ale','Leo','Aereo Posteriore');

insert into deaths values ('Single',996,'Siwei','Mancato Recupero');


--Single-995
insert into kills values ('Single',995,'Sandro','Siwei','Speciale in Giù'),
 ('Single',995,'Sandro','Siwei','In Corsa'),
 ('Single',995,'Siwei','Leo','Smash Finale'),
 ('Single',995,'Sandro','Ale','Smash Finale'),
 ('Single',995,'Siwei','Sandro','Altro'),
 ('Single',995,'Leo','Sandro','Smash Laterale'),
 ('Single',995,'Siwei','Ale','Smash Laterale'),
 ('Single',995,'Ale','Leo','Speciale in Giù'),
 ('Single',995,'Ale','Sandro','Speciale in Giù'),
 ('Single',995,'Ale','Leo','Smash Finale'),
 ('Single',995,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Single',995,'Sandro','Mancato Recupero');


--Single-994
insert into kills values ('Single',994,'Sandro','Ale','Speciale in Giù'),
 ('Single',994,'Ale','Siwei','Smash Laterale'),
 ('Single',994,'Ale','Leo','Smash in Su'),
 ('Single',994,'Ale','Sandro','Aereo Posteriore'),
 ('Single',994,'Sandro','Leo','Smash Finale'),
 ('Single',994,'Sandro','Siwei','In Corsa'),
 ('Single',994,'Sandro','Leo','Speciale in Giù'),
 ('Single',994,'Sandro','Ale','In Corsa'),
 ('Single',994,'Ale','Sandro','Aereo Posteriore'),
 ('Single',994,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',994,'Siwei','Autodistruzione');


--Single-993
insert into kills values ('Single',993,'Ale','Sandro','Altro'),
 ('Single',993,'Ale','Siwei','Speciale Standard'),
 ('Single',993,'Siwei','Ale','Smash Finale'),
 ('Single',993,'Sandro','Siwei','Smash Finale'),
 ('Single',993,'Ale','Sandro','Altro'),
 ('Single',993,'Ale','Siwei','Speciale Standard'),
 ('Single',993,'Sandro','Leo','Peculiare'),
 ('Single',993,'Sandro','Ale','Smash Laterale'),
 ('Single',993,'Leo','Sandro','Smash Laterale'),
 ('Single',993,'Ale','Leo','Aereo Standard'),
 ('Single',993,'Ale','Leo','Altro');

insert into deaths values ('Single',993,'Sandro','Autodistruzione'),
 ('Single',993,'Sandro','Autodistruzione'),
 ('Single',993,'Leo','Mancato Recupero');


--Single-992
insert into kills values ('Single',992,'Ale','Sandro','Altro'),
 ('Single',992,'Sandro','Leo','Peculiare'),
 ('Single',992,'Leo','Siwei','Altro'),
 ('Single',992,'Leo','Sandro','Altro'),
 ('Single',992,'Sandro','Siwei','Speciale in Giù'),
 ('Single',992,'Sandro','Ale','Smash Finale'),
 ('Single',992,'Sandro','Leo','Peculiare'),
 ('Single',992,'Siwei','Sandro','Altro'),
 ('Single',992,'Ale','Leo','Aereo Frontale'),
 ('Single',992,'Siwei','Ale','Speciale Standard'),
 ('Single',992,'Ale','Siwei','Altro');

insert into deaths values ('Single',992,'Siwei','Mancato Recupero'),
 ('Single',992,'Sandro','Norfair'),
 ('Single',992,'Sandro','Autodistruzione'),
 ('Single',992,'Sandro','Autodistruzione'),
 ('Single',992,'Siwei','Norfair');


--Single-991
insert into kills values ('Single',991,'Siwei','Sandro','Smash Laterale'),
 ('Single',991,'Ale','Leo','In Corsa'),
 ('Single',991,'Sandro','Ale','Peculiare'),
 ('Single',991,'Leo','Siwei','Smash Laterale'),
 ('Single',991,'Sandro','Leo','Speciale in Giù'),
 ('Single',991,'Sandro','Siwei','Smash Finale'),
 ('Single',991,'Sandro','Ale','In Corsa'),
 ('Single',991,'Sandro','Leo','Smash Laterale'),
 ('Single',991,'Ale','Sandro','Peculiare'),
 ('Single',991,'Siwei','Ale','Scudo Rotto'),
 ('Single',991,'Siwei','Sandro','Altro');

insert into deaths values ('Single',991,'Ale','Scudo Rotto'),
 ('Single',991,'Sandro','Autodistruzione');


--Single-990
insert into kills values ('Single',990,'Sandro','Siwei','Smash Laterale'),
 ('Single',990,'Leo','Ale','Smash Laterale'),
 ('Single',990,'Sandro','Leo','Speciale in Giù'),
 ('Single',990,'Ale','Sandro','Altro'),
 ('Single',990,'Siwei','Leo','Smash Finale'),
 ('Single',990,'Leo','Siwei','Speciale Standard'),
 ('Single',990,'Siwei','Leo','Smash Laterale'),
 ('Single',990,'Ale','Sandro','Speciale in Giù'),
 ('Single',990,'Sandro','Ale','Aereo Frontale'),
 ('Single',990,'Sandro','Siwei','Peculiare'),
 ('Single',990,'Ale','Sandro','In Corsa');

insert into deaths values ('Single',990,'Sandro','Autodistruzione');


--Single-989
insert into kills values ('Single',989,'Ale','Siwei','Aereo Frontale'),
 ('Single',989,'Siwei','Leo','Smash Laterale'),
 ('Single',989,'Leo','Sandro','Smash Laterale'),
 ('Single',989,'Sandro','Siwei','Smash Finale'),
 ('Single',989,'Leo','Ale','Smash Finale'),
 ('Single',989,'Sandro','Leo','Aereo Frontale'),
 ('Single',989,'Leo','Siwei','Smash in Su'),
 ('Single',989,'Ale','Sandro','Smash Laterale'),
 ('Single',989,'Leo','Ale','Speciale in Su'),
 ('Single',989,'Ale','Leo','Speciale Standard'),
 ('Single',989,'Ale','Sandro','Speciale Standard');


--Single-988
insert into kills values ('Single',988,'Ale','Sandro','Altro'),
 ('Single',988,'Sandro','Ale','Speciale in Giù'),
 ('Single',988,'Sandro','Leo','Speciale in Giù'),
 ('Single',988,'Sandro','Siwei','Speciale in Giù'),
 ('Single',988,'Leo','Sandro','Altro'),
 ('Single',988,'Siwei','Leo','Smash Finale'),
 ('Single',988,'Siwei','Sandro','Altro'),
 ('Single',988,'Leo','Ale','Smash Finale'),
 ('Single',988,'Leo','Siwei','Speciale Laterale'),
 ('Single',988,'Ale','Siwei','Speciale in Giù'),
 ('Single',988,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',988,'Sandro','Autodistruzione'),
 ('Single',988,'Sandro','Autodistruzione'),
 ('Single',988,'Sandro','Mancato Recupero');


--Single-987
insert into kills values ('Single',987,'Leo','Ale','Altro'),
 ('Single',987,'Siwei','Sandro','Smash Laterale'),
 ('Single',987,'Sandro','Siwei','In Corsa'),
 ('Single',987,'Sandro','Leo','Smash Laterale'),
 ('Single',987,'Leo','Sandro','Speciale in Su'),
 ('Single',987,'Siwei','Ale','Smash Finale'),
 ('Single',987,'Sandro','Ale','Altro'),
 ('Single',987,'Sandro','Siwei','Smash Laterale'),
 ('Single',987,'Siwei','Sandro','Smash Laterale'),
 ('Single',987,'Siwei','Leo','Smash Laterale'),
 ('Single',987,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Single',987,'Ale','Autodistruzione'),
 ('Single',987,'Ale','Mancato Recupero');


--Single-986
insert into kills values ('Single',986,'Leo','Siwei','Aereo in Giù'),
 ('Single',986,'Siwei','Sandro','Smash Finale'),
 ('Single',986,'Leo','Siwei','Smash Finale'),
 ('Single',986,'Sandro','Leo','Smash Laterale'),
 ('Single',986,'Sandro','Ale','Smash Finale'),
 ('Single',986,'Leo','Ale','Smash Laterale'),
 ('Single',986,'Sandro','Leo','Smash Laterale'),
 ('Single',986,'Sandro','Siwei','Altro'),
 ('Single',986,'Ale','Sandro','Altro'),
 ('Single',986,'Sandro','Leo','Altro'),
 ('Single',986,'Sandro','Ale','Peculiare');

insert into deaths values ('Single',986,'Siwei','Mancato Recupero'),
 ('Single',986,'Sandro','Autodistruzione');


--Single-985
insert into kills values ('Single',985,'Sandro','Leo','Aereo Frontale'),
 ('Single',985,'Siwei','Sandro','Altro'),
 ('Single',985,'Leo','Ale','Smash Finale'),
 ('Single',985,'Sandro','Siwei','Smash Finale'),
 ('Single',985,'Ale','Leo','Altro'),
 ('Single',985,'Siwei','Sandro','Smash Laterale'),
 ('Single',985,'Sandro','Ale','Aereo Frontale'),
 ('Single',985,'Sandro','Leo','Smash Laterale'),
 ('Single',985,'Ale','Siwei','Speciale Laterale'),
 ('Single',985,'Siwei','Sandro','Altro'),
 ('Single',985,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',985,'Sandro','Autodistruzione'),
 ('Single',985,'Leo','Mancato Recupero'),
 ('Single',985,'Sandro','Mancato Recupero');


--Single-984
insert into kills values ('Single',984,'Siwei','Sandro','Peculiare'),
 ('Single',984,'Sandro','Leo','Smash Finale'),
 ('Single',984,'Leo','Siwei','Smash Finale'),
 ('Single',984,'Siwei','Leo','Smash Finale'),
 ('Single',984,'Siwei','Sandro','Peculiare'),
 ('Single',984,'Ale','Siwei','Smash Laterale'),
 ('Single',984,'Leo','Ale','Altro'),
 ('Single',984,'Sandro','Siwei','Speciale in Giù'),
 ('Single',984,'Siwei','Sandro','Altro'),
 ('Single',984,'Ale','Leo','Speciale Laterale');

insert into deaths values ('Single',984,'Ale','Mancato Recupero'),
 ('Single',984,'Sandro','Autodistruzione');


--Single-983
insert into kills values ('Single',983,'Siwei','Ale','Speciale Laterale'),
 ('Single',983,'Leo','Siwei','In Corsa'),
 ('Single',983,'Ale','Sandro','Altro'),
 ('Single',983,'Ale','Siwei','Altro'),
 ('Single',983,'Ale','Leo','Smash Finale'),
 ('Single',983,'Sandro','Ale','Smash Finale'),
 ('Single',983,'Leo','Sandro','Smash in Su'),
 ('Single',983,'Sandro','Leo','Smash Laterale'),
 ('Single',983,'Siwei','Ale','Speciale Laterale'),
 ('Single',983,'Siwei','Sandro','Speciale Laterale'),
 ('Single',983,'Leo','Siwei','Altro');

insert into deaths values ('Single',983,'Sandro','Mancato Recupero'),
 ('Single',983,'Siwei','Autodistruzione'),
 ('Single',983,'Siwei','Autodistruzione');


--Single-982
insert into kills values ('Single',982,'Ale','Siwei','Smash Laterale'),
 ('Single',982,'Ale','Sandro','Smash Laterale'),
 ('Single',982,'Sandro','Siwei','Smash Laterale'),
 ('Single',982,'Sandro','Leo','Aereo Posteriore'),
 ('Single',982,'Siwei','Leo','Smash Finale'),
 ('Single',982,'Sandro','Siwei','Peculiare'),
 ('Single',982,'Sandro','Leo','Peculiare'),
 ('Single',982,'Ale','Sandro','Speciale Laterale'),
 ('Single',982,'Sandro','Ale','In Corsa'),
 ('Single',982,'Ale','Sandro','Smash Laterale');


--Single-981
insert into kills values ('Single',981,'Sandro','Ale','Speciale in Giù'),
 ('Single',981,'Leo','Siwei','Smash Laterale'),
 ('Single',981,'Leo','Ale','Altro'),
 ('Single',981,'Leo','Siwei','Speciale Standard'),
 ('Single',981,'Leo','Sandro','Smash in Su'),
 ('Single',981,'Leo','Siwei','Smash in Su'),
 ('Single',981,'Sandro','Leo','Smash Laterale'),
 ('Single',981,'Leo','Ale','Altro'),
 ('Single',981,'Sandro','Leo','Smash Laterale'),
 ('Single',981,'Leo','Sandro','In Corsa');

insert into deaths values ('Single',981,'Sandro','Autodistruzione'),
 ('Single',981,'Ale','Mancato Recupero'),
 ('Single',981,'Ale','Autodistruzione');


--Single-980
insert into kills values ('Single',980,'Ale','Siwei','Aereo Frontale'),
 ('Single',980,'Leo','Ale','Smash Laterale'),
 ('Single',980,'Leo','Sandro','Smash Laterale'),
 ('Single',980,'Siwei','Leo','Speciale Laterale'),
 ('Single',980,'Leo','Siwei','Smash Finale'),
 ('Single',980,'Sandro','Leo','Smash Finale'),
 ('Single',980,'Siwei','Leo','Smash Finale'),
 ('Single',980,'Siwei','Sandro','Speciale Laterale'),
 ('Single',980,'Sandro','Siwei','In Corsa'),
 ('Single',980,'Sandro','Ale','Smash Finale'),
 ('Single',980,'Ale','Sandro','Speciale in Su');


--Single-979
insert into kills values ('Single',979,'Sandro','Siwei','Smash Laterale'),
 ('Single',979,'Siwei','Ale','Smash Laterale'),
 ('Single',979,'Siwei','Leo','Smash Finale'),
 ('Single',979,'Siwei','Sandro','Smash Finale'),
 ('Single',979,'Leo','Siwei','Smash Finale'),
 ('Single',979,'Ale','Leo','Smash Laterale'),
 ('Single',979,'Ale','Sandro','Smash Laterale'),
 ('Single',979,'Sandro','Ale','Speciale in Giù'),
 ('Single',979,'Sandro','Siwei','Smash in Su'),
 ('Single',979,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',979,'Leo','Autodistruzione');


--Single-978
insert into kills values ('Single',978,'Siwei','Leo','Speciale Laterale'),
 ('Single',978,'Siwei','Sandro','Speciale Laterale'),
 ('Single',978,'Ale','Siwei','Smash Laterale'),
 ('Single',978,'Siwei','Ale','Smash in Su'),
 ('Single',978,'Sandro','Leo','Smash Laterale'),
 ('Single',978,'Siwei','Sandro','Altro'),
 ('Single',978,'Ale','Leo','Aereo Frontale'),
 ('Single',978,'Sandro','Siwei','Speciale in Giù'),
 ('Single',978,'Ale','Sandro','Smash in Su'),
 ('Single',978,'Siwei','Ale','Speciale Laterale'),
 ('Single',978,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',978,'Sandro','Mancato Recupero');


--Single-977
insert into kills values ('Single',977,'Ale','Sandro','Altro'),
 ('Single',977,'Leo','Siwei','Smash Laterale'),
 ('Single',977,'Siwei','Leo','Smash Finale'),
 ('Single',977,'Siwei','Ale','In Corsa'),
 ('Single',977,'Leo','Siwei','Smash Finale'),
 ('Single',977,'Ale','Sandro','Altro'),
 ('Single',977,'Ale','Leo','Aereo Posteriore'),
 ('Single',977,'Sandro','Siwei','Speciale in Giù'),
 ('Single',977,'Leo','Sandro','Altro'),
 ('Single',977,'Leo','Ale','Smash Finale'),
 ('Single',977,'Ale','Leo','Smash in Giù');

insert into deaths values ('Single',977,'Sandro','Mancato Recupero'),
 ('Single',977,'Sandro','Autodistruzione'),
 ('Single',977,'Sandro','Mancato Recupero');


--Single-976
insert into kills values ('Single',976,'Sandro','Siwei','In Corsa'),
 ('Single',976,'Siwei','Sandro','Smash Laterale'),
 ('Single',976,'Siwei','Ale','Smash Laterale'),
 ('Single',976,'Siwei','Leo','Smash Finale'),
 ('Single',976,'Ale','Sandro','Smash in Giù'),
 ('Single',976,'Ale','Leo','Aereo Frontale'),
 ('Single',976,'Sandro','Siwei','Smash Laterale'),
 ('Single',976,'Leo','Ale','Altro'),
 ('Single',976,'Sandro','Siwei','Peculiare'),
 ('Single',976,'Sandro','Ale','Smash Laterale'),
 ('Single',976,'Leo','Sandro','Altro');

insert into deaths values ('Single',976,'Ale','Autodistruzione'),
 ('Single',976,'Sandro','Autodistruzione');


--Single-975
insert into kills values ('Single',975,'Siwei','Ale','Speciale Laterale'),
 ('Single',975,'Siwei','Leo','Speciale in Giù'),
 ('Single',975,'Siwei','Sandro','Speciale Laterale'),
 ('Single',975,'Leo','Siwei','Smash Finale'),
 ('Single',975,'Sandro','Leo','Smash Laterale'),
 ('Single',975,'Siwei','Sandro','Speciale Laterale'),
 ('Single',975,'Leo','Siwei','Smash Laterale'),
 ('Single',975,'Sandro','Ale','In Corsa'),
 ('Single',975,'Siwei','Sandro','Smash Finale'),
 ('Single',975,'Ale','Siwei','Smash Finale'),
 ('Single',975,'Leo','Ale','Altro');

insert into deaths values ('Single',975,'Ale','Autodistruzione');


--Single-974
insert into kills values ('Single',974,'Siwei','Ale','Speciale Laterale'),
 ('Single',974,'Ale','Siwei','Speciale in Su'),
 ('Single',974,'Sandro','Leo','Smash Laterale'),
 ('Single',974,'Siwei','Ale','Smash Finale'),
 ('Single',974,'Ale','Sandro','Smash Laterale'),
 ('Single',974,'Siwei','Leo','Speciale Laterale'),
 ('Single',974,'Siwei','Leo','Speciale in Giù'),
 ('Single',974,'Sandro','Siwei','Aereo Frontale'),
 ('Single',974,'Ale','Sandro','Smash Finale'),
 ('Single',974,'Ale','Siwei','Altro');

insert into deaths values ('Single',974,'Sandro','Autodistruzione'),
 ('Single',974,'Siwei','Autodistruzione');


--Single-973
insert into kills values ('Single',973,'Siwei','Sandro','Altro'),
 ('Single',973,'Siwei','Leo','Speciale Laterale'),
 ('Single',973,'Siwei','Sandro','Smash Laterale'),
 ('Single',973,'Leo','Siwei','In Corsa'),
 ('Single',973,'Sandro','Ale','Altro'),
 ('Single',973,'Ale','Leo','Aereo in Giù'),
 ('Single',973,'Leo','Siwei','Smash Laterale'),
 ('Single',973,'Siwei','Sandro','Speciale Laterale'),
 ('Single',973,'Ale','Leo','Altro'),
 ('Single',973,'Ale','Siwei','Altro');

insert into deaths values ('Single',973,'Sandro','Mancato Recupero'),
 ('Single',973,'Leo','Autodistruzione'),
 ('Single',973,'Siwei','Unova Pokemon League');


--Single-972
insert into kills values ('Single',972,'Ale','Sandro','Speciale Laterale'),
 ('Single',972,'Siwei','Ale','Smash in Su'),
 ('Single',972,'Sandro','Leo','In Corsa'),
 ('Single',972,'Sandro','Siwei','Smash Finale'),
 ('Single',972,'Sandro','Siwei','Speciale in Giù'),
 ('Single',972,'Siwei','Sandro','Altro'),
 ('Single',972,'Sandro','Siwei','Speciale in Giù'),
 ('Single',972,'Ale','Leo','Smash Finale'),
 ('Single',972,'Sandro','Leo','Altro'),
 ('Single',972,'Ale','Sandro','Speciale Standard');

insert into deaths values ('Single',972,'Sandro','Autodistruzione'),
 ('Single',972,'Leo','Mancato Recupero');


--Single-971
insert into kills values ('Single',971,'Sandro','Leo','Speciale in Giù'),
 ('Single',971,'Ale','Sandro','Altro'),
 ('Single',971,'Sandro','Ale','Speciale in Giù'),
 ('Single',971,'Sandro','Siwei','Speciale in Giù'),
 ('Single',971,'Sandro','Leo','Speciale in Giù'),
 ('Single',971,'Siwei','Leo','Peculiare'),
 ('Single',971,'Ale','Sandro','Smash Laterale'),
 ('Single',971,'Ale','Siwei','Smash Laterale'),
 ('Single',971,'Sandro','Ale','Scudo Rotto'),
 ('Single',971,'Ale','Sandro','Altro');

insert into deaths values ('Single',971,'Sandro','Autodistruzione'),
 ('Single',971,'Sandro','Autodistruzione'),
 ('Single',971,'Ale','Scudo Rotto'),
 ('Single',971,'Sandro','Gaur Plain');


--Single-970
insert into kills values ('Single',970,'Sandro','Ale','Smash in Giù'),
 ('Single',970,'Ale','Leo','Speciale in Su'),
 ('Single',970,'Sandro','Siwei','Peculiare'),
 ('Single',970,'Leo','Sandro','Speciale in Giù'),
 ('Single',970,'Ale','Siwei','Smash Finale'),
 ('Single',970,'Sandro','Leo','Smash Finale'),
 ('Single',970,'Siwei','Ale','Altro'),
 ('Single',970,'Siwei','Sandro','Speciale Laterale'),
 ('Single',970,'Sandro','Siwei','Smash Laterale'),
 ('Single',970,'Sandro','Ale','Speciale in Giù'),
 ('Single',970,'Leo','Sandro','Speciale in Giù');

insert into deaths values ('Single',970,'Ale','Autodistruzione');


--Single-969
insert into kills values ('Single',969,'Ale','Sandro','Altro'),
 ('Single',969,'Leo','Sandro','Altro'),
 ('Single',969,'Sandro','Siwei','Smash Laterale'),
 ('Single',969,'Siwei','Ale','Smash Finale'),
 ('Single',969,'Sandro','Leo','Smash Laterale'),
 ('Single',969,'Ale','Sandro','Altro'),
 ('Single',969,'Sandro','Siwei','Speciale in Giù'),
 ('Single',969,'Leo','Ale','Smash Finale'),
 ('Single',969,'Ale','Siwei','Smash Laterale'),
 ('Single',969,'Ale','Leo','Smash Laterale'),
 ('Single',969,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',969,'Sandro','Mancato Recupero'),
 ('Single',969,'Sandro','Autodistruzione'),
 ('Single',969,'Sandro','Autodistruzione');


--Single-968
insert into kills values ('Single',968,'Leo','Siwei','Smash Laterale'),
 ('Single',968,'Siwei','Leo','Speciale Laterale'),
 ('Single',968,'Sandro','Ale','Altro'),
 ('Single',968,'Siwei','Sandro','Speciale Laterale'),
 ('Single',968,'Ale','Sandro','Aereo Posteriore'),
 ('Single',968,'Ale','Siwei','Grab'),
 ('Single',968,'Siwei','Sandro','Altro'),
 ('Single',968,'Ale','Leo','Smash Finale'),
 ('Single',968,'Ale','Siwei','Smash Finale'),
 ('Single',968,'Leo','Ale','Smash Finale'),
 ('Single',968,'Ale','Leo','Smash in Giù');

insert into deaths values ('Single',968,'Sandro','Mancato Recupero');


--Single-967
insert into kills values ('Single',967,'Siwei','Leo','Smash Laterale'),
 ('Single',967,'Leo','Sandro','Smash Laterale'),
 ('Single',967,'Leo','Siwei','Smash Laterale'),
 ('Single',967,'Siwei','Ale','Speciale Laterale'),
 ('Single',967,'Leo','Sandro','Smash Finale'),
 ('Single',967,'Sandro','Ale','Smash Finale'),
 ('Single',967,'Sandro','Leo','Smash Finale'),
 ('Single',967,'Sandro','Siwei','Smash Finale'),
 ('Single',967,'Siwei','Sandro','Altro'),
 ('Single',967,'Siwei','Ale','Smash Finale'),
 ('Single',967,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Single',967,'Sandro','Autodistruzione');


--Single-966
insert into kills values ('Single',966,'Sandro','Siwei','In Corsa'),
 ('Single',966,'Siwei','Sandro','Smash Finale'),
 ('Single',966,'Sandro','Leo','In Corsa'),
 ('Single',966,'Leo','Ale','Speciale Standard'),
 ('Single',966,'Leo','Siwei','Smash Finale'),
 ('Single',966,'Siwei','Leo','Aereo Frontale'),
 ('Single',966,'Siwei','Sandro','Smash Finale'),
 ('Single',966,'Ale','Siwei','Smash Laterale'),
 ('Single',966,'Ale','Leo','Speciale Standard'),
 ('Single',966,'Sandro','Ale','Smash Finale'),
 ('Single',966,'Ale','Sandro','Aereo in Su');


--Single-965
insert into kills values ('Single',965,'Sandro','Ale','Speciale in Giù'),
 ('Single',965,'Ale','Siwei','Smash in Su'),
 ('Single',965,'Leo','Sandro','Speciale Standard'),
 ('Single',965,'Sandro','Leo','Smash Laterale'),
 ('Single',965,'Siwei','Ale','Smash Laterale'),
 ('Single',965,'Sandro','Siwei','Speciale in Giù'),
 ('Single',965,'Ale','Leo','Aereo in Su'),
 ('Single',965,'Leo','Sandro','Smash Finale'),
 ('Single',965,'Sandro','Siwei','Smash Laterale'),
 ('Single',965,'Sandro','Ale','In Corsa'),
 ('Single',965,'Sandro','Leo','Smash Finale');


--Single-964
insert into kills values ('Single',964,'Sandro','Leo','In Corsa'),
 ('Single',964,'Siwei','Sandro','Speciale in Giù'),
 ('Single',964,'Leo','Ale','Smash Laterale'),
 ('Single',964,'Sandro','Siwei','Smash Laterale'),
 ('Single',964,'Siwei','Leo','Speciale Laterale'),
 ('Single',964,'Sandro','Ale','Smash Finale'),
 ('Single',964,'Sandro','Siwei','Speciale in Giù'),
 ('Single',964,'Siwei','Leo','Speciale in Giù'),
 ('Single',964,'Sandro','Siwei','Smash Laterale'),
 ('Single',964,'Ale','Sandro','Speciale in Giù'),
 ('Single',964,'Sandro','Ale','Smash Finale');


--Single-963
insert into kills values ('Single',963,'Leo','Ale','Smash Laterale'),
 ('Single',963,'Siwei','Sandro','Speciale Laterale'),
 ('Single',963,'Sandro','Siwei','Smash Laterale'),
 ('Single',963,'Ale','Leo','Smash Finale'),
 ('Single',963,'Ale','Leo','Aereo Posteriore'),
 ('Single',963,'Sandro','Siwei','In Corsa'),
 ('Single',963,'Ale','Sandro','Aereo in Su'),
 ('Single',963,'Leo','Ale','Smash Laterale'),
 ('Single',963,'Siwei','Sandro','Altro'),
 ('Single',963,'Siwei','Leo','Altro'),
 ('Single',963,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',963,'Sandro','Big Blue'),
 ('Single',963,'Leo','Big Blue');


--Single-962
insert into kills values ('Single',962,'Siwei','Sandro','Altro'),
 ('Single',962,'Leo','Ale','Smash Laterale'),
 ('Single',962,'Leo','Sandro','Smash Laterale'),
 ('Single',962,'Ale','Leo','Smash Finale'),
 ('Single',962,'Siwei','Leo','Altro'),
 ('Single',962,'Siwei','Ale','Speciale in Giù'),
 ('Single',962,'Ale','Siwei','Smash Finale'),
 ('Single',962,'Leo','Ale','Smash Finale'),
 ('Single',962,'Sandro','Leo','Speciale in Giù'),
 ('Single',962,'Leo','Sandro','Altro');

insert into deaths values ('Single',962,'Sandro','New Pork City'),
 ('Single',962,'Leo','New Pork City'),
 ('Single',962,'Sandro','Autodistruzione');


--Single-961
insert into kills values ('Single',961,'Ale','Siwei','Aereo Standard'),
 ('Single',961,'Sandro','Ale','Smash in Su'),
 ('Single',961,'Sandro','Leo','Aereo in Su'),
 ('Single',961,'Leo','Siwei','Smash Laterale'),
 ('Single',961,'Siwei','Sandro','Altro'),
 ('Single',961,'Sandro','Leo','In Corsa'),
 ('Single',961,'Ale','Siwei','Smash Finale'),
 ('Single',961,'Ale','Sandro','Speciale Standard'),
 ('Single',961,'Sandro','Ale','Altro'),
 ('Single',961,'Ale','Leo','Speciale Laterale'),
 ('Single',961,'Sandro','Ale','Smash in Su');

insert into deaths values ('Single',961,'Ale','Brinstar');


--Single-960
insert into kills values ('Single',960,'Sandro','Leo','Smash Laterale'),
 ('Single',960,'Sandro','Siwei','Smash Laterale'),
 ('Single',960,'Ale','Sandro','Smash Finale'),
 ('Single',960,'Sandro','Ale','Speciale Standard'),
 ('Single',960,'Ale','Leo','Smash Laterale'),
 ('Single',960,'Ale','Sandro','Smash Laterale'),
 ('Single',960,'Leo','Ale','Aereo in Su'),
 ('Single',960,'Sandro','Ale','Speciale Standard'),
 ('Single',960,'Sandro','Siwei','Speciale Standard'),
 ('Single',960,'Leo','Sandro','Aereo in Su'),
 ('Single',960,'Siwei','Leo','Speciale in Giù');


--Single-959
insert into kills values ('Single',959,'Siwei','Sandro','Smash Laterale'),
 ('Single',959,'Sandro','Ale','Smash Laterale'),
 ('Single',959,'Siwei','Leo','Smash Finale'),
 ('Single',959,'Ale','Siwei','Smash Laterale'),
 ('Single',959,'Leo','Sandro','Smash Finale'),
 ('Single',959,'Siwei','Ale','Smash Laterale'),
 ('Single',959,'Siwei','Ale','Smash Laterale'),
 ('Single',959,'Sandro','Siwei','In Corsa'),
 ('Single',959,'Sandro','Leo','Aereo Posteriore'),
 ('Single',959,'Siwei','Sandro','Smash Finale'),
 ('Single',959,'Leo','Siwei','Aereo Frontale');


--Single-958
insert into kills values ('Single',958,'Leo','Sandro','Smash Laterale'),
 ('Single',958,'Leo','Siwei','Smash Laterale'),
 ('Single',958,'Sandro','Leo','Smash in Su'),
 ('Single',958,'Leo','Ale','Smash Finale'),
 ('Single',958,'Siwei','Sandro','Smash Finale'),
 ('Single',958,'Siwei','Leo','Smash Finale'),
 ('Single',958,'Ale','Siwei','Smash Finale'),
 ('Single',958,'Ale','Siwei','Altro'),
 ('Single',958,'Sandro','Leo','Smash Finale'),
 ('Single',958,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',958,'Siwei','Mancato Recupero');


--Single-957
insert into kills values ('Single',957,'Leo','Siwei','Smash Laterale'),
 ('Single',957,'Sandro','Ale','Aereo in Giù'),
 ('Single',957,'Siwei','Sandro','Smash Finale'),
 ('Single',957,'Siwei','Leo','Smash Laterale'),
 ('Single',957,'Ale','Siwei','Smash Finale'),
 ('Single',957,'Sandro','Leo','Smash Finale'),
 ('Single',957,'Siwei','Ale','Smash Laterale'),
 ('Single',957,'Leo','Sandro','Smash Laterale'),
 ('Single',957,'Leo','Siwei','Smash Laterale'),
 ('Single',957,'Sandro','Leo','Smash Finale'),
 ('Single',957,'Ale','Sandro','Smash Laterale');


--Single-956
insert into kills values ('Single',956,'Sandro','Siwei','Speciale in Su'),
 ('Single',956,'Siwei','Ale','In Corsa'),
 ('Single',956,'Sandro','Leo','Speciale in Su'),
 ('Single',956,'Siwei','Sandro','Smash Laterale'),
 ('Single',956,'Sandro','Ale','Smash Finale'),
 ('Single',956,'Leo','Sandro','Smash Finale'),
 ('Single',956,'Leo','Siwei','Altro'),
 ('Single',956,'Sandro','Ale','Smash Laterale'),
 ('Single',956,'Leo','Siwei','Altro'),
 ('Single',956,'Leo','Sandro','Altro');

insert into deaths values ('Single',956,'Siwei','Autodistruzione'),
 ('Single',956,'Siwei','Autodistruzione'),
 ('Single',956,'Sandro','Autodistruzione');


--Doubles-414
insert into kills values ('Doubles',414,'Siwei','Leo','Smash Laterale'),
 ('Doubles',414,'Siwei','Sandro','Altro'),
 ('Doubles',414,'Sandro','Siwei','Smash in Su'),
 ('Doubles',414,'Siwei','Leo','Altro'),
 ('Doubles',414,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',414,'Sandro','Ale','Smash in Giù'),
 ('Doubles',414,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',414,'Ale','Leo','Smash Laterale'),
 ('Doubles',414,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',414,'Siwei','Sandro','Altro');

insert into deaths values ('Doubles',414,'Sandro','Autodistruzione'),
 ('Doubles',414,'Leo','Autodistruzione'),
 ('Doubles',414,'Siwei','Fuoco Amico'),
 ('Doubles',414,'Ale','Fuoco Amico'),
 ('Doubles',414,'Sandro','Autodistruzione');


--Doubles-413
insert into kills values ('Doubles',413,'Leo','Sandro','Smash Laterale'),
 ('Doubles',413,'Siwei','Ale','Smash Laterale'),
 ('Doubles',413,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',413,'Leo','Sandro','Smash Finale'),
 ('Doubles',413,'Leo','Siwei','Smash Finale'),
 ('Doubles',413,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',413,'Ale','Siwei','Smash Finale');

insert into deaths values ('Doubles',413,'Sandro','Autodistruzione');


--Doubles-412
insert into kills values ('Doubles',412,'Ale','Leo','Speciale in Su'),
 ('Doubles',412,'Sandro','Siwei','Altro'),
 ('Doubles',412,'Leo','Ale','Smash Laterale'),
 ('Doubles',412,'Siwei','Ale','Altro'),
 ('Doubles',412,'Sandro','Siwei','Smash Finale'),
 ('Doubles',412,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',412,'Ale','Leo','Speciale in Su'),
 ('Doubles',412,'Siwei','Ale','Smash Laterale'),
 ('Doubles',412,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',412,'Leo','Sandro','Peculiare'),
 ('Doubles',412,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',412,'Siwei','Corneria'),
 ('Doubles',412,'Ale','Mancato Recupero');


--Doubles-411
insert into kills values ('Doubles',411,'Ale','Sandro','Smash in Su'),
 ('Doubles',411,'Leo','Siwei','Altro'),
 ('Doubles',411,'Ale','Leo','Fuoco Amico'),
 ('Doubles',411,'Siwei','Ale','Smash Finale'),
 ('Doubles',411,'Leo','Sandro','Altro'),
 ('Doubles',411,'Ale','Siwei','Speciale Standard'),
 ('Doubles',411,'Leo','Ale','Fuoco Amico'),
 ('Doubles',411,'Ale','Sandro','Peculiare'),
 ('Doubles',411,'Ale','Leo','Fuoco Amico'),
 ('Doubles',411,'Siwei','Leo','Smash Finale'),
 ('Doubles',411,'Leo','Siwei','Altro');

insert into deaths values ('Doubles',411,'Siwei','Mancato Recupero'),
 ('Doubles',411,'Leo','Fuoco Amico'),
 ('Doubles',411,'Ale','Fuoco Amico'),
 ('Doubles',411,'Leo','Fuoco Amico'),
 ('Doubles',411,'Siwei','Mancato Recupero');


--Doubles-410
insert into kills values ('Doubles',410,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',410,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',410,'Leo','Sandro','Altro'),
 ('Doubles',410,'Sandro','Siwei','Altro'),
 ('Doubles',410,'Ale','Leo','Speciale in Su'),
 ('Doubles',410,'Sandro','Leo','Smash Finale'),
 ('Doubles',410,'Leo','Sandro','Smash Laterale'),
 ('Doubles',410,'Leo','Ale','Smash Laterale'),
 ('Doubles',410,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',410,'Leo','Sandro','Smash Finale'),
 ('Doubles',410,'Ale','Leo','Aereo Posteriore');

insert into deaths values ('Doubles',410,'Ale','Fuoco Amico'),
 ('Doubles',410,'Sandro','Autodistruzione'),
 ('Doubles',410,'Siwei','Autodistruzione');


--Doubles-409
insert into kills values ('Doubles',409,'Siwei','Sandro','Altro'),
 ('Doubles',409,'Leo','Siwei','Smash Laterale'),
 ('Doubles',409,'Sandro','Ale','Smash Laterale'),
 ('Doubles',409,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',409,'Sandro','Siwei','Altro'),
 ('Doubles',409,'Leo','Siwei','Smash in Su'),
 ('Doubles',409,'Sandro','Ale','Altro'),
 ('Doubles',409,'Ale','Leo','Altro'),
 ('Doubles',409,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',409,'Sandro','Garden of Hope'),
 ('Doubles',409,'Leo','Fuoco Amico'),
 ('Doubles',409,'Siwei','Mancato Recupero'),
 ('Doubles',409,'Ale','Garden of Hope'),
 ('Doubles',409,'Leo','Garden of Hope');


--Doubles-408
insert into kills values ('Doubles',408,'Leo','Siwei','Smash Laterale'),
 ('Doubles',408,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',408,'Siwei','Sandro','Smash Finale'),
 ('Doubles',408,'Siwei','Leo','Speciale in Giù'),
 ('Doubles',408,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',408,'Leo','Ale','Altro'),
 ('Doubles',408,'Siwei','Sandro','Smash Finale'),
 ('Doubles',408,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',408,'Leo','Siwei','Smash Laterale'),
 ('Doubles',408,'Ale','Leo','Smash Finale'),
 ('Doubles',408,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',408,'Ale','Fuoco Amico'),
 ('Doubles',408,'Ale','Autodistruzione');


--Single-955
insert into kills values ('Single',955,'Sandro','Siwei','Altro'),
 ('Single',955,'Ale','Sandro','In Corsa'),
 ('Single',955,'Sandro','Leo','Aereo in Giù'),
 ('Single',955,'Leo','Sandro','Altro'),
 ('Single',955,'Sandro','Siwei','Smash Finale'),
 ('Single',955,'Leo','Sandro','Altro'),
 ('Single',955,'Siwei','Leo','Smash Laterale'),
 ('Single',955,'Siwei','Ale','Smash Laterale'),
 ('Single',955,'Siwei','Ale','Smash Finale'),
 ('Single',955,'Ale','Siwei','In Corsa'),
 ('Single',955,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',955,'Siwei','Autodistruzione'),
 ('Single',955,'Sandro','Autodistruzione'),
 ('Single',955,'Sandro','Autodistruzione');


--Single-954
insert into kills values ('Single',954,'Leo','Sandro','Smash Finale'),
 ('Single',954,'Ale','Leo','Peculiare'),
 ('Single',954,'Sandro','Siwei','Smash Finale'),
 ('Single',954,'Leo','Ale','In Corsa'),
 ('Single',954,'Leo','Sandro','Smash Finale'),
 ('Single',954,'Siwei','Sandro','Smash Finale'),
 ('Single',954,'Siwei','Leo','Smash Laterale'),
 ('Single',954,'Leo','Ale','Speciale in Giù'),
 ('Single',954,'Leo','Siwei','Smash Laterale'),
 ('Single',954,'Ale','Leo','Speciale Laterale'),
 ('Single',954,'Ale','Siwei','In Corsa');


--Single-953
insert into kills values ('Single',953,'Ale','Leo','Aereo Standard'),
 ('Single',953,'Ale','Sandro','Aereo Frontale'),
 ('Single',953,'Ale','Leo','Aereo Frontale'),
 ('Single',953,'Ale','Siwei','Speciale in Giù'),
 ('Single',953,'Leo','Ale','Smash Finale'),
 ('Single',953,'Siwei','Leo','Smash Finale'),
 ('Single',953,'Siwei','Sandro','Smash in Su'),
 ('Single',953,'Siwei','Sandro','Altro'),
 ('Single',953,'Ale','Siwei','Aereo Standard'),
 ('Single',953,'Siwei','Ale','Altro'),
 ('Single',953,'Ale','Siwei','Speciale in Giù');


--Single-952
insert into kills values ('Single',952,'Siwei','Sandro','Speciale Laterale'),
 ('Single',952,'Sandro','Ale','Speciale in Giù'),
 ('Single',952,'Siwei','Leo','Speciale Laterale'),
 ('Single',952,'Leo','Siwei','Smash Laterale'),
 ('Single',952,'Sandro','Ale','Smash Finale'),
 ('Single',952,'Ale','Sandro','Aereo Standard'),
 ('Single',952,'Sandro','Siwei','Smash Laterale'),
 ('Single',952,'Sandro','Siwei','Speciale in Giù'),
 ('Single',952,'Sandro','Leo','In Corsa'),
 ('Single',952,'Ale','Leo','Aereo Standard'),
 ('Single',952,'Ale','Sandro','Speciale in Giù');


--Single-951
insert into kills values ('Single',951,'Leo','Sandro','Smash Laterale'),
 ('Single',951,'Leo','Ale','In Corsa'),
 ('Single',951,'Ale','Siwei','Aereo Posteriore'),
 ('Single',951,'Sandro','Leo','In Corsa'),
 ('Single',951,'Leo','Sandro','Peculiare'),
 ('Single',951,'Ale','Siwei','Aereo Frontale'),
 ('Single',951,'Siwei','Leo','Altro'),
 ('Single',951,'Ale','Siwei','Smash Finale'),
 ('Single',951,'Sandro','Leo','In Corsa'),
 ('Single',951,'Ale','Sandro','Aereo Posteriore');

insert into deaths values ('Single',951,'Leo','Autodistruzione');


--Single-950
insert into kills values ('Single',950,'Sandro','Siwei','Speciale in Giù'),
 ('Single',950,'Leo','Sandro','Altro'),
 ('Single',950,'Sandro','Ale','Speciale in Giù'),
 ('Single',950,'Siwei','Ale','Smash Finale'),
 ('Single',950,'Siwei','Leo','Smash Finale'),
 ('Single',950,'Siwei','Leo','Speciale Standard'),
 ('Single',950,'Leo','Siwei','Aereo in Giù'),
 ('Single',950,'Siwei','Ale','Speciale Standard'),
 ('Single',950,'Siwei','Sandro','Speciale in Giù'),
 ('Single',950,'Leo','Siwei','Smash Finale');

insert into deaths values ('Single',950,'Sandro','Autodistruzione'),
 ('Single',950,'Sandro','Autodistruzione');


--Single-949
insert into kills values ('Single',949,'Siwei','Leo','Peculiare'),
 ('Single',949,'Ale','Sandro','Aereo Posteriore'),
 ('Single',949,'Sandro','Siwei','Speciale Standard'),
 ('Single',949,'Siwei','Leo','Smash Finale'),
 ('Single',949,'Siwei','Ale','Smash Laterale'),
 ('Single',949,'Leo','Sandro','Smash Finale'),
 ('Single',949,'Leo','Siwei','Altro'),
 ('Single',949,'Ale','Sandro','Altro'),
 ('Single',949,'Leo','Ale','Speciale Laterale'),
 ('Single',949,'Ale','Leo','Aereo Frontale');

insert into deaths values ('Single',949,'Siwei','Autodistruzione'),
 ('Single',949,'Siwei','Autodistruzione'),
 ('Single',949,'Sandro','Autodistruzione');


--Single-948
insert into kills values ('Single',948,'Sandro','Leo','Speciale Standard'),
 ('Single',948,'Siwei','Sandro','Speciale Laterale'),
 ('Single',948,'Ale','Siwei','Smash Laterale'),
 ('Single',948,'Siwei','Leo','Speciale Laterale'),
 ('Single',948,'Siwei','Ale','Speciale Laterale'),
 ('Single',948,'Ale','Sandro','Smash Finale'),
 ('Single',948,'Siwei','Leo','Smash Finale'),
 ('Single',948,'Ale','Siwei','Altro'),
 ('Single',948,'Siwei','Ale','Smash Laterale'),
 ('Single',948,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',948,'Sandro','Autodistruzione'),
 ('Single',948,'Siwei','Mancato Recupero');


--Single-947
insert into kills values ('Single',947,'Leo','Sandro','Smash Laterale'),
 ('Single',947,'Sandro','Leo','Speciale in Su'),
 ('Single',947,'Sandro','Leo','Smash Finale'),
 ('Single',947,'Siwei','Ale','In Corsa'),
 ('Single',947,'Ale','Siwei','Aereo in Su'),
 ('Single',947,'Siwei','Sandro','Speciale in Giù'),
 ('Single',947,'Ale','Leo','Aereo Standard'),
 ('Single',947,'Siwei','Ale','Speciale Standard'),
 ('Single',947,'Sandro','Siwei','Smash Finale'),
 ('Single',947,'Ale','Sandro','Speciale Standard'),
 ('Single',947,'Ale','Siwei','Speciale Standard');


--Single-946
insert into kills values ('Single',946,'Ale','Siwei','Altro'),
 ('Single',946,'Siwei','Leo','Altro'),
 ('Single',946,'Sandro','Ale','Speciale Laterale'),
 ('Single',946,'Leo','Sandro','Altro'),
 ('Single',946,'Leo','Siwei','Altro'),
 ('Single',946,'Siwei','Leo','Speciale Standard'),
 ('Single',946,'Ale','Siwei','Smash Finale'),
 ('Single',946,'Leo','Ale','Smash Laterale'),
 ('Single',946,'Leo','Sandro','Smash in Su'),
 ('Single',946,'Sandro','Leo','Smash Laterale'),
 ('Single',946,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',946,'Siwei','Mancato Recupero'),
 ('Single',946,'Leo','Mancato Recupero'),
 ('Single',946,'Siwei','Spear Pillar');


--Single-945
insert into kills values ('Single',945,'Siwei','Sandro','Altro'),
 ('Single',945,'Leo','Ale','Altro'),
 ('Single',945,'Sandro','Leo','Speciale Standard'),
 ('Single',945,'Sandro','Siwei','In Corsa'),
 ('Single',945,'Leo','Sandro','Speciale Standard'),
 ('Single',945,'Leo','Sandro','Speciale Standard'),
 ('Single',945,'Siwei','Ale','In Corsa'),
 ('Single',945,'Ale','Leo','Smash Finale'),
 ('Single',945,'Siwei','Ale','Speciale Standard'),
 ('Single',945,'Leo','Siwei','Speciale Standard'),
 ('Single',945,'Siwei','Leo','In Corsa');

insert into deaths values ('Single',945,'Sandro','Mancato Recupero'),
 ('Single',945,'Ale','Autodistruzione');


--Single-944
insert into kills values ('Single',944,'Ale','Sandro','Aereo Frontale'),
 ('Single',944,'Ale','Sandro','Speciale Laterale'),
 ('Single',944,'Ale','Siwei','Smash Laterale'),
 ('Single',944,'Sandro','Leo','Altro'),
 ('Single',944,'Siwei','Sandro','In Corsa'),
 ('Single',944,'Ale','Siwei','Aereo Frontale'),
 ('Single',944,'Siwei','Ale','In Corsa'),
 ('Single',944,'Leo','Ale','Smash Finale'),
 ('Single',944,'Ale','Leo','Smash in Giù'),
 ('Single',944,'Siwei','Ale','In Corsa'),
 ('Single',944,'Leo','Siwei','In Corsa');

insert into deaths values ('Single',944,'Leo','Green Hill Zone');


--Single-943
insert into kills values ('Single',943,'Siwei','Leo','Altro'),
 ('Single',943,'Siwei','Sandro','Smash Laterale'),
 ('Single',943,'Sandro','Ale','Aereo Posteriore'),
 ('Single',943,'Ale','Siwei','Smash Laterale'),
 ('Single',943,'Siwei','Ale','Speciale in Giù'),
 ('Single',943,'Siwei','Leo','In Corsa'),
 ('Single',943,'Leo','Ale','Altro'),
 ('Single',943,'Leo','Sandro','Smash Finale'),
 ('Single',943,'Leo','Sandro','Altro'),
 ('Single',943,'Siwei','Leo','Smash Laterale');

insert into deaths values ('Single',943,'Leo','Mancato Recupero'),
 ('Single',943,'Ale','Summit'),
 ('Single',943,'Sandro','Autodistruzione');


--Single-942
insert into kills values ('Single',942,'Leo','Siwei','Smash Laterale'),
 ('Single',942,'Leo','Sandro','In Corsa'),
 ('Single',942,'Leo','Siwei','Altro'),
 ('Single',942,'Siwei','Ale','Altro'),
 ('Single',942,'Sandro','Leo','Smash Finale'),
 ('Single',942,'Leo','Siwei','Smash Finale'),
 ('Single',942,'Sandro','Ale','Smash Laterale'),
 ('Single',942,'Leo','Sandro','Speciale Laterale'),
 ('Single',942,'Sandro','Leo','Speciale Laterale'),
 ('Single',942,'Sandro','Ale','Smash Laterale'),
 ('Single',942,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',942,'Siwei','Autodistruzione'),
 ('Single',942,'Ale','Autodistruzione');


--Single-941
insert into kills values ('Single',941,'Sandro','Ale','Smash Laterale'),
 ('Single',941,'Leo','Siwei','Speciale Laterale'),
 ('Single',941,'Ale','Sandro','Aereo Frontale'),
 ('Single',941,'Siwei','Leo','Smash Finale'),
 ('Single',941,'Sandro','Siwei','Smash Laterale'),
 ('Single',941,'Leo','Ale','Smash Finale'),
 ('Single',941,'Sandro','Ale','Smash Finale'),
 ('Single',941,'Sandro','Siwei','Smash Finale'),
 ('Single',941,'Sandro','Leo','Altro'),
 ('Single',941,'Sandro','Leo','Aereo Frontale');


--Single-940
insert into kills values ('Single',940,'Sandro','Leo','Aereo Frontale'),
 ('Single',940,'Ale','Siwei','Altro'),
 ('Single',940,'Leo','Sandro','Smash Laterale'),
 ('Single',940,'Sandro','Leo','Altro'),
 ('Single',940,'Sandro','Ale','Aereo Posteriore'),
 ('Single',940,'Siwei','Sandro','Altro'),
 ('Single',940,'Sandro','Leo','Smash Finale'),
 ('Single',940,'Ale','Sandro','Smash Finale'),
 ('Single',940,'Ale','Siwei','Smash Laterale'),
 ('Single',940,'Siwei','Ale','Smash Laterale'),
 ('Single',940,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Single',940,'Siwei','Golden Plains'),
 ('Single',940,'Sandro','Autodistruzione');


--Single-939
insert into kills values ('Single',939,'Sandro','Leo','Aereo Frontale'),
 ('Single',939,'Leo','Sandro','Speciale Laterale'),
 ('Single',939,'Leo','Siwei','Speciale Laterale'),
 ('Single',939,'Siwei','Ale','Peculiare'),
 ('Single',939,'Sandro','Siwei','Smash Finale'),
 ('Single',939,'Siwei','Ale','Smash Laterale'),
 ('Single',939,'Leo','Sandro','Smash Finale'),
 ('Single',939,'Leo','Siwei','Smash Finale'),
 ('Single',939,'Sandro','Leo','Smash Laterale'),
 ('Single',939,'Sandro','Leo','Smash Finale'),
 ('Single',939,'Sandro','Ale','Altro');


--Single-938
insert into kills values ('Single',938,'Ale','Sandro','Altro'),
 ('Single',938,'Sandro','Ale','Altro'),
 ('Single',938,'Leo','Siwei','Aereo Frontale'),
 ('Single',938,'Ale','Sandro','Altro'),
 ('Single',938,'Ale','Siwei','Altro'),
 ('Single',938,'Sandro','Leo','Altro'),
 ('Single',938,'Siwei','Sandro','Smash Finale'),
 ('Single',938,'Leo','Ale','Speciale Laterale'),
 ('Single',938,'Leo','Siwei','Smash Laterale'),
 ('Single',938,'Ale','Leo','Altro'),
 ('Single',938,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',938,'Sandro','PictoChat 2'),
 ('Single',938,'Ale','Autodistruzione'),
 ('Single',938,'Leo','Mancato Recupero');


--Single-937
insert into kills values ('Single',937,'Siwei','Sandro','Altro'),
 ('Single',937,'Ale','Siwei','Smash Laterale'),
 ('Single',937,'Siwei','Leo','Speciale Laterale'),
 ('Single',937,'Siwei','Sandro','Altro'),
 ('Single',937,'Siwei','Ale','Smash Finale'),
 ('Single',937,'Siwei','Leo','Smash Finale'),
 ('Single',937,'Ale','Siwei','Smash Laterale'),
 ('Single',937,'Ale','Siwei','Altro'),
 ('Single',937,'Ale','Sandro','Smash Finale'),
 ('Single',937,'Leo','Ale','Altro'),
 ('Single',937,'Ale','Leo','Altro');

insert into deaths values ('Single',937,'Sandro','Autodistruzione'),
 ('Single',937,'Sandro','Autodistruzione'),
 ('Single',937,'Siwei','Mancato Recupero'),
 ('Single',937,'Leo','Autodistruzione');


--Single-936
insert into kills values ('Single',936,'Ale','Siwei','Aereo Posteriore'),
 ('Single',936,'Siwei','Sandro','Smash Laterale'),
 ('Single',936,'Siwei','Leo','Smash Laterale'),
 ('Single',936,'Siwei','Ale','Speciale Laterale'),
 ('Single',936,'Sandro','Siwei','Smash Finale'),
 ('Single',936,'Ale','Sandro','Altro'),
 ('Single',936,'Siwei','Ale','Speciale in Giù'),
 ('Single',936,'Sandro','Leo','Peculiare'),
 ('Single',936,'Siwei','Ale','Altro'),
 ('Single',936,'Sandro','Siwei','Altro'),
 ('Single',936,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',936,'Ale','Prism Tower'),
 ('Single',936,'Siwei','Mancato Recupero');


--Single-935
insert into kills values ('Single',935,'Ale','Sandro','Altro'),
 ('Single',935,'Ale','Leo','Speciale in Su'),
 ('Single',935,'Leo','Ale','Smash Laterale'),
 ('Single',935,'Ale','Siwei','Smash Finale'),
 ('Single',935,'Siwei','Sandro','Smash Finale'),
 ('Single',935,'Ale','Leo','Peculiare'),
 ('Single',935,'Ale','Siwei','Peculiare'),
 ('Single',935,'Siwei','Ale','Speciale Standard'),
 ('Single',935,'Leo','Sandro','Smash Laterale'),
 ('Single',935,'Ale','Leo','Altro'),
 ('Single',935,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',935,'Sandro','Autodistruzione');


--Single-934
insert into kills values ('Single',934,'Sandro','Ale','Speciale Standard'),
 ('Single',934,'Ale','Leo','Smash Laterale'),
 ('Single',934,'Ale','Sandro','Smash Laterale'),
 ('Single',934,'Ale','Siwei','Smash Finale'),
 ('Single',934,'Leo','Ale','Smash Finale'),
 ('Single',934,'Siwei','Sandro','In Corsa'),
 ('Single',934,'Siwei','Leo','Speciale Standard'),
 ('Single',934,'Sandro','Ale','Smash Finale'),
 ('Single',934,'Sandro','Siwei','Smash Laterale'),
 ('Single',934,'Leo','Sandro','In Corsa'),
 ('Single',934,'Leo','Siwei','Smash Laterale');


--Single-933
insert into kills values ('Single',933,'Siwei','Sandro','Speciale in Su'),
 ('Single',933,'Ale','Siwei','Smash Laterale'),
 ('Single',933,'Leo','Siwei','Speciale Laterale'),
 ('Single',933,'Sandro','Leo','Speciale Laterale'),
 ('Single',933,'Leo','Ale','Smash Laterale'),
 ('Single',933,'Leo','Sandro','Aereo Frontale'),
 ('Single',933,'Ale','Leo','Aereo Frontale'),
 ('Single',933,'Sandro','Siwei','Peculiare'),
 ('Single',933,'Ale','Sandro','Smash Finale'),
 ('Single',933,'Ale','Leo','Smash Laterale');


--Single-932
insert into kills values ('Single',932,'Sandro','Leo','Speciale Laterale'),
 ('Single',932,'Leo','Sandro','Smash Laterale'),
 ('Single',932,'Siwei','Ale','Smash Laterale'),
 ('Single',932,'Sandro','Siwei','Speciale Standard'),
 ('Single',932,'Ale','Sandro','Smash in Su'),
 ('Single',932,'Leo','Siwei','Smash Laterale'),
 ('Single',932,'Sandro','Ale','Smash Finale'),
 ('Single',932,'Leo','Siwei','Aereo in Su'),
 ('Single',932,'Ale','Leo','Smash Laterale'),
 ('Single',932,'Leo','Sandro','Altro'),
 ('Single',932,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',932,'Sandro','Palutenas Temple');


--Single-931
insert into kills values ('Single',931,'Leo','Siwei','In Corsa'),
 ('Single',931,'Ale','Sandro','Altro'),
 ('Single',931,'Sandro','Ale','Aereo in Giù'),
 ('Single',931,'Sandro','Leo','Smash Finale'),
 ('Single',931,'Ale','Sandro','Smash Finale'),
 ('Single',931,'Ale','Leo','Speciale Standard'),
 ('Single',931,'Sandro','Leo','Speciale Laterale'),
 ('Single',931,'Siwei','Ale','In Corsa'),
 ('Single',931,'Sandro','Siwei','Peculiare'),
 ('Single',931,'Leo','Sandro','Speciale Standard'),
 ('Single',931,'Leo','Ale','Smash Finale');


--Single-930
insert into kills values ('Single',930,'Ale','Leo','Peculiare'),
 ('Single',930,'Ale','Siwei','Peculiare'),
 ('Single',930,'Ale','Sandro','Speciale in Giù'),
 ('Single',930,'Leo','Ale','Smash Finale'),
 ('Single',930,'Sandro','Leo','Smash Finale'),
 ('Single',930,'Siwei','Sandro','Altro'),
 ('Single',930,'Leo','Siwei','Altro'),
 ('Single',930,'Leo','Siwei','In Corsa'),
 ('Single',930,'Ale','Leo','Smash Finale'),
 ('Single',930,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',930,'Sandro','Autodistruzione');


--Single-929
insert into kills values ('Single',929,'Ale','Siwei','Aereo Frontale'),
 ('Single',929,'Leo','Sandro','Altro'),
 ('Single',929,'Leo','Ale','Altro'),
 ('Single',929,'Leo','Siwei','Altro'),
 ('Single',929,'Siwei','Sandro','Altro'),
 ('Single',929,'Ale','Leo','Aereo Standard'),
 ('Single',929,'Sandro','Leo','Smash Laterale'),
 ('Single',929,'Leo','Ale','In Corsa'),
 ('Single',929,'Ale','Siwei','Smash Laterale'),
 ('Single',929,'Ale','Leo','Altro'),
 ('Single',929,'Sandro','Ale','Aereo in Su');

insert into deaths values ('Single',929,'Sandro','Mancato Recupero'),
 ('Single',929,'Ale','Autodistruzione'),
 ('Single',929,'Sandro','Autodistruzione'),
 ('Single',929,'Leo','Mancato Recupero');


--Single-928
insert into kills values ('Single',928,'Sandro','Siwei','In Corsa'),
 ('Single',928,'Ale','Leo','In Corsa'),
 ('Single',928,'Siwei','Leo','Altro'),
 ('Single',928,'Ale','Sandro','Speciale in Giù'),
 ('Single',928,'Sandro','Siwei','Speciale in Giù'),
 ('Single',928,'Sandro','Ale','Speciale Standard'),
 ('Single',928,'Leo','Siwei','Smash Finale'),
 ('Single',928,'Sandro','Ale','Smash Finale'),
 ('Single',928,'Sandro','Leo','In Corsa'),
 ('Single',928,'Ale','Sandro','Aereo Standard'),
 ('Single',928,'Ale','Sandro','Speciale Standard');


--Single-927
insert into kills values ('Single',927,'Leo','Siwei','Smash in Su'),
 ('Single',927,'Ale','Leo','Aereo Standard'),
 ('Single',927,'Sandro','Ale','Aereo in Giù'),
 ('Single',927,'Ale','Sandro','Altro'),
 ('Single',927,'Ale','Siwei','Smash Laterale'),
 ('Single',927,'Siwei','Leo','Smash Finale'),
 ('Single',927,'Sandro','Leo','Smash Finale'),
 ('Single',927,'Sandro','Siwei','Smash Laterale'),
 ('Single',927,'Sandro','Ale','Aereo Frontale'),
 ('Single',927,'Ale','Sandro','Altro'),
 ('Single',927,'Sandro','Ale','Peculiare');

insert into deaths values ('Single',927,'Sandro','Mute City SNES');


--Single-926
insert into kills values ('Single',926,'Sandro','Ale','Smash Laterale'),
 ('Single',926,'Sandro','Leo','Aereo in Giù'),
 ('Single',926,'Leo','Sandro','Smash in Su'),
 ('Single',926,'Leo','Siwei','Altro'),
 ('Single',926,'Leo','Ale','Smash Finale'),
 ('Single',926,'Leo','Siwei','Altro'),
 ('Single',926,'Sandro','Leo','Smash Finale'),
 ('Single',926,'Siwei','Sandro','Smash Finale'),
 ('Single',926,'Leo','Siwei','Altro'),
 ('Single',926,'Leo','Sandro','Smash Laterale'),
 ('Single',926,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',926,'Siwei','Mancato Recupero'),
 ('Single',926,'Siwei','Mancato Recupero'),
 ('Single',926,'Siwei','Mancato Recupero');


--Single-925
insert into kills values ('Single',925,'Leo','Sandro','Smash Laterale'),
 ('Single',925,'Sandro','Leo','Smash Laterale'),
 ('Single',925,'Siwei','Ale','Altro'),
 ('Single',925,'Siwei','Leo','Speciale in Su'),
 ('Single',925,'Ale','Sandro','Aereo Standard'),
 ('Single',925,'Leo','Siwei','Smash Finale'),
 ('Single',925,'Leo','Ale','Smash Finale'),
 ('Single',925,'Sandro','Siwei','Altro'),
 ('Single',925,'Sandro','Siwei','Smash Finale'),
 ('Single',925,'Sandro','Leo','Altro'),
 ('Single',925,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',925,'Siwei','Autodistruzione'),
 ('Single',925,'Leo','Mancato Recupero');


--Single-924
insert into kills values ('Single',924,'Sandro','Leo','Smash Laterale'),
 ('Single',924,'Sandro','Siwei','Smash Laterale'),
 ('Single',924,'Siwei','Sandro','Speciale Laterale'),
 ('Single',924,'Sandro','Ale','Altro'),
 ('Single',924,'Leo','Siwei','Smash Laterale'),
 ('Single',924,'Siwei','Leo','Speciale Laterale'),
 ('Single',924,'Leo','Ale','Smash Laterale'),
 ('Single',924,'Ale','Siwei','Smash Laterale'),
 ('Single',924,'Leo','Sandro','Smash Laterale'),
 ('Single',924,'Leo','Ale','Altro'),
 ('Single',924,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',924,'Ale','Autodistruzione'),
 ('Single',924,'Ale','Autodistruzione');


--Single-923
insert into kills values ('Single',923,'Ale','Sandro','Smash Laterale'),
 ('Single',923,'Leo','Ale','Smash in Su'),
 ('Single',923,'Ale','Leo','Aereo Frontale'),
 ('Single',923,'Ale','Sandro','Smash Finale'),
 ('Single',923,'Sandro','Siwei','Smash Laterale'),
 ('Single',923,'Ale','Leo','Aereo Posteriore'),
 ('Single',923,'Sandro','Siwei','Altro'),
 ('Single',923,'Leo','Ale','Smash in Su'),
 ('Single',923,'Ale','Siwei','Altro'),
 ('Single',923,'Leo','Sandro','Smash Finale'),
 ('Single',923,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',923,'Siwei','Mancato Recupero');


--Single-922
insert into kills values ('Single',922,'Siwei','Sandro','Altro'),
 ('Single',922,'Siwei','Leo','Speciale in Su'),
 ('Single',922,'Ale','Siwei','Smash Laterale'),
 ('Single',922,'Sandro','Leo','Smash Finale'),
 ('Single',922,'Sandro','Ale','Aereo in Su'),
 ('Single',922,'Siwei','Leo','Speciale in Giù'),
 ('Single',922,'Siwei','Sandro','Smash Finale'),
 ('Single',922,'Siwei','Ale','Smash Finale'),
 ('Single',922,'Ale','Sandro','Speciale Standard'),
 ('Single',922,'Ale','Siwei','Speciale in Su'),
 ('Single',922,'Siwei','Ale','Aereo in Giù');

insert into deaths values ('Single',922,'Sandro','Autodistruzione');


--Single-921
insert into kills values ('Single',921,'Siwei','Leo','Speciale in Giù'),
 ('Single',921,'Sandro','Ale','Aereo Posteriore'),
 ('Single',921,'Ale','Sandro','Altro'),
 ('Single',921,'Sandro','Siwei','Aereo in Giù'),
 ('Single',921,'Siwei','Sandro','Smash Finale'),
 ('Single',921,'Siwei','Leo','Smash in Su'),
 ('Single',921,'Leo','Siwei','In Corsa'),
 ('Single',921,'Ale','Leo','Aereo in Su'),
 ('Single',921,'Siwei','Ale','Speciale Laterale'),
 ('Single',921,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',921,'Sandro','Autodistruzione'),
 ('Single',921,'Sandro','Bridge of Eldin');


--Single-920
insert into kills values ('Single',920,'Leo','Sandro','Smash Laterale'),
 ('Single',920,'Siwei','Ale','Speciale Laterale'),
 ('Single',920,'Siwei','Leo','Speciale Laterale'),
 ('Single',920,'Leo','Siwei','Smash Finale'),
 ('Single',920,'Leo','Sandro','Smash Finale'),
 ('Single',920,'Ale','Leo','Smash Finale'),
 ('Single',920,'Siwei','Ale','Speciale Laterale'),
 ('Single',920,'Leo','Siwei','Smash in Su'),
 ('Single',920,'Siwei','Ale','Speciale Laterale'),
 ('Single',920,'Ale','Leo','Altro'),
 ('Single',920,'Siwei','Sandro','Smash in Giù');


--Single-919
insert into kills values ('Single',919,'Siwei','Leo','Smash Laterale'),
 ('Single',919,'Sandro','Ale','Smash in Su'),
 ('Single',919,'Ale','Sandro','Altro'),
 ('Single',919,'Sandro','Siwei','Altro'),
 ('Single',919,'Sandro','Leo','Smash Finale'),
 ('Single',919,'Sandro','Siwei','Smash Laterale'),
 ('Single',919,'Siwei','Leo','Smash Finale'),
 ('Single',919,'Ale','Sandro','Speciale in Giù'),
 ('Single',919,'Sandro','Ale','Smash Finale'),
 ('Single',919,'Sandro','Siwei','Speciale Laterale'),
 ('Single',919,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',919,'Sandro','Mancato Recupero');


--Single-918
insert into kills values ('Single',918,'Sandro','Ale','Altro'),
 ('Single',918,'Leo','Siwei','Smash Laterale'),
 ('Single',918,'Ale','Sandro','Aereo Frontale'),
 ('Single',918,'Siwei','Leo','Smash Finale'),
 ('Single',918,'Sandro','Ale','Aereo in Su'),
 ('Single',918,'Leo','Sandro','Speciale Standard'),
 ('Single',918,'Sandro','Leo','Smash Laterale'),
 ('Single',918,'Sandro','Siwei','Aereo in Giù'),
 ('Single',918,'Siwei','Ale','Smash Laterale'),
 ('Single',918,'Sandro','Leo','Smash Finale'),
 ('Single',918,'Siwei','Sandro','Speciale in Giù');

insert into deaths values ('Single',918,'Ale','Autodistruzione');


--Single-917
insert into kills values ('Single',917,'Siwei','Sandro','Smash Laterale'),
 ('Single',917,'Ale','Siwei','Smash Laterale'),
 ('Single',917,'Ale','Sandro','Altro'),
 ('Single',917,'Sandro','Leo','Aereo Frontale'),
 ('Single',917,'Ale','Siwei','Altro'),
 ('Single',917,'Sandro','Ale','Altro'),
 ('Single',917,'Leo','Sandro','Smash Finale'),
 ('Single',917,'Leo','Ale','Altro'),
 ('Single',917,'Siwei','Ale','Altro'),
 ('Single',917,'Siwei','Leo','Smash in Su'),
 ('Single',917,'Leo','Siwei','Smash Finale');

insert into deaths values ('Single',917,'Sandro','Mancato Recupero'),
 ('Single',917,'Siwei','Autodistruzione'),
 ('Single',917,'Ale','Mancato Recupero'),
 ('Single',917,'Ale','Hyrule Castle');


--Single-916
insert into kills values ('Single',916,'Leo','Ale','Altro'),
 ('Single',916,'Ale','Siwei','Speciale in Giù'),
 ('Single',916,'Leo','Ale','Altro'),
 ('Single',916,'Leo','Sandro','Speciale in Su'),
 ('Single',916,'Siwei','Leo','Smash Laterale'),
 ('Single',916,'Leo','Sandro','Smash Finale'),
 ('Single',916,'Siwei','Sandro','Smash Laterale'),
 ('Single',916,'Leo','Siwei','Smash Laterale'),
 ('Single',916,'Siwei','Leo','Smash in Su'),
 ('Single',916,'Siwei','Ale','Peculiare'),
 ('Single',916,'Leo','Siwei','Smash Finale');

insert into deaths values ('Single',916,'Ale','Autodistruzione'),
 ('Single',916,'Ale','Autodistruzione');


--Doubles-407
insert into kills values ('Doubles',407,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',407,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',407,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',407,'Sandro','Leo','Speciale in Su'),
 ('Doubles',407,'Sandro','Ale','Speciale in Su'),
 ('Doubles',407,'Siwei','Ale','Altro'),
 ('Doubles',407,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',407,'Leo','Sandro','Altro'),
 ('Doubles',407,'Siwei','Leo','Altro'),
 ('Doubles',407,'Ale','Siwei','Speciale Standard');

insert into deaths values ('Doubles',407,'Sandro','Fuoco Amico'),
 ('Doubles',407,'Sandro','Fuoco Amico'),
 ('Doubles',407,'Ale','Autodistruzione'),
 ('Doubles',407,'Siwei','Fuoco Amico'),
 ('Doubles',407,'Sandro','Mancato Recupero');


--Doubles-406
insert into kills values ('Doubles',406,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',406,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',406,'Ale','Leo','Speciale Laterale'),
 ('Doubles',406,'Sandro','Ale','Smash Laterale'),
 ('Doubles',406,'Leo','Siwei','Smash Laterale'),
 ('Doubles',406,'Ale','Sandro','Smash Finale'),
 ('Doubles',406,'Ale','Leo','Speciale Laterale'),
 ('Doubles',406,'Sandro','Siwei','Smash in Su'),
 ('Doubles',406,'Sandro','Ale','Smash Finale'),
 ('Doubles',406,'Sandro','Ale','Aereo Frontale');

insert into deaths values ('Doubles',406,'Sandro','Autodistruzione');


--Doubles-405
insert into kills values ('Doubles',405,'Ale','Sandro','Smash in Su'),
 ('Doubles',405,'Leo','Siwei','Smash in Su'),
 ('Doubles',405,'Siwei','Leo','Smash Laterale'),
 ('Doubles',405,'Sandro','Ale','Altro'),
 ('Doubles',405,'Leo','Siwei','Smash Finale'),
 ('Doubles',405,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',405,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',405,'Sandro','Ale','Aereo Posteriore'),
 ('Doubles',405,'Ale','Leo','Speciale in Su'),
 ('Doubles',405,'Ale','Sandro','Speciale in Su'),
 ('Doubles',405,'Leo','Ale','Altro');

insert into deaths values ('Doubles',405,'Ale','Autodistruzione'),
 ('Doubles',405,'Sandro','Fuoco Amico');


--Doubles-404
insert into kills values ('Doubles',404,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',404,'Sandro','Leo','Aereo in Su'),
 ('Doubles',404,'Siwei','Sandro','Smash Finale'),
 ('Doubles',404,'Siwei','Ale','Smash in Su'),
 ('Doubles',404,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',404,'Ale','Siwei','Smash Finale'),
 ('Doubles',404,'Ale','Leo','Smash Finale'),
 ('Doubles',404,'Leo','Sandro','Smash Finale'),
 ('Doubles',404,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',404,'Ale','Siwei','Speciale Laterale'),
 ('Doubles',404,'Ale','Leo','Smash Finale');

insert into deaths values ('Doubles',404,'Sandro','Fuoco Amico');


--Doubles-403
insert into kills values ('Doubles',403,'Leo','Ale','Smash in Su'),
 ('Doubles',403,'Ale','Leo','Speciale in Su'),
 ('Doubles',403,'Ale','Sandro','Smash Finale'),
 ('Doubles',403,'Leo','Siwei','Smash Laterale'),
 ('Doubles',403,'Sandro','Ale','Smash Finale'),
 ('Doubles',403,'Siwei','Leo','Aereo Frontale'),
 ('Doubles',403,'Siwei','Sandro','In Corsa'),
 ('Doubles',403,'Leo','Siwei','Smash Laterale'),
 ('Doubles',403,'Siwei','Leo','Smash Finale'),
 ('Doubles',403,'Siwei','Sandro','Smash in Su');


--Doubles-402
insert into kills values ('Doubles',402,'Leo','Sandro','In Corsa'),
 ('Doubles',402,'Sandro','Leo','Smash Laterale'),
 ('Doubles',402,'Siwei','Ale','Altro'),
 ('Doubles',402,'Sandro','Leo','Altro'),
 ('Doubles',402,'Ale','Siwei','Smash in Su'),
 ('Doubles',402,'Leo','Sandro','In Corsa'),
 ('Doubles',402,'Sandro','Leo','In Corsa'),
 ('Doubles',402,'Siwei','Ale','Smash Laterale'),
 ('Doubles',402,'Ale','Siwei','Altro'),
 ('Doubles',402,'Ale','Sandro','Smash Laterale'),
 ('Doubles',402,'Siwei','Ale','Smash Finale');

insert into deaths values ('Doubles',402,'Ale','Mancato Recupero'),
 ('Doubles',402,'Leo','Balloon Fight'),
 ('Doubles',402,'Siwei','Balloon Fight');


--Doubles-401
insert into kills values ('Doubles',401,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',401,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',401,'Leo','Sandro','Peculiare'),
 ('Doubles',401,'Ale','Siwei','Smash Laterale'),
 ('Doubles',401,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',401,'Ale','Sandro','Grab'),
 ('Doubles',401,'Leo','Ale','Fuoco Amico'),
 ('Doubles',401,'Leo','Ale','Fuoco Amico'),
 ('Doubles',401,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',401,'Siwei','Fuoco Amico'),
 ('Doubles',401,'Siwei','Autodistruzione'),
 ('Doubles',401,'Ale','Fuoco Amico'),
 ('Doubles',401,'Ale','Fuoco Amico');


--Doubles-400
insert into kills values ('Doubles',400,'Ale','Leo','Speciale in Su'),
 ('Doubles',400,'Sandro','Ale','Smash Laterale'),
 ('Doubles',400,'Sandro','Siwei','Smash Finale'),
 ('Doubles',400,'Ale','Sandro','Speciale in Su'),
 ('Doubles',400,'Ale','Leo','Speciale in Su'),
 ('Doubles',400,'Sandro','Ale','Smash Laterale'),
 ('Doubles',400,'Leo','Siwei','Smash Laterale'),
 ('Doubles',400,'Ale','Leo','Speciale in Su'),
 ('Doubles',400,'Siwei','Sandro','Aereo in Su'),
 ('Doubles',400,'Ale','Sandro','Speciale in Su');


--Doubles-399
insert into kills values ('Doubles',399,'Siwei','Sandro','Smash in Su'),
 ('Doubles',399,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',399,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',399,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',399,'Siwei','Ale','Altro'),
 ('Doubles',399,'Siwei','Sandro','Smash in Su'),
 ('Doubles',399,'Siwei','Sandro','Altro'),
 ('Doubles',399,'Ale','Leo','Smash in Su'),
 ('Doubles',399,'Ale','Siwei','Altro'),
 ('Doubles',399,'Ale','Leo','Smash in Su');

insert into deaths values ('Doubles',399,'Ale','Saffron City'),
 ('Doubles',399,'Sandro','Mancato Recupero'),
 ('Doubles',399,'Siwei','Autodistruzione');


--Doubles-398
insert into kills values ('Doubles',398,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',398,'Ale','Leo','Speciale Laterale'),
 ('Doubles',398,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',398,'Leo','Sandro','Smash in Su'),
 ('Doubles',398,'Siwei','Ale','Altro'),
 ('Doubles',398,'Siwei','Sandro','Smash Finale'),
 ('Doubles',398,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',398,'Leo','Sandro','Smash Laterale'),
 ('Doubles',398,'Leo','Ale','Aereo Frontale');


--Doubles-397
insert into kills values ('Doubles',397,'Sandro','Ale','Smash Laterale'),
 ('Doubles',397,'Siwei','Leo','Peculiare'),
 ('Doubles',397,'Ale','Sandro','Smash Finale'),
 ('Doubles',397,'Leo','Siwei','Altro'),
 ('Doubles',397,'Leo','Ale','Fuoco Amico'),
 ('Doubles',397,'Siwei','Leo','Peculiare'),
 ('Doubles',397,'Ale','Siwei','Smash Finale'),
 ('Doubles',397,'Sandro','Ale','Altro'),
 ('Doubles',397,'Leo','Sandro','Smash Laterale'),
 ('Doubles',397,'Siwei','Leo','Smash in Su');

insert into deaths values ('Doubles',397,'Ale','Fuoco Amico'),
 ('Doubles',397,'Ale','Autodistruzione');


--Doubles-396
insert into kills values ('Doubles',396,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',396,'Leo','Siwei','In Corsa'),
 ('Doubles',396,'Siwei','Leo','Altro'),
 ('Doubles',396,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',396,'Sandro','Ale','Smash Finale'),
 ('Doubles',396,'Sandro','Leo','Smash Laterale'),
 ('Doubles',396,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',396,'Ale','Siwei','Aereo in Giù'),
 ('Doubles',396,'Leo','Sandro','Smash Laterale'),
 ('Doubles',396,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',396,'Sandro','Fuoco Amico'),
 ('Doubles',396,'Leo','Autodistruzione');


--Doubles-395
insert into kills values ('Doubles',395,'Ale','Siwei','Altro'),
 ('Doubles',395,'Siwei','Sandro','Speciale in Giù'),
 ('Doubles',395,'Siwei','Ale','Smash Finale'),
 ('Doubles',395,'Siwei','Sandro','Aereo in Giù'),
 ('Doubles',395,'Sandro','Leo','Aereo in Su'),
 ('Doubles',395,'Siwei','Sandro','Aereo in Su'),
 ('Doubles',395,'Siwei','Ale','Smash Finale'),
 ('Doubles',395,'Ale','Siwei','Smash Laterale'),
 ('Doubles',395,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',395,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',395,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',395,'Siwei','Mancato Recupero');


--Doubles-394
insert into kills values ('Doubles',394,'Leo','Siwei','Smash Laterale'),
 ('Doubles',394,'Ale','Sandro','Speciale in Su'),
 ('Doubles',394,'Sandro','Ale','Smash Laterale'),
 ('Doubles',394,'Sandro','Ale','Smash Finale'),
 ('Doubles',394,'Leo','Siwei','Smash Laterale'),
 ('Doubles',394,'Siwei','Leo','Speciale in Su'),
 ('Doubles',394,'Ale','Siwei','Smash Finale'),
 ('Doubles',394,'Ale','Sandro','Speciale in Su'),
 ('Doubles',394,'Sandro','Ale','In Corsa'),
 ('Doubles',394,'Sandro','Leo','Smash Laterale'),
 ('Doubles',394,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',394,'Sandro','Autodistruzione');


--Doubles-393
insert into kills values ('Doubles',393,'Sandro','Leo','Smash Laterale'),
 ('Doubles',393,'Ale','Siwei','Smash Laterale'),
 ('Doubles',393,'Siwei','Ale','Smash in Su'),
 ('Doubles',393,'Leo','Sandro','Altro'),
 ('Doubles',393,'Sandro','Leo','Smash Finale'),
 ('Doubles',393,'Ale','Siwei','Speciale Standard'),
 ('Doubles',393,'Leo','Ale','Smash Finale'),
 ('Doubles',393,'Leo','Sandro','Smash Laterale'),
 ('Doubles',393,'Siwei','Ale','Smash Finale'),
 ('Doubles',393,'Sandro','Leo','Smash Finale'),
 ('Doubles',393,'Siwei','Sandro','Speciale in Su');

insert into deaths values ('Doubles',393,'Sandro','Mancato Recupero');


--Doubles-392
insert into kills values ('Doubles',392,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',392,'Siwei','Sandro','Smash in Su'),
 ('Doubles',392,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',392,'Siwei','Leo','Smash Finale'),
 ('Doubles',392,'Sandro','Ale','Smash Laterale'),
 ('Doubles',392,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',392,'Ale','Sandro','Smash in Su'),
 ('Doubles',392,'Siwei','Leo','Smash Finale'),
 ('Doubles',392,'Leo','Ale','Altro'),
 ('Doubles',392,'Siwei','Sandro','Speciale in Giù'),
 ('Doubles',392,'Leo','Siwei','Aereo in Su');

insert into deaths values ('Doubles',392,'Ale','Fuoco Amico'),
 ('Doubles',392,'Siwei','Fuoco Amico'),
 ('Doubles',392,'Ale','Autodistruzione');


--Doubles-391
insert into kills values ('Doubles',391,'Siwei','Ale','In Corsa'),
 ('Doubles',391,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',391,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',391,'Sandro','Leo','Smash Finale'),
 ('Doubles',391,'Siwei','Ale','Speciale in Giù'),
 ('Doubles',391,'Leo','Sandro','Smash Laterale'),
 ('Doubles',391,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',391,'Leo','Ale','Aereo Frontale'),
 ('Doubles',391,'Sandro','Leo','Aereo in Su'),
 ('Doubles',391,'Sandro','Siwei','Smash Finale'),
 ('Doubles',391,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',391,'Siwei','Fuoco Amico');


--Single-915
insert into kills values ('Single',915,'Siwei','Ale','Altro'),
 ('Single',915,'Sandro','Siwei','Altro'),
 ('Single',915,'Siwei','Leo','Aereo Frontale'),
 ('Single',915,'Ale','Siwei','Altro'),
 ('Single',915,'Sandro','Ale','Smash Laterale'),
 ('Single',915,'Siwei','Ale','Smash Laterale'),
 ('Single',915,'Leo','Sandro','Smash Finale'),
 ('Single',915,'Sandro','Leo','Smash Finale'),
 ('Single',915,'Sandro','Siwei','Smash Finale'),
 ('Single',915,'Leo','Sandro','Aereo in Su'),
 ('Single',915,'Sandro','Leo','Altro');

insert into deaths values ('Single',915,'Leo','3D Land');


--Single-914
insert into kills values ('Single',914,'Ale','Sandro','Smash in Su'),
 ('Single',914,'Sandro','Ale','Smash in Giù'),
 ('Single',914,'Sandro','Siwei','Smash Laterale'),
 ('Single',914,'Sandro','Leo','Smash Finale'),
 ('Single',914,'Ale','Siwei','Altro'),
 ('Single',914,'Siwei','Sandro','Altro'),
 ('Single',914,'Siwei','Ale','Altro'),
 ('Single',914,'Leo','Siwei','Speciale Laterale'),
 ('Single',914,'Sandro','Leo','Smash Laterale'),
 ('Single',914,'Sandro','Ale','Smash in Su'),
 ('Single',914,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',914,'Siwei','Autodistruzione'),
 ('Single',914,'Sandro','Mancato Recupero');


--Single-913
insert into kills values ('Single',913,'Siwei','Leo','Altro'),
 ('Single',913,'Siwei','Sandro','Altro'),
 ('Single',913,'Leo','Ale','Smash Finale'),
 ('Single',913,'Leo','Siwei','Smash Finale'),
 ('Single',913,'Leo','Ale','Speciale in Su'),
 ('Single',913,'Siwei','Leo','Smash Finale'),
 ('Single',913,'Ale','Sandro','Smash Finale'),
 ('Single',913,'Leo','Ale','Speciale in Giù'),
 ('Single',913,'Sandro','Siwei','In Corsa'),
 ('Single',913,'Siwei','Leo','Smash Finale'),
 ('Single',913,'Siwei','Sandro','Altro');

insert into deaths values ('Single',913,'Leo','Mancato Recupero'),
 ('Single',913,'Sandro','Mancato Recupero'),
 ('Single',913,'Sandro','Mancato Recupero');


--Single-912
insert into kills values ('Single',912,'Sandro','Siwei','Speciale Standard'),
 ('Single',912,'Siwei','Sandro','Smash Laterale'),
 ('Single',912,'Leo','Ale','Smash Laterale'),
 ('Single',912,'Sandro','Leo','Speciale Laterale'),
 ('Single',912,'Sandro','Siwei','Altro'),
 ('Single',912,'Sandro','Leo','Altro'),
 ('Single',912,'Sandro','Ale','Speciale Laterale'),
 ('Single',912,'Sandro','Siwei','Aereo Frontale'),
 ('Single',912,'Ale','Sandro','Aereo Posteriore'),
 ('Single',912,'Sandro','Leo','Smash Finale'),
 ('Single',912,'Sandro','Ale','Speciale Standard');

insert into deaths values ('Single',912,'Siwei','Mushroom Kingdom II'),
 ('Single',912,'Leo','Autodistruzione');


--Single-911
insert into kills values ('Single',911,'Sandro','Siwei','Peculiare'),
 ('Single',911,'Siwei','Sandro','Smash Laterale'),
 ('Single',911,'Leo','Ale','Aereo Posteriore'),
 ('Single',911,'Siwei','Leo','Smash in Su'),
 ('Single',911,'Siwei','Sandro','Smash Finale'),
 ('Single',911,'Leo','Siwei','Smash Laterale'),
 ('Single',911,'Siwei','Ale','Smash in Su'),
 ('Single',911,'Siwei','Sandro','Smash Laterale'),
 ('Single',911,'Siwei','Leo','Altro'),
 ('Single',911,'Ale','Siwei','Smash Finale'),
 ('Single',911,'Leo','Ale','Altro');

insert into deaths values ('Single',911,'Leo','Mancato Recupero'),
 ('Single',911,'Ale','Unova Pokemon League');


--Single-910
insert into kills values ('Single',910,'Sandro','Leo','Smash Laterale'),
 ('Single',910,'Leo','Sandro','Aereo Posteriore'),
 ('Single',910,'Siwei','Ale','Smash Laterale'),
 ('Single',910,'Sandro','Siwei','Speciale in Giù'),
 ('Single',910,'Sandro','Leo','Smash Laterale'),
 ('Single',910,'Siwei','Sandro','Smash Finale'),
 ('Single',910,'Sandro','Ale','Smash Finale'),
 ('Single',910,'Ale','Siwei','Smash Laterale'),
 ('Single',910,'Sandro','Leo','Smash Laterale'),
 ('Single',910,'Siwei','Ale','Altro'),
 ('Single',910,'Siwei','Sandro','Altro');

insert into deaths values ('Single',910,'Ale','Mancato Recupero'),
 ('Single',910,'Sandro','Autodistruzione');


--Single-909
insert into kills values ('Single',909,'Ale','Siwei','Smash in Su'),
 ('Single',909,'Leo','Ale','Smash Laterale'),
 ('Single',909,'Siwei','Sandro','Smash Finale'),
 ('Single',909,'Siwei','Leo','Smash Laterale'),
 ('Single',909,'Leo','Siwei','In Corsa'),
 ('Single',909,'Siwei','Sandro','Smash Finale'),
 ('Single',909,'Siwei','Ale','Smash Finale'),
 ('Single',909,'Ale','Leo','Aereo in Su'),
 ('Single',909,'Ale','Siwei','Smash Finale'),
 ('Single',909,'Sandro','Leo','Smash Finale'),
 ('Single',909,'Sandro','Ale','Smash in Su');


--Single-908
insert into kills values ('Single',908,'Sandro','Ale','Smash Laterale'),
 ('Single',908,'Leo','Siwei','Smash Laterale'),
 ('Single',908,'Ale','Sandro','Aereo Frontale'),
 ('Single',908,'Siwei','Leo','Smash Laterale'),
 ('Single',908,'Siwei','Ale','Smash Finale'),
 ('Single',908,'Leo','Siwei','Smash Finale'),
 ('Single',908,'Ale','Leo','Speciale Standard'),
 ('Single',908,'Ale','Sandro','Smash Finale'),
 ('Single',908,'Sandro','Siwei','Smash Laterale'),
 ('Single',908,'Leo','Ale','Peculiare'),
 ('Single',908,'Leo','Sandro','Smash Finale');


--Single-907
insert into kills values ('Single',907,'Sandro','Ale','Speciale in Giù'),
 ('Single',907,'Leo','Siwei','Smash Laterale'),
 ('Single',907,'Ale','Leo','Smash Laterale'),
 ('Single',907,'Ale','Sandro','Smash Finale'),
 ('Single',907,'Siwei','Ale','Smash Finale'),
 ('Single',907,'Leo','Siwei','Speciale in Su'),
 ('Single',907,'Ale','Leo','Smash Laterale'),
 ('Single',907,'Siwei','Leo','Smash Laterale'),
 ('Single',907,'Siwei','Ale','Smash Laterale'),
 ('Single',907,'Sandro','Siwei','Speciale in Giù');


--Single-906
insert into kills values ('Single',906,'Siwei','Leo','Peculiare'),
 ('Single',906,'Ale','Siwei','Speciale Laterale'),
 ('Single',906,'Sandro','Ale','Smash Laterale'),
 ('Single',906,'Siwei','Sandro','In Corsa'),
 ('Single',906,'Ale','Leo','Aereo Posteriore'),
 ('Single',906,'Sandro','Siwei','Smash Finale'),
 ('Single',906,'Sandro','Ale','Aereo in Su'),
 ('Single',906,'Sandro','Leo','Aereo Frontale'),
 ('Single',906,'Ale','Siwei','Speciale Standard'),
 ('Single',906,'Ale','Sandro','Speciale Standard'),
 ('Single',906,'Ale','Sandro','Smash Laterale');


--Single-905
insert into kills values ('Single',905,'Siwei','Ale','Peculiare'),
 ('Single',905,'Leo','Siwei','In Corsa'),
 ('Single',905,'Ale','Leo','Smash Laterale'),
 ('Single',905,'Siwei','Sandro','Smash Laterale'),
 ('Single',905,'Sandro','Siwei','Altro'),
 ('Single',905,'Leo','Ale','Smash Finale'),
 ('Single',905,'Leo','Sandro','Smash Finale'),
 ('Single',905,'Siwei','Leo','Smash Laterale'),
 ('Single',905,'Sandro','Siwei','Smash Finale'),
 ('Single',905,'Sandro','Leo','Smash Finale'),
 ('Single',905,'Ale','Sandro','Speciale Standard');

insert into deaths values ('Single',905,'Siwei','Autodistruzione');


--Single-904
insert into kills values ('Single',904,'Ale','Sandro','Aereo Frontale'),
 ('Single',904,'Ale','Siwei','Speciale Standard'),
 ('Single',904,'Leo','Ale','Altro'),
 ('Single',904,'Siwei','Leo','Smash Finale'),
 ('Single',904,'Siwei','Sandro','Smash Finale'),
 ('Single',904,'Ale','Siwei','Altro'),
 ('Single',904,'Leo','Ale','Smash Laterale'),
 ('Single',904,'Siwei','Leo','Peculiare'),
 ('Single',904,'Ale','Sandro','Altro'),
 ('Single',904,'Leo','Siwei','Smash Laterale'),
 ('Single',904,'Leo','Ale','Altro');

insert into deaths values ('Single',904,'Ale','Kalos Pokemon League'),
 ('Single',904,'Siwei','Autodistruzione'),
 ('Single',904,'Ale','Autodistruzione');


--Single-903
insert into kills values ('Single',903,'Siwei','Leo','Speciale Laterale'),
 ('Single',903,'Leo','Siwei','Smash Finale'),
 ('Single',903,'Siwei','Leo','Speciale Laterale'),
 ('Single',903,'Sandro','Siwei','Altro'),
 ('Single',903,'Siwei','Ale','Speciale Laterale'),
 ('Single',903,'Leo','Sandro','Aereo Posteriore'),
 ('Single',903,'Ale','Sandro','Smash Finale'),
 ('Single',903,'Siwei','Ale','Smash Finale'),
 ('Single',903,'Siwei','Leo','Smash Finale'),
 ('Single',903,'Sandro','Siwei','In Corsa'),
 ('Single',903,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Single',903,'Siwei','Autodistruzione');


--Single-902
insert into kills values ('Single',902,'Sandro','Leo','Aereo in Su'),
 ('Single',902,'Leo','Siwei','Smash Laterale'),
 ('Single',902,'Leo','Sandro','Smash Laterale'),
 ('Single',902,'Sandro','Ale','Aereo in Su'),
 ('Single',902,'Siwei','Sandro','Smash Laterale'),
 ('Single',902,'Sandro','Siwei','Smash Laterale'),
 ('Single',902,'Ale','Leo','Smash Finale'),
 ('Single',902,'Leo','Ale','Smash Laterale'),
 ('Single',902,'Siwei','Sandro','Smash Laterale'),
 ('Single',902,'Leo','Siwei','In Corsa'),
 ('Single',902,'Leo','Ale','Smash Finale');


--Single-901
insert into kills values ('Single',901,'Leo','Siwei','Smash Laterale'),
 ('Single',901,'Siwei','Leo','Smash in Su'),
 ('Single',901,'Sandro','Leo','Speciale Standard'),
 ('Single',901,'Ale','Siwei','Speciale in Giù'),
 ('Single',901,'Leo','Sandro','Aereo Frontale'),
 ('Single',901,'Sandro','Ale','In Corsa'),
 ('Single',901,'Ale','Leo','Smash Finale'),
 ('Single',901,'Sandro','Ale','Smash Finale'),
 ('Single',901,'Sandro','Siwei','Altro'),
 ('Single',901,'Ale','Sandro','Smash in Su'),
 ('Single',901,'Sandro','Ale','Speciale in Su');

insert into deaths values ('Single',901,'Siwei','Mute City SNES');


--Single-900
insert into kills values ('Single',900,'Sandro','Siwei','Altro'),
 ('Single',900,'Sandro','Leo','Smash Laterale'),
 ('Single',900,'Leo','Siwei','Altro'),
 ('Single',900,'Leo','Ale','Smash Finale'),
 ('Single',900,'Ale','Sandro','Smash Laterale'),
 ('Single',900,'Siwei','Sandro','Smash Laterale'),
 ('Single',900,'Siwei','Ale','Smash in Su'),
 ('Single',900,'Ale','Siwei','Altro'),
 ('Single',900,'Leo','Sandro','Aereo in Su'),
 ('Single',900,'Ale','Leo','Aereo in Su'),
 ('Single',900,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',900,'Siwei','Mancato Recupero'),
 ('Single',900,'Siwei','Mancato Recupero');


--Single-899
insert into kills values ('Single',899,'Siwei','Sandro','Smash Laterale'),
 ('Single',899,'Sandro','Ale','Smash Laterale'),
 ('Single',899,'Sandro','Siwei','In Corsa'),
 ('Single',899,'Sandro','Ale','Altro'),
 ('Single',899,'Sandro','Siwei','Smash Finale'),
 ('Single',899,'Siwei','Sandro','Smash Laterale'),
 ('Single',899,'Ale','Leo','Smash Finale'),
 ('Single',899,'Sandro','Leo','Altro'),
 ('Single',899,'Leo','Siwei','In Corsa'),
 ('Single',899,'Leo','Ale','In Corsa'),
 ('Single',899,'Leo','Sandro','Speciale Laterale');

insert into deaths values ('Single',899,'Ale','Mancato Recupero'),
 ('Single',899,'Leo','Autodistruzione');


--Single-898
insert into kills values ('Single',898,'Leo','Sandro','Smash Laterale'),
 ('Single',898,'Ale','Siwei','Grab'),
 ('Single',898,'Siwei','Leo','Smash Laterale'),
 ('Single',898,'Siwei','Ale','Smash Laterale'),
 ('Single',898,'Leo','Siwei','Smash Finale'),
 ('Single',898,'Siwei','Sandro','Smash Laterale'),
 ('Single',898,'Siwei','Sandro','Smash in Su'),
 ('Single',898,'Leo','Siwei','Altro'),
 ('Single',898,'Leo','Ale','In Corsa'),
 ('Single',898,'Ale','Leo','Smash Laterale'),
 ('Single',898,'Leo','Ale','Altro');

insert into deaths values ('Single',898,'Leo','Gamer'),
 ('Single',898,'Ale','Mancato Recupero');


--Single-897
insert into kills values ('Single',897,'Siwei','Leo','Meteora'),
 ('Single',897,'Sandro','Siwei','Altro'),
 ('Single',897,'Leo','Ale','Smash Laterale'),
 ('Single',897,'Leo','Siwei','Smash Finale'),
 ('Single',897,'Siwei','Leo','Smash Laterale'),
 ('Single',897,'Siwei','Sandro','Smash Finale'),
 ('Single',897,'Siwei','Ale','Smash in Su'),
 ('Single',897,'Sandro','Leo','Smash Finale'),
 ('Single',897,'Sandro','Siwei','Altro'),
 ('Single',897,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Single',897,'Siwei','Autodistruzione'),
 ('Single',897,'Siwei','Mancato Recupero');


--Single-896
insert into kills values ('Single',896,'Siwei','Leo','Smash Laterale'),
 ('Single',896,'Siwei','Sandro','Smash Laterale'),
 ('Single',896,'Leo','Siwei','Speciale in Su'),
 ('Single',896,'Sandro','Ale','Smash Laterale'),
 ('Single',896,'Siwei','Ale','Smash Finale'),
 ('Single',896,'Leo','Siwei','Speciale in Su'),
 ('Single',896,'Ale','Sandro','Smash Finale'),
 ('Single',896,'Siwei','Leo','Smash in Su'),
 ('Single',896,'Siwei','Ale','Speciale Laterale'),
 ('Single',896,'Ale','Siwei','Altro'),
 ('Single',896,'Leo','Sandro','In Corsa');

insert into deaths values ('Single',896,'Siwei','Pirate Ship');


--Single-895
insert into kills values ('Single',895,'Siwei','Ale','Smash in Su'),
 ('Single',895,'Ale','Siwei','Smash Finale'),
 ('Single',895,'Leo','Sandro','Smash in Su'),
 ('Single',895,'Siwei','Leo','Smash Finale'),
 ('Single',895,'Sandro','Ale','Smash Finale'),
 ('Single',895,'Sandro','Siwei','Smash Finale'),
 ('Single',895,'Leo','Sandro','Smash in Su'),
 ('Single',895,'Sandro','Leo','Smash in Su'),
 ('Single',895,'Ale','Sandro','Smash Finale'),
 ('Single',895,'Ale','Siwei','Smash Finale'),
 ('Single',895,'Ale','Leo','Speciale Standard');


--Single-894
insert into kills values ('Single',894,'Sandro','Siwei','Aereo Frontale'),
 ('Single',894,'Leo','Sandro','Aereo Frontale'),
 ('Single',894,'Ale','Leo','Aereo Posteriore'),
 ('Single',894,'Leo','Ale','Smash Finale'),
 ('Single',894,'Ale','Siwei','Aereo Posteriore'),
 ('Single',894,'Siwei','Sandro','Speciale Laterale'),
 ('Single',894,'Leo','Siwei','Speciale in Giù'),
 ('Single',894,'Ale','Leo','Speciale Standard'),
 ('Single',894,'Leo','Sandro','Smash Finale'),
 ('Single',894,'Leo','Ale','Smash Laterale'),
 ('Single',894,'Ale','Leo','Speciale Laterale');


--Single-893
insert into kills values ('Single',893,'Siwei','Sandro','Speciale Laterale'),
 ('Single',893,'Ale','Siwei','Aereo in Su'),
 ('Single',893,'Leo','Ale','Speciale Standard'),
 ('Single',893,'Ale','Leo','Smash Finale'),
 ('Single',893,'Ale','Sandro','Smash Finale'),
 ('Single',893,'Leo','Siwei','Smash Finale'),
 ('Single',893,'Leo','Ale','Smash Laterale'),
 ('Single',893,'Siwei','Sandro','Altro'),
 ('Single',893,'Siwei','Leo','Smash Finale'),
 ('Single',893,'Leo','Ale','Smash Finale'),
 ('Single',893,'Siwei','Leo','Speciale in Giù');

insert into deaths values ('Single',893,'Sandro','Autodistruzione');


--Single-892
insert into kills values ('Single',892,'Siwei','Leo','In Corsa'),
 ('Single',892,'Sandro','Ale','Altro'),
 ('Single',892,'Leo','Siwei','Smash Finale'),
 ('Single',892,'Leo','Sandro','Smash Finale'),
 ('Single',892,'Sandro','Leo','Smash Finale'),
 ('Single',892,'Ale','Siwei','Smash Finale'),
 ('Single',892,'Ale','Sandro','Smash Finale'),
 ('Single',892,'Leo','Ale','Smash Finale'),
 ('Single',892,'Siwei','Sandro','Smash Finale'),
 ('Single',892,'Ale','Leo','Speciale Laterale'),
 ('Single',892,'Siwei','Ale','In Corsa');

insert into deaths values ('Single',892,'Ale','Autodistruzione');


--Single-891
insert into kills values ('Single',891,'Ale','Sandro','Speciale Standard'),
 ('Single',891,'Siwei','Leo','Altro'),
 ('Single',891,'Siwei','Sandro','Smash Finale'),
 ('Single',891,'Sandro','Siwei','In Corsa'),
 ('Single',891,'Sandro','Ale','Smash Finale'),
 ('Single',891,'Ale','Siwei','Smash Finale'),
 ('Single',891,'Ale','Leo','In Corsa'),
 ('Single',891,'Leo','Ale','Grab'),
 ('Single',891,'Siwei','Sandro','Altro'),
 ('Single',891,'Ale','Siwei','Peculiare'),
 ('Single',891,'Ale','Leo','In Corsa');

insert into deaths values ('Single',891,'Leo','Autodistruzione'),
 ('Single',891,'Sandro','Wily Castle');


--Single-890
insert into kills values ('Single',890,'Ale','Siwei','Aereo Standard'),
 ('Single',890,'Leo','Sandro','Peculiare'),
 ('Single',890,'Leo','Ale','In Corsa'),
 ('Single',890,'Siwei','Leo','Smash Finale'),
 ('Single',890,'Sandro','Siwei','Smash in Su'),
 ('Single',890,'Ale','Leo','Smash Finale'),
 ('Single',890,'Leo','Sandro','Peculiare'),
 ('Single',890,'Ale','Leo','Altro'),
 ('Single',890,'Siwei','Ale','Smash in Su'),
 ('Single',890,'Ale','Siwei','Smash Laterale'),
 ('Single',890,'Ale','Sandro','Altro');

insert into deaths values ('Single',890,'Leo','Autodistruzione'),
 ('Single',890,'Sandro','Spirit Train');


--Single-889
insert into kills values ('Single',889,'Siwei','Ale','Speciale in Giù'),
 ('Single',889,'Siwei','Leo','Speciale in Giù'),
 ('Single',889,'Siwei','Sandro','Speciale in Giù'),
 ('Single',889,'Ale','Siwei','Altro'),
 ('Single',889,'Siwei','Sandro','Altro'),
 ('Single',889,'Siwei','Ale','Speciale in Su'),
 ('Single',889,'Ale','Sandro','Speciale Laterale'),
 ('Single',889,'Ale','Siwei','Aereo Standard'),
 ('Single',889,'Ale','Leo','Altro'),
 ('Single',889,'Leo','Siwei','Altro'),
 ('Single',889,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',889,'Siwei','Norfair'),
 ('Single',889,'Sandro','Norfair'),
 ('Single',889,'Leo','Norfair'),
 ('Single',889,'Siwei','Autodistruzione');


--Single-888
insert into kills values ('Single',888,'Ale','Siwei','Smash Laterale'),
 ('Single',888,'Ale','Leo','Speciale Laterale'),
 ('Single',888,'Leo','Ale','Smash Finale'),
 ('Single',888,'Ale','Sandro','Smash Laterale'),
 ('Single',888,'Sandro','Siwei','Speciale Laterale'),
 ('Single',888,'Ale','Leo','Smash Laterale'),
 ('Single',888,'Siwei','Leo','Altro'),
 ('Single',888,'Siwei','Ale','Speciale Standard'),
 ('Single',888,'Ale','Sandro','Speciale Laterale'),
 ('Single',888,'Ale','Sandro','Altro'),
 ('Single',888,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',888,'Leo','Pokemon Stadium 2');


--Single-887
insert into kills values ('Single',887,'Leo','Sandro','Smash in Su'),
 ('Single',887,'Sandro','Ale','Smash Finale'),
 ('Single',887,'Ale','Leo','Aereo Frontale'),
 ('Single',887,'Leo','Siwei','Aereo Standard'),
 ('Single',887,'Leo','Ale','Smash Finale'),
 ('Single',887,'Ale','Sandro','Smash Finale'),
 ('Single',887,'Sandro','Siwei','Altro'),
 ('Single',887,'Sandro','Ale','Smash Laterale'),
 ('Single',887,'Siwei','Leo','Smash Laterale'),
 ('Single',887,'Leo','Sandro','Smash Finale'),
 ('Single',887,'Leo','Siwei','Altro');

insert into deaths values ('Single',887,'Siwei','Autodistruzione'),
 ('Single',887,'Siwei','Autodistruzione');


--Single-886
insert into kills values ('Single',886,'Leo','Siwei','Aereo in Giù'),
 ('Single',886,'Ale','Sandro','Aereo Frontale'),
 ('Single',886,'Ale','Leo','Smash Laterale'),
 ('Single',886,'Sandro','Ale','Smash Finale'),
 ('Single',886,'Ale','Siwei','Smash Finale'),
 ('Single',886,'Siwei','Sandro','Smash Finale'),
 ('Single',886,'Siwei','Ale','Speciale Laterale'),
 ('Single',886,'Sandro','Siwei','Altro'),
 ('Single',886,'Sandro','Leo','Smash Finale'),
 ('Single',886,'Leo','Sandro','Smash Laterale'),
 ('Single',886,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',886,'Siwei','Mancato Recupero');


--Single-885
insert into kills values ('Single',885,'Leo','Siwei','In Corsa'),
 ('Single',885,'Siwei','Leo','Smash Laterale'),
 ('Single',885,'Siwei','Ale','Smash Laterale'),
 ('Single',885,'Siwei','Sandro','Smash Laterale'),
 ('Single',885,'Sandro','Leo','Smash Finale'),
 ('Single',885,'Siwei','Ale','Smash Laterale'),
 ('Single',885,'Sandro','Siwei','Speciale Laterale'),
 ('Single',885,'Siwei','Leo','Smash in Su'),
 ('Single',885,'Ale','Sandro','Aereo Frontale'),
 ('Single',885,'Ale','Siwei','Smash Finale'),
 ('Single',885,'Ale','Sandro','Smash Laterale');


--Single-884
insert into kills values ('Single',884,'Sandro','Siwei','Smash Laterale'),
 ('Single',884,'Sandro','Siwei','Altro'),
 ('Single',884,'Leo','Sandro','Altro'),
 ('Single',884,'Sandro','Siwei','Altro'),
 ('Single',884,'Leo','Ale','Peculiare'),
 ('Single',884,'Ale','Leo','Smash in Su'),
 ('Single',884,'Sandro','Ale','Speciale Laterale'),
 ('Single',884,'Sandro','Leo','Smash Laterale'),
 ('Single',884,'Ale','Sandro','Smash Laterale'),
 ('Single',884,'Sandro','Leo','Smash Finale'),
 ('Single',884,'Sandro','Ale','Speciale Standard');

insert into deaths values ('Single',884,'Siwei','Autodistruzione'),
 ('Single',884,'Sandro','Mancato Recupero'),
 ('Single',884,'Siwei','Autodistruzione');


--Single-883
insert into kills values ('Single',883,'Ale','Siwei','Altro'),
 ('Single',883,'Sandro','Leo','Smash Laterale'),
 ('Single',883,'Leo','Sandro','Smash Finale'),
 ('Single',883,'Sandro','Ale','Speciale Standard'),
 ('Single',883,'Sandro','Siwei','Altro'),
 ('Single',883,'Sandro','Leo','Smash Finale'),
 ('Single',883,'Leo','Sandro','Aereo in Su'),
 ('Single',883,'Siwei','Ale','Smash Laterale'),
 ('Single',883,'Siwei','Sandro','Smash Laterale'),
 ('Single',883,'Ale','Siwei','Aereo Posteriore'),
 ('Single',883,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',883,'Siwei','Mushroom Kingdom U'),
 ('Single',883,'Siwei','Mancato Recupero');


--Single-882
insert into kills values ('Single',882,'Ale','Siwei','Aereo Frontale'),
 ('Single',882,'Sandro','Ale','Altro'),
 ('Single',882,'Siwei','Leo','Smash Finale'),
 ('Single',882,'Leo','Siwei','Smash Finale'),
 ('Single',882,'Siwei','Leo','Altro'),
 ('Single',882,'Sandro','Siwei','Altro'),
 ('Single',882,'Ale','Sandro','Smash Finale'),
 ('Single',882,'Sandro','Ale','Smash Laterale'),
 ('Single',882,'Ale','Leo','Aereo Frontale'),
 ('Single',882,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',882,'Ale','Autodistruzione'),
 ('Single',882,'Leo','Mancato Recupero'),
 ('Single',882,'Siwei','Autodistruzione');


--Single-881
insert into kills values ('Single',881,'Siwei','Sandro','Smash Laterale'),
 ('Single',881,'Ale','Siwei','Altro'),
 ('Single',881,'Ale','Sandro','Grab'),
 ('Single',881,'Ale','Leo','Aereo Posteriore'),
 ('Single',881,'Leo','Ale','Smash Finale'),
 ('Single',881,'Leo','Siwei','Aereo in Giù'),
 ('Single',881,'Siwei','Leo','Smash in Su'),
 ('Single',881,'Siwei','Sandro','Smash Laterale'),
 ('Single',881,'Siwei','Ale','Altro'),
 ('Single',881,'Ale','Siwei','Aereo Posteriore'),
 ('Single',881,'Leo','Ale','Altro');

insert into deaths values ('Single',881,'Siwei','Mancato Recupero'),
 ('Single',881,'Ale','Mancato Recupero');


--Single-880
insert into kills values ('Single',880,'Ale','Siwei','Smash Laterale'),
 ('Single',880,'Siwei','Leo','Altro'),
 ('Single',880,'Leo','Sandro','Speciale Standard'),
 ('Single',880,'Leo','Sandro','Speciale Standard'),
 ('Single',880,'Sandro','Ale','Speciale in Giù'),
 ('Single',880,'Sandro','Siwei','Aereo in Su'),
 ('Single',880,'Ale','Leo','Speciale in Giù'),
 ('Single',880,'Leo','Siwei','Speciale Standard'),
 ('Single',880,'Ale','Sandro','Peculiare'),
 ('Single',880,'Leo','Ale','Speciale in Su'),
 ('Single',880,'Leo','Ale','Aereo Frontale');


--Single-879
insert into kills values ('Single',879,'Siwei','Ale','Speciale Laterale'),
 ('Single',879,'Siwei','Sandro','Altro'),
 ('Single',879,'Sandro','Siwei','Speciale in Giù'),
 ('Single',879,'Siwei','Sandro','Smash Finale'),
 ('Single',879,'Sandro','Leo','Smash in Su'),
 ('Single',879,'Ale','Siwei','Smash Finale'),
 ('Single',879,'Leo','Ale','Smash Finale'),
 ('Single',879,'Leo','Siwei','Aereo in Su'),
 ('Single',879,'Ale','Leo','Aereo Standard'),
 ('Single',879,'Leo','Sandro','Aereo in Su'),
 ('Single',879,'Leo','Ale','Smash Finale');


--Single-878
insert into kills values ('Single',878,'Sandro','Siwei','Speciale Standard'),
 ('Single',878,'Sandro','Ale','Speciale Standard'),
 ('Single',878,'Ale','Leo','Speciale in Giù'),
 ('Single',878,'Siwei','Sandro','Smash Finale'),
 ('Single',878,'Sandro','Leo','Smash Finale'),
 ('Single',878,'Sandro','Siwei','Speciale Standard'),
 ('Single',878,'Leo','Sandro','Altro'),
 ('Single',878,'Sandro','Ale','Smash in Su'),
 ('Single',878,'Sandro','Siwei','Aereo in Giù'),
 ('Single',878,'Ale','Leo','Speciale in Giù'),
 ('Single',878,'Ale','Sandro','Altro');

insert into deaths values ('Single',878,'Sandro','Autodistruzione'),
 ('Single',878,'Sandro','Saffron City');


--Single-877
insert into kills values ('Single',877,'Leo','Siwei','Smash Laterale'),
 ('Single',877,'Leo','Ale','Smash in Su'),
 ('Single',877,'Sandro','Leo','Smash Laterale'),
 ('Single',877,'Leo','Siwei','Smash in Su'),
 ('Single',877,'Ale','Sandro','Smash Finale'),
 ('Single',877,'Siwei','Leo','Speciale Laterale'),
 ('Single',877,'Ale','Sandro','Smash Laterale'),
 ('Single',877,'Leo','Ale','Smash in Su'),
 ('Single',877,'Ale','Leo','Smash Finale'),
 ('Single',877,'Sandro','Ale','Speciale in Giù'),
 ('Single',877,'Siwei','Sandro','Speciale Laterale');


--Single-876
insert into kills values ('Single',876,'Siwei','Leo','Smash Laterale'),
 ('Single',876,'Siwei','Ale','Speciale Laterale'),
 ('Single',876,'Sandro','Siwei','Smash Finale'),
 ('Single',876,'Ale','Sandro','Aereo in Su'),
 ('Single',876,'Leo','Ale','Smash Finale'),
 ('Single',876,'Ale','Leo','Smash Finale'),
 ('Single',876,'Siwei','Sandro','Altro'),
 ('Single',876,'Ale','Siwei','Smash Laterale'),
 ('Single',876,'Siwei','Sandro','Smash Finale'),
 ('Single',876,'Siwei','Leo','Smash in Su'),
 ('Single',876,'Siwei','Ale','Altro');

insert into deaths values ('Single',876,'Sandro','Autodistruzione');


--Single-875
insert into kills values ('Single',875,'Leo','Siwei','Smash in Su'),
 ('Single',875,'Siwei','Sandro','Smash Laterale'),
 ('Single',875,'Siwei','Leo','Altro'),
 ('Single',875,'Leo','Ale','Smash in Su'),
 ('Single',875,'Siwei','Leo','Smash Finale'),
 ('Single',875,'Ale','Sandro','Aereo in Su'),
 ('Single',875,'Ale','Siwei','Altro'),
 ('Single',875,'Ale','Leo','Altro'),
 ('Single',875,'Siwei','Ale','Smash Laterale'),
 ('Single',875,'Ale','Sandro','Smash Laterale'),
 ('Single',875,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',875,'Leo','Mancato Recupero'),
 ('Single',875,'Siwei','Mancato Recupero'),
 ('Single',875,'Leo','Mancato Recupero');


--Single-874
insert into kills values ('Single',874,'Ale','Sandro','Speciale in Su'),
 ('Single',874,'Sandro','Ale','Aereo in Su'),
 ('Single',874,'Sandro','Leo','Smash Finale'),
 ('Single',874,'Leo','Siwei','Smash Laterale'),
 ('Single',874,'Leo','Sandro','Smash Finale'),
 ('Single',874,'Leo','Ale','Smash Finale'),
 ('Single',874,'Ale','Siwei','Speciale in Su'),
 ('Single',874,'Sandro','Siwei','Altro'),
 ('Single',874,'Sandro','Leo','Aereo in Giù'),
 ('Single',874,'Sandro','Leo','Aereo Frontale'),
 ('Single',874,'Ale','Sandro','Speciale Laterale');

insert into deaths values ('Single',874,'Siwei','Autodistruzione');


--Single-873
insert into kills values ('Single',873,'Siwei','Sandro','Altro'),
 ('Single',873,'Siwei','Leo','Speciale Laterale'),
 ('Single',873,'Leo','Siwei','Smash Laterale'),
 ('Single',873,'Sandro','Ale','Smash Finale'),
 ('Single',873,'Siwei','Sandro','Smash Finale'),
 ('Single',873,'Leo','Siwei','Peculiare'),
 ('Single',873,'Siwei','Leo','Smash Finale'),
 ('Single',873,'Leo','Ale','Smash Laterale'),
 ('Single',873,'Sandro','Siwei','Smash Finale'),
 ('Single',873,'Leo','Sandro','Smash Laterale'),
 ('Single',873,'Leo','Ale','Smash Laterale');


--Single-872
insert into kills values ('Single',872,'Siwei','Sandro','In Corsa'),
 ('Single',872,'Siwei','Leo','Speciale in Su'),
 ('Single',872,'Siwei','Ale','Speciale in Giù'),
 ('Single',872,'Leo','Siwei','Smash Laterale'),
 ('Single',872,'Siwei','Sandro','Speciale in Su'),
 ('Single',872,'Ale','Siwei','Aereo Posteriore'),
 ('Single',872,'Sandro','Ale','Speciale Laterale'),
 ('Single',872,'Siwei','Leo','Speciale Laterale'),
 ('Single',872,'Sandro','Leo','Smash Finale'),
 ('Single',872,'Sandro','Siwei','Altro'),
 ('Single',872,'Ale','Sandro','Speciale in Su');

insert into deaths values ('Single',872,'Siwei','Autodistruzione');


--Single-871
insert into kills values ('Single',871,'Sandro','Siwei','Smash Laterale'),
 ('Single',871,'Ale','Sandro','Speciale Standard'),
 ('Single',871,'Sandro','Ale','Speciale Laterale'),
 ('Single',871,'Sandro','Leo','Altro'),
 ('Single',871,'Sandro','Siwei','Smash Finale'),
 ('Single',871,'Leo','Siwei','Smash Finale'),
 ('Single',871,'Ale','Leo','Smash Laterale'),
 ('Single',871,'Sandro','Ale','Aereo Posteriore'),
 ('Single',871,'Ale','Sandro','Aereo Posteriore'),
 ('Single',871,'Sandro','Leo','Speciale in Giù'),
 ('Single',871,'Sandro','Ale','Aereo in Su');

insert into deaths values ('Single',871,'Leo','Mancato Recupero');


--Single-870
insert into kills values ('Single',870,'Ale','Sandro','Smash in Su'),
 ('Single',870,'Siwei','Leo','Peculiare'),
 ('Single',870,'Sandro','Siwei','In Corsa'),
 ('Single',870,'Leo','Ale','Altro'),
 ('Single',870,'Ale','Leo','Speciale Standard'),
 ('Single',870,'Sandro','Siwei','Speciale Standard'),
 ('Single',870,'Leo','Sandro','Smash Finale'),
 ('Single',870,'Sandro','Ale','Smash Laterale'),
 ('Single',870,'Ale','Leo','Smash Finale'),
 ('Single',870,'Ale','Siwei','Altro'),
 ('Single',870,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',870,'Siwei','Autodistruzione');


--Single-869
insert into kills values ('Single',869,'Sandro','Siwei','Smash Laterale'),
 ('Single',869,'Ale','Sandro','Altro'),
 ('Single',869,'Siwei','Leo','Smash Finale'),
 ('Single',869,'Leo','Siwei','Smash in Su'),
 ('Single',869,'Siwei','Ale','Smash in Su'),
 ('Single',869,'Sandro','Leo','Smash Finale'),
 ('Single',869,'Leo','Sandro','Aereo in Giù'),
 ('Single',869,'Leo','Siwei','Aereo in Giù'),
 ('Single',869,'Sandro','Ale','In Corsa'),
 ('Single',869,'Ale','Sandro','Altro'),
 ('Single',869,'Ale','Leo','Altro');

insert into deaths values ('Single',869,'Sandro','Mancato Recupero'),
 ('Single',869,'Sandro','Mancato Recupero');


--Doubles-390
insert into kills values ('Doubles',390,'Leo','Ale','Smash in Su'),
 ('Doubles',390,'Leo','Siwei','Speciale Standard'),
 ('Doubles',390,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',390,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',390,'Leo','Ale','Smash Finale'),
 ('Doubles',390,'Ale','Leo','Altro'),
 ('Doubles',390,'Siwei','Sandro','Altro'),
 ('Doubles',390,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',390,'Siwei','Leo','Smash Finale'),
 ('Doubles',390,'Siwei','Sandro','Smash Finale');

insert into deaths values ('Doubles',390,'Leo','Fuoco Amico'),
 ('Doubles',390,'Leo','Pirate Ship'),
 ('Doubles',390,'Sandro','Pirate Ship'),
 ('Doubles',390,'Siwei','Fuoco Amico');


--Doubles-389
insert into kills values ('Doubles',389,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',389,'Sandro','Ale','Aereo in Su'),
 ('Doubles',389,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',389,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',389,'Siwei','Leo','Speciale Standard'),
 ('Doubles',389,'Sandro','Ale','Smash Laterale'),
 ('Doubles',389,'Leo','Siwei','Smash Laterale'),
 ('Doubles',389,'Ale','Sandro','Altro'),
 ('Doubles',389,'Sandro','Ale','Smash Laterale'),
 ('Doubles',389,'Sandro','Leo','Aereo Frontale');

insert into deaths values ('Doubles',389,'Siwei','Fuoco Amico'),
 ('Doubles',389,'Sandro','Mancato Recupero');


--Doubles-388
insert into kills values ('Doubles',388,'Ale','Siwei','Smash in Su'),
 ('Doubles',388,'Sandro','Leo','Smash in Giù'),
 ('Doubles',388,'Siwei','Sandro','Smash Finale'),
 ('Doubles',388,'Sandro','Siwei','Altro'),
 ('Doubles',388,'Leo','Ale','Speciale Standard'),
 ('Doubles',388,'Ale','Leo','Aereo Frontale'),
 ('Doubles',388,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',388,'Leo','Sandro','Smash Finale'),
 ('Doubles',388,'Ale','Leo','Speciale in Giù');

insert into deaths values ('Doubles',388,'Siwei','Autodistruzione'),
 ('Doubles',388,'Siwei','Fuoco Amico');


--Doubles-387
insert into kills values ('Doubles',387,'Ale','Siwei','Altro'),
 ('Doubles',387,'Sandro','Leo','Smash Laterale'),
 ('Doubles',387,'Leo','Sandro','Altro'),
 ('Doubles',387,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',387,'Leo','Ale','Fuoco Amico'),
 ('Doubles',387,'Ale','Sandro','Speciale Standard'),
 ('Doubles',387,'Ale','Sandro','Speciale Standard');

insert into deaths values ('Doubles',387,'Siwei','Garden of Hope'),
 ('Doubles',387,'Sandro','Mancato Recupero'),
 ('Doubles',387,'Siwei','Fuoco Amico'),
 ('Doubles',387,'Ale','Fuoco Amico'),
 ('Doubles',387,'Siwei','Autodistruzione'),
 ('Doubles',387,'Ale','Autodistruzione');


--Doubles-386
insert into kills values ('Doubles',386,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',386,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',386,'Leo','Siwei','In Corsa'),
 ('Doubles',386,'Ale','Sandro','Smash Laterale'),
 ('Doubles',386,'Siwei','Ale','Altro'),
 ('Doubles',386,'Ale','Sandro','Smash in Su'),
 ('Doubles',386,'Leo','Siwei','Smash Laterale'),
 ('Doubles',386,'Leo','Ale','Fuoco Amico'),
 ('Doubles',386,'Sandro','Leo','Smash in Su'),
 ('Doubles',386,'Leo','Sandro','In Corsa'),
 ('Doubles',386,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',386,'Ale','Autodistruzione'),
 ('Doubles',386,'Ale','Fuoco Amico');


--Doubles-385
insert into kills values ('Doubles',385,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',385,'Leo','Ale','Smash Laterale'),
 ('Doubles',385,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',385,'Sandro','Siwei','Footstool'),
 ('Doubles',385,'Leo','Sandro','Smash Finale'),
 ('Doubles',385,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',385,'Sandro','Leo','Smash Finale'),
 ('Doubles',385,'Siwei','Ale','Smash Finale'),
 ('Doubles',385,'Leo','Sandro','Altro'),
 ('Doubles',385,'Ale','Leo','Aereo Frontale'),
 ('Doubles',385,'Ale','Siwei','Altro');

insert into deaths values ('Doubles',385,'Leo','Fuoco Amico'),
 ('Doubles',385,'Sandro','Autodistruzione'),
 ('Doubles',385,'Siwei','Autodistruzione');


--Doubles-384
insert into kills values ('Doubles',384,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',384,'Sandro','Leo','Speciale Standard'),
 ('Doubles',384,'Leo','Sandro','Smash Laterale'),
 ('Doubles',384,'Siwei','Ale','Smash Laterale'),
 ('Doubles',384,'Leo','Sandro','Altro'),
 ('Doubles',384,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',384,'Ale','Leo','Altro'),
 ('Doubles',384,'Siwei','Sandro','Smash Finale'),
 ('Doubles',384,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',384,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',384,'Sandro','Leo','Smash in Su');

insert into deaths values ('Doubles',384,'Leo','Autodistruzione'),
 ('Doubles',384,'Ale','Fuoco Amico');


--Doubles-383
insert into kills values ('Doubles',383,'Sandro','Leo','Altro'),
 ('Doubles',383,'Sandro','Siwei','Altro'),
 ('Doubles',383,'Leo','Ale','Smash Finale'),
 ('Doubles',383,'Sandro','Leo','Smash Finale'),
 ('Doubles',383,'Ale','Siwei','Altro'),
 ('Doubles',383,'Leo','Sandro','Smash in Su'),
 ('Doubles',383,'Leo','Ale','Aereo in Su'),
 ('Doubles',383,'Ale','Siwei','Speciale Standard'),
 ('Doubles',383,'Ale','Leo','Smash Finale');

insert into deaths values ('Doubles',383,'Leo','Mancato Recupero'),
 ('Doubles',383,'Siwei','Autodistruzione'),
 ('Doubles',383,'Siwei','Autodistruzione');


--Doubles-382
insert into kills values ('Doubles',382,'Sandro','Leo','Smash Laterale'),
 ('Doubles',382,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',382,'Siwei','Ale','Altro'),
 ('Doubles',382,'Leo','Sandro','Speciale in Su'),
 ('Doubles',382,'Siwei','Leo','Smash Finale'),
 ('Doubles',382,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',382,'Siwei','Ale','Smash Laterale'),
 ('Doubles',382,'Leo','Sandro','Smash Finale'),
 ('Doubles',382,'Siwei','Leo','Speciale in Su'),
 ('Doubles',382,'Ale','Siwei','Smash Finale'),
 ('Doubles',382,'Ale','Sandro','Smash in Su');


--Doubles-381
insert into kills values ('Doubles',381,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',381,'Siwei','Ale','Smash Laterale'),
 ('Doubles',381,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',381,'Leo','Siwei','Altro'),
 ('Doubles',381,'Siwei','Leo','Smash Laterale'),
 ('Doubles',381,'Siwei','Leo','Smash Laterale'),
 ('Doubles',381,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',381,'Siwei','Ale','Smash in Su'),
 ('Doubles',381,'Siwei','Leo','Smash Finale'),
 ('Doubles',381,'Ale','Siwei','Smash Laterale'),
 ('Doubles',381,'Sandro','Ale','Smash Finale');

insert into deaths values ('Doubles',381,'Siwei','Fuoco Amico'),
 ('Doubles',381,'Siwei','Mancato Recupero');


--Doubles-380
insert into kills values ('Doubles',380,'Ale','Leo','Speciale in Giù'),
 ('Doubles',380,'Leo','Ale','Altro'),
 ('Doubles',380,'Sandro','Siwei','In Corsa'),
 ('Doubles',380,'Ale','Sandro','Aereo Standard'),
 ('Doubles',380,'Ale','Leo','Altro'),
 ('Doubles',380,'Sandro','Siwei','Smash Finale'),
 ('Doubles',380,'Sandro','Siwei','Speciale in Su'),
 ('Doubles',380,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',380,'Leo','Ale','In Corsa'),
 ('Doubles',380,'Sandro','Ale','Speciale in Giù');

insert into deaths values ('Doubles',380,'Ale','Autodistruzione'),
 ('Doubles',380,'Leo','Mancato Recupero');


--Doubles-379
insert into kills values ('Doubles',379,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',379,'Sandro','Siwei','Smash in Su'),
 ('Doubles',379,'Leo','Ale','Smash Finale'),
 ('Doubles',379,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',379,'Leo','Sandro','Smash Laterale'),
 ('Doubles',379,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',379,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',379,'Ale','Siwei','Altro');

insert into deaths values ('Doubles',379,'Leo','Fuoco Amico'),
 ('Doubles',379,'Leo','Fuoco Amico'),
 ('Doubles',379,'Siwei','Mancato Recupero');


--Doubles-378
insert into kills values ('Doubles',378,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',378,'Sandro','Ale','Smash Finale'),
 ('Doubles',378,'Siwei','Leo','Smash Finale'),
 ('Doubles',378,'Ale','Sandro','Aereo Standard'),
 ('Doubles',378,'Leo','Sandro','Smash in Su'),
 ('Doubles',378,'Leo','Sandro','Aereo in Giù'),
 ('Doubles',378,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',378,'Siwei','Leo','Smash Finale'),
 ('Doubles',378,'Ale','Siwei','Smash Finale');


--Doubles-377
insert into kills values ('Doubles',377,'Leo','Siwei','Smash in Su'),
 ('Doubles',377,'Sandro','Ale','Altro'),
 ('Doubles',377,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',377,'Leo','Siwei','Altro'),
 ('Doubles',377,'Sandro','Ale','Altro'),
 ('Doubles',377,'Ale','Leo','Altro');

insert into deaths values ('Doubles',377,'Ale','Autodistruzione'),
 ('Doubles',377,'Sandro','Fuoco Amico'),
 ('Doubles',377,'Ale','Autodistruzione'),
 ('Doubles',377,'Leo','Autodistruzione'),
 ('Doubles',377,'Ale','Autodistruzione'),
 ('Doubles',377,'Siwei','Autodistruzione');


--Doubles-376
insert into kills values ('Doubles',376,'Ale','Sandro','Smash in Su'),
 ('Doubles',376,'Siwei','Leo','Smash Laterale'),
 ('Doubles',376,'Sandro','Ale','Smash Finale'),
 ('Doubles',376,'Leo','Siwei','Altro'),
 ('Doubles',376,'Leo','Siwei','Smash Laterale'),
 ('Doubles',376,'Leo','Sandro','Aereo in Giù'),
 ('Doubles',376,'Siwei','Ale','Smash in Su'),
 ('Doubles',376,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',376,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',376,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Doubles',376,'Siwei','Mancato Recupero'),
 ('Doubles',376,'Sandro','Fuoco Amico');


--Doubles-375
insert into kills values ('Doubles',375,'Ale','Siwei','Altro'),
 ('Doubles',375,'Ale','Leo','Speciale in Giù'),
 ('Doubles',375,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',375,'Sandro','Siwei','Smash Finale'),
 ('Doubles',375,'Siwei','Sandro','Smash in Su'),
 ('Doubles',375,'Ale','Leo','Speciale in Giù'),
 ('Doubles',375,'Ale','Leo','Speciale in Su'),
 ('Doubles',375,'Ale','Siwei','Speciale in Su');

insert into deaths values ('Doubles',375,'Ale','Fuoco Amico');


--Doubles-374
insert into kills values ('Doubles',374,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',374,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',374,'Leo','Siwei','Smash Laterale'),
 ('Doubles',374,'Siwei','Sandro','Altro'),
 ('Doubles',374,'Ale','Leo','Altro'),
 ('Doubles',374,'Leo','Siwei','Smash Finale'),
 ('Doubles',374,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',374,'Sandro','Ale','Altro'),
 ('Doubles',374,'Sandro','Ale','Altro');

insert into deaths values ('Doubles',374,'Ale','Fuoco Amico'),
 ('Doubles',374,'Sandro','Jungle Japes'),
 ('Doubles',374,'Leo','Jungle Japes'),
 ('Doubles',374,'Sandro','Fuoco Amico'),
 ('Doubles',374,'Ale','Jungle Japes'),
 ('Doubles',374,'Ale','Autodistruzione');


--Doubles-373
insert into kills values ('Doubles',373,'Ale','Sandro','Speciale Standard'),
 ('Doubles',373,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',373,'Siwei','Leo','Smash Finale'),
 ('Doubles',373,'Leo','Ale','Altro'),
 ('Doubles',373,'Leo','Siwei','Smash Finale'),
 ('Doubles',373,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',373,'Siwei','Sandro','Smash Finale'),
 ('Doubles',373,'Sandro','Siwei','Aereo Posteriore'),
 ('Doubles',373,'Sandro','Ale','Aereo Posteriore'),
 ('Doubles',373,'Ale','Sandro','Altro'),
 ('Doubles',373,'Ale','Leo','Aereo Posteriore');

insert into deaths values ('Doubles',373,'Ale','Princess Peach Castle'),
 ('Doubles',373,'Leo','Fuoco Amico'),
 ('Doubles',373,'Sandro','Princess Peach Castle');


--Doubles-372
insert into kills values ('Doubles',372,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',372,'Ale','Siwei','Aereo Standard'),
 ('Doubles',372,'Siwei','Leo','Smash Laterale'),
 ('Doubles',372,'Sandro','Ale','Smash Finale'),
 ('Doubles',372,'Leo','Siwei','Smash Finale'),
 ('Doubles',372,'Ale','Sandro','Aereo Standard'),
 ('Doubles',372,'Ale','Siwei','Altro'),
 ('Doubles',372,'Ale','Sandro','Smash in Su');

insert into deaths values ('Doubles',372,'Siwei','Autodistruzione');


--Doubles-371
insert into kills values ('Doubles',371,'Leo','Siwei','Smash in Su'),
 ('Doubles',371,'Sandro','Ale','Altro'),
 ('Doubles',371,'Siwei','Leo','Meteora'),
 ('Doubles',371,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',371,'Siwei','Sandro','Smash Finale'),
 ('Doubles',371,'Ale','Leo','Smash Finale'),
 ('Doubles',371,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',371,'Leo','Ale','Smash in Su'),
 ('Doubles',371,'Leo','Ale','Altro');

insert into deaths values ('Doubles',371,'Ale','Autodistruzione'),
 ('Doubles',371,'Siwei','Fuoco Amico'),
 ('Doubles',371,'Siwei','Fuoco Amico'),
 ('Doubles',371,'Ale','Autodistruzione');


--Doubles-370
insert into kills values ('Doubles',370,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',370,'Siwei','Ale','Smash Laterale'),
 ('Doubles',370,'Ale','Sandro','Smash in Su'),
 ('Doubles',370,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',370,'Sandro','Ale','Smash Finale'),
 ('Doubles',370,'Sandro','Leo','Smash Finale'),
 ('Doubles',370,'Ale','Sandro','Aereo Standard'),
 ('Doubles',370,'Sandro','Leo','Speciale in Su'),
 ('Doubles',370,'Sandro','Ale','Smash Finale');

insert into deaths values ('Doubles',370,'Siwei','Fuoco Amico');


--Doubles-369
insert into kills values ('Doubles',369,'Siwei','Sandro','Altro'),
 ('Doubles',369,'Sandro','Siwei','In Corsa'),
 ('Doubles',369,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',369,'Ale','Sandro','Smash Laterale'),
 ('Doubles',369,'Siwei','Sandro','Smash in Su'),
 ('Doubles',369,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',369,'Siwei','Leo','Smash Finale'),
 ('Doubles',369,'Leo','Ale','In Corsa'),
 ('Doubles',369,'Leo','Siwei','Smash Finale'),
 ('Doubles',369,'Ale','Leo','Speciale Standard');

insert into deaths values ('Doubles',369,'Sandro','Mancato Recupero');


--Doubles-368
insert into kills values ('Doubles',368,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',368,'Siwei','Sandro','Smash in Su'),
 ('Doubles',368,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',368,'Siwei','Ale','Smash Finale'),
 ('Doubles',368,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',368,'Siwei','Ale','Smash Laterale'),
 ('Doubles',368,'Leo','Sandro','In Corsa'),
 ('Doubles',368,'Sandro','Leo','In Corsa'),
 ('Doubles',368,'Siwei','Ale','Altro'),
 ('Doubles',368,'Sandro','Siwei','Speciale in Su'),
 ('Doubles',368,'Leo','Sandro','Speciale Standard');

insert into deaths values ('Doubles',368,'Leo','Fuoco Amico');


--Doubles-367
insert into kills values ('Doubles',367,'Siwei','Sandro','Peculiare'),
 ('Doubles',367,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',367,'Siwei','Ale','Smash in Su'),
 ('Doubles',367,'Sandro','Siwei','Smash Finale'),
 ('Doubles',367,'Siwei','Ale','Smash Laterale'),
 ('Doubles',367,'Leo','Sandro','Smash in Su'),
 ('Doubles',367,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',367,'Siwei','Ale','Smash Laterale'),
 ('Doubles',367,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',367,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',367,'Leo','Fuoco Amico'),
 ('Doubles',367,'Siwei','Fuoco Amico'),
 ('Doubles',367,'Leo','Fuoco Amico'),
 ('Doubles',367,'Sandro','Mancato Recupero');


--Doubles-366
insert into kills values ('Doubles',366,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',366,'Leo','Sandro','Smash in Su'),
 ('Doubles',366,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',366,'Sandro','Ale','Smash in Su'),
 ('Doubles',366,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',366,'Siwei','Leo','Smash Finale'),
 ('Doubles',366,'Sandro','Ale','Smash Finale'),
 ('Doubles',366,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',366,'Ale','Siwei','Speciale Standard'),
 ('Doubles',366,'Siwei','Leo','Speciale Standard'),
 ('Doubles',366,'Sandro','Ale','Smash Finale');


--Doubles-365
insert into kills values ('Doubles',365,'Leo','Ale','Smash in Su'),
 ('Doubles',365,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',365,'Ale','Sandro','Smash Laterale'),
 ('Doubles',365,'Ale','Leo','Aereo in Su'),
 ('Doubles',365,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',365,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',365,'Ale','Sandro','Smash in Su'),
 ('Doubles',365,'Sandro','Ale','Smash Finale'),
 ('Doubles',365,'Leo','Siwei','Smash in Su');


--Doubles-364
insert into kills values ('Doubles',364,'Siwei','Sandro','Altro'),
 ('Doubles',364,'Leo','Siwei','Smash Laterale'),
 ('Doubles',364,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',364,'Sandro','Siwei','Altro'),
 ('Doubles',364,'Ale','Leo','Altro'),
 ('Doubles',364,'Ale','Leo','Meteora'),
 ('Doubles',364,'Leo','Ale','Smash Laterale'),
 ('Doubles',364,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',364,'Sandro','Leo','Fuoco Amico');

insert into deaths values ('Doubles',364,'Sandro','Mancato Recupero'),
 ('Doubles',364,'Siwei','Mancato Recupero'),
 ('Doubles',364,'Leo','Autodistruzione'),
 ('Doubles',364,'Sandro','Fuoco Amico'),
 ('Doubles',364,'Leo','Fuoco Amico');


--Doubles-363
insert into kills values ('Doubles',363,'Sandro','Siwei','Altro'),
 ('Doubles',363,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',363,'Siwei','Sandro','Speciale Standard'),
 ('Doubles',363,'Sandro','Ale','Smash Laterale'),
 ('Doubles',363,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',363,'Siwei','Sandro','Altro'),
 ('Doubles',363,'Leo','Ale','Altro'),
 ('Doubles',363,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',363,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Doubles',363,'Siwei','Mancato Recupero'),
 ('Doubles',363,'Leo','Fuoco Amico'),
 ('Doubles',363,'Sandro','Autodistruzione'),
 ('Doubles',363,'Ale','Autodistruzione');


--Doubles-362
insert into kills values ('Doubles',362,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',362,'Leo','Siwei','Smash Laterale'),
 ('Doubles',362,'Leo','Ale','Speciale Standard'),
 ('Doubles',362,'Siwei','Leo','Altro'),
 ('Doubles',362,'Leo','Siwei','Altro'),
 ('Doubles',362,'Sandro','Siwei','Smash Finale'),
 ('Doubles',362,'Ale','Sandro','Smash in Giù'),
 ('Doubles',362,'Ale','Leo','Smash Finale'),
 ('Doubles',362,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',362,'Ale','Sandro','Speciale Laterale');

insert into deaths values ('Doubles',362,'Leo','Mancato Recupero'),
 ('Doubles',362,'Siwei','Autodistruzione'),
 ('Doubles',362,'Leo','Autodistruzione');


--Doubles-361
insert into kills values ('Doubles',361,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',361,'Leo','Siwei','Altro'),
 ('Doubles',361,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',361,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',361,'Leo','Siwei','Altro'),
 ('Doubles',361,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',361,'Siwei','Leo','Smash in Su'),
 ('Doubles',361,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',361,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',361,'Leo','Ale','Speciale Laterale'),
 ('Doubles',361,'Ale','Leo','Aereo Posteriore');

insert into deaths values ('Doubles',361,'Siwei','Autodistruzione'),
 ('Doubles',361,'Siwei','Autodistruzione');


--Doubles-360
insert into kills values ('Doubles',360,'Leo','Siwei','Aereo in Su'),
 ('Doubles',360,'Siwei','Leo','Smash Finale'),
 ('Doubles',360,'Siwei','Sandro','Smash Finale'),
 ('Doubles',360,'Sandro','Siwei','Speciale Standard'),
 ('Doubles',360,'Leo','Ale','Smash Finale'),
 ('Doubles',360,'Sandro','Ale','Smash Finale'),
 ('Doubles',360,'Siwei','Sandro','Smash Finale'),
 ('Doubles',360,'Siwei','Leo','Smash Finale'),
 ('Doubles',360,'Leo','Ale','Smash Finale'),
 ('Doubles',360,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',360,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',360,'Sandro','Fuoco Amico');


--Doubles-359
insert into kills values ('Doubles',359,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',359,'Siwei','Leo','Smash Laterale'),
 ('Doubles',359,'Siwei','Leo','Altro'),
 ('Doubles',359,'Siwei','Sandro','Altro'),
 ('Doubles',359,'Sandro','Ale','Smash in Giù'),
 ('Doubles',359,'Leo','Siwei','Altro'),
 ('Doubles',359,'Siwei','Sandro','Smash Finale'),
 ('Doubles',359,'Siwei','Leo','Smash Finale'),
 ('Doubles',359,'Siwei','Sandro','Speciale Standard');

insert into deaths values ('Doubles',359,'Leo','Mancato Recupero'),
 ('Doubles',359,'Siwei','Autodistruzione');


--Doubles-358
insert into kills values ('Doubles',358,'Siwei','Sandro','Altro'),
 ('Doubles',358,'Leo','Siwei','Smash Laterale'),
 ('Doubles',358,'Siwei','Leo','Altro'),
 ('Doubles',358,'Sandro','Ale','Altro'),
 ('Doubles',358,'Leo','Siwei','Smash Finale'),
 ('Doubles',358,'Ale','Leo','Smash Finale'),
 ('Doubles',358,'Siwei','Sandro','Smash Finale'),
 ('Doubles',358,'Sandro','Ale','Smash in Giù'),
 ('Doubles',358,'Sandro','Siwei','Smash in Su'),
 ('Doubles',358,'Ale','Leo','Smash Finale'),
 ('Doubles',358,'Sandro','Ale','Aereo Frontale');

insert into deaths values ('Doubles',358,'Sandro','Autodistruzione'),
 ('Doubles',358,'Leo','Autodistruzione'),
 ('Doubles',358,'Ale','Autodistruzione');


--Doubles-357
insert into kills values ('Doubles',357,'Siwei','Ale','Smash Laterale'),
 ('Doubles',357,'Leo','Sandro','Smash Laterale'),
 ('Doubles',357,'Ale','Siwei','Smash Finale'),
 ('Doubles',357,'Sandro','Leo','Smash Finale'),
 ('Doubles',357,'Siwei','Ale','Smash Finale'),
 ('Doubles',357,'Leo','Siwei','Speciale Standard'),
 ('Doubles',357,'Ale','Siwei','Smash Finale'),
 ('Doubles',357,'Leo','Ale','Fuoco Amico'),
 ('Doubles',357,'Leo','Sandro','Smash Laterale'),
 ('Doubles',357,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',357,'Ale','Fuoco Amico'),
 ('Doubles',357,'Sandro','Autodistruzione');


--Doubles-356
insert into kills values ('Doubles',356,'Siwei','Leo','Smash Laterale'),
 ('Doubles',356,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',356,'Leo','Ale','Fuoco Amico'),
 ('Doubles',356,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',356,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',356,'Sandro','Leo','Smash Finale'),
 ('Doubles',356,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',356,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',356,'Sandro','Ale','Smash Laterale'),
 ('Doubles',356,'Sandro','Leo','Speciale in Giù'),
 ('Doubles',356,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',356,'Siwei','Fuoco Amico'),
 ('Doubles',356,'Ale','Fuoco Amico');


--Doubles-355
insert into kills values ('Doubles',355,'Leo','Ale','Smash in Su'),
 ('Doubles',355,'Sandro','Siwei','Smash in Su'),
 ('Doubles',355,'Siwei','Sandro','Speciale in Giù'),
 ('Doubles',355,'Ale','Leo','Aereo Standard'),
 ('Doubles',355,'Sandro','Ale','Smash Laterale'),
 ('Doubles',355,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',355,'Leo','Siwei','Aereo in Giù'),
 ('Doubles',355,'Siwei','Sandro','Smash Finale'),
 ('Doubles',355,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',355,'Siwei','Leo','Speciale Standard'),
 ('Doubles',355,'Siwei','Ale','Fuoco Amico');

insert into deaths values ('Doubles',355,'Ale','Fuoco Amico');


--Doubles-354
insert into kills values ('Doubles',354,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',354,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',354,'Sandro','Ale','Smash Laterale'),
 ('Doubles',354,'Ale','Leo','Fuoco Amico'),
 ('Doubles',354,'Ale','Siwei','Altro'),
 ('Doubles',354,'Siwei','Ale','Smash Finale'),
 ('Doubles',354,'Siwei','Leo','Smash Finale'),
 ('Doubles',354,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',354,'Ale','Sandro','Speciale Laterale'),
 ('Doubles',354,'Sandro','Leo','Smash Finale'),
 ('Doubles',354,'Ale','Sandro','Aereo Posteriore');

insert into deaths values ('Doubles',354,'Sandro','Fuoco Amico'),
 ('Doubles',354,'Leo','Fuoco Amico'),
 ('Doubles',354,'Siwei','Pac-Land');


--Doubles-353
insert into kills values ('Doubles',353,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',353,'Leo','Siwei','Smash Laterale'),
 ('Doubles',353,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',353,'Sandro','Ale','Smash Finale'),
 ('Doubles',353,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',353,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',353,'Leo','Sandro','Smash Finale'),
 ('Doubles',353,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',353,'Siwei','Fuoco Amico');


--Doubles-352
insert into kills values ('Doubles',352,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',352,'Siwei','Leo','In Corsa'),
 ('Doubles',352,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',352,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',352,'Sandro','Ale','Smash Finale'),
 ('Doubles',352,'Ale','Leo','Fuoco Amico'),
 ('Doubles',352,'Siwei','Leo','Altro'),
 ('Doubles',352,'Siwei','Ale','Smash in Su'),
 ('Doubles',352,'Ale','Siwei','Aereo Standard'),
 ('Doubles',352,'Ale','Siwei','Altro'),
 ('Doubles',352,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',352,'Sandro','Fuoco Amico'),
 ('Doubles',352,'Sandro','Fuoco Amico'),
 ('Doubles',352,'Leo','Fuoco Amico'),
 ('Doubles',352,'Leo','Skyloft'),
 ('Doubles',352,'Siwei','Autodistruzione');


--Doubles-351
insert into kills values ('Doubles',351,'Ale','Leo','Smash Laterale'),
 ('Doubles',351,'Ale','Siwei','Smash in Su'),
 ('Doubles',351,'Siwei','Ale','Smash Finale'),
 ('Doubles',351,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',351,'Sandro','Siwei','Smash Finale'),
 ('Doubles',351,'Ale','Leo','Altro'),
 ('Doubles',351,'Leo','Sandro','Smash Laterale'),
 ('Doubles',351,'Ale','Siwei','Altro'),
 ('Doubles',351,'Leo','Ale','Smash Laterale'),
 ('Doubles',351,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',351,'Leo','Mancato Recupero'),
 ('Doubles',351,'Siwei','Autodistruzione');


--Doubles-350
insert into kills values ('Doubles',350,'Leo','Siwei','Altro'),
 ('Doubles',350,'Siwei','Leo','Smash Laterale'),
 ('Doubles',350,'Siwei','Ale','Smash Finale'),
 ('Doubles',350,'Leo','Siwei','Smash Finale'),
 ('Doubles',350,'Ale','Leo','Fuoco Amico'),
 ('Doubles',350,'Ale','Sandro','Smash Finale'),
 ('Doubles',350,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',350,'Siwei','Ale','Altro'),
 ('Doubles',350,'Siwei','Ale','Smash in Su'),
 ('Doubles',350,'Siwei','Leo','In Corsa');

insert into deaths values ('Doubles',350,'Siwei','Mancato Recupero'),
 ('Doubles',350,'Leo','Fuoco Amico'),
 ('Doubles',350,'Ale','Autodistruzione');


--Doubles-349
insert into kills values ('Doubles',349,'Sandro','Siwei','Altro'),
 ('Doubles',349,'Siwei','Ale','Smash Laterale'),
 ('Doubles',349,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',349,'Ale','Siwei','Meteora'),
 ('Doubles',349,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',349,'Sandro','Siwei','Altro'),
 ('Doubles',349,'Ale','Leo','Meteora'),
 ('Doubles',349,'Leo','Ale','Smash Finale'),
 ('Doubles',349,'Ale','Leo','Smash in Giù');

insert into deaths values ('Doubles',349,'Siwei','Autodistruzione'),
 ('Doubles',349,'Leo','Fuoco Amico'),
 ('Doubles',349,'Siwei','Mancato Recupero');


--Doubles-348
insert into kills values ('Doubles',348,'Sandro','Ale','Smash Laterale'),
 ('Doubles',348,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',348,'Siwei','Leo','Smash Laterale'),
 ('Doubles',348,'Ale','Sandro','Smash Finale'),
 ('Doubles',348,'Sandro','Ale','Aereo Posteriore'),
 ('Doubles',348,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',348,'Leo','Siwei','Smash Finale'),
 ('Doubles',348,'Sandro','Ale','Smash in Su'),
 ('Doubles',348,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',348,'Sandro','Fuoco Amico');


--Doubles-347
insert into kills values ('Doubles',347,'Siwei','Leo','Altro'),
 ('Doubles',347,'Siwei','Ale','Smash Laterale'),
 ('Doubles',347,'Ale','Siwei','Altro'),
 ('Doubles',347,'Leo','Sandro','Smash Finale'),
 ('Doubles',347,'Leo','Siwei','Altro'),
 ('Doubles',347,'Sandro','Ale','Aereo Frontale'),
 ('Doubles',347,'Leo','Sandro','Smash in Su'),
 ('Doubles',347,'Sandro','Leo','Smash in Su'),
 ('Doubles',347,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',347,'Leo','Sandro','Smash Finale');

insert into deaths values ('Doubles',347,'Leo','Mancato Recupero'),
 ('Doubles',347,'Siwei','Autodistruzione'),
 ('Doubles',347,'Siwei','Autodistruzione'),
 ('Doubles',347,'Siwei','Autodistruzione');


--Doubles-346
insert into kills values ('Doubles',346,'Sandro','Siwei','Aereo Posteriore'),
 ('Doubles',346,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',346,'Sandro','Ale','Smash Finale'),
 ('Doubles',346,'Siwei','Leo','Smash Finale'),
 ('Doubles',346,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',346,'Sandro','Ale','Smash Finale'),
 ('Doubles',346,'Ale','Sandro','Smash in Su'),
 ('Doubles',346,'Ale','Sandro','Smash Finale'),
 ('Doubles',346,'Leo','Siwei','Altro'),
 ('Doubles',346,'Ale','Leo','In Corsa'),
 ('Doubles',346,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',346,'Siwei','Mushroom Kingdom');


--Doubles-345
insert into kills values ('Doubles',345,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',345,'Ale','Siwei','Smash in Su'),
 ('Doubles',345,'Sandro','Ale','Altro'),
 ('Doubles',345,'Sandro','Leo','Aereo in Su'),
 ('Doubles',345,'Ale','Sandro','Smash Finale'),
 ('Doubles',345,'Siwei','Ale','Smash in Su'),
 ('Doubles',345,'Sandro','Leo','Speciale in Giù'),
 ('Doubles',345,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',345,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',345,'Siwei','Ale','Smash Finale'),
 ('Doubles',345,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',345,'Ale','Mancato Recupero'),
 ('Doubles',345,'Siwei','Fuoco Amico');


--Doubles-344
insert into kills values ('Doubles',344,'Sandro','Ale','Smash in Su'),
 ('Doubles',344,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',344,'Siwei','Leo','Speciale in Giù'),
 ('Doubles',344,'Siwei','Sandro','Smash Finale'),
 ('Doubles',344,'Sandro','Siwei','Aereo Frontale'),
 ('Doubles',344,'Sandro','Ale','Smash Finale'),
 ('Doubles',344,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',344,'Ale','Sandro','Smash Finale'),
 ('Doubles',344,'Leo','Siwei','In Corsa'),
 ('Doubles',344,'Leo','Siwei','Smash Finale'),
 ('Doubles',344,'Leo','Ale','Altro');

insert into deaths values ('Doubles',344,'Leo','Fuoco Amico'),
 ('Doubles',344,'Ale','Mancato Recupero');


--Doubles-343
insert into kills values ('Doubles',343,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',343,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',343,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',343,'Leo','Ale','Smash Finale'),
 ('Doubles',343,'Ale','Leo','Smash Finale'),
 ('Doubles',343,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',343,'Ale','Sandro','Smash in Su'),
 ('Doubles',343,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',343,'Siwei','Leo','Speciale Laterale');


--Doubles-342
insert into kills values ('Doubles',342,'Siwei','Ale','Speciale in Giù'),
 ('Doubles',342,'Sandro','Leo','Altro'),
 ('Doubles',342,'Leo','Sandro','Smash Laterale'),
 ('Doubles',342,'Ale','Siwei','Smash Laterale'),
 ('Doubles',342,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',342,'Siwei','Ale','In Corsa'),
 ('Doubles',342,'Leo','Sandro','Smash Laterale'),
 ('Doubles',342,'Sandro','Leo','Peculiare'),
 ('Doubles',342,'Ale','Siwei','Smash in Su'),
 ('Doubles',342,'Ale','Sandro','Speciale Standard'),
 ('Doubles',342,'Siwei','Ale','Smash Finale');


--Doubles-341
insert into kills values ('Doubles',341,'Ale','Leo','Speciale Laterale'),
 ('Doubles',341,'Ale','Sandro','Speciale Laterale'),
 ('Doubles',341,'Leo','Ale','Altro'),
 ('Doubles',341,'Siwei','Sandro','Smash Finale'),
 ('Doubles',341,'Sandro','Siwei','Smash Finale'),
 ('Doubles',341,'Siwei','Leo','Speciale in Su'),
 ('Doubles',341,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',341,'Leo','Ale','Smash in Su'),
 ('Doubles',341,'Siwei','Leo','Smash Laterale');

insert into deaths values ('Doubles',341,'Ale','Living Room');


--Doubles-340
insert into kills values ('Doubles',340,'Leo','Sandro','Smash Laterale'),
 ('Doubles',340,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',340,'Leo','Ale','Altro'),
 ('Doubles',340,'Ale','Leo','Speciale in Giù'),
 ('Doubles',340,'Sandro','Siwei','Speciale in Giù'),
 ('Doubles',340,'Leo','Sandro','Smash Finale'),
 ('Doubles',340,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',340,'Siwei','Sandro','Smash Finale'),
 ('Doubles',340,'Sandro','Siwei','Smash in Su'),
 ('Doubles',340,'Leo','Sandro','Smash Finale'),
 ('Doubles',340,'Ale','Leo','Speciale in Giù');

insert into deaths values ('Doubles',340,'Siwei','Fuoco Amico'),
 ('Doubles',340,'Ale','Mancato Recupero'),
 ('Doubles',340,'Leo','Fuoco Amico');


--Doubles-339
insert into kills values ('Doubles',339,'Leo','Siwei','Smash Laterale'),
 ('Doubles',339,'Ale','Siwei','Altro'),
 ('Doubles',339,'Siwei','Ale','Altro'),
 ('Doubles',339,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',339,'Ale','Sandro','Smash Finale'),
 ('Doubles',339,'Siwei','Ale','In Corsa'),
 ('Doubles',339,'Siwei','Leo','Smash Finale'),
 ('Doubles',339,'Ale','Siwei','Smash Laterale'),
 ('Doubles',339,'Ale','Sandro','Speciale Laterale'),
 ('Doubles',339,'Ale','Siwei','Altro');

insert into deaths values ('Doubles',339,'Siwei','Autodistruzione'),
 ('Doubles',339,'Siwei','Autodistruzione');


--Doubles-338
insert into kills values ('Doubles',338,'Siwei','Sandro','Aereo in Su'),
 ('Doubles',338,'Leo','Siwei','Altro'),
 ('Doubles',338,'Siwei','Leo','Smash Finale'),
 ('Doubles',338,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',338,'Ale','Leo','Speciale in Giù'),
 ('Doubles',338,'Siwei','Sandro','Altro'),
 ('Doubles',338,'Sandro','Siwei','Smash in Su'),
 ('Doubles',338,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',338,'Siwei','Leo','Smash Finale'),
 ('Doubles',338,'Ale','Sandro','Altro');

insert into deaths values ('Doubles',338,'Siwei','Mute City SNES'),
 ('Doubles',338,'Ale','Fuoco Amico'),
 ('Doubles',338,'Sandro','Mute City SNES'),
 ('Doubles',338,'Ale','Fuoco Amico'),
 ('Doubles',338,'Sandro','Mute City SNES');


--Doubles-337
insert into kills values ('Doubles',337,'Sandro','Leo','Smash Laterale'),
 ('Doubles',337,'Sandro','Siwei','Altro'),
 ('Doubles',337,'Leo','Sandro','Smash Laterale'),
 ('Doubles',337,'Ale','Leo','Speciale in Giù'),
 ('Doubles',337,'Siwei','Ale','Smash Finale'),
 ('Doubles',337,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',337,'Sandro','Leo','Smash Finale'),
 ('Doubles',337,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',337,'Sandro','Siwei','Aereo Frontale');

insert into deaths values ('Doubles',337,'Siwei','Mancato Recupero'),
 ('Doubles',337,'Siwei','Fuoco Amico'),
 ('Doubles',337,'Ale','Fuoco Amico');


--Doubles-336
insert into kills values ('Doubles',336,'Ale','Leo','Peculiare'),
 ('Doubles',336,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',336,'Ale','Sandro','Smash in Su'),
 ('Doubles',336,'Sandro','Ale','Smash Finale'),
 ('Doubles',336,'Leo','Siwei','Smash Finale'),
 ('Doubles',336,'Siwei','Leo','Smash Laterale'),
 ('Doubles',336,'Leo','Siwei','Smash Laterale'),
 ('Doubles',336,'Ale','Sandro','Altro'),
 ('Doubles',336,'Sandro','Siwei','Altro'),
 ('Doubles',336,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Doubles',336,'Sandro','Mancato Recupero'),
 ('Doubles',336,'Siwei','Paper Mario');


--Doubles-335
insert into kills values ('Doubles',335,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',335,'Sandro','Ale','Smash Finale'),
 ('Doubles',335,'Ale','Sandro','Speciale in Su'),
 ('Doubles',335,'Ale','Siwei','Smash Finale'),
 ('Doubles',335,'Sandro','Leo','Smash Finale'),
 ('Doubles',335,'Ale','Siwei','Smash in Su'),
 ('Doubles',335,'Ale','Sandro','Smash Laterale'),
 ('Doubles',335,'Sandro','Ale','Smash in Su'),
 ('Doubles',335,'Sandro','Leo','Smash Finale'),
 ('Doubles',335,'Ale','Siwei','Smash Laterale'),
 ('Doubles',335,'Sandro','Ale','Aereo Posteriore');


--Doubles-334
insert into kills values ('Doubles',334,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',334,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',334,'Ale','Siwei','Speciale Laterale'),
 ('Doubles',334,'Siwei','Sandro','Smash Finale'),
 ('Doubles',334,'Leo','Ale','Altro'),
 ('Doubles',334,'Leo','Sandro','Peculiare'),
 ('Doubles',334,'Ale','Siwei','Altro'),
 ('Doubles',334,'Leo','Ale','Smash Laterale'),
 ('Doubles',334,'Ale','Siwei','Speciale Laterale'),
 ('Doubles',334,'Ale','Leo','Speciale Laterale'),
 ('Doubles',334,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',334,'Siwei','Bridge of Eldin');


--Single-868
insert into kills values ('Single',868,'Leo','Sandro','Smash in Su'),
 ('Single',868,'Ale','Siwei','Smash Laterale'),
 ('Single',868,'Sandro','Leo','Smash Finale'),
 ('Single',868,'Ale','Sandro','Aereo Posteriore'),
 ('Single',868,'Ale','Siwei','Aereo Posteriore'),
 ('Single',868,'Siwei','Ale','Aereo Frontale'),
 ('Single',868,'Sandro','Leo','In Corsa'),
 ('Single',868,'Siwei','Leo','Smash Laterale'),
 ('Single',868,'Sandro','Siwei','Speciale in Giù'),
 ('Single',868,'Ale','Sandro','Aereo Posteriore');


--Single-867
insert into kills values ('Single',867,'Siwei','Sandro','Speciale in Giù'),
 ('Single',867,'Sandro','Siwei','In Corsa'),
 ('Single',867,'Siwei','Leo','Smash Finale'),
 ('Single',867,'Siwei','Sandro','Peculiare'),
 ('Single',867,'Ale','Siwei','Smash Finale'),
 ('Single',867,'Sandro','Ale','Peculiare'),
 ('Single',867,'Siwei','Leo','In Corsa'),
 ('Single',867,'Leo','Sandro','Smash in Su'),
 ('Single',867,'Leo','Siwei','Speciale Standard'),
 ('Single',867,'Ale','Leo','Smash Laterale');


--Single-866
insert into kills values ('Single',866,'Sandro','Siwei','Speciale in Giù'),
 ('Single',866,'Leo','Sandro','Speciale Laterale'),
 ('Single',866,'Sandro','Ale','Speciale in Giù'),
 ('Single',866,'Ale','Siwei','Smash Laterale'),
 ('Single',866,'Sandro','Leo','Speciale Laterale'),
 ('Single',866,'Sandro','Ale','Smash Finale'),
 ('Single',866,'Leo','Siwei','Speciale Laterale'),
 ('Single',866,'Leo','Sandro','Smash Finale'),
 ('Single',866,'Sandro','Ale','Speciale in Giù'),
 ('Single',866,'Sandro','Leo','Speciale in Giù'),
 ('Single',866,'Sandro','Leo','Smash Laterale');


--Single-865
insert into kills values ('Single',865,'Siwei','Ale','Speciale in Su'),
 ('Single',865,'Ale','Siwei','Speciale Standard'),
 ('Single',865,'Siwei','Ale','Speciale in Su'),
 ('Single',865,'Siwei','Leo','Smash Finale'),
 ('Single',865,'Siwei','Sandro','Smash Finale'),
 ('Single',865,'Leo','Sandro','Aereo Frontale'),
 ('Single',865,'Sandro','Siwei','Smash Laterale'),
 ('Single',865,'Leo','Ale','Smash in Su'),
 ('Single',865,'Siwei','Sandro','Smash Laterale'),
 ('Single',865,'Siwei','Leo','Peculiare'),
 ('Single',865,'Leo','Siwei','Smash Finale');


--Single-864
insert into kills values ('Single',864,'Ale','Siwei','Altro'),
 ('Single',864,'Leo','Siwei','Speciale Laterale'),
 ('Single',864,'Leo','Sandro','Speciale Laterale'),
 ('Single',864,'Siwei','Leo','Smash Finale'),
 ('Single',864,'Leo','Ale','Smash Finale'),
 ('Single',864,'Siwei','Leo','Altro'),
 ('Single',864,'Siwei','Ale','Altro'),
 ('Single',864,'Leo','Sandro','Speciale Laterale'),
 ('Single',864,'Sandro','Siwei','Aereo Frontale'),
 ('Single',864,'Sandro','Leo','Aereo Frontale'),
 ('Single',864,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',864,'Siwei','Mancato Recupero'),
 ('Single',864,'Ale','Autodistruzione');


--Single-863
insert into kills values ('Single',863,'Siwei','Ale','Altro'),
 ('Single',863,'Sandro','Siwei','Speciale Laterale'),
 ('Single',863,'Siwei','Sandro','Altro'),
 ('Single',863,'Ale','Leo','Altro'),
 ('Single',863,'Leo','Siwei','Speciale Standard'),
 ('Single',863,'Leo','Sandro','Speciale Standard'),
 ('Single',863,'Leo','Ale','Smash Finale'),
 ('Single',863,'Siwei','Leo','Smash Laterale'),
 ('Single',863,'Ale','Siwei','Smash in Su'),
 ('Single',863,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',863,'Sandro','Autodistruzione'),
 ('Single',863,'Ale','Mancato Recupero'),
 ('Single',863,'Leo','Mario Circuit');


--Single-862
insert into kills values ('Single',862,'Leo','Sandro','Smash Laterale'),
 ('Single',862,'Ale','Siwei','Aereo Posteriore'),
 ('Single',862,'Sandro','Siwei','Speciale Standard'),
 ('Single',862,'Ale','Sandro','Altro'),
 ('Single',862,'Leo','Ale','Smash Finale'),
 ('Single',862,'Ale','Siwei','Aereo Posteriore'),
 ('Single',862,'Ale','Leo','Speciale Laterale'),
 ('Single',862,'Leo','Sandro','Smash in Su'),
 ('Single',862,'Ale','Leo','Smash Finale'),
 ('Single',862,'Leo','Ale','Speciale Laterale'),
 ('Single',862,'Ale','Leo','Altro');

insert into deaths values ('Single',862,'Sandro','Autodistruzione'),
 ('Single',862,'Leo','Autodistruzione');


--Single-861
insert into kills values ('Single',861,'Sandro','Siwei','In Corsa'),
 ('Single',861,'Ale','Sandro','Meteora'),
 ('Single',861,'Leo','Ale','Altro'),
 ('Single',861,'Siwei','Leo','Smash Finale'),
 ('Single',861,'Sandro','Siwei','Smash Finale'),
 ('Single',861,'Siwei','Sandro','Smash Laterale'),
 ('Single',861,'Ale','Leo','Altro'),
 ('Single',861,'Sandro','Ale','Speciale in Giù'),
 ('Single',861,'Sandro','Siwei','In Corsa'),
 ('Single',861,'Sandro','Leo','Smash Finale'),
 ('Single',861,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',861,'Ale','Autodistruzione'),
 ('Single',861,'Leo','Autodistruzione');


--Single-860
insert into kills values ('Single',860,'Ale','Siwei','Smash Laterale'),
 ('Single',860,'Ale','Leo','Altro'),
 ('Single',860,'Siwei','Sandro','Smash Laterale'),
 ('Single',860,'Sandro','Siwei','Smash Finale'),
 ('Single',860,'Siwei','Sandro','Altro'),
 ('Single',860,'Sandro','Ale','Speciale in Giù'),
 ('Single',860,'Siwei','Ale','Altro'),
 ('Single',860,'Siwei','Leo','Smash Finale'),
 ('Single',860,'Ale','Sandro','Altro'),
 ('Single',860,'Ale','Siwei','Aereo Posteriore'),
 ('Single',860,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',860,'Leo','Autodistruzione'),
 ('Single',860,'Sandro','Autodistruzione'),
 ('Single',860,'Ale','Mancato Recupero'),
 ('Single',860,'Sandro','Autodistruzione');


--Single-859
insert into kills values ('Single',859,'Sandro','Leo','In Corsa'),
 ('Single',859,'Ale','Siwei','Smash Laterale'),
 ('Single',859,'Siwei','Sandro','Aereo Frontale'),
 ('Single',859,'Leo','Siwei','Smash in Su'),
 ('Single',859,'Siwei','Sandro','Smash Finale'),
 ('Single',859,'Siwei','Ale','Smash Finale'),
 ('Single',859,'Sandro','Leo','Smash Finale'),
 ('Single',859,'Sandro','Siwei','Smash Finale'),
 ('Single',859,'Ale','Sandro','Aereo Posteriore'),
 ('Single',859,'Leo','Ale','Smash Laterale'),
 ('Single',859,'Ale','Leo','Aereo Posteriore');


--Single-858
insert into kills values ('Single',858,'Siwei','Sandro','Altro'),
 ('Single',858,'Siwei','Ale','Altro'),
 ('Single',858,'Siwei','Leo','Altro'),
 ('Single',858,'Siwei','Leo','Smash Finale'),
 ('Single',858,'Siwei','Sandro','Smash Laterale'),
 ('Single',858,'Leo','Siwei','Smash Laterale'),
 ('Single',858,'Siwei','Leo','Smash Laterale'),
 ('Single',858,'Ale','Siwei','Aereo in Su'),
 ('Single',858,'Siwei','Ale','Speciale Laterale'),
 ('Single',858,'Siwei','Sandro','Smash in Su'),
 ('Single',858,'Siwei','Ale','Smash Finale');


--Single-857
insert into kills values ('Single',857,'Ale','Sandro','Aereo Standard'),
 ('Single',857,'Ale','Sandro','Altro'),
 ('Single',857,'Sandro','Siwei','Smash Finale'),
 ('Single',857,'Siwei','Ale','Smash Finale'),
 ('Single',857,'Sandro','Leo','Speciale in Giù'),
 ('Single',857,'Leo','Sandro','Smash Laterale'),
 ('Single',857,'Leo','Siwei','Smash in Su'),
 ('Single',857,'Ale','Leo','Speciale in Giù'),
 ('Single',857,'Siwei','Ale','Altro'),
 ('Single',857,'Leo','Siwei','Aereo in Giù'),
 ('Single',857,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',857,'Sandro','Mancato Recupero'),
 ('Single',857,'Ale','Autodistruzione');


--Single-856
insert into kills values ('Single',856,'Siwei','Leo','Smash Laterale'),
 ('Single',856,'Siwei','Sandro','Altro'),
 ('Single',856,'Sandro','Siwei','Speciale in Giù'),
 ('Single',856,'Leo','Ale','Smash Laterale'),
 ('Single',856,'Sandro','Siwei','In Corsa'),
 ('Single',856,'Siwei','Leo','Peculiare'),
 ('Single',856,'Sandro','Ale','Altro'),
 ('Single',856,'Siwei','Sandro','Smash Finale'),
 ('Single',856,'Leo','Ale','Smash in Su'),
 ('Single',856,'Leo','Siwei','In Corsa');

insert into deaths values ('Single',856,'Sandro','Autodistruzione'),
 ('Single',856,'Sandro','Autodistruzione'),
 ('Single',856,'Ale','Autodistruzione');


--Single-855
insert into kills values ('Single',855,'Siwei','Sandro','Speciale Standard'),
 ('Single',855,'Sandro','Siwei','Smash Laterale'),
 ('Single',855,'Sandro','Leo','Smash Finale'),
 ('Single',855,'Siwei','Ale','Smash Laterale'),
 ('Single',855,'Ale','Siwei','Altro'),
 ('Single',855,'Sandro','Leo','Speciale in Giù'),
 ('Single',855,'Siwei','Sandro','Speciale in Su'),
 ('Single',855,'Siwei','Ale','Speciale Laterale'),
 ('Single',855,'Sandro','Siwei','Speciale in Giù'),
 ('Single',855,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',855,'Siwei','Mancato Recupero'),
 ('Single',855,'Sandro','Autodistruzione');


--Single-854
insert into kills values ('Single',854,'Sandro','Siwei','In Corsa'),
 ('Single',854,'Ale','Sandro','Altro'),
 ('Single',854,'Sandro','Ale','Speciale in Giù'),
 ('Single',854,'Ale','Leo','Smash in Giù'),
 ('Single',854,'Leo','Siwei','Speciale in Su'),
 ('Single',854,'Siwei','Sandro','Altro'),
 ('Single',854,'Ale','Leo','Smash Finale'),
 ('Single',854,'Ale','Siwei','Smash Finale'),
 ('Single',854,'Sandro','Ale','Speciale Standard'),
 ('Single',854,'Sandro','Leo','Smash Finale'),
 ('Single',854,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',854,'Sandro','Autodistruzione'),
 ('Single',854,'Sandro','Autodistruzione');


--Single-853
insert into kills values ('Single',853,'Siwei','Sandro','Altro'),
 ('Single',853,'Ale','Leo','Aereo Frontale'),
 ('Single',853,'Sandro','Siwei','Speciale in Giù'),
 ('Single',853,'Ale','Sandro','Grab'),
 ('Single',853,'Siwei','Ale','Smash Finale'),
 ('Single',853,'Sandro','Leo','Smash Finale'),
 ('Single',853,'Sandro','Siwei','Smash Laterale'),
 ('Single',853,'Leo','Sandro','Altro'),
 ('Single',853,'Ale','Siwei','Smash Finale'),
 ('Single',853,'Leo','Ale','Speciale Standard'),
 ('Single',853,'Ale','Leo','Altro');

insert into deaths values ('Single',853,'Sandro','Mancato Recupero'),
 ('Single',853,'Sandro','Autodistruzione'),
 ('Single',853,'Leo','Mancato Recupero');


--Single-852
insert into kills values ('Single',852,'Sandro','Leo','Speciale in Giù'),
 ('Single',852,'Ale','Sandro','Altro'),
 ('Single',852,'Leo','Siwei','Altro'),
 ('Single',852,'Siwei','Ale','Speciale Laterale'),
 ('Single',852,'Sandro','Siwei','Altro'),
 ('Single',852,'Ale','Siwei','Aereo Posteriore'),
 ('Single',852,'Ale','Sandro','Smash Finale'),
 ('Single',852,'Leo','Ale','Altro'),
 ('Single',852,'Sandro','Leo','Smash in Su'),
 ('Single',852,'Leo','Ale','Smash Finale'),
 ('Single',852,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',852,'Sandro','Autodistruzione'),
 ('Single',852,'Siwei','Midgar'),
 ('Single',852,'Ale','Midgar');


--Single-851
insert into kills values ('Single',851,'Sandro','Siwei','Aereo Frontale'),
 ('Single',851,'Siwei','Sandro','Altro'),
 ('Single',851,'Sandro','Leo','Peculiare'),
 ('Single',851,'Siwei','Sandro','Speciale Laterale'),
 ('Single',851,'Sandro','Siwei','Speciale in Giù'),
 ('Single',851,'Leo','Siwei','Smash Finale'),
 ('Single',851,'Sandro','Ale','Smash Laterale'),
 ('Single',851,'Sandro','Leo','Aereo Frontale'),
 ('Single',851,'Ale','Sandro','Smash Finale'),
 ('Single',851,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',851,'Sandro','Distant Planet');


--Single-850
insert into kills values ('Single',850,'Leo','Siwei','Altro'),
 ('Single',850,'Ale','Siwei','Altro'),
 ('Single',850,'Ale','Sandro','Aereo in Su'),
 ('Single',850,'Siwei','Leo','Speciale Standard'),
 ('Single',850,'Sandro','Ale','Speciale in Giù'),
 ('Single',850,'Ale','Sandro','Speciale Standard'),
 ('Single',850,'Leo','Siwei','Smash Finale'),
 ('Single',850,'Ale','Sandro','Smash Finale'),
 ('Single',850,'Ale','Leo','Smash in Su'),
 ('Single',850,'Leo','Ale','Altro'),
 ('Single',850,'Ale','Leo','Smash in Su');

insert into deaths values ('Single',850,'Siwei','Mancato Recupero'),
 ('Single',850,'Siwei','Mancato Recupero');


--Single-849
insert into kills values ('Single',849,'Sandro','Leo','Aereo in Su'),
 ('Single',849,'Sandro','Siwei','Speciale in Giù'),
 ('Single',849,'Sandro','Ale','Speciale in Giù'),
 ('Single',849,'Ale','Sandro','Smash in Su'),
 ('Single',849,'Siwei','Sandro','Smash Finale'),
 ('Single',849,'Leo','Sandro','Altro'),
 ('Single',849,'Siwei','Ale','Speciale Laterale'),
 ('Single',849,'Ale','Leo','Aereo Posteriore'),
 ('Single',849,'Leo','Siwei','Smash Finale'),
 ('Single',849,'Ale','Leo','Smash in Su');

insert into deaths values ('Single',849,'Siwei','Big Blue'),
 ('Single',849,'Sandro','Autodistruzione');


--Single-848
insert into kills values ('Single',848,'Leo','Ale','Smash Laterale'),
 ('Single',848,'Leo','Sandro','Smash Laterale'),
 ('Single',848,'Leo','Siwei','Smash Laterale'),
 ('Single',848,'Ale','Leo','Speciale in Su'),
 ('Single',848,'Sandro','Siwei','Smash Laterale'),
 ('Single',848,'Leo','Sandro','In Corsa'),
 ('Single',848,'Leo','Sandro','Smash Finale'),
 ('Single',848,'Ale','Leo','Speciale in Su'),
 ('Single',848,'Siwei','Ale','Smash Finale'),
 ('Single',848,'Ale','Siwei','Speciale in Su'),
 ('Single',848,'Leo','Ale','Smash Laterale');


--Single-847
insert into kills values ('Single',847,'Ale','Sandro','Speciale in Giù'),
 ('Single',847,'Sandro','Ale','Smash Finale'),
 ('Single',847,'Sandro','Siwei','Peculiare'),
 ('Single',847,'Ale','Sandro','Smash Finale'),
 ('Single',847,'Leo','Siwei','Speciale Standard'),
 ('Single',847,'Siwei','Leo','Speciale Laterale'),
 ('Single',847,'Siwei','Ale','Speciale Laterale'),
 ('Single',847,'Ale','Sandro','Speciale in Giù'),
 ('Single',847,'Siwei','Leo','Speciale Laterale'),
 ('Single',847,'Leo','Ale','Smash Finale'),
 ('Single',847,'Leo','Siwei','Speciale Standard');


--Single-846
insert into kills values ('Single',846,'Sandro','Siwei','Smash Laterale'),
 ('Single',846,'Sandro','Leo','Smash Laterale'),
 ('Single',846,'Leo','Sandro','Smash in Su'),
 ('Single',846,'Siwei','Ale','Speciale Laterale'),
 ('Single',846,'Leo','Siwei','Aereo Frontale'),
 ('Single',846,'Sandro','Leo','Smash Finale'),
 ('Single',846,'Ale','Sandro','Smash Finale'),
 ('Single',846,'Sandro','Ale','Smash Laterale'),
 ('Single',846,'Ale','Sandro','Smash Laterale'),
 ('Single',846,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',846,'Siwei','Autodistruzione');


--Single-845
insert into kills values ('Single',845,'Ale','Leo','Speciale in Giù'),
 ('Single',845,'Sandro','Siwei','Smash Laterale'),
 ('Single',845,'Sandro','Ale','Smash Laterale'),
 ('Single',845,'Ale','Sandro','Smash Laterale'),
 ('Single',845,'Siwei','Leo','Speciale Laterale'),
 ('Single',845,'Sandro','Ale','Smash Finale'),
 ('Single',845,'Leo','Sandro','Smash Finale'),
 ('Single',845,'Sandro','Siwei','Smash Laterale'),
 ('Single',845,'Siwei','Leo','Smash Laterale'),
 ('Single',845,'Siwei','Sandro','Speciale Laterale'),
 ('Single',845,'Siwei','Ale','Smash Finale');


--Single-844
insert into kills values ('Single',844,'Sandro','Leo','Smash Laterale'),
 ('Single',844,'Leo','Siwei','Smash Laterale'),
 ('Single',844,'Siwei','Sandro','Speciale in Su'),
 ('Single',844,'Sandro','Siwei','Speciale in Giù'),
 ('Single',844,'Sandro','Leo','Speciale in Giù'),
 ('Single',844,'Sandro','Leo','Altro'),
 ('Single',844,'Siwei','Ale','Smash Finale'),
 ('Single',844,'Ale','Sandro','Smash Finale'),
 ('Single',844,'Sandro','Siwei','Speciale in Giù'),
 ('Single',844,'Ale','Sandro','Altro');

insert into deaths values ('Single',844,'Leo','Autodistruzione'),
 ('Single',844,'Sandro','Autodistruzione');


--Single-843
insert into kills values ('Single',843,'Leo','Sandro','Altro'),
 ('Single',843,'Ale','Leo','Aereo in Su'),
 ('Single',843,'Leo','Siwei','Smash in Su'),
 ('Single',843,'Sandro','Ale','Speciale in Giù'),
 ('Single',843,'Sandro','Siwei','Smash Finale'),
 ('Single',843,'Ale','Leo','Smash Finale'),
 ('Single',843,'Ale','Sandro','Smash Laterale'),
 ('Single',843,'Siwei','Ale','Smash Finale'),
 ('Single',843,'Sandro','Siwei','Smash Finale'),
 ('Single',843,'Sandro','Leo','In Corsa'),
 ('Single',843,'Ale','Sandro','Altro');

insert into deaths values ('Single',843,'Sandro','Mancato Recupero'),
 ('Single',843,'Sandro','Autodistruzione');


--Single-842
insert into kills values ('Single',842,'Ale','Sandro','Altro'),
 ('Single',842,'Sandro','Siwei','Peculiare'),
 ('Single',842,'Siwei','Leo','Smash in Su'),
 ('Single',842,'Sandro','Siwei','Speciale in Giù'),
 ('Single',842,'Ale','Sandro','Aereo in Su'),
 ('Single',842,'Siwei','Ale','Speciale Standard'),
 ('Single',842,'Leo','Sandro','Smash Laterale'),
 ('Single',842,'Leo','Siwei','Smash Finale'),
 ('Single',842,'Ale','Leo','Smash in Su'),
 ('Single',842,'Ale','Leo','Speciale in Giù');

insert into deaths values ('Single',842,'Sandro','Mancato Recupero');


--Single-841
insert into kills values ('Single',841,'Ale','Sandro','Altro'),
 ('Single',841,'Leo','Ale','Smash in Su'),
 ('Single',841,'Siwei','Leo','Altro'),
 ('Single',841,'Leo','Sandro','Aereo in Giù'),
 ('Single',841,'Sandro','Siwei','Speciale in Giù'),
 ('Single',841,'Leo','Ale','Aereo in Giù'),
 ('Single',841,'Siwei','Leo','Smash Finale'),
 ('Single',841,'Leo','Siwei','Smash Laterale'),
 ('Single',841,'Siwei','Ale','Smash Laterale'),
 ('Single',841,'Leo','Siwei','Aereo in Giù');

insert into deaths values ('Single',841,'Sandro','Autodistruzione'),
 ('Single',841,'Leo','Mancato Recupero'),
 ('Single',841,'Sandro','Autodistruzione');


--Single-840
insert into kills values ('Single',840,'Siwei','Ale','Smash Laterale'),
 ('Single',840,'Siwei','Sandro','Smash Laterale'),
 ('Single',840,'Leo','Siwei','Altro'),
 ('Single',840,'Sandro','Leo','Smash Laterale'),
 ('Single',840,'Sandro','Ale','Smash Finale'),
 ('Single',840,'Ale','Leo','Speciale in Giù'),
 ('Single',840,'Leo','Sandro','Smash Laterale'),
 ('Single',840,'Leo','Siwei','Smash Finale'),
 ('Single',840,'Ale','Siwei','Altro'),
 ('Single',840,'Leo','Sandro','Speciale Laterale'),
 ('Single',840,'Ale','Leo','Speciale Standard');

insert into deaths values ('Single',840,'Siwei','Skyworld');


--Single-839
insert into kills values ('Single',839,'Siwei','Ale','Smash Laterale'),
 ('Single',839,'Ale','Siwei','Speciale in Giù'),
 ('Single',839,'Ale','Leo','Speciale in Giù'),
 ('Single',839,'Siwei','Sandro','Smash Finale'),
 ('Single',839,'Siwei','Ale','Smash Finale'),
 ('Single',839,'Siwei','Leo','Smash Finale'),
 ('Single',839,'Leo','Sandro','Altro'),
 ('Single',839,'Sandro','Siwei','Speciale in Giù'),
 ('Single',839,'Sandro','Leo','Speciale in Giù'),
 ('Single',839,'Sandro','Ale','Speciale in Giù'),
 ('Single',839,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Single',839,'Sandro','Port Town Aero Dive');


--Single-838
insert into kills values ('Single',838,'Sandro','Leo','Altro'),
 ('Single',838,'Leo','Sandro','Speciale Standard'),
 ('Single',838,'Sandro','Ale','Speciale in Giù'),
 ('Single',838,'Sandro','Ale','Smash Finale'),
 ('Single',838,'Leo','Siwei','In Corsa'),
 ('Single',838,'Sandro','Leo','In Corsa'),
 ('Single',838,'Siwei','Leo','Altro'),
 ('Single',838,'Sandro','Ale','Speciale in Giù'),
 ('Single',838,'Sandro','Siwei','Speciale in Giù'),
 ('Single',838,'Siwei','Sandro','Smash in Su'),
 ('Single',838,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Single',838,'Leo','Autodistruzione');


--Single-837
insert into kills values ('Single',837,'Leo','Sandro','Speciale Standard'),
 ('Single',837,'Sandro','Leo','Smash Laterale'),
 ('Single',837,'Sandro','Siwei','In Corsa'),
 ('Single',837,'Leo','Ale','Smash Finale'),
 ('Single',837,'Ale','Sandro','Altro'),
 ('Single',837,'Sandro','Ale','Speciale in Giù'),
 ('Single',837,'Siwei','Sandro','Altro'),
 ('Single',837,'Sandro','Siwei','Speciale in Giù'),
 ('Single',837,'Ale','Leo','Altro'),
 ('Single',837,'Ale','Leo','Altro'),
 ('Single',837,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',837,'Sandro','Autodistruzione'),
 ('Single',837,'Sandro','Autodistruzione'),
 ('Single',837,'Leo','Mancato Recupero'),
 ('Single',837,'Leo','Mancato Recupero');


--Single-836
insert into kills values ('Single',836,'Siwei','Leo','Smash Laterale'),
 ('Single',836,'Siwei','Ale','Speciale Laterale'),
 ('Single',836,'Ale','Leo','Grab'),
 ('Single',836,'Ale','Sandro','Smash in Su'),
 ('Single',836,'Sandro','Siwei','Speciale in Giù'),
 ('Single',836,'Ale','Siwei','Speciale Standard'),
 ('Single',836,'Sandro','Leo','Speciale Laterale'),
 ('Single',836,'Ale','Sandro','Altro'),
 ('Single',836,'Sandro','Ale','Smash Finale'),
 ('Single',836,'Ale','Sandro','Altro');

insert into deaths values ('Single',836,'Siwei','Autodistruzione'),
 ('Single',836,'Sandro','Autodistruzione'),
 ('Single',836,'Sandro','Mancato Recupero');


--Single-835
insert into kills values ('Single',835,'Sandro','Ale','Speciale Laterale'),
 ('Single',835,'Leo','Ale','Smash Laterale'),
 ('Single',835,'Sandro','Siwei','Aereo in Giù'),
 ('Single',835,'Siwei','Leo','Aereo Frontale'),
 ('Single',835,'Siwei','Sandro','Smash Finale'),
 ('Single',835,'Ale','Siwei','Smash Laterale'),
 ('Single',835,'Sandro','Leo','Smash Finale'),
 ('Single',835,'Sandro','Leo','Smash Laterale'),
 ('Single',835,'Siwei','Ale','Speciale Laterale'),
 ('Single',835,'Siwei','Sandro','Speciale Laterale'),
 ('Single',835,'Sandro','Siwei','Speciale Laterale');


--Single-834
insert into kills values ('Single',834,'Siwei','Leo','Smash in Su'),
 ('Single',834,'Leo','Siwei','Speciale Standard'),
 ('Single',834,'Sandro','Leo','Altro'),
 ('Single',834,'Leo','Sandro','Smash Laterale'),
 ('Single',834,'Leo','Sandro','Smash Finale'),
 ('Single',834,'Leo','Siwei','Smash Finale'),
 ('Single',834,'Siwei','Sandro','Smash Finale'),
 ('Single',834,'Siwei','Ale','Altro'),
 ('Single',834,'Ale','Leo','Aereo Posteriore'),
 ('Single',834,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',834,'Leo','Autodistruzione'),
 ('Single',834,'Ale','Autodistruzione');


--Single-833
insert into kills values ('Single',833,'Ale','Siwei','Altro'),
 ('Single',833,'Sandro','Ale','Altro'),
 ('Single',833,'Leo','Sandro','Smash in Su'),
 ('Single',833,'Leo','Sandro','Altro'),
 ('Single',833,'Siwei','Leo','Smash Laterale'),
 ('Single',833,'Sandro','Siwei','Smash Finale'),
 ('Single',833,'Sandro','Ale','Smash Finale'),
 ('Single',833,'Leo','Ale','Smash Laterale'),
 ('Single',833,'Leo','Sandro','Aereo in Giù');

insert into deaths values ('Single',833,'Siwei','Mancato Recupero'),
 ('Single',833,'Siwei','Autodistruzione'),
 ('Single',833,'Ale','Autodistruzione'),
 ('Single',833,'Sandro','Autodistruzione');


--Single-832
insert into kills values ('Single',832,'Ale','Sandro','Altro'),
 ('Single',832,'Ale','Siwei','Smash in Su'),
 ('Single',832,'Siwei','Leo','Smash Laterale'),
 ('Single',832,'Leo','Ale','Smash Laterale'),
 ('Single',832,'Sandro','Siwei','Speciale in Giù'),
 ('Single',832,'Ale','Leo','Speciale in Giù'),
 ('Single',832,'Siwei','Sandro','Smash Finale'),
 ('Single',832,'Siwei','Ale','Speciale in Giù'),
 ('Single',832,'Ale','Siwei','Smash Laterale'),
 ('Single',832,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',832,'Sandro','Autodistruzione'),
 ('Single',832,'Sandro','Autodistruzione');


--Single-831
insert into kills values ('Single',831,'Leo','Sandro','Altro'),
 ('Single',831,'Sandro','Siwei','In Corsa'),
 ('Single',831,'Siwei','Ale','Smash Laterale'),
 ('Single',831,'Ale','Leo','Smash in Su'),
 ('Single',831,'Leo','Ale','Smash Finale'),
 ('Single',831,'Ale','Siwei','Peculiare'),
 ('Single',831,'Ale','Leo','Smash Finale'),
 ('Single',831,'Sandro','Siwei','Speciale in Giù'),
 ('Single',831,'Ale','Sandro','Smash in Su'),
 ('Single',831,'Leo','Ale','Aereo in Su'),
 ('Single',831,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',831,'Sandro','Mancato Recupero');


--Single-830
insert into kills values ('Single',830,'Sandro','Ale','Aereo Posteriore'),
 ('Single',830,'Leo','Siwei','Smash Laterale'),
 ('Single',830,'Leo','Sandro','Smash Laterale'),
 ('Single',830,'Siwei','Sandro','Smash Finale'),
 ('Single',830,'Sandro','Siwei','Smash Laterale'),
 ('Single',830,'Ale','Leo','Smash Finale'),
 ('Single',830,'Ale','Sandro','Speciale Laterale'),
 ('Single',830,'Siwei','Ale','Smash Finale'),
 ('Single',830,'Leo','Siwei','Altro'),
 ('Single',830,'Ale','Leo','Speciale Laterale'),
 ('Single',830,'Leo','Ale','Peculiare');

insert into deaths values ('Single',830,'Siwei','Mancato Recupero');


--Single-829
insert into kills values ('Single',829,'Ale','Siwei','Speciale in Giù'),
 ('Single',829,'Siwei','Sandro','Altro'),
 ('Single',829,'Siwei','Ale','Smash Laterale'),
 ('Single',829,'Siwei','Leo','Smash in Su'),
 ('Single',829,'Leo','Siwei','Smash Laterale'),
 ('Single',829,'Ale','Sandro','Smash Finale'),
 ('Single',829,'Siwei','Ale','Smash Finale'),
 ('Single',829,'Sandro','Siwei','Smash Laterale'),
 ('Single',829,'Ale','Leo','Aereo Posteriore'),
 ('Single',829,'Ale','Sandro','Smash in Su'),
 ('Single',829,'Ale','Leo','Speciale in Giù');

insert into deaths values ('Single',829,'Sandro','Mancato Recupero');


--Single-828
insert into kills values ('Single',828,'Ale','Leo','Altro'),
 ('Single',828,'Leo','Siwei','Altro'),
 ('Single',828,'Siwei','Ale','Smash Laterale'),
 ('Single',828,'Leo','Sandro','Altro'),
 ('Single',828,'Sandro','Siwei','Speciale in Giù'),
 ('Single',828,'Leo','Ale','Smash in Su'),
 ('Single',828,'Ale','Leo','Smash in Su'),
 ('Single',828,'Siwei','Sandro','Smash Finale'),
 ('Single',828,'Leo','Sandro','Altro'),
 ('Single',828,'Leo','Siwei','Smash in Su'),
 ('Single',828,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',828,'Leo','Autodistruzione'),
 ('Single',828,'Siwei','Autodistruzione'),
 ('Single',828,'Sandro','Autodistruzione'),
 ('Single',828,'Sandro','Mancato Recupero');


--Single-827
insert into kills values ('Single',827,'Leo','Ale','Altro'),
 ('Single',827,'Siwei','Sandro','Altro'),
 ('Single',827,'Siwei','Leo','Speciale Laterale'),
 ('Single',827,'Leo','Sandro','Altro'),
 ('Single',827,'Sandro','Siwei','Speciale in Giù'),
 ('Single',827,'Siwei','Sandro','Altro'),
 ('Single',827,'Sandro','Ale','Speciale in Giù'),
 ('Single',827,'Sandro','Leo','Speciale in Giù'),
 ('Single',827,'Ale','Siwei','Smash in Su'),
 ('Single',827,'Ale','Leo','Aereo in Su'),
 ('Single',827,'Siwei','Ale','Speciale Laterale');

insert into deaths values ('Single',827,'Ale','Autodistruzione'),
 ('Single',827,'Sandro','Mancato Recupero'),
 ('Single',827,'Sandro','Mancato Recupero'),
 ('Single',827,'Sandro','Autodistruzione');


--Single-826
insert into kills values ('Single',826,'Siwei','Sandro','Speciale Standard'),
 ('Single',826,'Leo','Ale','In Corsa'),
 ('Single',826,'Ale','Leo','Aereo in Su'),
 ('Single',826,'Sandro','Siwei','Speciale Standard'),
 ('Single',826,'Sandro','Ale','Aereo Posteriore'),
 ('Single',826,'Siwei','Leo','In Corsa'),
 ('Single',826,'Sandro','Siwei','Smash Finale'),
 ('Single',826,'Ale','Sandro','Speciale in Giù'),
 ('Single',826,'Siwei','Ale','Peculiare'),
 ('Single',826,'Siwei','Leo','Smash Laterale'),
 ('Single',826,'Sandro','Siwei','In Corsa');


--Single-825
insert into kills values ('Single',825,'Sandro','Leo','Speciale Laterale'),
 ('Single',825,'Sandro','Siwei','Aereo Frontale'),
 ('Single',825,'Siwei','Sandro','Speciale Laterale'),
 ('Single',825,'Sandro','Ale','Smash Finale'),
 ('Single',825,'Ale','Siwei','Smash Finale'),
 ('Single',825,'Sandro','Ale','Speciale Laterale'),
 ('Single',825,'Ale','Sandro','Aereo in Su'),
 ('Single',825,'Sandro','Siwei','Smash Finale'),
 ('Single',825,'Ale','Leo','Aereo in Su'),
 ('Single',825,'Ale','Sandro','Speciale Standard'),
 ('Single',825,'Leo','Ale','Smash Laterale');


--Single-824
insert into kills values ('Single',824,'Leo','Ale','Speciale Laterale'),
 ('Single',824,'Siwei','Sandro','Speciale in Su'),
 ('Single',824,'Ale','Leo','Smash Finale'),
 ('Single',824,'Leo','Siwei','Aereo in Su'),
 ('Single',824,'Sandro','Ale','Altro'),
 ('Single',824,'Sandro','Leo','Smash Finale'),
 ('Single',824,'Ale','Siwei','Altro'),
 ('Single',824,'Leo','Ale','Smash Laterale'),
 ('Single',824,'Sandro','Siwei','Aereo in Giù'),
 ('Single',824,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',824,'Ale','Green Greens'),
 ('Single',824,'Siwei','Mancato Recupero');


--Single-823
insert into kills values ('Single',823,'Ale','Siwei','Altro'),
 ('Single',823,'Sandro','Leo','Aereo Frontale'),
 ('Single',823,'Leo','Siwei','Smash Finale'),
 ('Single',823,'Leo','Ale','Smash Finale'),
 ('Single',823,'Leo','Sandro','Speciale in Su'),
 ('Single',823,'Sandro','Siwei','Aereo in Giù'),
 ('Single',823,'Sandro','Ale','Smash Finale'),
 ('Single',823,'Sandro','Leo','Speciale Laterale'),
 ('Single',823,'Leo','Sandro','Speciale in Su'),
 ('Single',823,'Leo','Sandro','Aereo in Giù'),
 ('Single',823,'Ale','Leo','Aereo in Su');

insert into deaths values ('Single',823,'Siwei','Autodistruzione');


--Single-822
insert into kills values ('Single',822,'Siwei','Leo','In Corsa'),
 ('Single',822,'Leo','Ale','Smash Laterale'),
 ('Single',822,'Siwei','Sandro','Smash Laterale'),
 ('Single',822,'Leo','Siwei','Smash Finale'),
 ('Single',822,'Sandro','Leo','Smash Finale'),
 ('Single',822,'Leo','Sandro','Smash Laterale'),
 ('Single',822,'Sandro','Ale','Aereo in Giù'),
 ('Single',822,'Leo','Sandro','Smash Finale'),
 ('Single',822,'Siwei','Ale','Smash Laterale'),
 ('Single',822,'Sandro','Siwei','Smash Finale'),
 ('Single',822,'Sandro','Leo','Smash Finale');


--Single-821
insert into kills values ('Single',821,'Ale','Sandro','In Corsa'),
 ('Single',821,'Sandro','Leo','Speciale Laterale'),
 ('Single',821,'Sandro','Siwei','Speciale Laterale'),
 ('Single',821,'Sandro','Ale','Smash Finale'),
 ('Single',821,'Sandro','Leo','Speciale Laterale'),
 ('Single',821,'Siwei','Sandro','Altro'),
 ('Single',821,'Ale','Siwei','Altro'),
 ('Single',821,'Siwei','Leo','Smash Finale'),
 ('Single',821,'Siwei','Ale','Smash Finale'),
 ('Single',821,'Ale','Siwei','Aereo Standard'),
 ('Single',821,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',821,'Sandro','Autodistruzione'),
 ('Single',821,'Siwei','Autodistruzione');


--Single-820
insert into kills values ('Single',820,'Leo','Ale','Smash Laterale'),
 ('Single',820,'Leo','Sandro','Smash Laterale'),
 ('Single',820,'Siwei','Leo','In Corsa'),
 ('Single',820,'Leo','Sandro','Smash Laterale'),
 ('Single',820,'Ale','Siwei','Altro'),
 ('Single',820,'Sandro','Leo','Altro'),
 ('Single',820,'Sandro','Ale','Smash Finale'),
 ('Single',820,'Leo','Ale','Speciale Laterale'),
 ('Single',820,'Siwei','Sandro','Peculiare'),
 ('Single',820,'Siwei','Leo','Altro');

insert into deaths values ('Single',820,'Siwei','Autodistruzione'),
 ('Single',820,'Leo','Pac-Land'),
 ('Single',820,'Leo','Mancato Recupero');


--Single-819
insert into kills values ('Single',819,'Siwei','Leo','Altro'),
 ('Single',819,'Ale','Sandro','Altro'),
 ('Single',819,'Ale','Siwei','Altro'),
 ('Single',819,'Sandro','Ale','Smash Finale'),
 ('Single',819,'Ale','Leo','Altro'),
 ('Single',819,'Ale','Sandro','Speciale in Giù'),
 ('Single',819,'Ale','Siwei','Speciale in Giù'),
 ('Single',819,'Siwei','Leo','Smash Finale'),
 ('Single',819,'Sandro','Ale','Smash Finale'),
 ('Single',819,'Sandro','Siwei','Aereo in Su'),
 ('Single',819,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',819,'Leo','Hyrule Castle'),
 ('Single',819,'Sandro','Hyrule Castle'),
 ('Single',819,'Siwei','Hyrule Castle'),
 ('Single',819,'Leo','Mancato Recupero');


--Single-818
insert into kills values ('Single',818,'Sandro','Ale','Speciale Laterale'),
 ('Single',818,'Sandro','Leo','Speciale Standard'),
 ('Single',818,'Leo','Sandro','Smash in Su'),
 ('Single',818,'Sandro','Siwei','Smash Finale'),
 ('Single',818,'Siwei','Sandro','Smash Finale'),
 ('Single',818,'Sandro','Leo','Speciale Standard'),
 ('Single',818,'Leo','Siwei','Smash Laterale'),
 ('Single',818,'Leo','Ale','Smash in Su'),
 ('Single',818,'Ale','Sandro','Smash Finale'),
 ('Single',818,'Siwei','Leo','Speciale Standard'),
 ('Single',818,'Siwei','Ale','Smash in Su');


--Single-817
insert into kills values ('Single',817,'Siwei','Sandro','Peculiare'),
 ('Single',817,'Leo','Siwei','Smash Laterale'),
 ('Single',817,'Siwei','Leo','Smash Laterale'),
 ('Single',817,'Siwei','Ale','In Corsa'),
 ('Single',817,'Ale','Sandro','In Corsa'),
 ('Single',817,'Leo','Siwei','Smash Finale'),
 ('Single',817,'Ale','Sandro','Speciale Standard'),
 ('Single',817,'Siwei','Leo','Smash Finale'),
 ('Single',817,'Ale','Siwei','Speciale in Giù'),
 ('Single',817,'Ale','Leo','Aereo in Su');


--Single-816
insert into kills values ('Single',816,'Siwei','Ale','Speciale Standard'),
 ('Single',816,'Siwei','Ale','Speciale in Giù'),
 ('Single',816,'Siwei','Sandro','Speciale in Giù'),
 ('Single',816,'Leo','Siwei','Aereo in Giù'),
 ('Single',816,'Ale','Sandro','Smash Finale'),
 ('Single',816,'Ale','Siwei','Smash Finale'),
 ('Single',816,'Leo','Siwei','Smash Finale'),
 ('Single',816,'Sandro','Leo','Smash Finale'),
 ('Single',816,'Leo','Ale','Speciale in Su'),
 ('Single',816,'Leo','Sandro','Smash Laterale');


--Single-815
insert into kills values ('Single',815,'Siwei','Leo','Smash Laterale'),
 ('Single',815,'Siwei','Ale','Smash Laterale'),
 ('Single',815,'Leo','Siwei','Smash Laterale'),
 ('Single',815,'Siwei','Ale','Speciale Standard'),
 ('Single',815,'Leo','Sandro','Smash Laterale'),
 ('Single',815,'Sandro','Leo','Aereo in Giù'),
 ('Single',815,'Sandro','Siwei','Smash Finale'),
 ('Single',815,'Ale','Sandro','Smash Finale'),
 ('Single',815,'Siwei','Ale','Speciale Laterale'),
 ('Single',815,'Sandro','Siwei','Altro'),
 ('Single',815,'Sandro','Leo','Speciale Laterale');

insert into deaths values ('Single',815,'Siwei','Mancato Recupero');


--Single-814
insert into kills values ('Single',814,'Sandro','Leo','Altro'),
 ('Single',814,'Siwei','Ale','Speciale Laterale'),
 ('Single',814,'Leo','Sandro','Smash Laterale'),
 ('Single',814,'Ale','Siwei','Speciale Standard'),
 ('Single',814,'Sandro','Leo','Smash Finale'),
 ('Single',814,'Leo','Ale','Smash Finale'),
 ('Single',814,'Sandro','Siwei','In Corsa'),
 ('Single',814,'Ale','Sandro','Grab'),
 ('Single',814,'Ale','Siwei','Speciale Standard'),
 ('Single',814,'Sandro','Ale','Smash Finale'),
 ('Single',814,'Leo','Sandro','Grab');

insert into deaths values ('Single',814,'Leo','Mancato Recupero');


--Single-813
insert into kills values ('Single',813,'Leo','Siwei','Smash Laterale'),
 ('Single',813,'Siwei','Ale','Speciale Laterale'),
 ('Single',813,'Siwei','Leo','Smash Finale'),
 ('Single',813,'Ale','Siwei','In Corsa'),
 ('Single',813,'Siwei','Sandro','Smash Laterale'),
 ('Single',813,'Ale','Leo','Smash Finale'),
 ('Single',813,'Leo','Ale','Altro'),
 ('Single',813,'Leo','Siwei','Smash Finale'),
 ('Single',813,'Leo','Sandro','Smash Laterale'),
 ('Single',813,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',813,'Ale','Autodistruzione'),
 ('Single',813,'Ale','Mancato Recupero');


--Single-812
insert into kills values ('Single',812,'Ale','Leo','Aereo Frontale'),
 ('Single',812,'Siwei','Sandro','Speciale Laterale'),
 ('Single',812,'Leo','Ale','Smash Finale'),
 ('Single',812,'Ale','Leo','Aereo Standard'),
 ('Single',812,'Ale','Siwei','Altro'),
 ('Single',812,'Ale','Sandro','Smash Finale'),
 ('Single',812,'Siwei','Ale','Smash Finale'),
 ('Single',812,'Ale','Leo','Smash Finale'),
 ('Single',812,'Sandro','Siwei','In Corsa'),
 ('Single',812,'Siwei','Sandro','Speciale Laterale'),
 ('Single',812,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',812,'Siwei','Mancato Recupero');


--Single-811
insert into kills values ('Single',811,'Leo','Siwei','Smash Laterale'),
 ('Single',811,'Sandro','Ale','Speciale in Giù'),
 ('Single',811,'Siwei','Leo','Speciale Laterale'),
 ('Single',811,'Siwei','Leo','Altro'),
 ('Single',811,'Siwei','Sandro','Speciale Laterale'),
 ('Single',811,'Leo','Siwei','Footstool'),
 ('Single',811,'Sandro','Leo','Speciale in Giù'),
 ('Single',811,'Siwei','Ale','Smash Laterale'),
 ('Single',811,'Sandro','Siwei','Smash Finale'),
 ('Single',811,'Ale','Sandro','Aereo Posteriore'),
 ('Single',811,'Sandro','Ale','Aereo in Su');

insert into deaths values ('Single',811,'Leo','3D Land');


--Single-810
insert into kills values ('Single',810,'Leo','Sandro','Speciale Standard'),
 ('Single',810,'Leo','Ale','Altro'),
 ('Single',810,'Siwei','Leo','Altro'),
 ('Single',810,'Ale','Siwei','Meteora'),
 ('Single',810,'Sandro','Siwei','Altro'),
 ('Single',810,'Siwei','Sandro','Speciale Laterale'),
 ('Single',810,'Ale','Leo','Altro'),
 ('Single',810,'Siwei','Leo','Smash Finale'),
 ('Single',810,'Ale','Sandro','Smash in Giù'),
 ('Single',810,'Siwei','Ale','Altro'),
 ('Single',810,'Siwei','Ale','Speciale Laterale');

insert into deaths values ('Single',810,'Ale','Balloon Fight'),
 ('Single',810,'Leo','Autodistruzione'),
 ('Single',810,'Siwei','Mancato Recupero'),
 ('Single',810,'Leo','Balloon Fight'),
 ('Single',810,'Ale','Balloon Fight');


--Single-809
insert into kills values ('Single',809,'Sandro','Ale','Smash Laterale'),
 ('Single',809,'Ale','Sandro','Meteora'),
 ('Single',809,'Leo','Siwei','Speciale in Su'),
 ('Single',809,'Ale','Leo','Speciale in Giù'),
 ('Single',809,'Leo','Siwei','Altro'),
 ('Single',809,'Sandro','Ale','Smash Finale'),
 ('Single',809,'Siwei','Sandro','Speciale Laterale'),
 ('Single',809,'Siwei','Leo','Smash Finale'),
 ('Single',809,'Ale','Sandro','Smash Laterale'),
 ('Single',809,'Leo','Siwei','Aereo in Giù'),
 ('Single',809,'Ale','Leo','Aereo Posteriore');

insert into deaths values ('Single',809,'Siwei','Autodistruzione');


--Single-808
insert into kills values ('Single',808,'Sandro','Leo','Smash Laterale'),
 ('Single',808,'Leo','Siwei','Smash Laterale'),
 ('Single',808,'Siwei','Sandro','Smash in Su'),
 ('Single',808,'Leo','Ale','Smash Laterale'),
 ('Single',808,'Leo','Siwei','Smash Finale'),
 ('Single',808,'Sandro','Ale','Smash Finale'),
 ('Single',808,'Siwei','Leo','Smash in Su'),
 ('Single',808,'Ale','Sandro','Aereo in Su'),
 ('Single',808,'Ale','Sandro','Altro'),
 ('Single',808,'Leo','Siwei','Speciale Standard'),
 ('Single',808,'Leo','Ale','Speciale Standard');

insert into deaths values ('Single',808,'Sandro','Autodistruzione');


--Single-807
insert into kills values ('Single',807,'Sandro','Siwei','Altro'),
 ('Single',807,'Leo','Ale','Altro'),
 ('Single',807,'Ale','Leo','Altro'),
 ('Single',807,'Siwei','Sandro','Smash Laterale'),
 ('Single',807,'Ale','Siwei','Altro'),
 ('Single',807,'Ale','Leo','Smash Finale'),
 ('Single',807,'Sandro','Siwei','Altro'),
 ('Single',807,'Sandro','Ale','Altro'),
 ('Single',807,'Ale','Sandro','Smash in Su'),
 ('Single',807,'Ale','Leo','Altro'),
 ('Single',807,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',807,'Siwei','Mancato Recupero'),
 ('Single',807,'Ale','Mancato Recupero'),
 ('Single',807,'Leo','Mancato Recupero'),
 ('Single',807,'Siwei','Autodistruzione'),
 ('Single',807,'Ale','Mancato Recupero'),
 ('Single',807,'Siwei','Mancato Recupero'),
 ('Single',807,'Leo','Mancato Recupero');


--Single-806
insert into kills values ('Single',806,'Siwei','Ale','Smash Laterale'),
 ('Single',806,'Leo','Sandro','Smash Laterale'),
 ('Single',806,'Leo','Siwei','Smash Laterale'),
 ('Single',806,'Siwei','Leo','Smash Finale'),
 ('Single',806,'Ale','Siwei','Speciale Laterale'),
 ('Single',806,'Leo','Sandro','Smash Finale'),
 ('Single',806,'Ale','Leo','Peculiare'),
 ('Single',806,'Sandro','Siwei','Smash Finale'),
 ('Single',806,'Sandro','Ale','Smash Laterale'),
 ('Single',806,'Ale','Sandro','Smash Finale'),
 ('Single',806,'Ale','Leo','Smash in Su');


--Single-805
insert into kills values ('Single',805,'Leo','Ale','Smash Laterale'),
 ('Single',805,'Ale','Leo','Smash Laterale'),
 ('Single',805,'Siwei','Sandro','Smash Laterale'),
 ('Single',805,'Leo','Ale','Speciale Standard'),
 ('Single',805,'Leo','Siwei','Smash Laterale'),
 ('Single',805,'Siwei','Sandro','Altro'),
 ('Single',805,'Leo','Siwei','Smash Laterale'),
 ('Single',805,'Ale','Sandro','Altro'),
 ('Single',805,'Leo','Ale','Smash Laterale'),
 ('Single',805,'Siwei','Leo','Altro'),
 ('Single',805,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Single',805,'Sandro','Autodistruzione'),
 ('Single',805,'Sandro','Autodistruzione'),
 ('Single',805,'Leo','Gaur Plain');


--Single-804
insert into kills values ('Single',804,'Siwei','Ale','Smash in Su'),
 ('Single',804,'Sandro','Siwei','Smash in Su'),
 ('Single',804,'Ale','Leo','Altro'),
 ('Single',804,'Siwei','Sandro','Smash Finale'),
 ('Single',804,'Ale','Leo','Altro'),
 ('Single',804,'Sandro','Ale','In Corsa'),
 ('Single',804,'Leo','Siwei','Peculiare'),
 ('Single',804,'Leo','Ale','Peculiare'),
 ('Single',804,'Siwei','Sandro','Smash Finale'),
 ('Single',804,'Leo','Siwei','Peculiare'),
 ('Single',804,'Sandro','Leo','In Corsa');

insert into deaths values ('Single',804,'Leo','Autodistruzione'),
 ('Single',804,'Leo','Autodistruzione');


--Single-803
insert into kills values ('Single',803,'Sandro','Siwei','Altro'),
 ('Single',803,'Siwei','Leo','Smash Laterale'),
 ('Single',803,'Ale','Sandro','Smash in Su'),
 ('Single',803,'Siwei','Ale','Smash Finale'),
 ('Single',803,'Sandro','Siwei','Smash Finale'),
 ('Single',803,'Ale','Leo','Smash Finale'),
 ('Single',803,'Ale','Sandro','Aereo Posteriore'),
 ('Single',803,'Siwei','Ale','Aereo in Su'),
 ('Single',803,'Leo','Siwei','Smash in Su'),
 ('Single',803,'Sandro','Leo','Speciale Standard'),
 ('Single',803,'Leo','Ale','Altro');

insert into deaths values ('Single',803,'Siwei','Mancato Recupero'),
 ('Single',803,'Ale','Autodistruzione');


--Doubles-333
insert into kills values ('Doubles',333,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',333,'Sandro','Siwei','In Corsa'),
 ('Doubles',333,'Ale','Leo','Smash in Giù'),
 ('Doubles',333,'Siwei','Sandro','In Corsa'),
 ('Doubles',333,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',333,'Sandro','Ale','Altro'),
 ('Doubles',333,'Siwei','Sandro','Altro'),
 ('Doubles',333,'Ale','Leo','Smash in Giù'),
 ('Doubles',333,'Sandro','Ale','Altro'),
 ('Doubles',333,'Sandro','Siwei','Aereo in Su');

insert into deaths values ('Doubles',333,'Ale','Fuoco Amico'),
 ('Doubles',333,'Ale','Autodistruzione');


--Doubles-332
insert into kills values ('Doubles',332,'Ale','Sandro','Speciale Standard'),
 ('Doubles',332,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',332,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',332,'Siwei','Ale','Smash Laterale'),
 ('Doubles',332,'Siwei','Leo','Smash in Su'),
 ('Doubles',332,'Ale','Sandro','Smash Laterale'),
 ('Doubles',332,'Ale','Siwei','Smash Finale'),
 ('Doubles',332,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',332,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',332,'Ale','Sandro','Smash Laterale'),
 ('Doubles',332,'Ale','Siwei','Smash Finale');


--Doubles-331
insert into kills values ('Doubles',331,'Siwei','Leo','Smash Laterale'),
 ('Doubles',331,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',331,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',331,'Leo','Ale','Smash in Su'),
 ('Doubles',331,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',331,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',331,'Siwei','Sandro','Aereo in Giù'),
 ('Doubles',331,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',331,'Ale','Sandro','Smash in Su');


--Doubles-330
insert into kills values ('Doubles',330,'Siwei','Ale','Smash Laterale'),
 ('Doubles',330,'Ale','Sandro','Aereo in Su'),
 ('Doubles',330,'Leo','Siwei','Smash Laterale'),
 ('Doubles',330,'Siwei','Leo','Smash Laterale'),
 ('Doubles',330,'Sandro','Ale','Smash in Su'),
 ('Doubles',330,'Leo','Siwei','Speciale in Su'),
 ('Doubles',330,'Ale','Sandro','Smash Laterale'),
 ('Doubles',330,'Sandro','Leo','Aereo Posteriore'),
 ('Doubles',330,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',330,'Leo','Ale','Fuoco Amico'),
 ('Doubles',330,'Leo','Sandro','Smash Finale');

insert into deaths values ('Doubles',330,'Ale','Fuoco Amico');


--Doubles-329
insert into kills values ('Doubles',329,'Leo','Siwei','Altro'),
 ('Doubles',329,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',329,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',329,'Siwei','Ale','Aereo Frontale'),
 ('Doubles',329,'Ale','Leo','Fuoco Amico'),
 ('Doubles',329,'Ale','Siwei','Aereo Standard'),
 ('Doubles',329,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',329,'Siwei','Leo','Altro'),
 ('Doubles',329,'Ale','Sandro','Altro'),
 ('Doubles',329,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Doubles',329,'Siwei','Autodistruzione'),
 ('Doubles',329,'Sandro','Fuoco Amico'),
 ('Doubles',329,'Leo','Fuoco Amico'),
 ('Doubles',329,'Sandro','Fuoco Amico'),
 ('Doubles',329,'Leo','Mancato Recupero'),
 ('Doubles',329,'Sandro','Mancato Recupero');


--Doubles-328
insert into kills values ('Doubles',328,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',328,'Sandro','Ale','Smash in Giù'),
 ('Doubles',328,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',328,'Siwei','Leo','In Corsa'),
 ('Doubles',328,'Leo','Siwei','Smash Laterale'),
 ('Doubles',328,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',328,'Sandro','Siwei','Smash Finale'),
 ('Doubles',328,'Leo','Ale','Peculiare'),
 ('Doubles',328,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',328,'Leo','Ale','Grab');

insert into deaths values ('Doubles',328,'Sandro','Fuoco Amico'),
 ('Doubles',328,'Sandro','Fuoco Amico');


--Doubles-327
insert into kills values ('Doubles',327,'Sandro','Siwei','Speciale Standard'),
 ('Doubles',327,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',327,'Ale','Siwei','Smash Laterale'),
 ('Doubles',327,'Sandro','Siwei','Speciale Standard'),
 ('Doubles',327,'Leo','Ale','Aereo in Giù'),
 ('Doubles',327,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',327,'Ale','Leo','Aereo in Su'),
 ('Doubles',327,'Leo','Ale','Altro'),
 ('Doubles',327,'Ale','Leo','Smash Laterale'),
 ('Doubles',327,'Ale','Leo','Smash in Su');

insert into deaths values ('Doubles',327,'Sandro','Fuoco Amico'),
 ('Doubles',327,'Ale','Autodistruzione');


--Doubles-326
insert into kills values ('Doubles',326,'Siwei','Ale','Peculiare'),
 ('Doubles',326,'Siwei','Leo','Smash Laterale'),
 ('Doubles',326,'Ale','Sandro','Altro'),
 ('Doubles',326,'Ale','Leo','Fuoco Amico'),
 ('Doubles',326,'Leo','Siwei','Grab'),
 ('Doubles',326,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',326,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',326,'Sandro','Ale','Smash Finale'),
 ('Doubles',326,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',326,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',326,'Sandro','Mancato Recupero'),
 ('Doubles',326,'Leo','Fuoco Amico'),
 ('Doubles',326,'Sandro','Fuoco Amico'),
 ('Doubles',326,'Siwei','Fuoco Amico'),
 ('Doubles',326,'Siwei','Fuoco Amico');


--Doubles-325
insert into kills values ('Doubles',325,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',325,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',325,'Ale','Siwei','Smash in Giù'),
 ('Doubles',325,'Leo','Ale','Altro'),
 ('Doubles',325,'Ale','Leo','Smash Finale'),
 ('Doubles',325,'Leo','Sandro','Smash Finale'),
 ('Doubles',325,'Ale','Siwei','Speciale Standard'),
 ('Doubles',325,'Sandro','Siwei','Speciale Standard'),
 ('Doubles',325,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',325,'Sandro','Leo','Altro'),
 ('Doubles',325,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',325,'Ale','Frigate Orpheon'),
 ('Doubles',325,'Sandro','Fuoco Amico'),
 ('Doubles',325,'Leo','Autodistruzione');


--Doubles-324
insert into kills values ('Doubles',324,'Leo','Siwei','Altro'),
 ('Doubles',324,'Ale','Sandro','Altro'),
 ('Doubles',324,'Sandro','Siwei','Aereo Posteriore'),
 ('Doubles',324,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',324,'Ale','Leo','Speciale in Giù'),
 ('Doubles',324,'Leo','Siwei','Smash Finale'),
 ('Doubles',324,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',324,'Leo','Ale','Aereo Frontale'),
 ('Doubles',324,'Ale','Leo','Aereo Standard'),
 ('Doubles',324,'Sandro','Ale','Speciale Standard');

insert into deaths values ('Doubles',324,'Siwei','Prism Tower'),
 ('Doubles',324,'Sandro','Mancato Recupero'),
 ('Doubles',324,'Ale','Fuoco Amico');


--Doubles-323
insert into kills values ('Doubles',323,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',323,'Sandro','Leo','Smash Laterale'),
 ('Doubles',323,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',323,'Leo','Siwei','Smash Laterale'),
 ('Doubles',323,'Siwei','Ale','Altro'),
 ('Doubles',323,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',323,'Leo','Siwei','Altro'),
 ('Doubles',323,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',323,'Siwei','Fuoco Amico'),
 ('Doubles',323,'Sandro','Fuoco Amico'),
 ('Doubles',323,'Ale','Autodistruzione'),
 ('Doubles',323,'Sandro','Fuoco Amico'),
 ('Doubles',323,'Siwei','WarioWare Inc.');


--Doubles-322
insert into kills values ('Doubles',322,'Sandro','Siwei','Altro'),
 ('Doubles',322,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',322,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',322,'Ale','Leo','Aereo Standard'),
 ('Doubles',322,'Sandro','Siwei','Smash Finale'),
 ('Doubles',322,'Sandro','Ale','Smash Finale'),
 ('Doubles',322,'Sandro','Ale','Speciale in Giù');

insert into deaths values ('Doubles',322,'Siwei','3D Land'),
 ('Doubles',322,'Sandro','Fuoco Amico'),
 ('Doubles',322,'Siwei','Autodistruzione');


--Doubles-321
insert into kills values ('Doubles',321,'Siwei','Ale','Speciale in Giù'),
 ('Doubles',321,'Leo','Siwei','Smash in Su'),
 ('Doubles',321,'Leo','Sandro','Smash in Su'),
 ('Doubles',321,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',321,'Siwei','Ale','In Corsa'),
 ('Doubles',321,'Ale','Siwei','In Corsa'),
 ('Doubles',321,'Siwei','Leo','Smash Laterale'),
 ('Doubles',321,'Ale','Siwei','In Corsa'),
 ('Doubles',321,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',321,'Siwei','Ale','Speciale in Giù'),
 ('Doubles',321,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',321,'Sandro','Fuoco Amico');


--Doubles-320
insert into kills values ('Doubles',320,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',320,'Leo','Sandro','Smash Laterale'),
 ('Doubles',320,'Leo','Ale','Smash Laterale'),
 ('Doubles',320,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',320,'Sandro','Leo','In Corsa'),
 ('Doubles',320,'Leo','Sandro','Smash Laterale'),
 ('Doubles',320,'Siwei','Ale','Smash Laterale'),
 ('Doubles',320,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',320,'Siwei','Ale','Speciale Standard'),
 ('Doubles',320,'Ale','Leo','Smash Finale'),
 ('Doubles',320,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Doubles',320,'Leo','Fuoco Amico'),
 ('Doubles',320,'Siwei','Fuoco Amico');


--Doubles-319
insert into kills values ('Doubles',319,'Leo','Sandro','Smash Laterale'),
 ('Doubles',319,'Sandro','Ale','Smash Laterale'),
 ('Doubles',319,'Leo','Siwei','Smash Laterale'),
 ('Doubles',319,'Sandro','Leo','Smash Finale'),
 ('Doubles',319,'Siwei','Ale','Smash Finale'),
 ('Doubles',319,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',319,'Leo','Siwei','Smash Finale'),
 ('Doubles',319,'Siwei','Leo','Speciale Standard'),
 ('Doubles',319,'Ale','Siwei','Smash Laterale'),
 ('Doubles',319,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',319,'Sandro','Fuoco Amico');


--Doubles-318
insert into kills values ('Doubles',318,'Ale','Leo','Smash Laterale'),
 ('Doubles',318,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',318,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',318,'Leo','Ale','Speciale Standard'),
 ('Doubles',318,'Ale','Sandro','Altro'),
 ('Doubles',318,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',318,'Leo','Ale','Smash Finale'),
 ('Doubles',318,'Sandro','Siwei','Altro'),
 ('Doubles',318,'Siwei','Leo','Smash Laterale'),
 ('Doubles',318,'Sandro','Ale','Smash Finale'),
 ('Doubles',318,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Doubles',318,'Sandro','Autodistruzione'),
 ('Doubles',318,'Siwei','Autodistruzione');


--Doubles-317
insert into kills values ('Doubles',317,'Ale','Leo','Altro'),
 ('Doubles',317,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',317,'Leo','Siwei','Smash Laterale'),
 ('Doubles',317,'Sandro','Ale','Altro'),
 ('Doubles',317,'Ale','Leo','Smash Laterale'),
 ('Doubles',317,'Leo','Ale','Smash Laterale'),
 ('Doubles',317,'Leo','Siwei','Smash Laterale'),
 ('Doubles',317,'Siwei','Sandro','Aereo Frontale'),
 ('Doubles',317,'Siwei','Leo','Smash Finale'),
 ('Doubles',317,'Sandro','Ale','Altro'),
 ('Doubles',317,'Sandro','Siwei','Aereo in Su');

insert into deaths values ('Doubles',317,'Leo','Mancato Recupero'),
 ('Doubles',317,'Sandro','Fuoco Amico'),
 ('Doubles',317,'Ale','Autodistruzione'),
 ('Doubles',317,'Ale','Autodistruzione');


--Doubles-316
insert into kills values ('Doubles',316,'Leo','Siwei','Smash Laterale'),
 ('Doubles',316,'Sandro','Ale','Aereo Frontale'),
 ('Doubles',316,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',316,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',316,'Sandro','Siwei','Smash Finale'),
 ('Doubles',316,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',316,'Leo','Ale','Peculiare'),
 ('Doubles',316,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',316,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',316,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',316,'Sandro','Ale','Smash Finale');

insert into deaths values ('Doubles',316,'Leo','Fuoco Amico'),
 ('Doubles',316,'Sandro','Fuoco Amico'),
 ('Doubles',316,'Leo','Fuoco Amico');


--Doubles-315
insert into kills values ('Doubles',315,'Leo','Siwei','Altro'),
 ('Doubles',315,'Leo','Sandro','Aereo Frontale'),
 ('Doubles',315,'Sandro','Ale','Smash Laterale'),
 ('Doubles',315,'Siwei','Leo','In Corsa'),
 ('Doubles',315,'Leo','Siwei','Altro'),
 ('Doubles',315,'Siwei','Leo','In Corsa'),
 ('Doubles',315,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',315,'Sandro','Ale','Aereo in Su'),
 ('Doubles',315,'Ale','Sandro','Smash Laterale'),
 ('Doubles',315,'Siwei','Leo','Smash Laterale'),
 ('Doubles',315,'Ale','Siwei','Altro');

insert into deaths values ('Doubles',315,'Siwei','Gerudo Valley'),
 ('Doubles',315,'Siwei','Gerudo Valley'),
 ('Doubles',315,'Siwei','Gerudo Valley');


--Doubles-314
insert into kills values ('Doubles',314,'Ale','Sandro','Speciale in Su'),
 ('Doubles',314,'Leo','Siwei','Altro'),
 ('Doubles',314,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',314,'Sandro','Leo','Smash Finale'),
 ('Doubles',314,'Ale','Sandro','Speciale in Su'),
 ('Doubles',314,'Sandro','Leo','Altro'),
 ('Doubles',314,'Sandro','Ale','Smash Finale'),
 ('Doubles',314,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',314,'Siwei','Ale','Smash Finale'),
 ('Doubles',314,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',314,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',314,'Siwei','Mancato Recupero'),
 ('Doubles',314,'Leo','Mancato Recupero'),
 ('Doubles',314,'Siwei','Fuoco Amico'),
 ('Doubles',314,'Sandro','Fuoco Amico');


--Doubles-313
insert into kills values ('Doubles',313,'Siwei','Leo','Altro'),
 ('Doubles',313,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',313,'Ale','Sandro','Speciale Laterale'),
 ('Doubles',313,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',313,'Sandro','Siwei','Smash Finale'),
 ('Doubles',313,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',313,'Ale','Sandro','Speciale Laterale'),
 ('Doubles',313,'Leo','Siwei','Smash Finale'),
 ('Doubles',313,'Leo','Ale','Speciale in Giù'),
 ('Doubles',313,'Ale','Leo','Aereo Frontale'),
 ('Doubles',313,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',313,'Siwei','Fuoco Amico'),
 ('Doubles',313,'Leo','Fuoco Amico');


--Doubles-312
insert into kills values ('Doubles',312,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',312,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',312,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',312,'Ale','Sandro','Altro'),
 ('Doubles',312,'Leo','Siwei','Meteora'),
 ('Doubles',312,'Sandro','Leo','Smash Finale'),
 ('Doubles',312,'Sandro','Ale','Aereo Posteriore'),
 ('Doubles',312,'Siwei','Leo','Smash Finale'),
 ('Doubles',312,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Doubles',312,'Sandro','Mancato Recupero');


--Doubles-311
insert into kills values ('Doubles',311,'Leo','Sandro','Aereo Posteriore'),
 ('Doubles',311,'Ale','Leo','In Corsa'),
 ('Doubles',311,'Ale','Siwei','In Corsa'),
 ('Doubles',311,'Leo','Ale','Aereo Frontale'),
 ('Doubles',311,'Sandro','Siwei','Smash Finale'),
 ('Doubles',311,'Leo','Sandro','Smash Finale'),
 ('Doubles',311,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',311,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',311,'Ale','Siwei','Peculiare'),
 ('Doubles',311,'Leo','Ale','In Corsa'),
 ('Doubles',311,'Ale','Leo','Smash Laterale');

insert into deaths values ('Doubles',311,'Leo','Fuoco Amico');


--Doubles-310
insert into kills values ('Doubles',310,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',310,'Sandro','Siwei','Speciale in Giù'),
 ('Doubles',310,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',310,'Siwei','Sandro','Speciale in Giù'),
 ('Doubles',310,'Leo','Ale','Speciale in Su'),
 ('Doubles',310,'Sandro','Siwei','Smash Finale'),
 ('Doubles',310,'Ale','Leo','Aereo in Su'),
 ('Doubles',310,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',310,'Ale','Leo','Aereo in Su');


--Doubles-309
insert into kills values ('Doubles',309,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',309,'Leo','Siwei','Peculiare'),
 ('Doubles',309,'Sandro','Ale','Smash Finale'),
 ('Doubles',309,'Siwei','Leo','Altro'),
 ('Doubles',309,'Siwei','Sandro','Smash Finale'),
 ('Doubles',309,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',309,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',309,'Siwei','Leo','Altro'),
 ('Doubles',309,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',309,'Siwei','Sandro','Altro');

insert into deaths values ('Doubles',309,'Leo','Mancato Recupero'),
 ('Doubles',309,'Ale','Fuoco Amico'),
 ('Doubles',309,'Leo','Rainbow Cruise'),
 ('Doubles',309,'Sandro','Autodistruzione');


--Doubles-308
insert into kills values ('Doubles',308,'Ale','Sandro','Speciale Laterale'),
 ('Doubles',308,'Siwei','Leo','Aereo in Giù'),
 ('Doubles',308,'Sandro','Ale','Altro'),
 ('Doubles',308,'Leo','Siwei','Smash Laterale'),
 ('Doubles',308,'Ale','Sandro','Smash Finale'),
 ('Doubles',308,'Leo','Siwei','Smash Finale'),
 ('Doubles',308,'Sandro','Ale','Altro'),
 ('Doubles',308,'Ale','Sandro','Smash in Giù'),
 ('Doubles',308,'Ale','Siwei','Altro');

insert into deaths values ('Doubles',308,'Ale','Bridge of Eldin'),
 ('Doubles',308,'Siwei','Autodistruzione');


--Doubles-307
insert into kills values ('Doubles',307,'Sandro','Siwei','Altro'),
 ('Doubles',307,'Ale','Leo','Smash Laterale'),
 ('Doubles',307,'Siwei','Sandro','Smash Finale'),
 ('Doubles',307,'Leo','Siwei','Aereo in Su'),
 ('Doubles',307,'Sandro','Ale','Smash Finale'),
 ('Doubles',307,'Sandro','Siwei','Altro'),
 ('Doubles',307,'Ale','Leo','Smash Laterale'),
 ('Doubles',307,'Leo','Ale','Smash Laterale'),
 ('Doubles',307,'Ale','Sandro','Speciale Standard'),
 ('Doubles',307,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',307,'Siwei','Autodistruzione'),
 ('Doubles',307,'Siwei','Autodistruzione');


--Doubles-306
insert into kills values ('Doubles',306,'Leo','Siwei','Smash Laterale'),
 ('Doubles',306,'Ale','Sandro','Smash in Giù'),
 ('Doubles',306,'Sandro','Ale','Smash Finale'),
 ('Doubles',306,'Ale','Leo','Smash Finale'),
 ('Doubles',306,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',306,'Siwei','Sandro','Smash Finale'),
 ('Doubles',306,'Leo','Siwei','Smash Finale'),
 ('Doubles',306,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',306,'Sandro','Ale','Smash Finale'),
 ('Doubles',306,'Sandro','Siwei','Speciale Laterale');

insert into deaths values ('Doubles',306,'Siwei','Fuoco Amico'),
 ('Doubles',306,'Leo','Fuoco Amico');


--Doubles-305
insert into kills values ('Doubles',305,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',305,'Ale','Sandro','Smash in Giù'),
 ('Doubles',305,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',305,'Sandro','Leo','Smash Finale'),
 ('Doubles',305,'Siwei','Ale','Smash in Su'),
 ('Doubles',305,'Leo','Siwei','Smash Laterale'),
 ('Doubles',305,'Leo','Sandro','Smash in Su'),
 ('Doubles',305,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',305,'Sandro','Ale','Smash Finale'),
 ('Doubles',305,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',305,'Siwei','Fuoco Amico'),
 ('Doubles',305,'Siwei','Fuoco Amico');


--Doubles-304
insert into kills values ('Doubles',304,'Ale','Siwei','Altro'),
 ('Doubles',304,'Leo','Sandro','Smash Laterale'),
 ('Doubles',304,'Leo','Ale','Altro'),
 ('Doubles',304,'Ale','Siwei','Altro'),
 ('Doubles',304,'Sandro','Siwei','Smash Finale'),
 ('Doubles',304,'Leo','Ale','Aereo Frontale'),
 ('Doubles',304,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',304,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',304,'Ale','Siwei','Smash Finale'),
 ('Doubles',304,'Ale','Leo','Speciale in Su');

insert into deaths values ('Doubles',304,'Siwei','Mancato Recupero'),
 ('Doubles',304,'Ale','Autodistruzione'),
 ('Doubles',304,'Sandro','Fuoco Amico');


--Doubles-303
insert into kills values ('Doubles',303,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',303,'Siwei','Sandro','Smash Finale'),
 ('Doubles',303,'Sandro','Ale','Altro'),
 ('Doubles',303,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',303,'Ale','Leo','Smash Finale'),
 ('Doubles',303,'Sandro','Siwei','Smash in Su'),
 ('Doubles',303,'Leo','Ale','Aereo in Su'),
 ('Doubles',303,'Leo','Siwei','Aereo in Su'),
 ('Doubles',303,'Leo','Ale','Peculiare');

insert into deaths values ('Doubles',303,'Siwei','Fuoco Amico'),
 ('Doubles',303,'Ale','Autodistruzione'),
 ('Doubles',303,'Sandro','Fuoco Amico');


--Doubles-302
insert into kills values ('Doubles',302,'Leo','Siwei','Smash Laterale'),
 ('Doubles',302,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',302,'Leo','Siwei','Altro'),
 ('Doubles',302,'Ale','Sandro','Smash Laterale'),
 ('Doubles',302,'Siwei','Leo','Speciale in Su'),
 ('Doubles',302,'Siwei','Leo','Altro'),
 ('Doubles',302,'Sandro','Ale','Smash Finale'),
 ('Doubles',302,'Leo','Siwei','Altro'),
 ('Doubles',302,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',302,'Leo','Siwei','Speciale Standard');

insert into deaths values ('Doubles',302,'Siwei','Mancato Recupero'),
 ('Doubles',302,'Leo','Mancato Recupero'),
 ('Doubles',302,'Siwei','Autodistruzione');


--Doubles-301
insert into kills values ('Doubles',301,'Leo','Siwei','Smash Laterale'),
 ('Doubles',301,'Ale','Sandro','Altro'),
 ('Doubles',301,'Sandro','Ale','Altro'),
 ('Doubles',301,'Siwei','Leo','Speciale in Su'),
 ('Doubles',301,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',301,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',301,'Leo','Siwei','Altro'),
 ('Doubles',301,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',301,'Ale','Sandro','Grab'),
 ('Doubles',301,'Ale','Leo','Smash Finale'),
 ('Doubles',301,'Sandro','Ale','Smash Finale');

insert into deaths values ('Doubles',301,'Sandro','Mancato Recupero'),
 ('Doubles',301,'Ale','Autodistruzione'),
 ('Doubles',301,'Sandro','Fuoco Amico'),
 ('Doubles',301,'Siwei','Mancato Recupero');


--Doubles-300
insert into kills values ('Doubles',300,'Siwei','Ale','Speciale in Su'),
 ('Doubles',300,'Siwei','Leo','Speciale in Giù'),
 ('Doubles',300,'Leo','Sandro','Smash in Su'),
 ('Doubles',300,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',300,'Ale','Sandro','Smash Finale'),
 ('Doubles',300,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',300,'Ale','Leo','Fuoco Amico'),
 ('Doubles',300,'Sandro','Ale','Smash Finale'),
 ('Doubles',300,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',300,'Siwei','Leo','Speciale Laterale');

insert into deaths values ('Doubles',300,'Leo','Fuoco Amico'),
 ('Doubles',300,'Siwei','Fuoco Amico');


--Doubles-299
insert into kills values ('Doubles',299,'Siwei','Ale','Speciale Standard'),
 ('Doubles',299,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',299,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',299,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',299,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',299,'Leo','Ale','Altro'),
 ('Doubles',299,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',299,'Ale','Leo','Speciale in Giù'),
 ('Doubles',299,'Leo','Ale','Altro'),
 ('Doubles',299,'Leo','Sandro','Smash Finale'),
 ('Doubles',299,'Sandro','Leo','Meteora');

insert into deaths values ('Doubles',299,'Siwei','Fuoco Amico'),
 ('Doubles',299,'Leo','Fuoco Amico'),
 ('Doubles',299,'Sandro','Fuoco Amico'),
 ('Doubles',299,'Ale','Gaur Plain'),
 ('Doubles',299,'Siwei','Fuoco Amico'),
 ('Doubles',299,'Ale','Gaur Plain');


--Doubles-298
insert into kills values ('Doubles',298,'Leo','Sandro','Aereo in Giù'),
 ('Doubles',298,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',298,'Siwei','Ale','Smash Laterale'),
 ('Doubles',298,'Leo','Sandro','Smash Finale'),
 ('Doubles',298,'Ale','Siwei','Smash Finale'),
 ('Doubles',298,'Sandro','Ale','Smash Laterale'),
 ('Doubles',298,'Siwei','Leo','Peculiare'),
 ('Doubles',298,'Leo','Sandro','Smash Finale'),
 ('Doubles',298,'Siwei','Leo','Smash Laterale');

insert into deaths values ('Doubles',298,'Ale','Autodistruzione');


--Doubles-297
insert into kills values ('Doubles',297,'Leo','Siwei','Smash Laterale'),
 ('Doubles',297,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',297,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',297,'Siwei','Ale','In Corsa'),
 ('Doubles',297,'Sandro','Leo','Smash Finale'),
 ('Doubles',297,'Siwei','Leo','Smash Laterale'),
 ('Doubles',297,'Siwei','Ale','Smash Laterale'),
 ('Doubles',297,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',297,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',297,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',297,'Sandro','Fuoco Amico');


--Doubles-296
insert into kills values ('Doubles',296,'Sandro','Siwei','Altro'),
 ('Doubles',296,'Ale','Leo','Aereo Standard'),
 ('Doubles',296,'Siwei','Sandro','Altro'),
 ('Doubles',296,'Leo','Siwei','Smash Finale'),
 ('Doubles',296,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',296,'Ale','Sandro','Smash Finale'),
 ('Doubles',296,'Sandro','Ale','Aereo in Su'),
 ('Doubles',296,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',296,'Ale','Leo','Aereo Standard');

insert into deaths values ('Doubles',296,'Siwei','Mancato Recupero'),
 ('Doubles',296,'Sandro','Autodistruzione'),
 ('Doubles',296,'Leo','Fuoco Amico');


--Doubles-295
insert into kills values ('Doubles',295,'Siwei','Sandro','Altro'),
 ('Doubles',295,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',295,'Siwei','Ale','Altro'),
 ('Doubles',295,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',295,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',295,'Ale','Siwei','Smash in Su'),
 ('Doubles',295,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',295,'Leo','Sandro','Smash Finale'),
 ('Doubles',295,'Ale','Leo','Smash Finale'),
 ('Doubles',295,'Siwei','Ale','Smash in Su');

insert into deaths values ('Doubles',295,'Sandro','Port Town Aero Dive'),
 ('Doubles',295,'Ale','Port Town Aero Dive');


--Doubles-294
insert into kills values ('Doubles',294,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',294,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',294,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',294,'Siwei','Leo','Speciale in Su'),
 ('Doubles',294,'Siwei','Sandro','Smash Finale'),
 ('Doubles',294,'Leo','Siwei','Altro'),
 ('Doubles',294,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',294,'Siwei','Leo','Altro'),
 ('Doubles',294,'Ale','Sandro','Smash Laterale'),
 ('Doubles',294,'Siwei','Leo','Smash Finale');

insert into deaths values ('Doubles',294,'Ale','Fuoco Amico'),
 ('Doubles',294,'Ale','Fuoco Amico'),
 ('Doubles',294,'Leo','Autodistruzione');


--Doubles-293
insert into kills values ('Doubles',293,'Leo','Sandro','Smash Laterale'),
 ('Doubles',293,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',293,'Ale','Siwei','Smash Laterale'),
 ('Doubles',293,'Sandro','Leo','Smash Finale'),
 ('Doubles',293,'Sandro','Siwei','Altro'),
 ('Doubles',293,'Leo','Sandro','Smash Finale'),
 ('Doubles',293,'Ale','Leo','Speciale Standard'),
 ('Doubles',293,'Leo','Ale','Speciale in Su'),
 ('Doubles',293,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',293,'Leo','Ale','In Corsa'),
 ('Doubles',293,'Ale','Leo','Aereo Frontale');

insert into deaths values ('Doubles',293,'Siwei','Autodistruzione'),
 ('Doubles',293,'Sandro','Fuoco Amico');


--Doubles-292
insert into kills values ('Doubles',292,'Siwei','Leo','Smash in Su'),
 ('Doubles',292,'Leo','Siwei','Smash Finale'),
 ('Doubles',292,'Siwei','Sandro','Speciale Standard'),
 ('Doubles',292,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',292,'Ale','Leo','Smash in Su'),
 ('Doubles',292,'Sandro','Siwei','Speciale Standard'),
 ('Doubles',292,'Leo','Ale','Smash Finale'),
 ('Doubles',292,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',292,'Sandro','Siwei','Altro'),
 ('Doubles',292,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',292,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Doubles',292,'Ale','Fuoco Amico'),
 ('Doubles',292,'Siwei','Tortimer Island'),
 ('Doubles',292,'Leo','Fuoco Amico');


--Doubles-291
insert into kills values ('Doubles',291,'Leo','Siwei','Smash Laterale'),
 ('Doubles',291,'Sandro','Ale','Smash Laterale'),
 ('Doubles',291,'Sandro','Ale','Smash Laterale'),
 ('Doubles',291,'Leo','Siwei','Smash Laterale'),
 ('Doubles',291,'Leo','Sandro','Smash Laterale'),
 ('Doubles',291,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',291,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',291,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',291,'Leo','Sandro','Smash Laterale'),
 ('Doubles',291,'Leo','Ale','Fuoco Amico');

insert into deaths values ('Doubles',291,'Sandro','Fuoco Amico'),
 ('Doubles',291,'Siwei','Fuoco Amico'),
 ('Doubles',291,'Ale','Fuoco Amico');


--Doubles-290
insert into kills values ('Doubles',290,'Leo','Ale','Smash Laterale'),
 ('Doubles',290,'Sandro','Siwei','Altro'),
 ('Doubles',290,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',290,'Siwei','Ale','Altro'),
 ('Doubles',290,'Sandro','Leo','Smash Finale'),
 ('Doubles',290,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',290,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',290,'Leo','Ale','Smash Laterale'),
 ('Doubles',290,'Leo','Sandro','Smash in Su'),
 ('Doubles',290,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',290,'Sandro','Leo','Peculiare');

insert into deaths values ('Doubles',290,'Siwei','Mancato Recupero'),
 ('Doubles',290,'Leo','Fuoco Amico'),
 ('Doubles',290,'Ale','Mancato Recupero'),
 ('Doubles',290,'Siwei','Fuoco Amico');


--Doubles-289
insert into kills values ('Doubles',289,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',289,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',289,'Sandro','Leo','Aereo Posteriore'),
 ('Doubles',289,'Leo','Sandro','Smash Finale'),
 ('Doubles',289,'Ale','Siwei','Speciale Laterale'),
 ('Doubles',289,'Siwei','Ale','Smash in Su'),
 ('Doubles',289,'Ale','Leo','Smash Finale'),
 ('Doubles',289,'Sandro','Siwei','Smash Finale'),
 ('Doubles',289,'Ale','Leo','Meteora');

insert into deaths values ('Doubles',289,'Ale','Fuoco Amico');


--Doubles-288
insert into kills values ('Doubles',288,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',288,'Sandro','Siwei','Smash in Su'),
 ('Doubles',288,'Ale','Leo','Smash in Giù'),
 ('Doubles',288,'Leo','Siwei','Speciale Standard'),
 ('Doubles',288,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',288,'Sandro','Ale','Aereo in Su'),
 ('Doubles',288,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',288,'Leo','Siwei','Aereo Frontale');

insert into deaths values ('Doubles',288,'Ale','Fuoco Amico'),
 ('Doubles',288,'Ale','Fuoco Amico');


--Doubles-287
insert into kills values ('Doubles',287,'Sandro','Leo','Smash Laterale'),
 ('Doubles',287,'Leo','Siwei','Speciale Standard'),
 ('Doubles',287,'Leo','Ale','Fuoco Amico'),
 ('Doubles',287,'Ale','Sandro','Smash Laterale'),
 ('Doubles',287,'Leo','Siwei','Smash Laterale'),
 ('Doubles',287,'Siwei','Ale','In Corsa'),
 ('Doubles',287,'Leo','Sandro','Smash Finale'),
 ('Doubles',287,'Sandro','Leo','Speciale in Su'),
 ('Doubles',287,'Siwei','Ale','Altro'),
 ('Doubles',287,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',287,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',287,'Ale','Fuoco Amico'),
 ('Doubles',287,'Siwei','Fuoco Amico');


--Doubles-286
insert into kills values ('Doubles',286,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',286,'Siwei','Leo','Smash Laterale'),
 ('Doubles',286,'Sandro','Ale','Speciale Standard'),
 ('Doubles',286,'Ale','Sandro','Smash Laterale'),
 ('Doubles',286,'Leo','Siwei','Smash Finale'),
 ('Doubles',286,'Sandro','Siwei','Smash Finale'),
 ('Doubles',286,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',286,'Leo','Siwei','Smash Laterale'),
 ('Doubles',286,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Doubles',286,'Leo','Fuoco Amico');


--Doubles-285
insert into kills values ('Doubles',285,'Siwei','Sandro','Altro'),
 ('Doubles',285,'Leo','Ale','Smash Laterale'),
 ('Doubles',285,'Ale','Leo','Smash Finale'),
 ('Doubles',285,'Ale','Sandro','Smash Finale'),
 ('Doubles',285,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',285,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',285,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',285,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',285,'Sandro','Ale','Smash Finale'),
 ('Doubles',285,'Leo','Siwei','Speciale Standard');

insert into deaths values ('Doubles',285,'Sandro','Mancato Recupero'),
 ('Doubles',285,'Siwei','Fuoco Amico'),
 ('Doubles',285,'Ale','Fuoco Amico'),
 ('Doubles',285,'Siwei','Fuoco Amico'),
 ('Doubles',285,'Leo','Fuoco Amico');


--Single-802
insert into kills values ('Single',802,'Siwei','Sandro','Smash Laterale'),
 ('Single',802,'Sandro','Siwei','Speciale in Su'),
 ('Single',802,'Leo','Ale','Smash Laterale'),
 ('Single',802,'Ale','Leo','Aereo in Su'),
 ('Single',802,'Ale','Sandro','Altro'),
 ('Single',802,'Leo','Ale','In Corsa'),
 ('Single',802,'Siwei','Sandro','Smash Laterale'),
 ('Single',802,'Ale','Leo','Altro'),
 ('Single',802,'Ale','Siwei','Smash Laterale'),
 ('Single',802,'Siwei','Leo','Aereo Frontale'),
 ('Single',802,'Ale','Siwei','Smash in Su');

insert into deaths values ('Single',802,'Sandro','Autodistruzione'),
 ('Single',802,'Leo','Autodistruzione');


--Single-801
insert into kills values ('Single',801,'Ale','Sandro','Aereo in Su'),
 ('Single',801,'Sandro','Siwei','Speciale in Su'),
 ('Single',801,'Siwei','Leo','Smash Laterale'),
 ('Single',801,'Sandro','Ale','Aereo in Giù'),
 ('Single',801,'Leo','Sandro','Smash Finale'),
 ('Single',801,'Ale','Leo','Smash in Giù'),
 ('Single',801,'Sandro','Siwei','Aereo in Giù'),
 ('Single',801,'Ale','Leo','Altro'),
 ('Single',801,'Leo','Ale','Altro'),
 ('Single',801,'Sandro','Siwei','Smash Finale'),
 ('Single',801,'Ale','Sandro','Altro');

insert into deaths values ('Single',801,'Leo','Autodistruzione'),
 ('Single',801,'Ale','Autodistruzione'),
 ('Single',801,'Sandro','Big Blue');


--Single-800
insert into kills values ('Single',800,'Leo','Siwei','Smash Laterale'),
 ('Single',800,'Ale','Leo','Speciale in Giù'),
 ('Single',800,'Leo','Sandro','Smash Finale'),
 ('Single',800,'Leo','Siwei','Smash Finale'),
 ('Single',800,'Siwei','Ale','In Corsa'),
 ('Single',800,'Sandro','Siwei','Smash Finale'),
 ('Single',800,'Sandro','Leo','Smash Finale'),
 ('Single',800,'Ale','Sandro','Speciale in Giù'),
 ('Single',800,'Sandro','Ale','Smash in Su'),
 ('Single',800,'Ale','Sandro','Aereo Posteriore'),
 ('Single',800,'Ale','Leo','Smash Finale');


--Single-799
insert into kills values ('Single',799,'Siwei','Leo','Speciale Standard'),
 ('Single',799,'Leo','Ale','Smash Laterale'),
 ('Single',799,'Siwei','Sandro','Smash in Su'),
 ('Single',799,'Leo','Siwei','Smash Finale'),
 ('Single',799,'Sandro','Leo','Smash Finale'),
 ('Single',799,'Sandro','Ale','Smash Finale'),
 ('Single',799,'Ale','Sandro','Speciale in Giù'),
 ('Single',799,'Ale','Leo','Speciale in Giù'),
 ('Single',799,'Ale','Siwei','Aereo Frontale'),
 ('Single',799,'Siwei','Sandro','Smash in Su'),
 ('Single',799,'Ale','Siwei','Altro');

insert into deaths values ('Single',799,'Siwei','Mancato Recupero');


--Single-798
insert into kills values ('Single',798,'Siwei','Leo','Aereo Frontale'),
 ('Single',798,'Sandro','Siwei','Smash in Su'),
 ('Single',798,'Sandro','Siwei','Altro'),
 ('Single',798,'Leo','Ale','Smash in Su'),
 ('Single',798,'Leo','Sandro','Smash in Su'),
 ('Single',798,'Sandro','Siwei','Smash Finale'),
 ('Single',798,'Ale','Leo','Smash Finale'),
 ('Single',798,'Leo','Sandro','Speciale in Giù'),
 ('Single',798,'Leo','Ale','Speciale Laterale'),
 ('Single',798,'Sandro','Ale','Speciale in Giù'),
 ('Single',798,'Sandro','Leo','Speciale in Giù');

insert into deaths values ('Single',798,'Siwei','Autodistruzione');


--Single-797
insert into kills values ('Single',797,'Sandro','Ale','Speciale in Su'),
 ('Single',797,'Ale','Sandro','Smash in Giù'),
 ('Single',797,'Leo','Siwei','Smash Laterale'),
 ('Single',797,'Siwei','Leo','Speciale in Giù'),
 ('Single',797,'Leo','Siwei','Aereo Posteriore'),
 ('Single',797,'Sandro','Ale','Aereo Frontale'),
 ('Single',797,'Sandro','Leo','Smash Finale'),
 ('Single',797,'Leo','Siwei','Speciale in Su'),
 ('Single',797,'Ale','Sandro','Smash in Giù'),
 ('Single',797,'Sandro','Ale','Aereo in Giù'),
 ('Single',797,'Leo','Sandro','Smash Laterale');


--Single-796
insert into kills values ('Single',796,'Siwei','Leo','Speciale Standard'),
 ('Single',796,'Sandro','Ale','Altro'),
 ('Single',796,'Sandro','Siwei','Altro'),
 ('Single',796,'Leo','Sandro','Smash Laterale'),
 ('Single',796,'Ale','Leo','Smash Finale'),
 ('Single',796,'Leo','Ale','Speciale Standard'),
 ('Single',796,'Leo','Siwei','Smash Laterale'),
 ('Single',796,'Sandro','Leo','Smash Finale'),
 ('Single',796,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH
 ('Single',796,'Ale','Sandro','Smash in Giù'),
 ('Single',796,'Sandro','Ale','Altro');

insert into deaths values ('Single',796,'Ale','Mancato Recupero'),
 ('Single',796,'Siwei','Mancato Recupero'),
 ('Single',796,'Ale','Mancato Recupero');


--Single-795
insert into kills values ('Single',795,'Siwei','Leo','Speciale Standard'),
 ('Single',795,'Siwei','Sandro','Speciale in Giù'),
 ('Single',795,'Leo','Ale','Smash Laterale'),
 ('Single',795,'Leo','Siwei','Smash Laterale'),
 ('Single',795,'Ale','Siwei','Altro'),
 ('Single',795,'Sandro','Leo','Altro'),
 ('Single',795,'Sandro','Ale','Aereo in Giù'),
 ('Single',795,'Ale','Sandro','Aereo in Su'),
 ('Single',795,'Sandro','Siwei','Aereo in Giù'),
 ('Single',795,'Ale','Leo','Smash in Giù'),
 ('Single',795,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Single',795,'Siwei','Mancato Recupero'),
 ('Single',795,'Leo','Mancato Recupero');


--Single-794
insert into kills values ('Single',794,'Leo','Siwei','Altro'),
 ('Single',794,'Siwei','Ale','Peculiare'), --GANONDORF: VOLCANO KICK
 ('Single',794,'Leo','Sandro','Smash in Su'),
 ('Single',794,'Sandro','Leo','Aereo in Giù'),
 ('Single',794,'Ale','Siwei','Altro'),
 ('Single',794,'Ale','Siwei','Smash Finale'),
 ('Single',794,'Sandro','Leo','Smash Finale'),
 ('Single',794,'Ale','Leo','Altro'),
 ('Single',794,'Sandro','Ale','Aereo Frontale'),
 ('Single',794,'Sandro','Ale','Altro');

insert into deaths values ('Single',794,'Siwei','Mancato Recupero'),
 ('Single',794,'Siwei','Mancato Recupero'),
 ('Single',794,'Leo','Mancato Recupero'),
 ('Single',794,'Ale','Mancato Recupero');


--Single-793
insert into kills values ('Single',793,'Siwei','Ale','Smash in Su'),
 ('Single',793,'Siwei','Sandro','Smash in Su'),
 ('Single',793,'Ale','Siwei','Aereo Posteriore'),
 ('Single',793,'Siwei','Leo','Smash in Su'),
 ('Single',793,'Leo','Ale','Speciale Standard'),
 ('Single',793,'Leo','Siwei','Smash Finale'),
 ('Single',793,'Sandro','Ale','Speciale in Giù'),
 ('Single',793,'Siwei','Sandro','Smash in Su'),
 ('Single',793,'Leo','Siwei','Smash Laterale'),
 ('Single',793,'Sandro','Leo','Smash in Su'),
 ('Single',793,'Leo','Sandro','Smash Laterale');


--Single-792
insert into kills values ('Single',792,'Sandro','Leo','Speciale in Su'),
 ('Single',792,'Ale','Siwei','Smash Laterale'),
 ('Single',792,'Leo','Sandro','Speciale Laterale'),
 ('Single',792,'Leo','Siwei','Altro'),
 ('Single',792,'Siwei','Leo','Smash Finale'),
 ('Single',792,'Leo','Sandro','Smash Finale'),
 ('Single',792,'Siwei','Ale','Speciale Standard'),
 ('Single',792,'Sandro','Siwei','Smash Finale'),
 ('Single',792,'Sandro','Ale','Aereo in Giù'),
 ('Single',792,'Leo','Sandro','Speciale Laterale'),
 ('Single',792,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',792,'Siwei','Autodistruzione');


--Single-791
insert into kills values ('Single',791,'Sandro','Siwei','Altro'),
 ('Single',791,'Ale','Sandro','Smash in Su'),
 ('Single',791,'Sandro','Ale','Aereo in Giù'),
 ('Single',791,'Leo','Siwei','Peculiare'), --NESS: PK ROCKET
 ('Single',791,'Sandro','Leo','Smash Finale'),
 ('Single',791,'Leo','Siwei','Smash Finale'),
 ('Single',791,'Leo','Ale','Smash Finale'),
 ('Single',791,'Ale','Sandro','Smash in Su'),
 ('Single',791,'Sandro','Leo','Aereo in Giù'),
 ('Single',791,'Sandro','Ale','Aereo in Giù'),
 ('Single',791,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',791,'Siwei','Autodistruzione');


--Single-790
insert into kills values ('Single',790,'Ale','Leo','Altro'),
 ('Single',790,'Ale','Sandro','Altro'),
 ('Single',790,'Ale','Siwei','Speciale Standard'),
 ('Single',790,'Siwei','Leo','Smash Laterale'),
 ('Single',790,'Leo','Siwei','Smash Finale'),
 ('Single',790,'Siwei','Ale','Smash Finale'),
 ('Single',790,'Siwei','Leo','Speciale Standard'),
 ('Single',790,'Sandro','Ale','Smash Finale'),
 ('Single',790,'Ale','Sandro','Smash in Giù'),
 ('Single',790,'Sandro','Siwei','Altro'),
 ('Single',790,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Single',790,'Leo','Mancato Recupero'),
 ('Single',790,'Sandro','Autodistruzione'),
 ('Single',790,'Siwei','Mancato Recupero');


--Single-789
insert into kills values ('Single',789,'Siwei','Ale','Smash Laterale'),
 ('Single',789,'Sandro','Siwei','Aereo in Giù'),
 ('Single',789,'Siwei','Ale','Speciale Laterale'),
 ('Single',789,'Siwei','Sandro','Smash Finale'),
 ('Single',789,'Siwei','Leo','Speciale Laterale'),
 ('Single',789,'Sandro','Siwei','In Corsa'),
 ('Single',789,'Sandro','Ale','Speciale Laterale'),
 ('Single',789,'Siwei','Leo','Speciale Laterale'),
 ('Single',789,'Leo','Sandro','Smash Laterale'),
 ('Single',789,'Siwei','Leo','Smash Finale'),
 ('Single',789,'Sandro','Siwei','Speciale Laterale');


--Single-788
insert into kills values ('Single',788,'Siwei','Sandro','Smash Laterale'),
 ('Single',788,'Leo','Ale','Aereo Posteriore'),
 ('Single',788,'Ale','Siwei','Smash Laterale'),
 ('Single',788,'Ale','Leo','Aereo Frontale'),
 ('Single',788,'Siwei','Sandro','Altro'),
 ('Single',788,'Leo','Ale','Smash Laterale'),
 ('Single',788,'Siwei','Sandro','Altro'),
 ('Single',788,'Siwei','Leo','Speciale Standard'),
 ('Single',788,'Leo','Siwei','Smash Laterale'),
 ('Single',788,'Ale','Leo','Smash Finale'),
 ('Single',788,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Single',788,'Sandro','Mancato Recupero'),
 ('Single',788,'Sandro','Mancato Recupero');


--Single-787
insert into kills values ('Single',787,'Ale','Siwei','Altro'),
 ('Single',787,'Leo','Sandro','Smash Laterale'),
 ('Single',787,'Sandro','Siwei','Altro'),
 ('Single',787,'Sandro','Ale','In Corsa'),
 ('Single',787,'Sandro','Siwei','Altro'),
 ('Single',787,'Sandro','Leo','Altro'),
 ('Single',787,'Leo','Sandro','Smash Finale'),
 ('Single',787,'Leo','Ale','Altro'),
 ('Single',787,'Ale','Leo','Aereo Posteriore'),
 ('Single',787,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',787,'Siwei','Mancato Recupero'),
 ('Single',787,'Siwei','Mancato Recupero'),
 ('Single',787,'Siwei','Mancato Recupero'),
 ('Single',787,'Sandro','Autodistruzione'),
 ('Single',787,'Ale','Autodistruzione');


--Single-786
insert into kills values ('Single',786,'Leo','Sandro','Smash Laterale'),
 ('Single',786,'Siwei','Ale','Speciale Laterale'),
 ('Single',786,'Sandro','Leo','Speciale in Giù'),
 ('Single',786,'Ale','Siwei','Aereo Posteriore'),
 ('Single',786,'Leo','Ale','Altro'),
 ('Single',786,'Leo','Ale','Smash Finale'),
 ('Single',786,'Siwei','Sandro','Speciale Laterale'),
 ('Single',786,'Sandro','Siwei','Speciale in Giù'),
 ('Single',786,'Sandro','Leo','Speciale in Giù'),
 ('Single',786,'Siwei','Leo','Smash Finale');

insert into deaths values ('Single',786,'Ale','Gaur Plain'),
 ('Single',786,'Sandro','Autodistruzione');


--Single-785
insert into kills values ('Single',785,'Leo','Ale','Smash Laterale'),
 ('Single',785,'Siwei','Leo','Speciale in Su'),
 ('Single',785,'Ale','Sandro','Smash Finale'),
 ('Single',785,'Leo','Siwei','Smash in Su'),
 ('Single',785,'Leo','Ale','Smash Laterale'),
 ('Single',785,'Sandro','Leo','Smash Finale'),
 ('Single',785,'Siwei','Ale','Altro'),
 ('Single',785,'Leo','Sandro','Smash in Su'),
 ('Single',785,'Leo','Siwei','Smash Laterale'),
 ('Single',785,'Leo','Siwei','Smash Finale'),
 ('Single',785,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',785,'Ale','Mancato Recupero');


--Single-784
insert into kills values ('Single',784,'Ale','Sandro','Speciale Standard'),
 ('Single',784,'Sandro','Ale','Altro'),
 ('Single',784,'Sandro','Leo','Speciale in Su'),
 ('Single',784,'Leo','Siwei','Smash Laterale'),
 ('Single',784,'Leo','Sandro','Aereo Frontale'),
 ('Single',784,'Sandro','Leo','Speciale in Su'),
 ('Single',784,'Siwei','Ale','Smash Finale'),
 ('Single',784,'Siwei','Sandro','Smash Finale'),
 ('Single',784,'Leo','Siwei','Smash in Su'),
 ('Single',784,'Ale','Siwei','Smash Finale'),
 ('Single',784,'Ale','Leo','Speciale Standard');

insert into deaths values ('Single',784,'Ale','Mancato Recupero');


--Single-783
insert into kills values ('Single',783,'Ale','Leo','Speciale Standard'),
 ('Single',783,'Siwei','Sandro','Speciale Laterale'),
 ('Single',783,'Siwei','Ale','Speciale Laterale'),
 ('Single',783,'Ale','Leo','Speciale Standard'),
 ('Single',783,'Siwei','Sandro','Altro'),
 ('Single',783,'Sandro','Ale','Smash Finale'),
 ('Single',783,'Siwei','Leo','Smash Finale'),
 ('Single',783,'Siwei','Sandro','Smash Finale'),
 ('Single',783,'Ale','Siwei','Altro'),
 ('Single',783,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Single',783,'Sandro','Autodistruzione'),
 ('Single',783,'Siwei','Mancato Recupero');


--Single-782
insert into kills values ('Single',782,'Sandro','Siwei','Altro'),
 ('Single',782,'Siwei','Sandro','Speciale Laterale'),
 ('Single',782,'Siwei','Leo','Smash in Su'),
 ('Single',782,'Siwei','Sandro','Smash Finale'),
 ('Single',782,'Leo','Ale','Smash in Su'),
 ('Single',782,'Ale','Siwei','Smash Finale'),
 ('Single',782,'Ale','Siwei','Speciale in Su'),
 ('Single',782,'Leo','Ale','Smash Laterale'),
 ('Single',782,'Leo','Sandro','Smash Laterale'),
 ('Single',782,'Ale','Leo','Altro'),
 ('Single',782,'Ale','Leo','Altro');

insert into deaths values ('Single',782,'Siwei','Mancato Recupero'),
 ('Single',782,'Leo','Mario Circuit'),
 ('Single',782,'Leo','Mancato Recupero');


--Single-781
insert into kills values ('Single',781,'Sandro','Siwei','Speciale in Su'),
 ('Single',781,'Sandro','Ale','Speciale in Su'),
 ('Single',781,'Siwei','Sandro','In Corsa'),
 ('Single',781,'Sandro','Leo','Meteora'),
 ('Single',781,'Siwei','Leo','Smash Finale'),
 ('Single',781,'Ale','Siwei','Aereo Frontale'),
 ('Single',781,'Siwei','Ale','Peculiare'), --CLOUD: LIMIT
 ('Single',781,'Ale','Siwei','Smash Laterale'),
 ('Single',781,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',781,'Sandro','Autodistruzione');


--Single-780
insert into kills values ('Single',780,'Sandro','Leo','Smash Laterale'),
 ('Single',780,'Siwei','Sandro','Altro'),
 ('Single',780,'Sandro','Ale','Smash in Su'),
 ('Single',780,'Sandro','Siwei','Altro'),
 ('Single',780,'Ale','Sandro','Smash Finale'),
 ('Single',780,'Sandro','Leo','Smash Finale'),
 ('Single',780,'Sandro','Ale','Smash Finale'),
 ('Single',780,'Leo','Sandro','Altro'),
 ('Single',780,'Ale','Siwei','Aereo Standard'),
 ('Single',780,'Siwei','Leo','Altro'),
 ('Single',780,'Siwei','Ale','In Corsa');

insert into deaths values ('Single',780,'Sandro','Autodistruzione'),
 ('Single',780,'Siwei','Mancato Recupero'),
 ('Single',780,'Sandro','Mancato Recupero'),
 ('Single',780,'Leo','Halberd');


--Single-779
insert into kills values ('Single',779,'Sandro','Ale','Speciale Laterale'),
 ('Single',779,'Leo','Siwei','Altro'),
 ('Single',779,'Ale','Leo','In Corsa'),
 ('Single',779,'Ale','Sandro','Smash Finale'),
 ('Single',779,'Siwei','Leo','Altro'),
 ('Single',779,'Sandro','Ale','Speciale Laterale'),
 ('Single',779,'Leo','Siwei','Smash Laterale'),
 ('Single',779,'Leo','Sandro','Smash Laterale'),
 ('Single',779,'Sandro','Siwei','Altro'),
 ('Single',779,'Sandro','Leo','Altro');

insert into deaths values ('Single',779,'Siwei','Autodistruzione'),
 ('Single',779,'Ale','Rainbow Cruise'),
 ('Single',779,'Siwei','Autodistruzione'),
 ('Single',779,'Leo','Rainbow Cruise');


--Single-778
insert into kills values ('Single',778,'Siwei','Leo','Speciale in Su'),
 ('Single',778,'Siwei','Sandro','Speciale in Su'),
 ('Single',778,'Ale','Siwei','Smash in Giù'),
 ('Single',778,'Siwei','Leo','Smash Finale'),
 ('Single',778,'Sandro','Siwei','Smash Finale'),
 ('Single',778,'Sandro','Ale','Smash Finale'),
 ('Single',778,'Sandro','Leo','Altro'),
 ('Single',778,'Ale','Sandro','Smash in Giù'),
 ('Single',778,'Ale','Siwei','Altro'),
 ('Single',778,'Sandro','Ale','Altro'),
 ('Single',778,'Ale','Sandro','Aereo in Su');

insert into deaths values ('Single',778,'Siwei','Mancato Recupero'),
 ('Single',778,'Ale','Mancato Recupero');


--Single-777
insert into kills values ('Single',777,'Ale','Leo','Smash Laterale'),
 ('Single',777,'Siwei','Sandro','Smash in Su'),
 ('Single',777,'Sandro','Siwei','In Corsa'),
 ('Single',777,'Leo','Ale','Aereo Posteriore'),
 ('Single',777,'Siwei','Leo','Smash Finale'),
 ('Single',777,'Ale','Sandro','Altro'),
 ('Single',777,'Leo','Siwei','Peculiare'), --INCINEROAR: VENDETTA
 ('Single',777,'Leo','Sandro','Smash Laterale'),
 ('Single',777,'Ale','Leo','Aereo in Su'),
 ('Single',777,'Siwei','Ale','Smash Laterale'),
 ('Single',777,'Ale','Siwei','Altro');

insert into deaths values ('Single',777,'Sandro','Mancato Recupero'),
 ('Single',777,'Siwei','Autodistruzione');


--Single-776
insert into kills values ('Single',776,'Siwei','Leo','Smash in Su'),
 ('Single',776,'Ale','Siwei','Aereo in Su'),
 ('Single',776,'Leo','Ale','Altro'),
 ('Single',776,'Siwei','Sandro','Smash Finale'),
 ('Single',776,'Sandro','Leo','Speciale in Giù'),
 ('Single',776,'Ale','Siwei','Smash Finale'),
 ('Single',776,'Leo','Siwei','Altro'),
 ('Single',776,'Siwei','Leo','Speciale Laterale'),
 ('Single',776,'Sandro','Ale','Aereo in Su'),
 ('Single',776,'Ale','Sandro','Smash Laterale'),
 ('Single',776,'Sandro','Ale','Speciale Standard');

insert into deaths values ('Single',776,'Ale','Autodistruzione'),
 ('Single',776,'Siwei','Autodistruzione');


--Single-775
insert into kills values ('Single',775,'Siwei','Sandro','Smash Laterale'),
 ('Single',775,'Sandro','Siwei','Speciale in Giù'),
 ('Single',775,'Siwei','Ale','Smash in Su'),
 ('Single',775,'Ale','Leo','Aereo Frontale'),
 ('Single',775,'Ale','Siwei','Smash Finale'),
 ('Single',775,'Ale','Sandro','Smash Finale'),
 ('Single',775,'Leo','Ale','Smash Finale'),
 ('Single',775,'Ale','Leo','Aereo Frontale'),
 ('Single',775,'Sandro','Leo','Altro'),
 ('Single',775,'Ale','Sandro','Altro');

insert into deaths values ('Single',775,'Siwei','Autodistruzione'),
 ('Single',775,'Leo','Magicant');


--Single-774
insert into kills values ('Single',774,'Ale','Leo','Footstool'),
 ('Single',774,'Sandro','Siwei','Speciale in Giù'),
 ('Single',774,'Siwei','Ale','Smash in Su'),
 ('Single',774,'Siwei','Sandro','Smash Finale'),
 ('Single',774,'Leo','Siwei','Smash Finale'),
 ('Single',774,'Sandro','Ale','Smash Finale'),
 ('Single',774,'Sandro','Leo','Speciale in Giù'),
 ('Single',774,'Ale','Sandro','Smash Finale'),
 ('Single',774,'Ale','Siwei','Smash Laterale'),
 ('Single',774,'Leo','Sandro','Smash Laterale'),
 ('Single',774,'Ale','Leo','Smash Laterale');


--Single-773
insert into kills values ('Single',773,'Siwei','Ale','Speciale Standard'),
 ('Single',773,'Sandro','Leo','Speciale in Giù'),
 ('Single',773,'Ale','Siwei','Footstool'),
 ('Single',773,'Ale','Leo','Speciale Laterale'),
 ('Single',773,'Ale','Leo','Smash Finale'),
 ('Single',773,'Sandro','Siwei','Speciale Standard'),
 ('Single',773,'Siwei','Sandro','Smash Laterale'),
 ('Single',773,'Sandro','Ale','Smash Finale'),
 ('Single',773,'Siwei','Sandro','Peculiare'), --CLOUD: LIMIT
 ('Single',773,'Sandro','Ale','Speciale in Giù'),
 ('Single',773,'Sandro','Ale','Smash Finale');


--Single-772
insert into kills values ('Single',772,'Sandro','Ale','Aereo in Giù'),
 ('Single',772,'Ale','Leo','Smash Finale'),
 ('Single',772,'Leo','Siwei','Smash Laterale'),
 ('Single',772,'Leo','Sandro','Smash Laterale'),
 ('Single',772,'Sandro','Siwei','Altro'),
 ('Single',772,'Sandro','Leo','Altro'),
 ('Single',772,'Leo','Ale','Smash Laterale'),
 ('Single',772,'Siwei','Sandro','Smash Finale'),
 ('Single',772,'Ale','Siwei','Smash Finale'),
 ('Single',772,'Siwei','Sandro','Altro'),
 ('Single',772,'Ale','Leo','Speciale Laterale');

insert into deaths values ('Single',772,'Siwei','Mancato Recupero'),
 ('Single',772,'Leo','Mancato Recupero'),
 ('Single',772,'Sandro','Autodistruzione');


--Single-771
insert into kills values ('Single',771,'Leo','Siwei','Smash in Su'),
 ('Single',771,'Ale','Sandro','Speciale Laterale'),
 ('Single',771,'Sandro','Ale','Smash in Su'),
 ('Single',771,'Sandro','Siwei','Speciale in Su'),
 ('Single',771,'Ale','Leo','Altro'),
 ('Single',771,'Siwei','Sandro','Smash Laterale'),
 ('Single',771,'Leo','Siwei','Aereo Posteriore'),
 ('Single',771,'Ale','Leo','Speciale Laterale'),
 ('Single',771,'Leo','Ale','Smash in Su'),
 ('Single',771,'Ale','Sandro','Smash Finale'),
 ('Single',771,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',771,'Leo','Mancato Recupero');


--Single-770
insert into kills values ('Single',770,'Sandro','Siwei','Aereo in Giù'),
 ('Single',770,'Leo','Ale','Aereo in Su'),
 ('Single',770,'Leo','Sandro','Aereo in Su'),
 ('Single',770,'Sandro','Leo','Smash Finale'),
 ('Single',770,'Sandro','Siwei','Smash Finale'),
 ('Single',770,'Ale','Sandro','Aereo in Su'),
 ('Single',770,'Sandro','Leo','Speciale in Su'),
 ('Single',770,'Leo','Ale','Aereo in Su'),
 ('Single',770,'Leo','Siwei','Smash Laterale'),
 ('Single',770,'Sandro','Leo','Smash Finale'),
 ('Single',770,'Sandro','Ale','Aereo in Giù');


--Single-769
insert into kills values ('Single',769,'Ale','Siwei','Speciale in Su'),
 ('Single',769,'Sandro','Ale','In Corsa'),
 ('Single',769,'Siwei','Leo','Speciale Laterale'),
 ('Single',769,'Ale','Siwei','Smash Finale'),
 ('Single',769,'Leo','Sandro','Smash Laterale'),
 ('Single',769,'Ale','Sandro','Smash in Su'),
 ('Single',769,'Siwei','Sandro','Smash Finale'),
 ('Single',769,'Ale','Leo','Aereo in Su'),
 ('Single',769,'Leo','Ale','In Corsa'),
 ('Single',769,'Leo','Siwei','Speciale in Su'),
 ('Single',769,'Ale','Leo','Speciale Standard');


--Single-768
insert into kills values ('Single',768,'Leo','Ale','Smash Laterale'),
 ('Single',768,'Sandro','Leo','Smash Laterale'),
 ('Single',768,'Siwei','Sandro','Smash in Su'),
 ('Single',768,'Ale','Leo','Smash Finale'),
 ('Single',768,'Sandro','Ale','Altro'),
 ('Single',768,'Sandro','Siwei','Smash Laterale'),
 ('Single',768,'Siwei','Sandro','Smash Finale'),
 ('Single',768,'Leo','Siwei','Smash Finale'),
 ('Single',768,'Leo','Siwei','Smash Laterale'),
 ('Single',768,'Leo','Ale','Scudo Rotto'),
 ('Single',768,'Leo','Sandro','Aereo Frontale');

insert into deaths values ('Single',768,'Ale','Autodistruzione'),
 ('Single',768,'Ale','Scudo Rotto');


--Single-767
insert into kills values ('Single',767,'Sandro','Leo','Smash in Su'),
 ('Single',767,'Ale','Sandro','Speciale in Su'),
 ('Single',767,'Sandro','Siwei','Smash Laterale'),
 ('Single',767,'Sandro','Ale','Smash Finale'),
 ('Single',767,'Ale','Leo','Smash Finale'),
 ('Single',767,'Siwei','Sandro','Smash Finale'),
 ('Single',767,'Leo','Sandro','Smash Laterale'),
 ('Single',767,'Leo','Ale','Altro'),
 ('Single',767,'Leo','Siwei','Smash Laterale'),
 ('Single',767,'Ale','Leo','Altro'),
 ('Single',767,'Ale','Siwei','Altro');

insert into deaths values ('Single',767,'Ale','Autodistruzione'),
 ('Single',767,'Leo','Summit'),
 ('Single',767,'Siwei','Summit');


--Single-766
insert into kills values ('Single',766,'Siwei','Ale','Altro'),
 ('Single',766,'Leo','Sandro','Smash Laterale'),
 ('Single',766,'Siwei','Leo','Altro'),
 ('Single',766,'Leo','Sandro','Smash in Su'),
 ('Single',766,'Siwei','Ale','Smash Laterale'),
 ('Single',766,'Sandro','Leo','Smash Finale'),
 ('Single',766,'Ale','Siwei','Speciale Laterale'),
 ('Single',766,'Siwei','Sandro','Altro'),
 ('Single',766,'Ale','Leo','Peculiare'), --INCINEROAR: VENDETTA
 ('Single',766,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Single',766,'Ale','Mancato Recupero'),
 ('Single',766,'Leo','Norfair'),
 ('Single',766,'Sandro','Norfair');


--Single-765
insert into kills values ('Single',765,'Leo','Siwei','Smash Laterale'),
 ('Single',765,'Siwei','Leo','Smash Finale'),
 ('Single',765,'Siwei','Ale','Altro'),
 ('Single',765,'Ale','Siwei','Altro'),
 ('Single',765,'Ale','Sandro','Speciale in Giù'),
 ('Single',765,'Sandro','Ale','In Corsa'),
 ('Single',765,'Leo','Siwei','Altro'),
 ('Single',765,'Sandro','Leo','Aereo in Su'),
 ('Single',765,'Ale','Sandro','Smash Laterale'),
 ('Single',765,'Leo','Sandro','Smash Finale'),
 ('Single',765,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',765,'Ale','Autodistruzione'),
 ('Single',765,'Siwei','Autodistruzione'),
 ('Single',765,'Siwei','Mancato Recupero');


--Single-764
insert into kills values ('Single',764,'Ale','Leo','Aereo in Su'),
 ('Single',764,'Leo','Siwei','Aereo in Giù'),
 ('Single',764,'Leo','Sandro','Smash Laterale'),
 ('Single',764,'Leo','Sandro','Altro'),
 ('Single',764,'Sandro','Leo','Smash Finale'),
 ('Single',764,'Ale','Sandro','Smash Finale'),
 ('Single',764,'Ale','Siwei','Altro'),
 ('Single',764,'Leo','Ale','Aereo in Giù'),
 ('Single',764,'Ale','Leo','Speciale in Giù');

insert into deaths values ('Single',764,'Sandro','Autodistruzione'),
 ('Single',764,'Siwei','Mancato Recupero'),
 ('Single',764,'Siwei','Autodistruzione');


--Single-763
insert into kills values ('Single',763,'Leo','Siwei','Altro'),
 ('Single',763,'Sandro','Siwei','Speciale in Giù'),
 ('Single',763,'Siwei','Ale','Speciale Standard'),
 ('Single',763,'Ale','Leo','Altro'),
 ('Single',763,'Siwei','Sandro','Smash in Su'),
 ('Single',763,'Siwei','Ale','Speciale Standard'),
 ('Single',763,'Sandro','Siwei','Speciale in Giù'),
 ('Single',763,'Leo','Sandro','Smash in Su'),
 ('Single',763,'Ale','Leo','Speciale in Giù'),
 ('Single',763,'Sandro','Ale','Speciale in Giù'),
 ('Single',763,'Sandro','Leo','Speciale Standard');

insert into deaths values ('Single',763,'Siwei','Saffron City'),
 ('Single',763,'Leo','Autodistruzione');


--Single-762
insert into kills values ('Single',762,'Siwei','Leo','Speciale in Su'),
 ('Single',762,'Siwei','Sandro','Altro'),
 ('Single',762,'Siwei','Ale','Aereo Posteriore'),
 ('Single',762,'Sandro','Siwei','Smash Finale'),
 ('Single',762,'Ale','Sandro','Smash Finale'),
 ('Single',762,'Ale','Leo','Aereo in Su'),
 ('Single',762,'Siwei','Sandro','Smash Finale'),
 ('Single',762,'Leo','Ale','Speciale Laterale'),
 ('Single',762,'Leo','Siwei','Smash Laterale'),
 ('Single',762,'Leo','Siwei','Smash Laterale'),
 ('Single',762,'Leo','Ale','Speciale Laterale');

insert into deaths values ('Single',762,'Sandro','Autodistruzione');


--Single-761
insert into kills values ('Single',761,'Leo','Ale','Altro'),
 ('Single',761,'Sandro','Leo','Speciale in Giù'),
 ('Single',761,'Leo','Sandro','Speciale in Su'),
 ('Single',761,'Sandro','Siwei','Altro'),
 ('Single',761,'Siwei','Ale','Smash Finale'),
 ('Single',761,'Sandro','Leo','Altro'),
 ('Single',761,'Siwei','Leo','Smash in Su'),
 ('Single',761,'Sandro','Siwei','Speciale in Giù'),
 ('Single',761,'Siwei','Sandro','Aereo in Giù'),
 ('Single',761,'Siwei','Ale','Speciale Standard'),
 ('Single',761,'Siwei','Sandro','Smash Finale');

insert into deaths values ('Single',761,'Ale','Autodistruzione'),
 ('Single',761,'Siwei','Mancato Recupero'),
 ('Single',761,'Leo','Unova Pokemon League');


--Single-760
insert into kills values ('Single',760,'Ale','Leo','In Corsa'),
 ('Single',760,'Siwei','Sandro','Aereo in Su'),
 ('Single',760,'Ale','Siwei','In Corsa'),
 ('Single',760,'Sandro','Siwei','Smash Finale'),
 ('Single',760,'Sandro','Leo','Smash Finale'),
 ('Single',760,'Ale','Sandro','Smash Finale'),
 ('Single',760,'Sandro','Ale','Aereo Posteriore'),
 ('Single',760,'Siwei','Ale','Aereo Frontale'),
 ('Single',760,'Ale','Siwei','Smash Finale'),
 ('Single',760,'Ale','Sandro','Smash Finale'),
 ('Single',760,'Leo','Ale','Smash in Su');


--Single-759
insert into kills values ('Single',759,'Leo','Siwei','Speciale in Giù'),
 ('Single',759,'Ale','Sandro','Aereo in Su'),
 ('Single',759,'Siwei','Leo','Smash in Su'),
 ('Single',759,'Sandro','Leo','Smash Finale'),
 ('Single',759,'Leo','Siwei','Smash Laterale'),
 ('Single',759,'Ale','Sandro','Smash Finale'),
 ('Single',759,'Siwei','Ale','Smash Finale'),
 ('Single',759,'Sandro','Siwei','Aereo in Su'),
 ('Single',759,'Sandro','Ale','Smash Finale'),
 ('Single',759,'Ale','Leo','Smash Laterale'),
 ('Single',759,'Ale','Sandro','Aereo in Su');


--Single-758
insert into kills values ('Single',758,'Sandro','Ale','Speciale Standard'),
 ('Single',758,'Siwei','Sandro','Smash Finale'),
 ('Single',758,'Ale','Siwei','Aereo Frontale'),
 ('Single',758,'Sandro','Leo','Smash Finale'),
 ('Single',758,'Leo','Sandro','Smash Laterale'),
 ('Single',758,'Ale','Leo','Aereo Posteriore'),
 ('Single',758,'Leo','Ale','In Corsa'),
 ('Single',758,'Ale','Leo','Smash Finale'),
 ('Single',758,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',758,'Siwei','Autodistruzione'),
 ('Single',758,'Siwei','Autodistruzione');


--Single-757
insert into kills values ('Single',757,'Ale','Siwei','Altro'),
 ('Single',757,'Leo','Siwei','Smash Laterale'),
 ('Single',757,'Sandro','Ale','Speciale Standard'),
 ('Single',757,'Leo','Sandro','Altro'),
 ('Single',757,'Leo','Siwei','Altro'),
 ('Single',757,'Sandro','Leo','Altro'),
 ('Single',757,'Leo','Sandro','Altro'),
 ('Single',757,'Sandro','Ale','Altro'),
 ('Single',757,'Sandro','Leo','Smash in Su'),
 ('Single',757,'Leo','Ale','Speciale in Su'),
 ('Single',757,'Ale','Sandro','Altro');

insert into deaths values ('Single',757,'Siwei','Mancato Recupero'),
 ('Single',757,'Sandro','Mancato Recupero'),
 ('Single',757,'Siwei','Norfair'),
 ('Single',757,'Leo','Mancato Recupero'),
 ('Single',757,'Sandro','Norfair'),
 ('Single',757,'Ale','Norfair'),
 ('Single',757,'Sandro','Autodistruzione');


--Single-756
insert into kills values ('Single',756,'Ale','Leo','Aereo Posteriore'),
 ('Single',756,'Sandro','Ale','Scudo Rotto'),
 ('Single',756,'Siwei','Sandro','Altro'),
 ('Single',756,'Ale','Siwei','Speciale in Giù'),
 ('Single',756,'Leo','Ale','Smash Finale'),
 ('Single',756,'Siwei','Leo','Smash Finale'),
 ('Single',756,'Sandro','Leo','Altro'),
 ('Single',756,'Ale','Siwei','Smash Finale'),
 ('Single',756,'Sandro','Ale','Speciale in Su'),
 ('Single',756,'Siwei','Sandro','Smash Laterale'),
 ('Single',756,'Siwei','Sandro','Altro');

insert into deaths values ('Single',756,'Ale','Scudo Rotto'),
 ('Single',756,'Sandro','Big Blue'),
 ('Single',756,'Leo','Big Blue'),
 ('Single',756,'Sandro','Big Blue');


--Single-755
insert into kills values ('Single',755,'Sandro','Leo','Aereo in Su'),
 ('Single',755,'Sandro','Siwei','Aereo in Su'),
 ('Single',755,'Leo','Ale','Peculiare'), --PECULIAR: SORA
 ('Single',755,'Siwei','Sandro','Speciale Laterale'),
 ('Single',755,'Sandro','Siwei','Smash in Su'),
 ('Single',755,'Ale','Leo','Aereo in Su'),
 ('Single',755,'Sandro','Ale','Aereo in Giù'),
 ('Single',755,'Sandro','Siwei','Smash Laterale'),
 ('Single',755,'Ale','Sandro','Aereo Frontale'),
 ('Single',755,'Ale','Leo','Smash Finale'),
 ('Single',755,'Ale','Sandro','Smash in Su');


--Single-754
insert into kills values ('Single',754,'Sandro','Siwei','Speciale in Giù'),
 ('Single',754,'Leo','Ale','Speciale Standard'),
 ('Single',754,'Ale','Leo','Smash in Su'),
 ('Single',754,'Leo','Ale','Smash Finale'),
 ('Single',754,'Leo','Siwei','Speciale Standard'),
 ('Single',754,'Siwei','Sandro','Speciale Laterale'),
 ('Single',754,'Sandro','Leo','Smash Laterale'),
 ('Single',754,'Siwei','Ale','Smash Finale'),
 ('Single',754,'Leo','Siwei','Speciale Standard'),
 ('Single',754,'Leo','Sandro','Speciale Standard'),
 ('Single',754,'Sandro','Leo','Smash in Su');


--Single-753
insert into kills values ('Single',753,'Leo','Siwei','Smash Laterale'),
 ('Single',753,'Siwei','Ale','Smash in Su'),
 ('Single',753,'Sandro','Leo','Smash Laterale'),
 ('Single',753,'Siwei','Sandro','Smash Finale'),
 ('Single',753,'Sandro','Siwei','Altro'),
 ('Single',753,'Sandro','Leo','Smash Finale'),
 ('Single',753,'Siwei','Sandro','Speciale Laterale'),
 ('Single',753,'Leo','Ale','Smash Laterale'),
 ('Single',753,'Leo','Siwei','Speciale Standard'),
 ('Single',753,'Ale','Leo','Smash Finale'),
 ('Single',753,'Sandro','Ale','In Corsa');

insert into deaths values ('Single',753,'Siwei','Gerudo Valley');


--Single-752
insert into kills values ('Single',752,'Sandro','Leo','Altro'),
 ('Single',752,'Ale','Siwei','Altro'),
 ('Single',752,'Sandro','Ale','Altro'),
 ('Single',752,'Ale','Siwei','Altro'),
 ('Single',752,'Leo','Ale','Meteora'),
 ('Single',752,'Leo','Sandro','Smash Finale'),
 ('Single',752,'Sandro','Ale','Speciale in Giù'),
 ('Single',752,'Sandro','Siwei','Altro'),
 ('Single',752,'Sandro','Leo','Altro'),
 ('Single',752,'Leo','Sandro','Smash Laterale'),
 ('Single',752,'Leo','Sandro','Altro');

insert into deaths values ('Single',752,'Siwei','Mancato Recupero'),
 ('Single',752,'Leo','Garden of Hope'),
 ('Single',752,'Ale','Garden of Hope'),
 ('Single',752,'Siwei','Garden of Hope'),
 ('Single',752,'Siwei','Autodistruzione'),
 ('Single',752,'Leo','Garden of Hope'),
 ('Single',752,'Sandro','Autodistruzione');


--Single-751
insert into kills values ('Single',751,'Leo','Sandro','Altro'),
 ('Single',751,'Leo','Siwei','Smash Laterale'),
 ('Single',751,'Sandro','Leo','Aereo Frontale'),
 ('Single',751,'Leo','Siwei','Smash Finale'),
 ('Single',751,'Sandro','Ale','Aereo Frontale'),
 ('Single',751,'Siwei','Sandro','Smash Finale'),
 ('Single',751,'Ale','Leo','Smash Laterale'),
 ('Single',751,'Leo','Siwei','Smash Laterale'),
 ('Single',751,'Siwei','Sandro','Speciale Standard'),
 ('Single',751,'Leo','Ale','Smash Laterale'),
 ('Single',751,'Leo','Ale','Altro');

insert into deaths values ('Single',751,'Sandro','Autodistruzione'),
 ('Single',751,'Ale','Mancato Recupero');


--Single-750
insert into kills values ('Single',750,'Ale','Sandro','Smash Laterale'),
 ('Single',750,'Leo','Ale','Aereo Frontale'),
 ('Single',750,'Siwei','Sandro','Altro'),
 ('Single',750,'Sandro','Siwei','Smash Laterale'),
 ('Single',750,'Sandro','Leo','Smash Finale'),
 ('Single',750,'Leo','Siwei','Smash Finale'),
 ('Single',750,'Siwei','Ale','Smash in Su'),
 ('Single',750,'Sandro','Leo','Aereo Posteriore'),
 ('Single',750,'Siwei','Leo','Aereo Frontale'),
 ('Single',750,'Ale','Siwei','Smash Finale'),
 ('Single',750,'Ale','Sandro','Peculiare'); --PECULIAR: INCINEROAR

insert into deaths values ('Single',750,'Sandro','Autodistruzione');


--Single-749
insert into kills values ('Single',749,'Siwei','Leo','Smash Laterale'),
 ('Single',749,'Siwei','Sandro','Smash Laterale'),
 ('Single',749,'Sandro','Siwei','Smash Finale'),
 ('Single',749,'Sandro','Ale','Smash Finale'),
 ('Single',749,'Leo','Sandro','Smash Finale'),
 ('Single',749,'Siwei','Sandro','Smash Finale'),
 ('Single',749,'Leo','Siwei','Smash Laterale'),
 ('Single',749,'Ale','Leo','Smash Laterale'),
 ('Single',749,'Siwei','Ale','Altro'),
 ('Single',749,'Siwei','Leo','Smash in Su'),
 ('Single',749,'Siwei','Ale','Scudo Rotto');

insert into deaths values ('Single',749,'Ale','Scudo Rotto');


--Single-748
insert into kills values ('Single',748,'Sandro','Ale','Speciale in Giù'),
 ('Single',748,'Ale','Leo','Smash Laterale'),
 ('Single',748,'Leo','Sandro','Smash Laterale'),
 ('Single',748,'Leo','Ale','Smash Laterale'),
 ('Single',748,'Siwei','Sandro','Peculiare'), --GANONDORF: VOLCANO KICK
 ('Single',748,'Ale','Siwei','Smash Laterale'),
 ('Single',748,'Leo','Ale','Smash in Su'),
 ('Single',748,'Leo','Siwei','Smash Laterale'),
 ('Single',748,'Siwei','Leo','Smash Laterale'),
 ('Single',748,'Leo','Sandro','Smash in Su'),
 ('Single',748,'Leo','Siwei','Speciale in Giù');


--Single-747
insert into kills values ('Single',747,'Leo','Sandro','Speciale in Giù'),
 ('Single',747,'Siwei','Leo','Speciale Laterale'),
 ('Single',747,'Siwei','Ale','Speciale in Su'),
 ('Single',747,'Leo','Siwei','Smash Finale'),
 ('Single',747,'Leo','Sandro','Smash in Su'),
 ('Single',747,'Ale','Leo','Smash Laterale'),
 ('Single',747,'Leo','Siwei','Smash in Su'),
 ('Single',747,'Sandro','Leo','Speciale Standard'),
 ('Single',747,'Siwei','Ale','Speciale in Su'),
 ('Single',747,'Ale','Siwei','Smash Laterale'),
 ('Single',747,'Ale','Sandro','Smash Finale');


--Single-746
insert into kills values ('Single',746,'Leo','Sandro','Altro'),
 ('Single',746,'Sandro','Leo','Speciale in Giù'),
 ('Single',746,'Ale','Siwei','Smash in Giù'),
 ('Single',746,'Siwei','Ale','Speciale Laterale'),
 ('Single',746,'Siwei','Ale','Altro'),
 ('Single',746,'Leo','Sandro','Smash Finale'),
 ('Single',746,'Sandro','Siwei','Altro'),
 ('Single',746,'Ale','Leo','Smash Finale'),
 ('Single',746,'Sandro','Ale','Speciale in Giù'),
 ('Single',746,'Sandro','Leo','Smash Finale'),
 ('Single',746,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',746,'Sandro','Autodistruzione'),
 ('Single',746,'Ale','Mancato Recupero'),
 ('Single',746,'Siwei','Mancato Recupero');


--Single-745
insert into kills values ('Single',745,'Ale','Leo','Smash Laterale'),
 ('Single',745,'Sandro','Ale','Speciale in Giù'),
 ('Single',745,'Sandro','Siwei','Smash Laterale'),
 ('Single',745,'Ale','Leo','Smash Laterale'),
 ('Single',745,'Ale','Siwei','Smash in Giù'),
 ('Single',745,'Siwei','Leo','Smash Finale'),
 ('Single',745,'Siwei','Sandro','Speciale Laterale'),
 ('Single',745,'Sandro','Ale','Altro'),
 ('Single',745,'Sandro','Siwei','Altro'),
 ('Single',745,'Sandro','Ale','Altro');

insert into deaths values ('Single',745,'Ale','Mancato Recupero'),
 ('Single',745,'Siwei','Autodistruzione'),
 ('Single',745,'Ale','Autodistruzione');


--Single-744
insert into kills values ('Single',744,'Sandro','Siwei','Altro'),
 ('Single',744,'Siwei','Sandro','Speciale Laterale'),
 ('Single',744,'Sandro','Ale','Smash in Su'),
 ('Single',744,'Siwei','Leo','Smash Finale'),
 ('Single',744,'Ale','Siwei','Smash in Su'),
 ('Single',744,'Leo','Ale','Smash Finale'),
 ('Single',744,'Siwei','Sandro','Speciale Laterale'),
 ('Single',744,'Leo','Siwei','Smash Laterale'),
 ('Single',744,'Sandro','Leo','Speciale in Giù'),
 ('Single',744,'Sandro','Ale','Altro'),
 ('Single',744,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',744,'Siwei','Paper Mario'),
 ('Single',744,'Ale','Paper Mario');


--Single-743
insert into kills values ('Single',743,'Ale','Leo','Smash Laterale'),
 ('Single',743,'Siwei','Sandro','Speciale Laterale'),
 ('Single',743,'Leo','Ale','Smash Laterale'),
 ('Single',743,'Leo','Siwei','Smash Finale'),
 ('Single',743,'Sandro','Leo','Altro'),
 ('Single',743,'Siwei','Sandro','Speciale Laterale'),
 ('Single',743,'Siwei','Ale','Speciale Laterale'),
 ('Single',743,'Ale','Siwei','Smash Laterale'),
 ('Single',743,'Ale','Siwei','Speciale Standard'),
 ('Single',743,'Ale','Sandro','Speciale Standard'),
 ('Single',743,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',743,'Leo','Mancato Recupero');


--Single-742
insert into kills values ('Single',742,'Siwei','Sandro','Smash Laterale'),
 ('Single',742,'Ale','Siwei','Aereo Posteriore'),
 ('Single',742,'Siwei','Ale','Smash Finale'),
 ('Single',742,'Sandro','Leo','Smash Finale'),
 ('Single',742,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',742,'Leo','Sandro','Smash Laterale'),
 ('Single',742,'Leo','Ale','Smash Finale'),
 ('Single',742,'Leo','Siwei','Altro'),
 ('Single',742,'Ale','Leo','Aereo Frontale'),
 ('Single',742,'Sandro','Ale','Speciale in Giù'),
 ('Single',742,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',742,'Siwei','Mancato Recupero');


--Single-741
insert into kills values ('Single',741,'Sandro','Ale','Speciale in Giù'),
 ('Single',741,'Leo','Siwei','Smash Laterale'),
 ('Single',741,'Ale','Leo','Smash Finale'),
 ('Single',741,'Ale','Sandro','Smash Finale'),
 ('Single',741,'Siwei','Ale','Speciale Standard'),
 ('Single',741,'Leo','Siwei','Smash Finale'),
 ('Single',741,'Sandro','Leo','Altro'),
 ('Single',741,'Sandro','Siwei','Speciale in Giù'),
 ('Single',741,'Siwei','Ale','Altro'),
 ('Single',741,'Leo','Sandro','Aereo in Giù'),
 ('Single',741,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',741,'Leo','Autodistruzione'),
 ('Single',741,'Ale','Autodistruzione');


--Single-740
insert into kills values ('Single',740,'Siwei','Leo','Smash Laterale'),
 ('Single',740,'Leo','Sandro','Grab'),
 ('Single',740,'Ale','Siwei','Smash Laterale'),
 ('Single',740,'Leo','Siwei','Smash Finale'),
 ('Single',740,'Ale','Sandro','Smash Finale'),
 ('Single',740,'Ale','Siwei','Smash Laterale'),
 ('Single',740,'Sandro','Ale','Smash in Su'),
 ('Single',740,'Sandro','Leo','Smash Finale'),
 ('Single',740,'Sandro','Ale','Smash in Su'),
 ('Single',740,'Leo','Ale','Smash Finale'),
 ('Single',740,'Leo','Sandro','Smash Finale');


--Single-739
insert into kills values ('Single',739,'Ale','Leo','Altro'),
 ('Single',739,'Sandro','Ale','Speciale Laterale'),
 ('Single',739,'Ale','Leo','Altro'),
 ('Single',739,'Leo','Siwei','Smash Finale'),
 ('Single',739,'Siwei','Sandro','Smash Finale'),
 ('Single',739,'Ale','Siwei','Smash Finale'),
 ('Single',739,'Sandro','Leo','Smash Finale'),
 ('Single',739,'Sandro','Ale','Smash Finale'),
 ('Single',739,'Ale','Sandro','Aereo in Su'),
 ('Single',739,'Siwei','Ale','Smash in Su'),
 ('Single',739,'Siwei','Sandro','Smash Laterale');

insert into deaths values ('Single',739,'Leo','Mancato Recupero'),
 ('Single',739,'Leo','Autodistruzione');


--Single-738
insert into kills values ('Single',738,'Leo','Siwei','Aereo Frontale'),
 ('Single',738,'Siwei','Leo','Smash in Su'),
 ('Single',738,'Siwei','Ale','Smash Finale'),
 ('Single',738,'Siwei','Sandro','Smash Finale'),
 ('Single',738,'Leo','Ale','Speciale Standard'),
 ('Single',738,'Leo','Sandro','Speciale Standard'),
 ('Single',738,'Sandro','Siwei','Smash Laterale'),
 ('Single',738,'Siwei','Leo','Smash Laterale'),
 ('Single',738,'Leo','Ale','Smash Laterale'),
 ('Single',738,'Siwei','Leo','Smash Finale'),
 ('Single',738,'Siwei','Sandro','Aereo in Su');


--Single-737
insert into kills values ('Single',737,'Sandro','Siwei','Altro'),
 ('Single',737,'Sandro','Leo','Peculiare'), --PECULIAR: NESS
 ('Single',737,'Leo','Siwei','Speciale Standard'),
 ('Single',737,'Leo','Ale','Speciale Standard'),
 ('Single',737,'Siwei','Sandro','Smash Finale'),
 ('Single',737,'Ale','Leo','Smash Finale'),
 ('Single',737,'Ale','Sandro','Smash in Su'),
 ('Single',737,'Ale','Siwei','Smash Laterale'),
 ('Single',737,'Sandro','Leo','Speciale Laterale'),
 ('Single',737,'Sandro','Ale','Smash Laterale'),
 ('Single',737,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',737,'Siwei','Autodistruzione');


--Single-736
insert into kills values ('Single',736,'Siwei','Ale','Smash in Su'),
 ('Single',736,'Leo','Sandro','Smash Laterale'),
 ('Single',736,'Leo','Siwei','Speciale Laterale'),
 ('Single',736,'Siwei','Leo','Aereo in Giù'),
 ('Single',736,'Siwei','Sandro','Smash Finale'),
 ('Single',736,'Leo','Siwei','Smash Laterale'),
 ('Single',736,'Siwei','Ale','Smash Laterale'),
 ('Single',736,'Siwei','Leo','Smash Laterale'),
 ('Single',736,'Leo','Ale','Smash Laterale'),
 ('Single',736,'Leo','Siwei','Speciale in Su'),
 ('Single',736,'Sandro','Leo','Speciale in Giù');


--Single-735
insert into kills values ('Single',735,'Ale','Siwei','Speciale Laterale'),
 ('Single',735,'Leo','Ale','Peculiare'), --PECULIAR: CHARIZARD
 ('Single',735,'Siwei','Leo','Smash Finale'),
 ('Single',735,'Ale','Sandro','Speciale Laterale'),
 ('Single',735,'Leo','Siwei','Smash Finale'),
 ('Single',735,'Leo','Sandro','Smash Finale'),
 ('Single',735,'Leo','Ale','Smash Laterale'),
 ('Single',735,'Siwei','Leo','Smash Laterale'),
 ('Single',735,'Siwei','Sandro','Smash Finale'),
 ('Single',735,'Siwei','Ale','Smash Laterale'),
 ('Single',735,'Leo','Siwei','Peculiare'); --PECULIAR: CHARIZARD


--Single-734
insert into kills values ('Single',734,'Sandro','Siwei','Speciale in Giù'),
 ('Single',734,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD
 ('Single',734,'Ale','Leo','Smash in Giù'),
 ('Single',734,'Siwei','Ale','Smash Finale'),
 ('Single',734,'Sandro','Siwei','Smash Finale'),
 ('Single',734,'Ale','Sandro','Smash Finale'),
 ('Single',734,'Ale','Siwei','Smash Finale'),
 ('Single',734,'Ale','Leo','Aereo in Su'),
 ('Single',734,'Sandro','Ale','Smash in Su'),
 ('Single',734,'Sandro','Leo','Smash Finale'),
 ('Single',734,'Ale','Sandro','Smash Laterale');


--Single-733
insert into kills values ('Single',733,'Siwei','Leo','Smash Laterale'),
 ('Single',733,'Leo','Ale','Smash Finale'),
 ('Single',733,'Leo','Siwei','In Corsa'),
 ('Single',733,'Siwei','Leo','Smash Finale'),
 ('Single',733,'Sandro','Siwei','Smash Finale'),
 ('Single',733,'Sandro','Ale','Smash Finale'),
 ('Single',733,'Ale','Sandro','Speciale Laterale'),
 ('Single',733,'Siwei','Ale','Speciale in Su'),
 ('Single',733,'Leo','Siwei','Smash Finale'),
 ('Single',733,'Leo','Sandro','Smash Finale'),
 ('Single',733,'Sandro','Leo','Altro');

insert into deaths values ('Single',733,'Leo','Autodistruzione');


--Single-732
insert into kills values ('Single',732,'Leo','Siwei','Smash in Su'),
 ('Single',732,'Ale','Sandro','Smash Laterale'),
 ('Single',732,'Leo','Sandro','Speciale Laterale'),
 ('Single',732,'Sandro','Leo','Altro'),
 ('Single',732,'Siwei','Ale','Speciale in Giù'),
 ('Single',732,'Leo','Sandro','Smash Finale'),
 ('Single',732,'Leo','Siwei','Smash Finale'),
 ('Single',732,'Ale','Leo','Smash Laterale'),
 ('Single',732,'Ale','Siwei','Speciale Laterale'),
 ('Single',732,'Leo','Ale','Smash Laterale'),
 ('Single',732,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',732,'Leo','Autodistruzione');


--Single-731
insert into kills values ('Single',731,'Siwei','Ale','Aereo Frontale'),
 ('Single',731,'Ale','Siwei','Smash Laterale'),
 ('Single',731,'Siwei','Leo','Smash Laterale'),
 ('Single',731,'Siwei','Sandro','Speciale in Giù'),
 ('Single',731,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',731,'Leo','Ale','Smash Finale'),
 ('Single',731,'Leo','Sandro','Smash Laterale'),
 ('Single',731,'Sandro','Leo','Speciale in Giù'),
 ('Single',731,'Ale','Siwei','In Corsa'),
 ('Single',731,'Sandro','Ale','Altro'),
 ('Single',731,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',731,'Ale','Gamer');


--Single-730
insert into kills values ('Single',730,'Ale','Leo','Smash Laterale'),
 ('Single',730,'Siwei','Ale','In Corsa'),
 ('Single',730,'Ale','Sandro','Smash Laterale'),
 ('Single',730,'Sandro','Siwei','Altro'),
 ('Single',730,'Ale','Siwei','Smash Finale'),
 ('Single',730,'Ale','Leo','Smash Finale'),
 ('Single',730,'Sandro','Ale','Smash Finale'),
 ('Single',730,'Siwei','Sandro','Smash in Su'),
 ('Single',730,'Leo','Ale','Speciale Standard'),
 ('Single',730,'Sandro','Siwei','Smash Laterale'),
 ('Single',730,'Sandro','Leo','Speciale in Giù');


--Single-729
insert into kills values ('Single',729,'Ale','Siwei','Aereo Standard'),
 ('Single',729,'Siwei','Leo','Smash Laterale'),
 ('Single',729,'Sandro','Ale','Smash in Su'),
 ('Single',729,'Leo','Sandro','Speciale in Su'),
 ('Single',729,'Sandro','Siwei','Altro'),
 ('Single',729,'Leo','Sandro','Smash Finale'),
 ('Single',729,'Siwei','Sandro','Smash Laterale'),
 ('Single',729,'Siwei','Ale','Smash in Su'),
 ('Single',729,'Ale','Leo','Speciale in Giù'),
 ('Single',729,'Siwei','Ale','Peculiare'), --PECULIAR: GANONDORF
 ('Single',729,'Leo','Siwei','Aereo in Su');

insert into deaths values ('Single',729,'Siwei','Autodistruzione');


--Single-728
insert into kills values ('Single',728,'Ale','Sandro','Smash Laterale'),
 ('Single',728,'Siwei','Leo','Smash in Su'),
 ('Single',728,'Siwei','Ale','Speciale in Su'),
 ('Single',728,'Leo','Siwei','Smash Laterale'),
 ('Single',728,'Siwei','Sandro','Smash in Su'),
 ('Single',728,'Sandro','Ale','Smash Laterale'),
 ('Single',728,'Leo','Siwei','Aereo Frontale'),
 ('Single',728,'Ale','Leo','Aereo Standard'),
 ('Single',728,'Siwei','Sandro','Smash in Su'),
 ('Single',728,'Leo','Ale','Smash Laterale'),
 ('Single',728,'Leo','Siwei','Altro');

insert into deaths values ('Single',728,'Siwei','Hyrule Castle');


--Single-727
insert into kills values ('Single',727,'Siwei','Sandro','Smash in Su'),
 ('Single',727,'Sandro','Siwei','Altro'),
 ('Single',727,'Siwei','Leo','Smash in Su'),
 ('Single',727,'Sandro','Ale','Smash in Su'),
 ('Single',727,'Ale','Siwei','Speciale in Giù'),
 ('Single',727,'Leo','Sandro','Smash Laterale'),
 ('Single',727,'Leo','Siwei','Smash Laterale'),
 ('Single',727,'Sandro','Leo','Smash in Su'),
 ('Single',727,'Leo','Sandro','Altro'),
 ('Single',727,'Leo','Ale','Smash Laterale'),
 ('Single',727,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',727,'Siwei','Mancato Recupero'),
 ('Single',727,'Sandro','Autodistruzione');


--Single-726
insert into kills values ('Single',726,'Sandro','Siwei','Altro'),
 ('Single',726,'Siwei','Ale','Smash Laterale'),
 ('Single',726,'Ale','Leo','Smash Laterale'),
 ('Single',726,'Siwei','Sandro','In Corsa'),
 ('Single',726,'Ale','Siwei','Grab'),
 ('Single',726,'Leo','Siwei','Smash Finale'),
 ('Single',726,'Ale','Sandro','Altro'),
 ('Single',726,'Sandro','Ale','Speciale Laterale'),
 ('Single',726,'Ale','Sandro','Scudo Rotto'),
 ('Single',726,'Ale','Leo','Smash Laterale'),
 ('Single',726,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',726,'Siwei','Mancato Recupero'),
 ('Single',726,'Sandro','Mancato Recupero'),
 ('Single',726,'Sandro','Scudo Rotto');


--Single-725
insert into kills values ('Single',725,'Leo','Siwei','Speciale Laterale'),
 ('Single',725,'Leo','Sandro','Aereo in Giù'),
 ('Single',725,'Leo','Ale','Aereo in Giù'),
 ('Single',725,'Leo','Siwei','Smash Laterale'),
 ('Single',725,'Leo','Sandro','Aereo in Giù'),
 ('Single',725,'Sandro','Leo','Smash in Su'),
 ('Single',725,'Leo','Sandro','Smash Finale'),
 ('Single',725,'Ale','Leo','Aereo Posteriore'),
 ('Single',725,'Ale','Siwei','Smash Laterale'),
 ('Single',725,'Leo','Ale','Smash Laterale'),
 ('Single',725,'Ale','Leo','Smash Finale');


--Single-724
insert into kills values ('Single',724,'Sandro','Ale','Smash Laterale'),
 ('Single',724,'Ale','Sandro','Smash Laterale'),
 ('Single',724,'Ale','Leo','Altro'),
 ('Single',724,'Sandro','Siwei','Altro'),
 ('Single',724,'Siwei','Leo','Smash Finale'),
 ('Single',724,'Siwei','Ale','Smash Laterale'),
 ('Single',724,'Ale','Sandro','Altro'),
 ('Single',724,'Leo','Siwei','Aereo in Giù'),
 ('Single',724,'Leo','Siwei','Altro'),
 ('Single',724,'Sandro','Ale','Smash Laterale'),
 ('Single',724,'Sandro','Leo','Aereo Posteriore');

insert into deaths values ('Single',724,'Leo','Mancato Recupero'),
 ('Single',724,'Siwei','Mancato Recupero'),
 ('Single',724,'Sandro','Mancato Recupero'),
 ('Single',724,'Siwei','Mancato Recupero');


--Single-723
insert into kills values ('Single',723,'Leo','Siwei','Smash Laterale'),
 ('Single',723,'Ale','Sandro','Aereo in Su'),
 ('Single',723,'Sandro','Leo','Altro'),
 ('Single',723,'Siwei','Sandro','Smash Finale'),
 ('Single',723,'Siwei','Ale','Smash Laterale'),
 ('Single',723,'Sandro','Siwei','Altro'),
 ('Single',723,'Leo','Sandro','Smash Finale'),
 ('Single',723,'Leo','Siwei','Aereo in Giù'),
 ('Single',723,'Siwei','Ale','Altro'),
 ('Single',723,'Ale','Leo','Altro'),
 ('Single',723,'Leo','Ale','Aereo in Giù');

insert into deaths values ('Single',723,'Leo','Autodistruzione'),
 ('Single',723,'Siwei','Mancato Recupero'),
 ('Single',723,'Ale','Autodistruzione'),
 ('Single',723,'Ale','Autodistruzione');


--Single-722
insert into kills values ('Single',722,'Siwei','Sandro','Meteora'),
 ('Single',722,'Sandro','Siwei','Altro'),
 ('Single',722,'Siwei','Ale','Aereo Frontale'),
 ('Single',722,'Sandro','Siwei','Altro'),
 ('Single',722,'Ale','Leo','Smash in Giù'),
 ('Single',722,'Siwei','Ale','Smash Finale'),
 ('Single',722,'Ale','Siwei','Smash in Giù'),
 ('Single',722,'Ale','Sandro','Smash in Su'),
 ('Single',722,'Leo','Ale','Altro'),
 ('Single',722,'Sandro','Leo','Speciale in Giù'),
 ('Single',722,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',722,'Sandro','Mancato Recupero'),
 ('Single',722,'Siwei','Autodistruzione'),
 ('Single',722,'Siwei','Autodistruzione'),
 ('Single',722,'Ale','Autodistruzione');


--Single-721
insert into kills values ('Single',721,'Sandro','Siwei','Altro'),
 ('Single',721,'Leo','Ale','Altro'),
 ('Single',721,'Sandro','Leo','Speciale Laterale'),
 ('Single',721,'Siwei','Sandro','Aereo Frontale'),
 ('Single',721,'Leo','Ale','Smash Finale'),
 ('Single',721,'Siwei','Leo','Altro'),
 ('Single',721,'Siwei','Sandro','Smash Finale'),
 ('Single',721,'Leo','Siwei','Aereo in Giù'),
 ('Single',721,'Ale','Leo','Smash Finale'),
 ('Single',721,'Ale','Sandro','Speciale Laterale'),
 ('Single',721,'Siwei','Ale','Speciale Laterale');

insert into deaths values ('Single',721,'Siwei','Mancato Recupero'),
 ('Single',721,'Ale','Autodistruzione'),
 ('Single',721,'Leo','Autodistruzione');


--Single-720
insert into kills values ('Single',720,'Ale','Sandro','Smash Laterale'),
 ('Single',720,'Siwei','Leo','Smash Laterale'),
 ('Single',720,'Leo','Siwei','Speciale in Su'),
 ('Single',720,'Leo','Sandro','Smash Finale'),
 ('Single',720,'Sandro','Ale','Smash in Su'),
 ('Single',720,'Siwei','Leo','Smash Finale'),
 ('Single',720,'Ale','Sandro','Smash Finale'),
 ('Single',720,'Sandro','Siwei','Altro'),
 ('Single',720,'Ale','Leo','Smash in Giù'),
 ('Single',720,'Siwei','Ale','Smash Laterale'),
 ('Single',720,'Ale','Siwei','Smash in Giù');


--Single-719
insert into kills values ('Single',719,'Siwei','Ale','Altro'),
 ('Single',719,'Siwei','Leo','Aereo in Su'),
 ('Single',719,'Leo','Siwei','Speciale in Su'),
 ('Single',719,'Siwei','Sandro','Speciale Standard'),
 ('Single',719,'Leo','Sandro','Smash Finale'),
 ('Single',719,'Ale','Siwei','Altro'),
 ('Single',719,'Ale','Sandro','Smash Finale'),
 ('Single',719,'Leo','Ale','Speciale in Su'),
 ('Single',719,'Ale','Leo','Altro'),
 ('Single',719,'Siwei','Leo','Smash Finale'),
 ('Single',719,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Single',719,'Ale','Autodistruzione'),
 ('Single',719,'Siwei','Mushroom Kingdom U'),
 ('Single',719,'Ale','Autodistruzione');


--Single-718
insert into kills values ('Single',718,'Leo','Sandro','Smash Laterale'),
 ('Single',718,'Sandro','Siwei','Smash Finale'),
 ('Single',718,'Sandro','Leo','Smash Finale'),
 ('Single',718,'Sandro','Ale','Altro'),
 ('Single',718,'Sandro','Leo','Aereo in Giù'),
 ('Single',718,'Sandro','Ale','Aereo in Giù'),
 ('Single',718,'Ale','Sandro','Smash in Giù'),
 ('Single',718,'Leo','Ale','Altro'),
 ('Single',718,'Sandro','Siwei','Smash Finale'),
 ('Single',718,'Sandro','Leo','Altro');

insert into deaths values ('Single',718,'Ale','Mushroom Kingdom'),
 ('Single',718,'Leo','Autodistruzione');


--Single-717
insert into kills values ('Single',717,'Leo','Sandro','Smash Laterale'),
 ('Single',717,'Leo','Siwei','Smash Laterale'),
 ('Single',717,'Leo','Ale','Smash Laterale'),
 ('Single',717,'Ale','Leo','Smash in Su'),
 ('Single',717,'Leo','Sandro','Smash Laterale'),
 ('Single',717,'Leo','Ale','Smash Finale'),
 ('Single',717,'Ale','Siwei','Smash Laterale'),
 ('Single',717,'Siwei','Leo','In Corsa'),
 ('Single',717,'Sandro','Ale','Aereo Frontale'),
 ('Single',717,'Leo','Siwei','Smash in Su'),
 ('Single',717,'Leo','Sandro','Smash Laterale');


--Single-716
insert into kills values ('Single',716,'Siwei','Leo','Peculiare'), --PECULIAR: KING K. ROOL
 ('Single',716,'Sandro','Siwei','Aereo in Su'),
 ('Single',716,'Leo','Ale','Smash Laterale'),
 ('Single',716,'Leo','Siwei','Smash Finale'),
 ('Single',716,'Siwei','Leo','Altro'),
 ('Single',716,'Sandro','Ale','Speciale in Giù'),
 ('Single',716,'Leo','Ale','Altro'),
 ('Single',716,'Siwei','Sandro','Smash in Su'),
 ('Single',716,'Leo','Sandro','Smash Laterale'),
 ('Single',716,'Sandro','Siwei','Smash in Su'),
 ('Single',716,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',716,'Leo','Gaur Plain'),
 ('Single',716,'Ale','Autodistruzione');


--Single-715
insert into kills values ('Single',715,'Ale','Leo','Smash in Giù'),
 ('Single',715,'Siwei','Sandro','Altro'),
 ('Single',715,'Sandro','Leo','Altro'),
 ('Single',715,'Sandro','Leo','Altro'),
 ('Single',715,'Siwei','Ale','Aereo Posteriore'),
 ('Single',715,'Ale','Siwei','In Corsa'),
 ('Single',715,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL
 ('Single',715,'Sandro','Siwei','Speciale Laterale'),
 ('Single',715,'Siwei','Sandro','Aereo in Su'),
 ('Single',715,'Siwei','Ale','Altro'),
 ('Single',715,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',715,'Sandro','Kalos Pokemon League'),
 ('Single',715,'Leo','Kalos Pokemon League'),
 ('Single',715,'Leo','Mancato Recupero'),
 ('Single',715,'Ale','Kalos Pokemon League');


--Single-714
insert into kills values ('Single',714,'Siwei','Sandro','Speciale Standard'),
 ('Single',714,'Sandro','Leo','Aereo Posteriore'),
 ('Single',714,'Sandro','Siwei','Smash in Su'),
 ('Single',714,'Siwei','Sandro','Smash Laterale'),
 ('Single',714,'Ale','Leo','Smash in Giù'),
 ('Single',714,'Sandro','Siwei','Smash Laterale'),
 ('Single',714,'Leo','Ale','Smash Laterale'),
 ('Single',714,'Leo','Siwei','Speciale Standard'),
 ('Single',714,'Sandro','Ale','Speciale in Giù'),
 ('Single',714,'Sandro','Ale','Smash Finale'),
 ('Single',714,'Leo','Sandro','Peculiare'); --PECULIAR: GANONDORF


--Single-713
insert into kills values ('Single',713,'Leo','Sandro','Speciale Standard'),
 ('Single',713,'Ale','Leo','Smash in Su'),
 ('Single',713,'Sandro','Ale','Smash Finale'),
 ('Single',713,'Leo','Siwei','Aereo Frontale'),
 ('Single',713,'Leo','Sandro','Aereo Frontale'),
 ('Single',713,'Siwei','Leo','Smash Finale'),
 ('Single',713,'Leo','Siwei','Smash Finale'),
 ('Single',713,'Sandro','Ale','Smash Laterale'),
 ('Single',713,'Sandro','Leo','Smash Finale'),
 ('Single',713,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL
 ('Single',713,'Ale','Siwei','Smash in Giù');


--Single-712
insert into kills values ('Single',712,'Leo','Ale','Smash Laterale'),
 ('Single',712,'Leo','Siwei','Aereo in Su'),
 ('Single',712,'Sandro','Leo','Aereo Frontale'),
 ('Single',712,'Siwei','Sandro','Smash Finale'),
 ('Single',712,'Sandro','Siwei','Smash in Su'),
 ('Single',712,'Leo','Ale','Smash Laterale'),
 ('Single',712,'Sandro','Ale','Smash Finale'),
 ('Single',712,'Sandro','Leo','Smash Finale'),
 ('Single',712,'Ale','Sandro','Altro'),
 ('Single',712,'Leo','Sandro','Smash in Su'),
 ('Single',712,'Leo','Siwei','Aereo in Giù');

insert into deaths values ('Single',712,'Sandro','Rainbow Cruise');


--Single-711
insert into kills values ('Single',711,'Ale','Sandro','Smash Laterale'),
 ('Single',711,'Leo','Siwei','Smash Laterale'),
 ('Single',711,'Sandro','Siwei','Smash Laterale'),
 ('Single',711,'Sandro','Leo','Aereo in Giù'),
 ('Single',711,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL
 ('Single',711,'Sandro','Ale','Smash Finale'),
 ('Single',711,'Ale','Sandro','Smash in Giù'),
 ('Single',711,'Siwei','Ale','Smash Laterale'),
 ('Single',711,'Ale','Leo','Smash Laterale'),
 ('Single',711,'Ale','Siwei','Aereo Frontale'),
 ('Single',711,'Ale','Leo','Smash in Giù');


--Single-710
insert into kills values ('Single',710,'Sandro','Ale','Aereo in Giù'),
 ('Single',710,'Siwei','Sandro','Speciale in Su'),
 ('Single',710,'Siwei','Leo','Speciale in Su'),
 ('Single',710,'Ale','Siwei','Altro'),
 ('Single',710,'Leo','Siwei','Smash Finale'),
 ('Single',710,'Siwei','Sandro','Speciale Laterale'),
 ('Single',710,'Siwei','Leo','Speciale in Su'),
 ('Single',710,'Siwei','Ale','Speciale Laterale'),
 ('Single',710,'Siwei','Leo','Smash Finale'),
 ('Single',710,'Ale','Siwei','Smash Finale'),
 ('Single',710,'Sandro','Ale','Altro');

insert into deaths values ('Single',710,'Siwei','Autodistruzione');


--Single-709
insert into kills values ('Single',709,'Sandro','Leo','Aereo in Su'),
 ('Single',709,'Sandro','Siwei','Smash in Su'),
 ('Single',709,'Ale','Sandro','Altro'),
 ('Single',709,'Sandro','Leo','Aereo Frontale'),
 ('Single',709,'Ale','Sandro','Altro'),
 ('Single',709,'Leo','Siwei','Speciale Laterale'),
 ('Single',709,'Leo','Ale','Speciale Laterale'),
 ('Single',709,'Siwei','Ale','Smash in Su'),
 ('Single',709,'Sandro','Siwei','Smash Laterale'),
 ('Single',709,'Ale','Leo','Smash Laterale'),
 ('Single',709,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',709,'Sandro','Pirate Ship'),
 ('Single',709,'Sandro','Pirate Ship');


--Single-708
insert into kills values ('Single',708,'Ale','Leo','Altro'),
 ('Single',708,'Ale','Leo','Altro'),
 ('Single',708,'Ale','Sandro','Smash in Giù'),
 ('Single',708,'Siwei','Leo','Altro'),
 ('Single',708,'Ale','Siwei','Meteora'),
 ('Single',708,'Sandro','Siwei','Smash Finale'),
 ('Single',708,'Siwei','Sandro','Smash in Su'),
 ('Single',708,'Sandro','Ale','Smash in Su'),
 ('Single',708,'Sandro','Siwei','Altro'),
 ('Single',708,'Ale','Sandro','Aereo Posteriore');

insert into deaths values ('Single',708,'Leo','Mancato Recupero'),
 ('Single',708,'Ale','Autodistruzione'),
 ('Single',708,'Leo','Mancato Recupero'),
 ('Single',708,'Leo','Mancato Recupero'),
 ('Single',708,'Siwei','Autodistruzione');


--Single-707
insert into kills values ('Single',707,'Sandro','Ale','Altro'),
 ('Single',707,'Siwei','Ale','Smash Laterale'),
 ('Single',707,'Leo','Sandro','Speciale in Giù'),
 ('Single',707,'Sandro','Siwei','Speciale in Giù'),
 ('Single',707,'Ale','Leo','Altro'),
 ('Single',707,'Siwei','Ale','Smash Finale'),
 ('Single',707,'Siwei','Sandro','Smash in Su'),
 ('Single',707,'Siwei','Leo','Altro'),
 ('Single',707,'Sandro','Siwei','Speciale in Giù'),
 ('Single',707,'Siwei','Leo','Smash Finale'),
 ('Single',707,'Siwei','Sandro','Altro');

insert into deaths values ('Single',707,'Ale','Mancato Recupero'),
 ('Single',707,'Leo','Autodistruzione'),
 ('Single',707,'Leo','Autodistruzione'),
 ('Single',707,'Sandro','Wily Castle');


--Single-706
insert into kills values ('Single',706,'Leo','Siwei','Altro'),
 ('Single',706,'Sandro','Leo','Speciale Standard'),
 ('Single',706,'Ale','Sandro','Smash in Su'),
 ('Single',706,'Siwei','Ale','Altro'),
 ('Single',706,'Ale','Sandro','Peculiare'), --PECULIAR: INCINEROAR
 ('Single',706,'Leo','Siwei','Speciale in Giù'),
 ('Single',706,'Ale','Leo','In Corsa'),
 ('Single',706,'Siwei','Ale','Smash Laterale'),
 ('Single',706,'Siwei','Sandro','Aereo Posteriore'),
 ('Single',706,'Siwei','Ale','Smash Finale'),
 ('Single',706,'Leo','Siwei','Grab');

insert into deaths values ('Single',706,'Siwei','Mancato Recupero'),
 ('Single',706,'Ale','Autodistruzione');


--Single-705
insert into kills values ('Single',705,'Leo','Sandro','Speciale Laterale'),
 ('Single',705,'Leo','Siwei','Speciale Laterale'),
 ('Single',705,'Siwei','Leo','Aereo Posteriore'),
 ('Single',705,'Siwei','Leo','Smash Finale'),
 ('Single',705,'Leo','Siwei','Smash Finale'),
 ('Single',705,'Sandro','Ale','Smash in Su'),
 ('Single',705,'Leo','Sandro','Speciale in Giù'),
 ('Single',705,'Sandro','Ale','Smash Laterale'),
 ('Single',705,'Sandro','Siwei','Altro'),
 ('Single',705,'Leo','Ale','Smash Laterale'),
 ('Single',705,'Sandro','Leo','Speciale in Giù');

insert into deaths values ('Single',705,'Siwei','Green Greens');


--Single-704
insert into kills values ('Single',704,'Leo','Siwei','Smash Laterale'),
 ('Single',704,'Ale','Leo','Aereo in Su'),
 ('Single',704,'Sandro','Ale','In Corsa'),
 ('Single',704,'Leo','Sandro','Smash Finale'),
 ('Single',704,'Leo','Siwei','Smash Finale'),
 ('Single',704,'Siwei','Ale','Smash Finale'),
 ('Single',704,'Ale','Sandro','Smash Laterale'),
 ('Single',704,'Siwei','Leo','In Corsa'),
 ('Single',704,'Sandro','Siwei','In Corsa'),
 ('Single',704,'Sandro','Leo','Smash in Su'),
 ('Single',704,'Ale','Sandro','Smash Laterale');


--Single-703
insert into kills values ('Single',703,'Ale','Sandro','Smash in Giù'),
 ('Single',703,'Leo','Ale','Smash Laterale'),
 ('Single',703,'Siwei','Leo','In Corsa'),
 ('Single',703,'Sandro','Siwei','Aereo Frontale'),
 ('Single',703,'Ale','Sandro','In Corsa'),
 ('Single',703,'Sandro','Siwei','Smash Laterale'),
 ('Single',703,'Leo','Ale','Smash Laterale'),
 ('Single',703,'Siwei','Leo','Scudo Rotto'),
 ('Single',703,'Leo','Siwei','Smash Laterale'),
 ('Single',703,'Leo','Sandro','Smash Finale'),
 ('Single',703,'Ale','Leo','Smash in Giù');

insert into deaths values ('Single',703,'Leo','Scudo Rotto');


--Single-702
insert into kills values ('Single',702,'Leo','Siwei','Altro'),
 ('Single',702,'Siwei','Ale','Smash in Su'),
 ('Single',702,'Leo','Sandro','Altro'),
 ('Single',702,'Siwei','Leo','Altro'),
 ('Single',702,'Siwei','Sandro','Altro'),
 ('Single',702,'Siwei','Ale','Smash Finale'),
 ('Single',702,'Leo','Siwei','Smash Finale'),
 ('Single',702,'Sandro','Leo','Altro'),
 ('Single',702,'Sandro','Siwei','Smash in Su'),
 ('Single',702,'Sandro','Leo','In Corsa'),
 ('Single',702,'Ale','Sandro','Altro');

insert into deaths values ('Single',702,'Siwei','Mancato Recupero'),
 ('Single',702,'Sandro','Mancato Recupero'),
 ('Single',702,'Sandro','Autodistruzione'),
 ('Single',702,'Leo','Mancato Recupero'),
 ('Single',702,'Sandro','Autodistruzione');


--Single-701
insert into kills values ('Single',701,'Siwei','Ale','Smash in Su'),
 ('Single',701,'Siwei','Leo','Smash in Su'),
 ('Single',701,'Leo','Siwei','Smash Finale'),
 ('Single',701,'Ale','Sandro','Smash Finale'),
 ('Single',701,'Sandro','Siwei','Altro'),
 ('Single',701,'Siwei','Leo','Smash Finale'),
 ('Single',701,'Siwei','Ale','Smash in Su'),
 ('Single',701,'Siwei','Sandro','Altro'),
 ('Single',701,'Leo','Siwei','Smash Laterale'),
 ('Single',701,'Leo','Ale','Smash Finale'),
 ('Single',701,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',701,'Siwei','Mancato Recupero'),
 ('Single',701,'Sandro','Autodistruzione');


--Single-700
insert into kills values ('Single',700,'Ale','Leo','In Corsa'),
 ('Single',700,'Leo','Sandro','In Corsa'),
 ('Single',700,'Leo','Ale','Smash Laterale'),
 ('Single',700,'Sandro','Siwei','Smash in Su'),
 ('Single',700,'Leo','Sandro','Altro'),
 ('Single',700,'Sandro','Siwei','Smash Finale'),
 ('Single',700,'Ale','Leo','Aereo in Su'),
 ('Single',700,'Siwei','Ale','Smash in Su'),
 ('Single',700,'Siwei','Ale','Altro'),
 ('Single',700,'Sandro','Leo','Smash Laterale'),
 ('Single',700,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Single',700,'Sandro','Mancato Recupero'),
 ('Single',700,'Ale','Mancato Recupero');


--Single-699
insert into kills values ('Single',699,'Sandro','Leo','Smash in Su'),
 ('Single',699,'Sandro','Ale','Smash Laterale'),
 ('Single',699,'Sandro','Siwei','Altro'),
 ('Single',699,'Ale','Leo','Smash Finale'),
 ('Single',699,'Siwei','Sandro','Smash in Su'),
 ('Single',699,'Leo','Ale','Smash Finale'),
 ('Single',699,'Ale','Siwei','Altro'),
 ('Single',699,'Ale','Leo','Aereo Posteriore'),
 ('Single',699,'Sandro','Ale','Smash in Su'),
 ('Single',699,'Siwei','Sandro','Smash in Su'),
 ('Single',699,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Single',699,'Siwei','Autodistruzione'),
 ('Single',699,'Siwei','Mancato Recupero');


--Single-698
insert into kills values ('Single',698,'Ale','Sandro','Aereo in Su'),
 ('Single',698,'Sandro','Siwei','Speciale Laterale'),
 ('Single',698,'Siwei','Leo','Smash Finale'),
 ('Single',698,'Siwei','Ale','Smash Finale'),
 ('Single',698,'Leo','Sandro','Altro'),
 ('Single',698,'Ale','Leo','Smash in Giù'),
 ('Single',698,'Sandro','Ale','Smash in Su'),
 ('Single',698,'Sandro','Siwei','Speciale Laterale'),
 ('Single',698,'Siwei','Leo','Smash Finale'),
 ('Single',698,'Sandro','Ale','Smash Laterale'),
 ('Single',698,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Single',698,'Sandro','Mancato Recupero');


--Single-697
insert into kills values ('Single',697,'Sandro','Leo','Peculiare'), --PECULIAR: MR. GAME
 ('Single',697,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME
 ('Single',697,'Leo','Sandro','Aereo in Su'),
 ('Single',697,'Siwei','Ale','Smash Finale'),
 ('Single',697,'Sandro','Leo','Smash Finale'),
 ('Single',697,'Sandro','Siwei','Smash Finale'),
 ('Single',697,'Ale','Sandro','Smash Finale'),
 ('Single',697,'Leo','Ale','Smash Finale'),
 ('Single',697,'Sandro','Siwei','Altro'),
 ('Single',697,'Sandro','Leo','Aereo Frontale'),
 ('Single',697,'Sandro','Ale','In Corsa');

insert into deaths values ('Single',697,'Siwei','Autodistruzione');


--Single-696
insert into kills values ('Single',696,'Siwei','Sandro','Aereo Posteriore'),
 ('Single',696,'Leo','Siwei','Smash Laterale'),
 ('Single',696,'Sandro','Leo','Aereo in Giù'),
 ('Single',696,'Leo','Sandro','Smash Laterale'),
 ('Single',696,'Siwei','Ale','Smash Finale'),
 ('Single',696,'Leo','Siwei','Smash Finale'),
 ('Single',696,'Ale','Sandro','Smash Finale'),
 ('Single',696,'Siwei','Ale','Speciale Laterale'),
 ('Single',696,'Siwei','Leo','Smash Laterale'),
 ('Single',696,'Leo','Ale','Smash Finale'),
 ('Single',696,'Leo','Siwei','Smash Laterale');


--Single-695
insert into kills values ('Single',695,'Siwei','Ale','Altro'),
 ('Single',695,'Leo','Sandro','Aereo in Giù'),
 ('Single',695,'Ale','Leo','Smash in Giù'),
 ('Single',695,'Leo','Siwei','Smash Laterale'),
 ('Single',695,'Ale','Siwei','Smash Finale'),
 ('Single',695,'Sandro','Ale','Smash Laterale'),
 ('Single',695,'Sandro','Leo','Aereo Posteriore'),
 ('Single',695,'Siwei','Sandro','Smash Finale'),
 ('Single',695,'Ale','Siwei','Smash Finale'),
 ('Single',695,'Leo','Ale','Peculiare'), --PECULIAR: SORA
 ('Single',695,'Leo','Sandro','Smash Laterale');


--Single-694
insert into kills values ('Single',694,'Siwei','Leo','Aereo Frontale'),
 ('Single',694,'Siwei','Sandro','Smash in Su'),
 ('Single',694,'Sandro','Ale','Speciale in Su'),
 ('Single',694,'Leo','Siwei','Smash Laterale'),
 ('Single',694,'Sandro','Ale','Smash Finale'),
 ('Single',694,'Sandro','Siwei','Smash Finale'),
 ('Single',694,'Leo','Sandro','Altro'),
 ('Single',694,'Leo','Ale','Aereo in Giù'),
 ('Single',694,'Leo','Siwei','Smash in Su'),
 ('Single',694,'Leo','Sandro','Altro');

insert into deaths values ('Single',694,'Sandro','Autodistruzione'),
 ('Single',694,'Sandro','Mancato Recupero');


--Single-693
insert into kills values ('Single',693,'Siwei','Ale','Speciale Laterale'),
 ('Single',693,'Ale','Leo','Smash Laterale'),
 ('Single',693,'Sandro','Siwei','Smash Laterale'),
 ('Single',693,'Siwei','Sandro','Smash Finale'),
 ('Single',693,'Sandro','Siwei','Smash Finale'),
 ('Single',693,'Ale','Leo','Smash Laterale'),
 ('Single',693,'Leo','Ale','In Corsa'),
 ('Single',693,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',693,'Leo','Sandro','Speciale in Su'),
 ('Single',693,'Sandro','Leo','Smash Finale'),
 ('Single',693,'Sandro','Ale','Peculiare'); --PECULIAR: MR. GAME & WATCH CHAIR


--Single-692
insert into kills values ('Single',692,'Leo','Sandro','Speciale in Giù'),
 ('Single',692,'Leo','Ale','In Corsa'),
 ('Single',692,'Siwei','Leo','Altro'),
 ('Single',692,'Sandro','Siwei','Speciale in Su'),
 ('Single',692,'Leo','Sandro','Speciale in Giù'),
 ('Single',692,'Leo','Siwei','Speciale in Giù'),
 ('Single',692,'Leo','Ale','Speciale in Giù'),
 ('Single',692,'Sandro','Leo','Speciale in Su'),
 ('Single',692,'Ale','Leo','Smash Finale'),
 ('Single',692,'Siwei','Sandro','Peculiare'), --PECULIAR: KAZUYA
 ('Single',692,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',692,'Leo','Summit');


--Single-691
insert into kills values ('Single',691,'Siwei','Leo','Altro'),
 ('Single',691,'Sandro','Ale','Smash Laterale'),
 ('Single',691,'Leo','Siwei','Smash Laterale'),
 ('Single',691,'Siwei','Sandro','Smash Finale'),
 ('Single',691,'Sandro','Leo','Smash Laterale'),
 ('Single',691,'Sandro','Siwei','Smash Finale'),
 ('Single',691,'Siwei','Ale','Aereo in Giù'),
 ('Single',691,'Leo','Siwei','Smash Laterale'),
 ('Single',691,'Ale','Sandro','Speciale Laterale'),
 ('Single',691,'Ale','Leo','Smash Finale'),
 ('Single',691,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',691,'Leo','Autodistruzione');


--Single-690
insert into kills values ('Single',690,'Siwei','Leo','Speciale Laterale'),
 ('Single',690,'Leo','Sandro','Speciale in Giù'),
 ('Single',690,'Ale','Siwei','In Corsa'),
 ('Single',690,'Siwei','Sandro','Smash Finale'),
 ('Single',690,'Siwei','Ale','Smash Finale'),
 ('Single',690,'Siwei','Leo','Speciale Laterale'),
 ('Single',690,'Siwei','Sandro','Speciale Laterale'),
 ('Single',690,'Leo','Siwei','Speciale in Giù'),
 ('Single',690,'Leo','Ale','Smash Finale'),
 ('Single',690,'Siwei','Ale','Smash Finale'),
 ('Single',690,'Siwei','Leo','Smash Laterale');


--Single-689
insert into kills values ('Single',689,'Ale','Siwei','Smash Laterale'),
 ('Single',689,'Siwei','Leo','Speciale Laterale'),
 ('Single',689,'Siwei','Ale','Smash Finale'),
 ('Single',689,'Siwei','Sandro','Speciale Laterale'),
 ('Single',689,'Ale','Siwei','Smash Finale'),
 ('Single',689,'Ale','Sandro','Smash Finale'),
 ('Single',689,'Siwei','Ale','Smash Finale'),
 ('Single',689,'Siwei','Leo','Smash Laterale'),
 ('Single',689,'Leo','Ale','Altro'),
 ('Single',689,'Leo','Siwei','Smash Laterale'),
 ('Single',689,'Leo','Sandro','In Corsa');

insert into deaths values ('Single',689,'Ale','Autodistruzione');


--Single-688
insert into kills values ('Single',688,'Sandro','Leo','Aereo in Giù'),
 ('Single',688,'Sandro','Ale','Smash in Su'),
 ('Single',688,'Sandro','Siwei','Aereo in Giù'),
 ('Single',688,'Leo','Sandro','Altro'),
 ('Single',688,'Sandro','Leo','Smash Finale'),
 ('Single',688,'Siwei','Ale','Smash in Su'),
 ('Single',688,'Ale','Siwei','Smash Laterale'),
 ('Single',688,'Leo','Ale','Smash in Su'),
 ('Single',688,'Leo','Sandro','Smash in Su'),
 ('Single',688,'Siwei','Leo','Speciale Standard'),
 ('Single',688,'Siwei','Sandro','Altro');

insert into deaths values ('Single',688,'Sandro','Autodistruzione'),
 ('Single',688,'Sandro','Autodistruzione');


--Single-687
insert into kills values ('Single',687,'Ale','Siwei','Speciale in Giù'),
 ('Single',687,'Ale','Sandro','Altro'),
 ('Single',687,'Leo','Siwei','Speciale in Su'),
 ('Single',687,'Sandro','Ale','In Corsa'),
 ('Single',687,'Siwei','Leo','Smash Finale'),
 ('Single',687,'Ale','Sandro','Speciale Standard'),
 ('Single',687,'Sandro','Siwei','Speciale Standard'),
 ('Single',687,'Sandro','Ale','Smash Laterale'),
 ('Single',687,'Ale','Sandro','Altro'),
 ('Single',687,'Ale','Leo','Aereo Posteriore'),
 ('Single',687,'Leo','Ale','Smash in Su');

insert into deaths values ('Single',687,'Sandro','Mancato Recupero'),
 ('Single',687,'Sandro','Mancato Recupero');


--Single-686
insert into kills values ('Single',686,'Leo','Sandro','Altro'),
 ('Single',686,'Siwei','Ale','Smash Laterale'),
 ('Single',686,'Ale','Sandro','Altro'),
 ('Single',686,'Leo','Siwei','Peculiare'), --PECULIAR: SORA
 ('Single',686,'Siwei','Leo','Smash Finale'),
 ('Single',686,'Sandro','Leo','Peculiare'), --PECULIAR: SEPHIROTH
 ('Single',686,'Ale','Siwei','Aereo Standard'),
 ('Single',686,'Leo','Ale','Speciale in Su'),
 ('Single',686,'Ale','Sandro','Smash Laterale'),
 ('Single',686,'Siwei','Leo','Smash in Su'),
 ('Single',686,'Ale','Siwei','Smash in Su');

insert into deaths values ('Single',686,'Sandro','Autodistruzione'),
 ('Single',686,'Sandro','Mancato Recupero');


--Single-685
insert into kills values ('Single',685,'Sandro','Siwei','Altro'),
 ('Single',685,'Sandro','Leo','Smash Laterale'),
 ('Single',685,'Leo','Sandro','Altro'),
 ('Single',685,'Sandro','Ale','Smash Laterale'),
 ('Single',685,'Ale','Sandro','Smash Finale'),
 ('Single',685,'Ale','Leo','Altro'),
 ('Single',685,'Sandro','Siwei','Smash Laterale'),
 ('Single',685,'Siwei','Ale','Speciale in Su'),
 ('Single',685,'Sandro','Leo','Smash Finale'),
 ('Single',685,'Sandro','Siwei','Smash Laterale'),
 ('Single',685,'Ale','Sandro','Speciale Standard');

insert into deaths values ('Single',685,'Siwei','Mancato Recupero'),
 ('Single',685,'Sandro','Mancato Recupero'),
 ('Single',685,'Leo','Mancato Recupero');


--Single-684
insert into kills values ('Single',684,'Ale','Siwei','Aereo Posteriore'),
 ('Single',684,'Ale','Sandro','Aereo Posteriore'),
 ('Single',684,'Siwei','Leo','Aereo Frontale'),
 ('Single',684,'Leo','Ale','Aereo in Giù'),
 ('Single',684,'Siwei','Sandro','Smash Finale'),
 ('Single',684,'Sandro','Leo','Altro'),
 ('Single',684,'Ale','Sandro','Altro'),
 ('Single',684,'Ale','Siwei','Speciale in Su'),
 ('Single',684,'Leo','Siwei','Altro'),
 ('Single',684,'Leo','Ale','Smash Laterale'),
 ('Single',684,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',684,'Leo','Mancato Recupero'),
 ('Single',684,'Sandro','Autodistruzione'),
 ('Single',684,'Siwei','Autodistruzione');


--Single-683
insert into kills values ('Single',683,'Ale','Sandro','Altro'),
 ('Single',683,'Sandro','Siwei','Smash Laterale'),
 ('Single',683,'Siwei','Ale','Speciale Standard'),
 ('Single',683,'Siwei','Leo','Altro'),
 ('Single',683,'Sandro','Siwei','Smash Finale'),
 ('Single',683,'Ale','Sandro','Altro'),
 ('Single',683,'Siwei','Ale','Smash Finale'),
 ('Single',683,'Siwei','Leo','Aereo Posteriore'),
 ('Single',683,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',683,'Leo','Siwei','Smash Laterale'),
 ('Single',683,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',683,'Sandro','Mancato Recupero'),
 ('Single',683,'Leo','Autodistruzione');


--Single-682
insert into kills values ('Single',682,'Sandro','Ale','Speciale Standard'),
 ('Single',682,'Leo','Siwei','Smash in Su'),
 ('Single',682,'Ale','Leo','Smash Finale'),
 ('Single',682,'Siwei','Sandro','Smash Finale'),
 ('Single',682,'Siwei','Ale','In Corsa'),
 ('Single',682,'Ale','Siwei','In Corsa'),
 ('Single',682,'Sandro','Leo','Speciale Standard'),
 ('Single',682,'Leo','Sandro','Smash in Su'),
 ('Single',682,'Sandro','Siwei','Smash in Su'),
 ('Single',682,'Ale','Leo','Smash Finale'),
 ('Single',682,'Sandro','Ale','Smash Finale');


--Single-681
insert into kills values ('Single',681,'Leo','Siwei','Smash Laterale'),
 ('Single',681,'Ale','Leo','In Corsa'),
 ('Single',681,'Siwei','Sandro','Speciale Laterale'),
 ('Single',681,'Siwei','Ale','Smash Finale'),
 ('Single',681,'Ale','Sandro','Altro'),
 ('Single',681,'Ale','Siwei','Smash Finale'),
 ('Single',681,'Leo','Siwei','Smash Laterale'),
 ('Single',681,'Ale','Leo','In Corsa'),
 ('Single',681,'Sandro','Ale','Speciale Laterale'),
 ('Single',681,'Sandro','Leo','Speciale Laterale'),
 ('Single',681,'Ale','Sandro','Aereo Posteriore');

insert into deaths values ('Single',681,'Sandro','Autodistruzione');


--Single-680
insert into kills values ('Single',680,'Ale','Leo','Aereo Standard'),
 ('Single',680,'Siwei','Sandro','Smash Laterale'),
 ('Single',680,'Ale','Siwei','Speciale in Giù'),
 ('Single',680,'Siwei','Leo','Smash Finale'),
 ('Single',680,'Sandro','Ale','Smash Finale'),
 ('Single',680,'Leo','Ale','Smash Finale'),
 ('Single',680,'Ale','Sandro','Speciale in Giù'),
 ('Single',680,'Leo','Sandro','Altro'),
 ('Single',680,'Ale','Siwei','Aereo Posteriore'),
 ('Single',680,'Siwei','Leo','Smash Finale'),
 ('Single',680,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',680,'Sandro','Autodistruzione');


--Single-679
insert into kills values ('Single',679,'Siwei','Sandro','Smash Laterale'),
 ('Single',679,'Siwei','Ale','Speciale in Su'),
 ('Single',679,'Sandro','Leo','Smash in Su'),
 ('Single',679,'Siwei','Sandro','Altro'),
 ('Single',679,'Ale','Siwei','Altro'),
 ('Single',679,'Siwei','Leo','Aereo Frontale'),
 ('Single',679,'Sandro','Ale','Smash Laterale'),
 ('Single',679,'Leo','Sandro','Altro'),
 ('Single',679,'Ale','Leo','Speciale in Giù'),
 ('Single',679,'Siwei','Ale','Aereo Frontale');

insert into deaths values ('Single',679,'Sandro','Mancato Recupero'),
 ('Single',679,'Siwei','Norfair'),
 ('Single',679,'Sandro','Norfair');


--Single-678
insert into kills values ('Single',678,'Ale','Sandro','Smash Laterale'),
 ('Single',678,'Siwei','Ale','Speciale Laterale'),
 ('Single',678,'Leo','Siwei','Speciale in Su'),
 ('Single',678,'Sandro','Leo','Aereo in Giù'),
 ('Single',678,'Ale','Sandro','Smash Laterale'),
 ('Single',678,'Sandro','Siwei','Smash Finale'),
 ('Single',678,'Leo','Sandro','In Corsa'),
 ('Single',678,'Siwei','Ale','Meteora'),
 ('Single',678,'Siwei','Leo','Speciale in Su'),
 ('Single',678,'Ale','Siwei','In Corsa'),
 ('Single',678,'Leo','Ale','Smash Finale');


--Single-677
insert into kills values ('Single',677,'Siwei','Leo','Speciale Laterale'),
 ('Single',677,'Siwei','Ale','Speciale Laterale'),
 ('Single',677,'Sandro','Siwei','Aereo in Giù'),
 ('Single',677,'Leo','Sandro','Altro'),
 ('Single',677,'Sandro','Ale','Speciale Laterale'),
 ('Single',677,'Siwei','Leo','Speciale Laterale'),
 ('Single',677,'Sandro','Siwei','Smash Finale'),
 ('Single',677,'Leo','Siwei','Smash Finale'),
 ('Single',677,'Leo','Ale','Smash Finale'),
 ('Single',677,'Leo','Sandro','Altro');

insert into deaths values ('Single',677,'Sandro','Autodistruzione'),
 ('Single',677,'Sandro','Autodistruzione');


--Single-676
insert into kills values ('Single',676,'Leo','Siwei','Speciale in Su'),
 ('Single',676,'Leo','Ale','Altro'),
 ('Single',676,'Ale','Sandro','Altro'),
 ('Single',676,'Siwei','Leo','Smash Laterale'),
 ('Single',676,'Ale','Siwei','Smash Finale'),
 ('Single',676,'Sandro','Ale','Smash Laterale'),
 ('Single',676,'Siwei','Sandro','Speciale in Giù'),
 ('Single',676,'Ale','Siwei','Altro'),
 ('Single',676,'Ale','Leo','Speciale Laterale'),
 ('Single',676,'Leo','Ale','Speciale in Su'),
 ('Single',676,'Leo','Sandro','Speciale in Su');

insert into deaths values ('Single',676,'Ale','Bridge of Eldin'),
 ('Single',676,'Sandro','Bridge of Eldin'),
 ('Single',676,'Siwei','Bridge of Eldin');


--Single-675
insert into kills values ('Single',675,'Ale','Sandro','Aereo Posteriore'),
 ('Single',675,'Leo','Siwei','Aereo Frontale'),
 ('Single',675,'Sandro','Leo','Speciale Laterale'),
 ('Single',675,'Siwei','Ale','Smash Laterale'),
 ('Single',675,'Ale','Leo','Aereo Posteriore'),
 ('Single',675,'Ale','Sandro','Smash Finale'),
 ('Single',675,'Sandro','Siwei','Speciale Laterale'),
 ('Single',675,'Leo','Siwei','Smash Laterale'),
 ('Single',675,'Sandro','Ale','Smash in Su'),
 ('Single',675,'Sandro','Ale','Smash Finale'),
 ('Single',675,'Sandro','Leo','Aereo in Giù');


--Single-674
insert into kills values ('Single',674,'Sandro','Ale','Smash Laterale'),
 ('Single',674,'Ale','Sandro','In Corsa'),
 ('Single',674,'Ale','Leo','Smash Finale'),
 ('Single',674,'Sandro','Siwei','Speciale Laterale'),
 ('Single',674,'Sandro','Siwei','Smash Finale'),
 ('Single',674,'Sandro','Ale','Speciale Laterale'),
 ('Single',674,'Siwei','Sandro','Smash in Su'),
 ('Single',674,'Ale','Leo','Speciale in Giù'),
 ('Single',674,'Leo','Sandro','Peculiare'), --PECULIAR: KAZUYA
 ('Single',674,'Ale','Siwei','Smash Finale'),
 ('Single',674,'Ale','Leo','Aereo Posteriore');


--Single-673
insert into kills values ('Single',673,'Leo','Sandro','Altro'),
 ('Single',673,'Leo','Siwei','Smash in Su'),
 ('Single',673,'Sandro','Siwei','Speciale Laterale'),
 ('Single',673,'Siwei','Sandro','Altro'),
 ('Single',673,'Leo','Ale','Smash in Su'),
 ('Single',673,'Ale','Siwei','Smash Finale'),
 ('Single',673,'Siwei','Leo','Speciale in Su'),
 ('Single',673,'Sandro','Ale','Speciale Laterale'),
 ('Single',673,'Siwei','Sandro','Speciale Laterale'),
 ('Single',673,'Siwei','Leo','Speciale in Giù'),
 ('Single',673,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Single',673,'Sandro','Autodistruzione'),
 ('Single',673,'Sandro','Garden of Hope');


--Single-672
insert into kills values ('Single',672,'Leo','Siwei','Smash Laterale'),
 ('Single',672,'Sandro','Ale','Altro'),
 ('Single',672,'Siwei','Leo','Smash Finale'),
 ('Single',672,'Sandro','Ale','Altro'),
 ('Single',672,'Siwei','Leo','Peculiare'), --PECULIAR: LITTLE MAC
 ('Single',672,'Ale','Sandro','Aereo Standard'),
 ('Single',672,'Ale','Siwei','Smash Finale'),
 ('Single',672,'Sandro','Ale','Smash Finale'),
 ('Single',672,'Sandro','Siwei','Smash Finale'),
 ('Single',672,'Leo','Sandro','Smash Laterale'),
 ('Single',672,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',672,'Ale','Autodistruzione');


--Single-671
insert into kills values ('Single',671,'Siwei','Ale','Altro'),
 ('Single',671,'Siwei','Sandro','Speciale Laterale'),
 ('Single',671,'Sandro','Leo','Speciale Laterale'),
 ('Single',671,'Sandro','Siwei','Speciale Laterale'),
 ('Single',671,'Sandro','Ale','Speciale Laterale'),
 ('Single',671,'Leo','Siwei','Altro'),
 ('Single',671,'Siwei','Leo','Smash Laterale'),
 ('Single',671,'Siwei','Sandro','Smash Finale'),
 ('Single',671,'Leo','Siwei','Altro'),
 ('Single',671,'Leo','Ale','Aereo in Su');

insert into deaths values ('Single',671,'Ale','Autodistruzione'),
 ('Single',671,'Siwei','Mancato Recupero'),
 ('Single',671,'Sandro','Autodistruzione'),
 ('Single',671,'Siwei','Mancato Recupero');


--Single-670
insert into kills values ('Single',670,'Leo','Ale','Altro'),
 ('Single',670,'Ale','Leo','In Corsa'),
 ('Single',670,'Ale','Siwei','Aereo Posteriore'),
 ('Single',670,'Sandro','Ale','Smash Laterale'),
 ('Single',670,'Leo','Sandro','Altro'),
 ('Single',670,'Sandro','Siwei','Aereo Frontale'),
 ('Single',670,'Siwei','Leo','Smash Finale'),
 ('Single',670,'Siwei','Ale','Smash Finale'),
 ('Single',670,'Siwei','Sandro','Smash Laterale'),
 ('Single',670,'Leo','Sandro','Altro'),
 ('Single',670,'Siwei','Leo','Smash Laterale');

insert into deaths values ('Single',670,'Ale','Autodistruzione'),
 ('Single',670,'Sandro','Autodistruzione'),
 ('Single',670,'Sandro','Autodistruzione');


--Single-669
insert into kills values ('Single',669,'Sandro','Ale','Smash Laterale'),
 ('Single',669,'Leo','Siwei','In Corsa'),
 ('Single',669,'Leo','Sandro','Aereo in Giù'),
 ('Single',669,'Sandro','Leo','Aereo in Su'),
 ('Single',669,'Siwei','Ale','Smash Finale'),
 ('Single',669,'Siwei','Sandro','Smash Finale'),
 ('Single',669,'Ale','Siwei','Smash Laterale'),
 ('Single',669,'Ale','Sandro','Peculiare'), --PECULIAR: GANONDORF
 ('Single',669,'Ale','Leo','In Corsa'),
 ('Single',669,'Leo','Ale','Smash Laterale'),
 ('Single',669,'Leo','Siwei','Speciale in Su');


--Single-668
insert into kills values ('Single',668,'Leo','Ale','Smash in Su'),
 ('Single',668,'Sandro','Leo','Smash in Su'),
 ('Single',668,'Leo','Siwei','Smash Laterale'),
 ('Single',668,'Sandro','Leo','Aereo in Giù'),
 ('Single',668,'Ale','Sandro','Smash in Giù'),
 ('Single',668,'Sandro','Siwei','Aereo in Giù'),
 ('Single',668,'Siwei','Leo','Altro'),
 ('Single',668,'Leo','Ale','Altro'),
 ('Single',668,'Siwei','Sandro','Altro'),
 ('Single',668,'Sandro','Siwei','Smash Finale'),
 ('Single',668,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',668,'Leo','Mancato Recupero'),
 ('Single',668,'Ale','BUG'),
 ('Single',668,'Sandro','Autodistruzione');


--Doubles-284
insert into kills values ('Doubles',284,'Sandro','Leo','Smash Laterale'),
 ('Doubles',284,'Leo','Sandro','Smash Laterale'),
 ('Doubles',284,'Sandro','Leo','Smash Finale'),
 ('Doubles',284,'Ale','Siwei','Altro'),
 ('Doubles',284,'Leo','Sandro','Smash Finale'),
 ('Doubles',284,'Sandro','Ale','Aereo in Su'),
 ('Doubles',284,'Sandro','Leo','Smash Finale'),
 ('Doubles',284,'Ale','Siwei','Smash Laterale'),
 ('Doubles',284,'Ale','Sandro','Smash Finale'),
 ('Doubles',284,'Siwei','Ale','Smash in Su');

insert into deaths values ('Doubles',284,'Siwei','Mancato Recupero'),
 ('Doubles',284,'Ale','Autodistruzione');


--Doubles-283
insert into kills values ('Doubles',283,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',283,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',283,'Sandro','Ale','Grab'),
 ('Doubles',283,'Siwei','Leo','Smash Laterale'),
 ('Doubles',283,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',283,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',283,'Leo','Siwei','Smash Finale'),
 ('Doubles',283,'Leo','Siwei','Aereo Posteriore');

insert into deaths values ('Doubles',283,'Sandro','Fuoco Amico');


--Doubles-282
insert into kills values ('Doubles',282,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',282,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',282,'Siwei','Leo','Aereo Posteriore'),
 ('Doubles',282,'Sandro','Ale','Smash Laterale'),
 ('Doubles',282,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',282,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',282,'Siwei','Leo','Smash Laterale'),
 ('Doubles',282,'Ale','Sandro','Smash Laterale'),
 ('Doubles',282,'Sandro','Ale','Smash Laterale'),
 ('Doubles',282,'Leo','Siwei','In Corsa');

insert into deaths values ('Doubles',282,'Ale','Fuoco Amico');


--Doubles-281
insert into kills values ('Doubles',281,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',281,'Sandro','Leo','Smash Laterale'),
 ('Doubles',281,'Leo','Sandro','Meteora'),
 ('Doubles',281,'Ale','Siwei','Smash Laterale'),
 ('Doubles',281,'Leo','Sandro','Smash Laterale'),
 ('Doubles',281,'Siwei','Ale','Altro'),
 ('Doubles',281,'Ale','Siwei','Altro'),
 ('Doubles',281,'Sandro','Leo','Smash Laterale'),
 ('Doubles',281,'Sandro','Siwei','Smash in Su'),
 ('Doubles',281,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',281,'Leo','Sandro','Smash Finale');

insert into deaths values ('Doubles',281,'Ale','Autodistruzione'),
 ('Doubles',281,'Siwei','Mancato Recupero'),
 ('Doubles',281,'Ale','Fuoco Amico');


--Doubles-280
insert into kills values ('Doubles',280,'Siwei','Leo','Aereo Frontale'),
 ('Doubles',280,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',280,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',280,'Sandro','Siwei','Smash in Su'),
 ('Doubles',280,'Siwei','Sandro','Smash Finale'),
 ('Doubles',280,'Sandro','Ale','Smash in Su'),
 ('Doubles',280,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',280,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',280,'Siwei','Sandro','Speciale Laterale');

insert into deaths values ('Doubles',280,'Sandro','Autodistruzione'),
 ('Doubles',280,'Ale','Fuoco Amico'),
 ('Doubles',280,'Leo','Fuoco Amico');


--Doubles-279
insert into kills values ('Doubles',279,'Siwei','Sandro','Altro'),
 ('Doubles',279,'Leo','Siwei','Aereo in Su'),
 ('Doubles',279,'Ale','Leo','Altro'),
 ('Doubles',279,'Sandro','Siwei','Smash in Su'),
 ('Doubles',279,'Leo','Ale','Smash Finale'),
 ('Doubles',279,'Ale','Sandro','Smash in Su'),
 ('Doubles',279,'Leo','Siwei','In Corsa'),
 ('Doubles',279,'Sandro','Ale','Smash Laterale'),
 ('Doubles',279,'Ale','Leo','Smash Laterale'),
 ('Doubles',279,'Leo','Ale','Peculiare'); --PECULIAR: JOKER

insert into deaths values ('Doubles',279,'Sandro','Autodistruzione'),
 ('Doubles',279,'Leo','Mancato Recupero');


--Doubles-278
insert into kills values ('Doubles',278,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',278,'Siwei','Sandro','Smash in Su'),
 ('Doubles',278,'Sandro','Siwei','Speciale in Su'),
 ('Doubles',278,'Siwei','Leo','Smash Finale'),
 ('Doubles',278,'Leo','Siwei','Smash Finale'),
 ('Doubles',278,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',278,'Ale','Leo','Smash Laterale'),
 ('Doubles',278,'Ale','Sandro','Smash Laterale'),
 ('Doubles',278,'Siwei','Sandro','Smash Finale'),
 ('Doubles',278,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',278,'Ale','Leo','Speciale Laterale');

insert into deaths values ('Doubles',278,'Ale','Fuoco Amico'),
 ('Doubles',278,'Siwei','Fuoco Amico');


--Doubles-277
insert into kills values ('Doubles',277,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',277,'Ale','Leo','Smash in Su'),
 ('Doubles',277,'Sandro','Ale','Smash Finale'),
 ('Doubles',277,'Leo','Siwei','In Corsa'),
 ('Doubles',277,'Ale','Leo','Smash Finale'),
 ('Doubles',277,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',277,'Leo','Ale','Smash Finale'),
 ('Doubles',277,'Ale','Leo','Aereo Standard'),
 ('Doubles',277,'Sandro','Ale','Smash Finale'),
 ('Doubles',277,'Siwei','Sandro','Smash in Su');


--Doubles-276
insert into kills values ('Doubles',276,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',276,'Ale','Leo','Speciale in Giù'),
 ('Doubles',276,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',276,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',276,'Ale','Sandro','Aereo Standard'),
 ('Doubles',276,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',276,'Sandro','Ale','Smash Laterale'),
 ('Doubles',276,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',276,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Doubles',276,'Ale','Fuoco Amico'),
 ('Doubles',276,'Leo','Fuoco Amico'),
 ('Doubles',276,'Ale','Fuoco Amico');


--Doubles-275
insert into kills values ('Doubles',275,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',275,'Ale','Leo','Peculiare'), --PECULIAR: KIRBY
 ('Doubles',275,'Siwei','Sandro','Smash Finale'),
 ('Doubles',275,'Leo','Siwei','Smash Finale'),
 ('Doubles',275,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',275,'Siwei','Leo','In Corsa'),
 ('Doubles',275,'Ale','Leo','Smash Finale'),
 ('Doubles',275,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',275,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Doubles',275,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',275,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Doubles',275,'Siwei','Fuoco Amico'),
 ('Doubles',275,'Siwei','Fuoco Amico');


--Doubles-274
insert into kills values ('Doubles',274,'Sandro','Siwei','Altro'),
 ('Doubles',274,'Ale','Leo','Aereo Standard'),
 ('Doubles',274,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',274,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',274,'Sandro','Siwei','Smash Finale'),
 ('Doubles',274,'Sandro','Leo','Aereo Posteriore'),
 ('Doubles',274,'Siwei','Ale','Altro'),
 ('Doubles',274,'Sandro','Leo','Altro'),
 ('Doubles',274,'Ale','Siwei','Aereo Standard');

insert into deaths values ('Doubles',274,'Siwei','Mushroomy Kingdom'),
 ('Doubles',274,'Sandro','Fuoco Amico'),
 ('Doubles',274,'Ale','Mushroomy Kingdom'),
 ('Doubles',274,'Leo','Mushroomy Kingdom');


--Doubles-273
insert into kills values ('Doubles',273,'Leo','Siwei','Smash Laterale'),
 ('Doubles',273,'Siwei','Sandro','Altro'),
 ('Doubles',273,'Siwei','Leo','Smash Finale'),
 ('Doubles',273,'Sandro','Siwei','Smash in Su'),
 ('Doubles',273,'Leo','Ale','Smash Laterale'),
 ('Doubles',273,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',273,'Sandro','Siwei','Smash in Su'),
 ('Doubles',273,'Ale','Leo','Speciale in Giù'),
 ('Doubles',273,'Sandro','Ale','Smash Finale'),
 ('Doubles',273,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',273,'Ale','Leo','Smash in Giù');

insert into deaths values ('Doubles',273,'Sandro','Autodistruzione');


--Doubles-272
insert into kills values ('Doubles',272,'Siwei','Ale','Altro'),
 ('Doubles',272,'Leo','Sandro','Smash Laterale'),
 ('Doubles',272,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',272,'Sandro','Siwei','Smash Finale'),
 ('Doubles',272,'Leo','Sandro','Smash Finale'),
 ('Doubles',272,'Leo','Sandro','Altro'),
 ('Doubles',272,'Leo','Ale','In Corsa'),
 ('Doubles',272,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',272,'Ale','Leo','Smash Finale'),
 ('Doubles',272,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Doubles',272,'Ale','Autodistruzione'),
 ('Doubles',272,'Sandro','Autodistruzione'),
 ('Doubles',272,'Leo','Fuoco Amico');


--Doubles-271
insert into kills values ('Doubles',271,'Siwei','Ale','Smash in Su'),
 ('Doubles',271,'Sandro','Siwei','Smash in Su'),
 ('Doubles',271,'Leo','Sandro','Smash Laterale'),
 ('Doubles',271,'Siwei','Ale','Peculiare'), --PECULIAR: GANONDORF
 ('Doubles',271,'Ale','Leo','Altro'),
 ('Doubles',271,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',271,'Sandro','Siwei','Altro'),
 ('Doubles',271,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',271,'Sandro','Leo','Speciale Standard'),
 ('Doubles',271,'Leo','Sandro','Smash Laterale'),
 ('Doubles',271,'Ale','Leo','Smash in Giù');

insert into deaths values ('Doubles',271,'Leo','Mancato Recupero'),
 ('Doubles',271,'Sandro','Fuoco Amico'),
 ('Doubles',271,'Siwei','Paper Mario'),
 ('Doubles',271,'Siwei','Fuoco Amico');


--Doubles-270
insert into kills values ('Doubles',270,'Leo','Siwei','Speciale in Su'),
 ('Doubles',270,'Siwei','Leo','Smash Finale'),
 ('Doubles',270,'Siwei','Sandro','Smash Finale'),
 ('Doubles',270,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',270,'Leo','Siwei','Altro'),
 ('Doubles',270,'Sandro','Ale','Aereo Frontale'),
 ('Doubles',270,'Ale','Sandro','Smash Finale'),
 ('Doubles',270,'Ale','Leo','Smash Laterale'),
 ('Doubles',270,'Leo','Ale','Speciale in Su'),
 ('Doubles',270,'Sandro','Ale','In Corsa');

insert into deaths values ('Doubles',270,'Siwei','Fuoco Amico'),
 ('Doubles',270,'Siwei','Autodistruzione');


--Doubles-269
insert into kills values ('Doubles',269,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',269,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',269,'Leo','Siwei','Aereo in Su'),
 ('Doubles',269,'Ale','Sandro','Smash Finale'),
 ('Doubles',269,'Siwei','Leo','Speciale Standard'),
 ('Doubles',269,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',269,'Leo','Sandro','Smash in Su'),
 ('Doubles',269,'Ale','Siwei','Smash in Su'),
 ('Doubles',269,'Sandro','Leo','Altro'),
 ('Doubles',269,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',269,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Doubles',269,'Leo','Windy Hill Zone'),
 ('Doubles',269,'Siwei','Fuoco Amico');


--Doubles-268
insert into kills values ('Doubles',268,'Leo','Siwei','Smash Laterale'),
 ('Doubles',268,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',268,'Siwei','Leo','Speciale Standard'),
 ('Doubles',268,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',268,'Leo','Ale','Smash Finale'),
 ('Doubles',268,'Leo','Siwei','Smash Finale'),
 ('Doubles',268,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',268,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',268,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Doubles',268,'Sandro','Fuoco Amico'),
 ('Doubles',268,'Leo','Fuoco Amico');


--Doubles-267
insert into kills values ('Doubles',267,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',267,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',267,'Siwei','Sandro','Smash Finale'),
 ('Doubles',267,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',267,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',267,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',267,'Ale','Fuoco Amico'),
 ('Doubles',267,'Ale','Autodistruzione');


--Doubles-266
insert into kills values ('Doubles',266,'Leo','Siwei','Smash Laterale'),
 ('Doubles',266,'Sandro','Ale','Speciale Standard'),
 ('Doubles',266,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',266,'Ale','Leo','Smash Laterale'),
 ('Doubles',266,'Leo','Siwei','Smash Laterale'),
 ('Doubles',266,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',266,'Ale','Leo','Altro'),
 ('Doubles',266,'Sandro','Siwei','Speciale Standard'),
 ('Doubles',266,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',266,'Sandro','Ale','Smash Laterale'),
 ('Doubles',266,'Siwei','Sandro','Speciale Standard');

insert into deaths values ('Doubles',266,'Sandro','Fuoco Amico'),
 ('Doubles',266,'Sandro','Fuoco Amico'),
 ('Doubles',266,'Leo','Mancato Recupero'),
 ('Doubles',266,'Leo','Fuoco Amico');


--Doubles-265
insert into kills values ('Doubles',265,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',265,'Siwei','Sandro','Altro'),
 ('Doubles',265,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',265,'Siwei','Ale','Speciale in Su'),
 ('Doubles',265,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',265,'Leo','Sandro','Speciale in Su'),
 ('Doubles',265,'Ale','Leo','Altro'),
 ('Doubles',265,'Sandro','Siwei','Smash in Su'),
 ('Doubles',265,'Leo','Sandro','Smash Finale'),
 ('Doubles',265,'Leo','Ale','Aereo in Giù'),
 ('Doubles',265,'Ale','Leo','Aereo Frontale');


--Doubles-264
insert into kills values ('Doubles',264,'Siwei','Leo','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Doubles',264,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',264,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',264,'Sandro','Ale','Meteora'),
 ('Doubles',264,'Ale','Leo','Smash in Su'),
 ('Doubles',264,'Ale','Sandro','Altro'),
 ('Doubles',264,'Leo','Ale','Altro'),
 ('Doubles',264,'Leo','Siwei','Speciale Standard'),
 ('Doubles',264,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',264,'Ale','Sandro','Speciale Standard');

insert into deaths values ('Doubles',264,'Sandro','Fuoco Amico'),
 ('Doubles',264,'Sandro','Autodistruzione'),
 ('Doubles',264,'Ale','Autodistruzione'),
 ('Doubles',264,'Leo','Fuoco Amico');


--Doubles-263
insert into kills values ('Doubles',263,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',263,'Sandro','Ale','Smash Laterale'),
 ('Doubles',263,'Siwei','Sandro','Smash Finale'),
 ('Doubles',263,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',263,'Sandro','Siwei','Smash Finale'),
 ('Doubles',263,'Sandro','Ale','Smash Laterale'),
 ('Doubles',263,'Siwei','Sandro','Smash Finale'),
 ('Doubles',263,'Leo','Siwei','Altro'),
 ('Doubles',263,'Leo','Ale','Peculiare'); --PECULIAR: KAZUYA

insert into deaths values ('Doubles',263,'Leo','Fuoco Amico');


--Doubles-262
insert into kills values ('Doubles',262,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',262,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',262,'Leo','Ale','Peculiare'), --PECULIAR: KAZUYA
 ('Doubles',262,'Siwei','Sandro','Smash Finale'),
 ('Doubles',262,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',262,'Sandro','Siwei','Altro'),
 ('Doubles',262,'Leo','Sandro','Altro'),
 ('Doubles',262,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',262,'Ale','Leo','Smash Laterale');

insert into deaths values ('Doubles',262,'Leo','Fuoco Amico'),
 ('Doubles',262,'Siwei','Autodistruzione'),
 ('Doubles',262,'Sandro','Mancato Recupero'),
 ('Doubles',262,'Siwei','Fuoco Amico');


--Doubles-261
insert into kills values ('Doubles',261,'Leo','Sandro','Smash Laterale'),
 ('Doubles',261,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',261,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',261,'Siwei','Leo','Smash Laterale'),
 ('Doubles',261,'Sandro','Leo','Smash Laterale'),
 ('Doubles',261,'Leo','Ale','Fuoco Amico'),
 ('Doubles',261,'Leo','Sandro','In Corsa'),
 ('Doubles',261,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',261,'Leo','Sandro','Smash Finale'),
 ('Doubles',261,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Doubles',261,'Siwei','Fuoco Amico'),
 ('Doubles',261,'Ale','Fuoco Amico'),
 ('Doubles',261,'Siwei','Fuoco Amico');


--Doubles-260
insert into kills values ('Doubles',260,'Leo','Siwei','Smash Laterale'),
 ('Doubles',260,'Ale','Sandro','Altro'),
 ('Doubles',260,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',260,'Sandro','Ale','Aereo in Su'),
 ('Doubles',260,'Leo','Siwei','Speciale in Su'),
 ('Doubles',260,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',260,'Ale','Leo','Smash Finale'),
 ('Doubles',260,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',260,'Leo','Ale','Speciale in Su'),
 ('Doubles',260,'Ale','Sandro','Grab'),
 ('Doubles',260,'Ale','Leo','Aereo in Giù');

insert into deaths values ('Doubles',260,'Sandro','Mancato Recupero'),
 ('Doubles',260,'Leo','Fuoco Amico');


--Single-667
insert into kills values ('Single',667,'Ale','Siwei','Smash Laterale'),
 ('Single',667,'Siwei','Leo','Speciale in Su'),
 ('Single',667,'Ale','Sandro','Speciale in Su'),
 ('Single',667,'Siwei','Ale','Speciale in Su'),
 ('Single',667,'Leo','Sandro','Smash Finale'),
 ('Single',667,'Ale','Leo','Smash Laterale'),
 ('Single',667,'Ale','Siwei','Speciale in Giù'),
 ('Single',667,'Siwei','Ale','Speciale Standard'),
 ('Single',667,'Sandro','Siwei','Aereo Frontale'),
 ('Single',667,'Ale','Leo','In Corsa'),
 ('Single',667,'Sandro','Ale','Smash Laterale');


--Single-666
insert into kills values ('Single',666,'Ale','Siwei','Speciale in Giù'),
 ('Single',666,'Siwei','Ale','In Corsa'),
 ('Single',666,'Sandro','Leo','Speciale Standard'),
 ('Single',666,'Siwei','Ale','Smash Finale'),
 ('Single',666,'Leo','Siwei','Speciale in Su'),
 ('Single',666,'Siwei','Sandro','In Corsa'),
 ('Single',666,'Leo','Ale','Speciale in Su'),
 ('Single',666,'Siwei','Sandro','Speciale Laterale'),
 ('Single',666,'Sandro','Leo','Smash Finale'),
 ('Single',666,'Sandro','Siwei','Smash Laterale'),
 ('Single',666,'Leo','Sandro','Aereo Frontale');


--Single-665
insert into kills values ('Single',665,'Sandro','Ale','Smash Laterale'),
 ('Single',665,'Sandro','Siwei','Smash Laterale'),
 ('Single',665,'Leo','Sandro','Speciale in Su'),
 ('Single',665,'Ale','Siwei','Aereo Posteriore'),
 ('Single',665,'Ale','Leo','Speciale Standard'),
 ('Single',665,'Leo','Sandro','Aereo in Su'),
 ('Single',665,'Ale','Siwei','Speciale Standard'),
 ('Single',665,'Sandro','Leo','Smash in Su'),
 ('Single',665,'Sandro','Ale','Smash Laterale'),
 ('Single',665,'Sandro','Leo','Altro'),
 ('Single',665,'Ale','Sandro','Altro');

insert into deaths values ('Single',665,'Leo','Autodistruzione'),
 ('Single',665,'Sandro','Mancato Recupero');


--Single-664
insert into kills values ('Single',664,'Leo','Siwei','Aereo in Giù'),
 ('Single',664,'Leo','Sandro','Aereo in Giù'),
 ('Single',664,'Sandro','Ale','Smash in Su'),
 ('Single',664,'Siwei','Leo','Smash Finale'),
 ('Single',664,'Leo','Siwei','Smash Finale'),
 ('Single',664,'Siwei','Sandro','Smash in Su'),
 ('Single',664,'Sandro','Leo','Altro'),
 ('Single',664,'Siwei','Ale','Smash in Su'),
 ('Single',664,'Sandro','Ale','Smash Laterale'),
 ('Single',664,'Leo','Siwei','Aereo in Giù'),
 ('Single',664,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',664,'Leo','Mancato Recupero');


--Single-663
insert into kills values ('Single',663,'Siwei','Leo','Speciale Standard'),
 ('Single',663,'Ale','Sandro','Aereo Posteriore'),
 ('Single',663,'Leo','Ale','Smash in Su'),
 ('Single',663,'Leo','Siwei','Smash in Su'),
 ('Single',663,'Ale','Leo','Altro'),
 ('Single',663,'Ale','Leo','Smash Finale'),
 ('Single',663,'Sandro','Siwei','Smash Finale'),
 ('Single',663,'Sandro','Ale','Peculiare'), --PECULIAR: SORA
 ('Single',663,'Sandro','Siwei','Peculiare'), --PECULIAR: SORA
 ('Single',663,'Sandro','Ale','Speciale in Su');


--Single-662
insert into kills values ('Single',662,'Leo','Siwei','Aereo in Su'),
 ('Single',662,'Leo','Ale','Altro'),
 ('Single',662,'Ale','Leo','Smash in Su'),
 ('Single',662,'Siwei','Sandro','Smash Finale'),
 ('Single',662,'Ale','Leo','Altro'),
 ('Single',662,'Ale','Siwei','Smash Finale'),
 ('Single',662,'Ale','Leo','Smash Finale'),
 ('Single',662,'Sandro','Ale','Speciale Standard'),
 ('Single',662,'Siwei','Sandro','Smash in Su'),
 ('Single',662,'Siwei','Sandro','Smash Finale'),
 ('Single',662,'Ale','Siwei','Speciale Standard');

insert into deaths values ('Single',662,'Ale','Mancato Recupero'),
 ('Single',662,'Leo','Autodistruzione');


--Single-661
insert into kills values ('Single',661,'Sandro','Leo','Smash Laterale'),
 ('Single',661,'Leo','Ale','Aereo Frontale'),
 ('Single',661,'Ale','Sandro','Smash Laterale'),
 ('Single',661,'Sandro','Siwei','Smash Laterale'),
 ('Single',661,'Siwei','Ale','Smash Finale'),
 ('Single',661,'Siwei','Leo','Smash Finale'),
 ('Single',661,'Siwei','Leo','Smash in Su'),
 ('Single',661,'Ale','Siwei','Aereo Posteriore'),
 ('Single',661,'Sandro','Siwei','Peculiare'), --PECULIAR: SEPHIROTH
 ('Single',661,'Sandro','Ale','Smash Laterale');


--Single-660
insert into kills values ('Single',660,'Leo','Sandro','Speciale in Giù'),
 ('Single',660,'Sandro','Ale','Smash Finale'),
 ('Single',660,'Sandro','Leo','Smash in Su'),
 ('Single',660,'Ale','Siwei','Speciale in Giù'),
 ('Single',660,'Sandro','Ale','Altro'),
 ('Single',660,'Siwei','Sandro','Smash Finale'),
 ('Single',660,'Sandro','Siwei','Altro'),
 ('Single',660,'Sandro','Ale','Altro'),
 ('Single',660,'Sandro','Leo','Peculiare'), --PECULIAR: R.O.B.
 ('Single',660,'Sandro','Siwei','Altro'),
 ('Single',660,'Leo','Sandro','Speciale in Giù');

insert into deaths values ('Single',660,'Ale','Autodistruzione'),
 ('Single',660,'Siwei','Mancato Recupero'),
 ('Single',660,'Ale','Autodistruzione'),
 ('Single',660,'Siwei','Mancato Recupero');


--Single-659
insert into kills values ('Single',659,'Siwei','Ale','In Corsa'),
 ('Single',659,'Sandro','Leo','Speciale Laterale'),
 ('Single',659,'Ale','Sandro','Aereo in Su'),
 ('Single',659,'Leo','Ale','Smash Finale'),
 ('Single',659,'Leo','Sandro','Smash Finale'),
 ('Single',659,'Ale','Siwei','Altro'),
 ('Single',659,'Siwei','Sandro','Smash Laterale'),
 ('Single',659,'Leo','Siwei','Altro'),
 ('Single',659,'Ale','Leo','In Corsa'),
 ('Single',659,'Leo','Ale','Aereo in Su'),
 ('Single',659,'Leo','Siwei','Altro');

insert into deaths values ('Single',659,'Siwei','Autodistruzione'),
 ('Single',659,'Siwei','Autodistruzione'),
 ('Single',659,'Siwei','Autodistruzione');


--Single-658
insert into kills values ('Single',658,'Ale','Leo','Aereo Standard'),
 ('Single',658,'Leo','Ale','Speciale in Su'),
 ('Single',658,'Siwei','Sandro','Smash Laterale'),
 ('Single',658,'Ale','Siwei','Aereo Standard'),
 ('Single',658,'Ale','Leo','Peculiare'), --PECULIAR: KIRBY INHALE OR STAR
 ('Single',658,'Leo','Siwei','Altro'),
 ('Single',658,'Siwei','Ale','Peculiare'),--PECULIAR: CLOUD
 ('Single',658,'Siwei','Sandro','Speciale Laterale'),
 ('Single',658,'Siwei','Leo','Smash Laterale'),
 ('Single',658,'Ale','Siwei','Altro'),
 ('Single',658,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',658,'Siwei','Mancato Recupero'),
 ('Single',658,'Siwei','Autodistruzione');


--Single-657
insert into kills values ('Single',657,'Leo','Sandro','Smash Laterale'),
 ('Single',657,'Sandro','Leo','Smash Laterale'),
 ('Single',657,'Ale','Siwei','Altro'),
 ('Single',657,'Leo','Ale','Smash Finale'),
 ('Single',657,'Sandro','Siwei','Smash Finale'),
 ('Single',657,'Siwei','Sandro','Smash Finale'),
 ('Single',657,'Sandro','Ale','Altro'),
 ('Single',657,'Ale','Siwei','Meteora'),
 ('Single',657,'Sandro','Leo','Altro'),
 ('Single',657,'Sandro','Ale','Altro'),
 ('Single',657,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',657,'Siwei','Mushroom Kingdom U'),
 ('Single',657,'Ale','Autodistruzione'),
 ('Single',657,'Ale','Mushroom Kingdom U');


--Single-656
insert into kills values ('Single',656,'Leo','Siwei','Smash Laterale'),
 ('Single',656,'Leo','Ale','Smash Laterale'),
 ('Single',656,'Siwei','Leo','Smash Finale'),
 ('Single',656,'Leo','Sandro','Smash Finale'),
 ('Single',656,'Ale','Siwei','Smash Finale'),
 ('Single',656,'Sandro','Ale','Smash Finale'),
 ('Single',656,'Siwei','Leo','Smash Finale'),
 ('Single',656,'Ale','Sandro','Smash Laterale'),
 ('Single',656,'Siwei','Ale','Speciale Laterale'),
 ('Single',656,'Leo','Sandro','Smash Finale'),
 ('Single',656,'Leo','Siwei','Smash Finale');


--Single-655
insert into kills values ('Single',655,'Ale','Sandro','Altro'),
 ('Single',655,'Sandro','Ale','Smash Laterale'),
 ('Single',655,'Sandro','Siwei','Smash in Su'),
 ('Single',655,'Sandro','Ale','Smash Finale'),
 ('Single',655,'Siwei','Leo','Peculiare'), --PECULIAR: CLOUD
 ('Single',655,'Siwei','Sandro','Peculiare'), --PECULIAR: CLOUD
 ('Single',655,'Sandro','Siwei','Smash Laterale'),
 ('Single',655,'Sandro','Ale','Speciale Laterale'),
 ('Single',655,'Siwei','Leo','In Corsa'),
 ('Single',655,'Leo','Sandro','Smash Laterale'),
 ('Single',655,'Leo','Siwei','Smash Finale');

insert into deaths values ('Single',655,'Sandro','Autodistruzione');


--Single-654
insert into kills values ('Single',654,'Ale','Leo','Smash in Giù'),
 ('Single',654,'Ale','Siwei','Speciale Standard'),
 ('Single',654,'Ale','Sandro','Altro'),
 ('Single',654,'Siwei','Leo','Peculiare'), --PECULIAR: CLOUD
 ('Single',654,'Leo','Sandro','Smash Laterale'),
 ('Single',654,'Leo','Ale','Smash Laterale'),
 ('Single',654,'Sandro','Siwei','Smash Finale'),
 ('Single',654,'Leo','Sandro','Smash Laterale'),
 ('Single',654,'Ale','Siwei','Altro'),
 ('Single',654,'Leo','Ale','Smash Finale'),
 ('Single',654,'Ale','Leo','Smash in Giù');

insert into deaths values ('Single',654,'Sandro','Autodistruzione'),
 ('Single',654,'Siwei','Autodistruzione');


--Single-653
insert into kills values ('Single',653,'Siwei','Sandro','Smash Laterale'),
 ('Single',653,'Siwei','Leo','Smash in Su'),
 ('Single',653,'Ale','Siwei','Smash Laterale'),
 ('Single',653,'Siwei','Ale','Smash in Su'),
 ('Single',653,'Siwei','Leo','Smash Finale'),
 ('Single',653,'Ale','Sandro','Smash Laterale'),
 ('Single',653,'Sandro','Siwei','Altro'),
 ('Single',653,'Siwei','Leo','Smash Laterale'),
 ('Single',653,'Siwei','Ale','Smash Finale'),
 ('Single',653,'Sandro','Siwei','Speciale Laterale'),
 ('Single',653,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Single',653,'Siwei','Autodistruzione');


--Single-652
insert into kills values ('Single',652,'Siwei','Sandro','Altro'),
 ('Single',652,'Leo','Siwei','Aereo Posteriore'),
 ('Single',652,'Sandro','Leo','Smash in Su'),
 ('Single',652,'Sandro','Ale','Smash in Su'),
 ('Single',652,'Siwei','Leo','Smash Finale'),
 ('Single',652,'Siwei','Sandro','Altro'),
 ('Single',652,'Sandro','Siwei','Smash Finale'),
 ('Single',652,'Leo','Siwei','Smash Laterale'),
 ('Single',652,'Leo','Ale','Smash Finale'),
 ('Single',652,'Ale','Leo','Speciale in Su'),
 ('Single',652,'Ale','Sandro','Aereo in Giù');

insert into deaths values ('Single',652,'Sandro','Mancato Recupero'),
 ('Single',652,'Sandro','Mancato Recupero');


--Single-651
insert into kills values ('Single',651,'Sandro','Leo','Altro'),
 ('Single',651,'Siwei','Sandro','In Corsa'),
 ('Single',651,'Sandro','Siwei','Speciale Laterale'),
 ('Single',651,'Sandro','Ale','Smash Finale'),
 ('Single',651,'Ale','Sandro','Smash Finale'),
 ('Single',651,'Leo','Siwei','Smash in Su'),
 ('Single',651,'Sandro','Ale','Smash Finale'),
 ('Single',651,'Leo','Siwei','Speciale Standard'),
 ('Single',651,'Ale','Leo','Smash Laterale'),
 ('Single',651,'Ale','Sandro','Smash Laterale'),
 ('Single',651,'Leo','Ale','Scudo Rotto');

insert into deaths values ('Single',651,'Leo','Pirate Ship'),
 ('Single',651,'Ale','Scudo Rotto');


--Single-650
insert into kills values ('Single',650,'Siwei','Leo','Speciale in Giù'),
 ('Single',650,'Leo','Ale','Speciale in Su'),
 ('Single',650,'Ale','Siwei','Smash in Su'),
 ('Single',650,'Ale','Sandro','Smash in Su'),
 ('Single',650,'Leo','Ale','Smash Finale'),
 ('Single',650,'Leo','Siwei','Speciale in Su'),
 ('Single',650,'Siwei','Ale','Speciale Standard'),
 ('Single',650,'Siwei','Sandro','Scudo Rotto'),
 ('Single',650,'Siwei','Leo','Aereo in Su'),
 ('Single',650,'Sandro','Siwei','Smash Finale'),
 ('Single',650,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',650,'Sandro','Scudo Rotto');

--Single-649
insert into kills values ('Single',649,'Siwei','Leo','Speciale Laterale'),
 ('Single',649,'Sandro','Siwei','Altro'),
 ('Single',649,'Siwei','Ale','Speciale Laterale'),
 ('Single',649,'Leo','Siwei','Smash Finale'),
 ('Single',649,'Ale','Leo','Speciale Standard'),
 ('Single',649,'Ale','Sandro','Speciale in Su'),
 ('Single',649,'Siwei','Ale','Smash Finale'),
 ('Single',649,'Leo','Siwei','Aereo Posteriore'),
 ('Single',649,'Ale','Leo','Smash Laterale'),
 ('Single',649,'Ale','Sandro','Speciale in Giù'),
 ('Single',649,'Sandro','Ale','Altro');

insert into deaths values ('Single',649,'Siwei','Figure-8 Circuit'),
 ('Single',649,'Ale','Figure-8 Circuit');


--Single-648
insert into kills values ('Single',648,'Leo','Sandro','Speciale in Su'),
 ('Single',648,'Siwei','Leo','Speciale in Su'),
 ('Single',648,'Ale','Siwei','Smash in Su'),
 ('Single',648,'Siwei','Ale','Smash Finale'),
 ('Single',648,'Ale','Sandro','Smash Finale'),
 ('Single',648,'Leo','Siwei','Speciale in Su'),
 ('Single',648,'Siwei','Ale','Speciale in Su'),
 ('Single',648,'Siwei','Leo','Smash Finale'),
 ('Single',648,'Leo','Sandro','Smash Finale'),
 ('Single',648,'Leo','Ale','Smash Laterale'),
 ('Single',648,'Leo','Siwei','Altro');


--Single-647
insert into kills values ('Single',647,'Ale','Sandro','Speciale in Su'),
 ('Single',647,'Ale','Siwei','Smash Laterale'),
 ('Single',647,'Ale','Leo','Speciale in Su'),
 ('Single',647,'Sandro','Siwei','Altro'),
 ('Single',647,'Siwei','Ale','Smash Finale'),
 ('Single',647,'Ale','Siwei','Smash Finale'),
 ('Single',647,'Ale','Sandro','Smash Finale'),
 ('Single',647,'Leo','Ale','Smash Laterale'),
 ('Single',647,'Sandro','Leo','Aereo Frontale'),
 ('Single',647,'Leo','Ale','Smash Finale'),
 ('Single',647,'Sandro','Leo','Aereo in Giù');

insert into deaths values ('Single',647,'Siwei','Rainbow Cruise');


--Single-646
insert into kills values ('Single',646,'Sandro','Siwei','Altro'),
 ('Single',646,'Leo','Siwei','Altro'),
 ('Single',646,'Leo','Ale','Altro'),
 ('Single',646,'Ale','Leo','Smash Laterale'),
 ('Single',646,'Leo','Sandro','Speciale Standard'),
 ('Single',646,'Siwei','Ale','Smash Laterale'),
 ('Single',646,'Ale','Siwei','Smash in Giù'),
 ('Single',646,'Sandro','Leo','Altro'),
 ('Single',646,'Leo','Sandro','In Corsa'),
 ('Single',646,'Sandro','Leo','Altro'),
 ('Single',646,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Single',646,'Siwei','Mancato Recupero'),
 ('Single',646,'Ale','Wily Castle'),
 ('Single',646,'Siwei','Wily Castle'),
 ('Single',646,'Leo','Mancato Recupero'),
 ('Single',646,'Leo','Wily Castle');


--Single-645
insert into kills values ('Single',645,'Leo','Ale','Smash Laterale'),
 ('Single',645,'Sandro','Siwei','Smash Laterale'),
 ('Single',645,'Siwei','Sandro','Smash Finale'),
 ('Single',645,'Sandro','Leo','Smash Laterale'),
 ('Single',645,'Leo','Sandro','Smash Laterale'), --PECULIAR?: KAZUYA
 ('Single',645,'Sandro','Siwei','Speciale Laterale'),
 ('Single',645,'Siwei','Sandro','Smash Finale'),
 ('Single',645,'Siwei','Ale','Speciale Standard'),
 ('Single',645,'Siwei','Leo','Smash Laterale'),
 ('Single',645,'Ale','Siwei','Smash Laterale'),
 ('Single',645,'Ale','Leo','Smash in Su');


--Single-644
insert into kills values ('Single',644,'Ale','Leo','Aereo Posteriore'),
 ('Single',644,'Sandro','Siwei','Speciale Laterale'),
 ('Single',644,'Siwei','Sandro','Smash Finale'),
 ('Single',644,'Siwei','Leo','Smash Finale'),
 ('Single',644,'Siwei','Ale','Smash Laterale'),
 ('Single',644,'Ale','Siwei','Smash Finale'),
 ('Single',644,'Siwei','Sandro','Speciale in Giù'),
 ('Single',644,'Siwei','Leo','Smash in Su'),
 ('Single',644,'Ale','Siwei','Smash Laterale'),
 ('Single',644,'Ale','Sandro','Smash Laterale');


--Single-643
insert into kills values ('Single',643,'Sandro','Siwei','Altro'),
 ('Single',643,'Sandro','Siwei','Altro'),
 ('Single',643,'Leo','Ale','Altro'),
 ('Single',643,'Sandro','Leo','Smash in Su'),
 ('Single',643,'Siwei','Sandro','Smash Finale'),
 ('Single',643,'Ale','Siwei','Smash Finale'),
 ('Single',643,'Sandro','Ale','Altro'),
 ('Single',643,'Ale','Leo','Speciale Standard'),
 ('Single',643,'Ale','Sandro','Altro'),
 ('Single',643,'Leo','Ale','Altro');

insert into deaths values ('Single',643,'Siwei','Mancato Recupero'),
 ('Single',643,'Siwei','Mancato Recupero'),
 ('Single',643,'Ale','Autodistruzione'),
 ('Single',643,'Sandro','Autodistruzione'),
 ('Single',643,'Ale','Autodistruzione'),
 ('Single',643,'Sandro','Autodistruzione'),
 ('Single',643,'Ale','Autodistruzione');


--Single-642
insert into kills values ('Single',642,'Sandro','Ale','Altro'),
 ('Single',642,'Ale','Leo','Aereo Posteriore'),
 ('Single',642,'Leo','Siwei','Smash Laterale'),
 ('Single',642,'Leo','Sandro','Smash Finale'),
 ('Single',642,'Leo','Ale','Smash in Su'),
 ('Single',642,'Siwei','Leo','Smash Finale'),
 ('Single',642,'Ale','Leo','Speciale Standard'),
 ('Single',642,'Ale','Siwei','Peculiare'), --PECULIAR: SORA
 ('Single',642,'Ale','Sandro','Smash Finale'),
 ('Single',642,'Sandro','Siwei','Speciale Laterale'),
 ('Single',642,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',642,'Ale','Autodistruzione');


--Single-641
insert into kills values ('Single',641,'Sandro','Siwei','Aereo in Giù'),
 ('Single',641,'Leo','Sandro','Smash Laterale'),
 ('Single',641,'Ale','Leo','Peculiare'), --PECULIAR: SORA THUNDAGA
 ('Single',641,'Leo','Sandro','Smash Finale'),
 ('Single',641,'Leo','Siwei','Smash Laterale'),
 ('Single',641,'Leo','Ale','Smash Laterale'),
 ('Single',641,'Ale','Sandro','Smash Finale'),
 ('Single',641,'Leo','Siwei','Smash Laterale'),
 ('Single',641,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',641,'Ale','Autodistruzione');


--Single-640
insert into kills values ('Single',640,'Leo','Sandro','Altro'),
 ('Single',640,'Ale','Leo','Altro'),
 ('Single',640,'Sandro','Ale','Speciale Laterale'),
 ('Single',640,'Ale','Leo','Aereo Posteriore'),
 ('Single',640,'Siwei','Sandro','Aereo in Su'),
 ('Single',640,'Leo','Siwei','Smash Finale'),
 ('Single',640,'Siwei','Leo','Smash Finale'),
 ('Single',640,'Sandro','Ale','Altro'),
 ('Single',640,'Ale','Siwei','Aereo Posteriore'),
 ('Single',640,'Ale','Sandro','Aereo Frontale'),
 ('Single',640,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',640,'Sandro','Mancato Recupero'),
 ('Single',640,'Leo','Mancato Recupero'),
 ('Single',640,'Ale','Mancato Recupero');


--Single-639
insert into kills values ('Single',639,'Leo','Sandro','In Corsa'),
 ('Single',639,'Ale','Siwei','Speciale in Giù'),
 ('Single',639,'Siwei','Ale','Aereo Frontale'),
 ('Single',639,'Leo','Siwei','Smash Finale'),
 ('Single',639,'Sandro','Leo','Speciale Laterale'),
 ('Single',639,'Ale','Sandro','Smash Finale'),
 ('Single',639,'Sandro','Siwei','Smash Laterale'),
 ('Single',639,'Sandro','Ale','Smash Finale'),
 ('Single',639,'Sandro','Leo','Smash Finale'),
 ('Single',639,'Sandro','Leo','Smash in Su'),
 ('Single',639,'Sandro','Ale','Smash Laterale');


--Single-638
insert into kills values ('Single',638,'Ale','Siwei','Smash in Su'),
 ('Single',638,'Siwei','Leo','Altro'),
 ('Single',638,'Sandro','Ale','Altro'),
 ('Single',638,'Ale','Siwei','Altro'),
 ('Single',638,'Leo','Sandro','Altro'),
 ('Single',638,'Siwei','Leo','Speciale Laterale'),
 ('Single',638,'Sandro','Ale','Aereo in Giù'),
 ('Single',638,'Ale','Leo','Altro'),
 ('Single',638,'Sandro','Ale','Smash Finale'),
 ('Single',638,'Sandro','Siwei','Altro');

insert into deaths values ('Single',638,'Ale','Norfair'),
 ('Single',638,'Siwei','Mancato Recupero'),
 ('Single',638,'Sandro','Norfair'),
 ('Single',638,'Leo','Norfair'),
 ('Single',638,'Sandro','Norfair');


--Single-637
insert into kills values ('Single',637,'Sandro','Siwei','Speciale Laterale'),
 ('Single',637,'Siwei','Sandro','In Corsa'),
 ('Single',637,'Siwei','Ale','Smash Finale'),
 ('Single',637,'Siwei','Leo','Smash Finale'),
 ('Single',637,'Sandro','Siwei','Smash Finale'),
 ('Single',637,'Leo','Sandro','Smash Finale'),
 ('Single',637,'Siwei','Leo','Smash Finale'),
 ('Single',637,'Siwei','Ale','Smash Finale'),
 ('Single',637,'Ale','Siwei','Smash in Su'),
 ('Single',637,'Leo','Sandro','Smash Finale'),
 ('Single',637,'Leo','Ale','Smash Finale');


--Single-636
insert into kills values ('Single',636,'Siwei','Ale','Smash in Su'),
 ('Single',636,'Ale','Leo','Altro'),
 ('Single',636,'Leo','Siwei','Altro'),
 ('Single',636,'Sandro','Ale','Altro'),
 ('Single',636,'Siwei','Leo','Smash Laterale'),
 ('Single',636,'Sandro','Siwei','Smash Laterale'),
 ('Single',636,'Siwei','Sandro','Smash in Su'),
 ('Single',636,'Ale','Siwei','Altro'),
 ('Single',636,'Sandro','Ale','Aereo Frontale'),
 ('Single',636,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',636,'Leo','Spirit Train'),
 ('Single',636,'Siwei','Spirit Train'),
 ('Single',636,'Ale','Spirit Train'),
 ('Single',636,'Siwei','Spirit Train');


--Single-635
insert into kills values ('Single',635,'Sandro','Ale','Smash in Su'),
 ('Single',635,'Sandro','Leo','Smash in Su'),
 ('Single',635,'Ale','Sandro','Smash Finale'),
 ('Single',635,'Sandro','Siwei','Smash in Su'),
 ('Single',635,'Sandro','Ale','Speciale Laterale'),
 ('Single',635,'Siwei','Leo','Smash Laterale'),
 ('Single',635,'Leo','Sandro','Smash Finale'),
 ('Single',635,'Sandro','Siwei','Smash Laterale'),
 ('Single',635,'Leo','Ale','Aereo Frontale'),
 ('Single',635,'Leo','Siwei','Smash Laterale'),
 ('Single',635,'Leo','Sandro','Aereo in Su');


--Single-634
insert into kills values ('Single',634,'Ale','Sandro','Aereo Frontale'),
 ('Single',634,'Siwei','Leo','Altro'),
 ('Single',634,'Sandro','Siwei','Smash Finale'),
 ('Single',634,'Siwei','Sandro','Smash Finale'),
 ('Single',634,'Leo','Ale','Smash Finale'),
 ('Single',634,'Leo','Siwei','Smash Finale'),
 ('Single',634,'Sandro','Siwei','Smash Finale'),
 ('Single',634,'Leo','Sandro','Speciale Laterale'),
 ('Single',634,'Ale','Leo','Altro'),
 ('Single',634,'Leo','Ale','Smash Finale'),
 ('Single',634,'Leo','Ale','Smash in Su');

insert into deaths values ('Single',634,'Leo','Mancato Recupero'),
 ('Single',634,'Leo','Mancato Recupero');


--Single-633
insert into kills values ('Single',633,'Leo','Siwei','Altro'),
 ('Single',633,'Sandro','Siwei','Smash Laterale'),
 ('Single',633,'Sandro','Ale','Smash Laterale'),
 ('Single',633,'Ale','Sandro','Smash Laterale'),
 ('Single',633,'Siwei','Leo','Aereo Frontale'),
 ('Single',633,'Siwei','Ale','Smash Finale'),
 ('Single',633,'Ale','Sandro','Grab'),
 ('Single',633,'Leo','Siwei','Smash Finale'),
 ('Single',633,'Sandro','Leo','Speciale in Su'),
 ('Single',633,'Sandro','Ale','Smash Finale'),
 ('Single',633,'Leo','Sandro','Aereo Posteriore');

insert into deaths values ('Single',633,'Siwei','Gerudo Valley');


--Single-632
insert into kills values ('Single',632,'Ale','Leo','Speciale in Giù'),
 ('Single',632,'Leo','Ale','Aereo Frontale'),
 ('Single',632,'Ale','Sandro','Speciale in Giù'),
 ('Single',632,'Ale','Siwei','Aereo Posteriore'),
 ('Single',632,'Leo','Siwei','Smash Finale'),
 ('Single',632,'Siwei','Leo','Smash Finale'),
 ('Single',632,'Leo','Siwei','Altro'),
 ('Single',632,'Ale','Sandro','Altro'),
 ('Single',632,'Leo','Ale','Altro'),
 ('Single',632,'Sandro','Leo','Speciale in Su'),
 ('Single',632,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Single',632,'Siwei','Mancato Recupero'),
 ('Single',632,'Sandro','Autodistruzione');


--Single-631
insert into kills values ('Single',631,'Sandro','Siwei','Speciale Standard'),
 ('Single',631,'Leo','Ale','Altro'),
 ('Single',631,'Siwei','Leo','Smash Finale'),
 ('Single',631,'Siwei','Sandro','Smash Finale'),
 ('Single',631,'Sandro','Siwei','Altro'),
 ('Single',631,'Leo','Ale','Smash Finale'),
 ('Single',631,'Siwei','Leo','Smash in Su'),
 ('Single',631,'Ale','Sandro','Altro'),
 ('Single',631,'Ale','Sandro','Speciale in Giù'),
 ('Single',631,'Ale','Siwei','Speciale in Giù'),
 ('Single',631,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',631,'Siwei','Autodistruzione'),
 ('Single',631,'Sandro','Mancato Recupero');


--Single-630
insert into kills values ('Single',630,'Leo','Ale','Smash Laterale'),
 ('Single',630,'Leo','Siwei','Smash Laterale'),
 ('Single',630,'Siwei','Sandro','Smash Laterale'),
 ('Single',630,'Ale','Sandro','Speciale Standard'),
 ('Single',630,'Ale','Leo','Altro'),
 ('Single',630,'Leo','Siwei','Smash Laterale'),
 ('Single',630,'Leo','Ale','Altro'),
 ('Single',630,'Siwei','Leo','Smash Laterale'),
 ('Single',630,'Leo','Siwei','Smash Laterale'),
 ('Single',630,'Leo','Ale','Peculiare'); --PECULIAR: JOKER

insert into deaths values ('Single',630,'Sandro','Yggdrasils Altar'),
 ('Single',630,'Leo','Autodistruzione'),
 ('Single',630,'Ale','Mancato Recupero');


--Single-629
insert into kills values ('Single',629,'Ale','Leo','Altro'),
 ('Single',629,'Ale','Siwei','Smash Laterale'),
 ('Single',629,'Sandro','Leo','Altro'),
 ('Single',629,'Ale','Sandro','Altro'),
 ('Single',629,'Ale','Leo','Altro'),
 ('Single',629,'Sandro','Siwei','Smash Laterale'),
 ('Single',629,'Siwei','Ale','Speciale Laterale'),
 ('Single',629,'Ale','Siwei','Smash Finale'),
 ('Single',629,'Sandro','Ale','Smash Laterale'),
 ('Single',629,'Ale','Sandro','Smash Finale'),
 ('Single',629,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',629,'Leo','Autodistruzione'),
 ('Single',629,'Leo','Mancato Recupero'),
 ('Single',629,'Sandro','Mancato Recupero'),
 ('Single',629,'Leo','Mancato Recupero');


--Single-628
insert into kills values ('Single',628,'Leo','Ale','In Corsa'),
 ('Single',628,'Ale','Siwei','Smash Laterale'),
 ('Single',628,'Siwei','Leo','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',628,'Leo','Siwei','Smash Laterale'),
 ('Single',628,'Siwei','Sandro','In Corsa'),
 ('Single',628,'Siwei','Ale','Aereo in Su'),
 ('Single',628,'Sandro','Leo','Speciale Laterale'),
 ('Single',628,'Ale','Sandro','Altro'),
 ('Single',628,'Sandro','Siwei','Aereo in Giù'),
 ('Single',628,'Leo','Sandro','Smash Laterale'),
 ('Single',628,'Leo','Ale','Altro');

insert into deaths values ('Single',628,'Sandro','Autodistruzione'),
 ('Single',628,'Ale','Mancato Recupero');


--Single-627
insert into kills values ('Single',627,'Leo','Ale','Altro'),
 ('Single',627,'Siwei','Leo','Altro'),
 ('Single',627,'Leo','Sandro','Smash Laterale'),
 ('Single',627,'Leo','Ale','Speciale Laterale'),
 ('Single',627,'Sandro','Siwei','Smash Laterale'),
 ('Single',627,'Siwei','Leo','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',627,'Siwei','Ale','Aereo Frontale'),
 ('Single',627,'Sandro','Siwei','Smash in Su'),
 ('Single',627,'Sandro','Leo','Speciale Laterale'),
 ('Single',627,'Sandro','Siwei','Speciale Laterale');

insert into deaths values ('Single',627,'Sandro','Autodistruzione'),
 ('Single',627,'Leo','Autodistruzione');


--Single-626
insert into kills values ('Single',626,'Siwei','Leo','Altro'),
 ('Single',626,'Sandro','Leo','Altro'),
 ('Single',626,'Leo','Ale','Altro'),
 ('Single',626,'Siwei','Leo','In Corsa'),
 ('Single',626,'Siwei','Ale','Speciale Standard'),
 ('Single',626,'Siwei','Sandro','Aereo Frontale'),
 ('Single',626,'Ale','Sandro','Smash Laterale'),
 ('Single',626,'Sandro','Siwei','Smash Laterale'),
 ('Single',626,'Sandro','Siwei','Speciale Laterale'),
 ('Single',626,'Siwei','Sandro','Smash Finale'),
 ('Single',626,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Single',626,'Leo','Mancato Recupero'),
 ('Single',626,'Ale','Mancato Recupero'),
 ('Single',626,'Leo','Mancato Recupero');


--Single-625
insert into kills values ('Single',625,'Ale','Siwei','Smash Laterale'),
 ('Single',625,'Sandro','Ale','Smash Laterale'),
 ('Single',625,'Sandro','Leo','Aereo in Giù'),
 ('Single',625,'Siwei','Sandro','In Corsa'),
 ('Single',625,'Sandro','Siwei','Aereo in Giù'),
 ('Single',625,'Sandro','Leo','Smash Finale'),
 ('Single',625,'Leo','Sandro','Smash Laterale'),
 ('Single',625,'Siwei','Ale','Smash Finale'),
 ('Single',625,'Ale','Sandro','Smash Laterale'),
 ('Single',625,'Leo','Siwei','Altro'),
 ('Single',625,'Ale','Leo','Smash Finale');


--Single-624
insert into kills values ('Single',624,'Siwei','Leo','Speciale Standard'),
 ('Single',624,'Leo','Ale','Smash Laterale'),
 ('Single',624,'Sandro','Siwei','Altro'),
 ('Single',624,'Leo','Sandro','Altro'),
 ('Single',624,'Leo','Ale','Smash Finale'),
 ('Single',624,'Sandro','Siwei','Smash Finale'),
 ('Single',624,'Ale','Leo','Smash Finale'),
 ('Single',624,'Sandro','Ale','Aereo in Giù'),
 ('Single',624,'Leo','Sandro','Speciale Laterale'),
 ('Single',624,'Leo','Siwei','Speciale Standard'),
 ('Single',624,'Sandro','Leo','Aereo in Giù');


--Single-623
insert into kills values ('Single',623,'Sandro','Siwei','Speciale Laterale'),
 ('Single',623,'Siwei','Ale','Smash Laterale'),
 ('Single',623,'Ale','Leo','Speciale in Giù'),
 ('Single',623,'Ale','Sandro','Smash Laterale'),
 ('Single',623,'Ale','Siwei','Smash Finale'),
 ('Single',623,'Leo','Siwei','Smash Laterale'),
 ('Single',623,'Sandro','Ale','Altro'),
 ('Single',623,'Ale','Sandro','Aereo in Su'),
 ('Single',623,'Leo','Ale','Smash Laterale'),
 ('Single',623,'Sandro','Leo','Altro'),
 ('Single',623,'Leo','Sandro','Aereo Posteriore');

insert into deaths values ('Single',623,'Ale','Autodistruzione'),
 ('Single',623,'Leo','Mushroom Kingdom U');


--Single-622
insert into kills values ('Single',622,'Leo','Siwei','Altro'),
 ('Single',622,'Sandro','Leo','Altro'),
 ('Single',622,'Leo','Ale','Smash Laterale'),
 ('Single',622,'Leo','Siwei','Altro'),
 ('Single',622,'Siwei','Ale','Smash Finale'),
 ('Single',622,'Leo','Sandro','Smash Finale'),
 ('Single',622,'Leo','Siwei','Smash Finale'),
 ('Single',622,'Ale','Leo','Smash Finale'),
 ('Single',622,'Ale','Sandro','Smash Laterale'),
 ('Single',622,'Sandro','Leo','Speciale Laterale'),
 ('Single',622,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Single',622,'Siwei','Mancato Recupero'),
 ('Single',622,'Siwei','Autodistruzione');


--Single-621
insert into kills values ('Single',621,'Leo','Sandro','Peculiare'), --PECULIAR: PAC-MAN IDRANTE
 ('Single',621,'Ale','Siwei','Speciale Laterale'),
 ('Single',621,'Ale','Leo','Altro'),
 ('Single',621,'Leo','Sandro','Peculiare'), --PECULIAR: PAC-MAN IDRANTE
 ('Single',621,'Ale','Siwei','Speciale Laterale'),
 ('Single',621,'Siwei','Ale','Altro'),
 ('Single',621,'Leo','Ale','Smash Finale'),
 ('Single',621,'Leo','Siwei','Smash Finale'),
 ('Single',621,'Ale','Sandro','Smash in Su'),
 ('Single',621,'Ale','Leo','Speciale Laterale'),
 ('Single',621,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',621,'Leo','Gamer'),
 ('Single',621,'Leo','Mancato Recupero');


--Single-620
insert into kills values ('Single',620,'Siwei','Leo','Speciale Standard'),
 ('Single',620,'Leo','Siwei','Meteora'),
 ('Single',620,'Leo','Sandro','Meteora'),
 ('Single',620,'Leo','Siwei','Altro'),
 ('Single',620,'Leo','Ale','Smash Laterale'),
 ('Single',620,'Ale','Siwei','Smash Finale'),
 ('Single',620,'Sandro','Leo','Altro'),
 ('Single',620,'Sandro','Ale','Speciale Laterale'),
 ('Single',620,'Ale','Sandro','Aereo in Su'),
 ('Single',620,'Sandro','Leo','Aereo in Giù'),
 ('Single',620,'Ale','Sandro','Altro');

insert into deaths values ('Single',620,'Siwei','Mancato Recupero'),
 ('Single',620,'Leo','Mancato Recupero'),
 ('Single',620,'Sandro','Autodistruzione');


--Single-619
insert into kills values ('Single',619,'Leo','Sandro','In Corsa'),
 ('Single',619,'Sandro','Ale','Speciale Laterale'),
 ('Single',619,'Siwei','Sandro','Altro'),
 ('Single',619,'Siwei','Leo','Speciale in Su'),
 ('Single',619,'Leo','Siwei','Smash Finale'),
 ('Single',619,'Sandro','Ale','Smash Finale'),
 ('Single',619,'Leo','Siwei','Aereo in Su'),
 ('Single',619,'Siwei','Ale','Speciale Laterale'),
 ('Single',619,'Sandro','Leo','Speciale Laterale'),
 ('Single',619,'Sandro','Siwei','Speciale Laterale'),
 ('Single',619,'Leo','Sandro','In Corsa');

insert into deaths values ('Single',619,'Sandro','Autodistruzione');


--Single-618
insert into kills values ('Single',618,'Ale','Sandro','Aereo in Su'),
 ('Single',618,'Siwei','Sandro','Altro'),
 ('Single',618,'Siwei','Ale','Smash Laterale'),
 ('Single',618,'Siwei','Leo','Smash Laterale'),
 ('Single',618,'Sandro','Siwei','Speciale Laterale'),
 ('Single',618,'Sandro','Leo','Smash Finale'),
 ('Single',618,'Sandro','Siwei','Smash Laterale'),
 ('Single',618,'Leo','Sandro','Speciale in Su'),
 ('Single',618,'Siwei','Leo','Smash Laterale'),
 ('Single',618,'Siwei','Ale','Speciale in Giù'),
 ('Single',618,'Ale','Siwei','Speciale Laterale');

insert into deaths values ('Single',618,'Sandro','Mancato Recupero');


--Single-617
insert into kills values ('Single',617,'Sandro','Leo','Speciale Laterale'),
 ('Single',617,'Siwei','Ale','Altro'),
 ('Single',617,'Ale','Siwei','Smash in Su'),
 ('Single',617,'Ale','Siwei','Smash Laterale'),
 ('Single',617,'Ale','Sandro','Aereo Standard'),
 ('Single',617,'Siwei','Ale','Altro'),
 ('Single',617,'Sandro','Siwei','Speciale Laterale'),
 ('Single',617,'Leo','Sandro','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',617,'Sandro','Leo','Smash Finale'),
 ('Single',617,'Sandro','Ale','Smash Finale'),
 ('Single',617,'Sandro','Leo','Speciale Laterale');

insert into deaths values ('Single',617,'Ale','Mancato Recupero'),
 ('Single',617,'Ale','Mancato Recupero');


--Single-616
insert into kills values ('Single',616,'Siwei','Sandro','Speciale Standard'),
 ('Single',616,'Ale','Leo','Aereo in Su'),
 ('Single',616,'Sandro','Siwei','Aereo in Giù'),
 ('Single',616,'Leo','Ale','Speciale in Su'),
 ('Single',616,'Leo','Ale','Smash Finale'),
 ('Single',616,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',616,'Sandro','Leo','Smash Finale'),
 ('Single',616,'Ale','Siwei','Aereo Frontale'),
 ('Single',616,'Leo','Sandro','Aereo Frontale'),
 ('Single',616,'Sandro','Leo','Smash Laterale'),
 ('Single',616,'Sandro','Ale','Smash Finale');


--Single-615
insert into kills values ('Single',615,'Leo','Sandro','Speciale in Su'),
 ('Single',615,'Sandro','Leo','Smash Laterale'),
 ('Single',615,'Ale','Sandro','Aereo in Su'),
 ('Single',615,'Leo','Siwei','Meteora'),
 ('Single',615,'Leo','Sandro','Speciale in Su'),
 ('Single',615,'Siwei','Ale','Smash Finale'),
 ('Single',615,'Ale','Siwei','Aereo Frontale'),
 ('Single',615,'Siwei','Leo','Smash Laterale'),
 ('Single',615,'Siwei','Ale','Speciale in Giù'),
 ('Single',615,'Ale','Siwei','Aereo Frontale'),
 ('Single',615,'Ale','Leo','Smash Finale');


--Single-614
insert into kills values ('Single',614,'Sandro','Siwei','Smash Laterale'),
 ('Single',614,'Siwei','Sandro','Speciale Laterale'),
 ('Single',614,'Siwei','Leo','Smash Finale'),
 ('Single',614,'Sandro','Ale','Smash Finale'),
 ('Single',614,'Leo','Siwei','Smash Laterale'),
 ('Single',614,'Ale','Sandro','Smash in Su'),
 ('Single',614,'Ale','Siwei','Smash Finale'),
 ('Single',614,'Ale','Sandro','Altro'),
 ('Single',614,'Leo','Ale','Altro'),
 ('Single',614,'Ale','Leo','Smash Laterale'),
 ('Single',614,'Leo','Ale','Altro');

insert into deaths values ('Single',614,'Sandro','Mancato Recupero'),
 ('Single',614,'Ale','Kongo Jungle'),
 ('Single',614,'Ale','Autodistruzione');


--Single-613
insert into kills values ('Single',613,'Ale','Sandro','Aereo Posteriore'),
 ('Single',613,'Sandro','Leo','Smash in Su'),
 ('Single',613,'Sandro','Ale','Smash Laterale'),
 ('Single',613,'Leo','Siwei','Smash Finale'),
 ('Single',613,'Leo','Sandro','Smash Laterale'),
 ('Single',613,'Ale','Leo','Speciale in Su'),
 ('Single',613,'Leo','Ale','Smash Finale'),
 ('Single',613,'Leo','Siwei','Smash Finale'),
 ('Single',613,'Siwei','Leo','Smash in Su'),
 ('Single',613,'Siwei','Sandro','Smash Finale'),
 ('Single',613,'Ale','Siwei','Aereo Frontale');


--Single-612
insert into kills values ('Single',612,'Sandro','Leo','Aereo Posteriore'),
 ('Single',612,'Sandro','Ale','Speciale Laterale'),
 ('Single',612,'Siwei','Sandro','Aereo Frontale'),
 ('Single',612,'Leo','Siwei','Smash Laterale'),
 ('Single',612,'Leo','Siwei','Smash Finale'),
 ('Single',612,'Leo','Sandro','Altro'),
 ('Single',612,'Siwei','Leo','Smash Finale'),
 ('Single',612,'Siwei','Ale','Smash Laterale'),
 ('Single',612,'Leo','Siwei','Aereo in Su'),
 ('Single',612,'Leo','Sandro','Smash Finale'),
 ('Single',612,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',612,'Sandro','Autodistruzione');


--Single-611
insert into kills values ('Single',611,'Ale','Siwei','Smash Laterale'),
 ('Single',611,'Leo','Ale','Smash in Su'),
 ('Single',611,'Siwei','Leo','Altro'),
 ('Single',611,'Ale','Sandro','Speciale in Giù'),
 ('Single',611,'Sandro','Siwei','Altro'),
 ('Single',611,'Leo','Sandro','Smash Laterale'),
 ('Single',611,'Siwei','Ale','Speciale in Giù'),
 ('Single',611,'Ale','Sandro','Altro'),
 ('Single',611,'Siwei','Ale','Smash Finale'),
 ('Single',611,'Leo','Siwei','Altro');

insert into deaths values ('Single',611,'Leo','Mancato Recupero'),
 ('Single',611,'Siwei','Mancato Recupero'),
 ('Single',611,'Sandro','Wily Castle');


--Single-610
insert into kills values ('Single',610,'Siwei','Sandro','Smash Laterale'),
 ('Single',610,'Sandro','Leo','Smash Laterale'),
 ('Single',610,'Siwei','Sandro','Speciale Standard'),
 ('Single',610,'Leo','Siwei','Speciale Standard'),
 ('Single',610,'Siwei','Ale','Smash in Su'),
 ('Single',610,'Siwei','Leo','Smash Finale'),
 ('Single',610,'Sandro','Siwei','Speciale in Su'),
 ('Single',610,'Ale','Leo','Smash Finale'),
 ('Single',610,'Ale','Sandro','Aereo in Su'),
 ('Single',610,'Siwei','Ale','Smash in Su'),
 ('Single',610,'Ale','Siwei','Speciale in Giù');


--Single-609
insert into kills values ('Single',609,'Siwei','Leo','Smash in Su'),
 ('Single',609,'Leo','Ale','Altro'),
 ('Single',609,'Leo','Siwei','Smash Finale'),
 ('Single',609,'Leo','Sandro','Altro'),
 ('Single',609,'Sandro','Leo','Smash Laterale'),
 ('Single',609,'Siwei','Ale','Speciale Standard'),
 ('Single',609,'Leo','Siwei','Smash in Su'),
 ('Single',609,'Siwei','Leo','Smash Laterale'),
 ('Single',609,'Ale','Siwei','Altro'),
 ('Single',609,'Sandro','Ale','Smash in Su');

insert into deaths values ('Single',609,'Ale','Jungle Japes'),
 ('Single',609,'Sandro','Autodistruzione'),
 ('Single',609,'Sandro','Jungle Japes'),
 ('Single',609,'Siwei','Jungle Japes');


--Single-608
insert into kills values ('Single',608,'Siwei','Sandro','Speciale Standard'),
 ('Single',608,'Siwei','Ale','Peculiare'), --PECULIAR: GANONDORF VOLCANO KICK
 ('Single',608,'Sandro','Siwei','Speciale in Su'),
 ('Single',608,'Sandro','Leo','Speciale in Su'),
 ('Single',608,'Siwei','Sandro','Altro'),
 ('Single',608,'Ale','Siwei','Altro'),
 ('Single',608,'Siwei','Leo','Smash in Su'),
 ('Single',608,'Siwei','Ale','Smash in Su'),
 ('Single',608,'Ale','Siwei','Smash Laterale'),
 ('Single',608,'Sandro','Ale','Speciale Laterale'),
 ('Single',608,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',608,'Sandro','Autodistruzione'),
 ('Single',608,'Siwei','Mute City SNES');


--Single-607
insert into kills values ('Single',607,'Leo','Siwei','Aereo Posteriore'),
 ('Single',607,'Siwei','Ale','Speciale Standard'),
 ('Single',607,'Ale','Sandro','Aereo Standard'),
 ('Single',607,'Sandro','Leo','Speciale in Su'),
 ('Single',607,'Leo','Siwei','Smash Finale'),
 ('Single',607,'Sandro','Leo','Altro'),
 ('Single',607,'Sandro','Siwei','In Corsa'),
 ('Single',607,'Sandro','Ale','In Corsa'),
 ('Single',607,'Ale','Sandro','Aereo Posteriore'),
 ('Single',607,'Sandro','Ale','Altro'),
 ('Single',607,'Sandro','Leo','Altro');

insert into deaths values ('Single',607,'Leo','Living Room'),
 ('Single',607,'Ale','Living Room'),
 ('Single',607,'Leo','Living Room');


--Single-606
insert into kills values ('Single',606,'Ale','Siwei','Speciale in Giù'),
 ('Single',606,'Leo','Ale','In Corsa'),
 ('Single',606,'Siwei','Leo','Smash Finale'),
 ('Single',606,'Siwei','Sandro','Smash Finale'),
 ('Single',606,'Sandro','Siwei','Speciale Laterale'),
 ('Single',606,'Ale','Sandro','Smash Finale'),
 ('Single',606,'Ale','Leo','Smash in Su'),
 ('Single',606,'Leo','Ale','Smash Laterale'),
 ('Single',606,'Leo','Sandro','Speciale in Giù'),
 ('Single',606,'Leo','Ale','Aereo in Su');

insert into deaths values ('Single',606,'Siwei','Autodistruzione');


--Single-605
insert into kills values ('Single',605,'Siwei','Sandro','Speciale Standard'),
 ('Single',605,'Ale','Siwei','Aereo Standard'),
 ('Single',605,'Siwei','Ale','Smash Laterale'),
 ('Single',605,'Sandro','Siwei','Smash Laterale'),
 ('Single',605,'Siwei','Leo','In Corsa'),
 ('Single',605,'Ale','Siwei','Smash Finale'),
 ('Single',605,'Leo','Sandro','Aereo Posteriore'),
 ('Single',605,'Ale','Leo','In Corsa'),
 ('Single',605,'Sandro','Ale','Smash Laterale'),
 ('Single',605,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',605,'Leo','Garreg Mach Monastery');


--Single-604
insert into kills values ('Single',604,'Ale','Siwei','Altro'),
 ('Single',604,'Siwei','Ale','Smash Laterale'),
 ('Single',604,'Leo','Sandro','Altro'),
 ('Single',604,'Siwei','Leo','Speciale Laterale'),
 ('Single',604,'Sandro','Siwei','Speciale Laterale'),
 ('Single',604,'Leo','Ale','Aereo Posteriore'),
 ('Single',604,'Ale','Sandro','Smash Finale'),
 ('Single',604,'Siwei','Leo','Altro'),
 ('Single',604,'Leo','Siwei','Altro'),
 ('Single',604,'Sandro','Ale','Smash Finale'),
 ('Single',604,'Leo','Sandro','Altro');

insert into deaths values ('Single',604,'Siwei','Autodistruzione'),
 ('Single',604,'Sandro','Autodistruzione'),
 ('Single',604,'Leo','Mancato Recupero'),
 ('Single',604,'Siwei','Mancato Recupero'),
 ('Single',604,'Sandro','Autodistruzione');


--Single-603
insert into kills values ('Single',603,'Ale','Sandro','Altro'),
 ('Single',603,'Siwei','Ale','Speciale Laterale'),
 ('Single',603,'Sandro','Leo','Aereo in Giù'),
 ('Single',603,'Leo','Siwei','Altro'),
 ('Single',603,'Siwei','Sandro','Smash Finale'),
 ('Single',603,'Ale','Leo','Smash Finale'),
 ('Single',603,'Siwei','Ale','Speciale Laterale'),
 ('Single',603,'Sandro','Siwei','Smash Finale'),
 ('Single',603,'Sandro','Leo','Smash Finale'),
 ('Single',603,'Sandro','Siwei','In Corsa'),
 ('Single',603,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',603,'Sandro','Autodistruzione'),
 ('Single',603,'Siwei','Port Town Aero Dive');


--Single-602
insert into kills values ('Single',602,'Sandro','Siwei','Smash Laterale'),
 ('Single',602,'Siwei','Ale','Smash Laterale'),
 ('Single',602,'Sandro','Leo','Speciale Laterale'),
 ('Single',602,'Leo','Ale','Smash Finale'),
 ('Single',602,'Sandro','Siwei','Speciale Laterale'),
 ('Single',602,'Ale','Sandro','Smash Finale'),
 ('Single',602,'Leo','Ale','Smash Laterale'),
 ('Single',602,'Siwei','Leo','Smash Laterale'),
 ('Single',602,'Sandro','Siwei','Smash Laterale'),
 ('Single',602,'Leo','Sandro','Altro'),
 ('Single',602,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',602,'Sandro','Autodistruzione');


--Single-601
insert into kills values ('Single',601,'Sandro','Ale','Aereo in Giù'),
 ('Single',601,'Siwei','Leo','Altro'),
 ('Single',601,'Leo','Sandro','Smash Laterale'),
 ('Single',601,'Leo','Sandro','Smash Finale'),
 ('Single',601,'Leo','Siwei','Smash Laterale'),
 ('Single',601,'Ale','Leo','Smash Finale'),
 ('Single',601,'Sandro','Ale','Smash Finale'),
 ('Single',601,'Ale','Siwei','Altro'),
 ('Single',601,'Siwei','Sandro','Smash Finale'),
 ('Single',601,'Leo','Ale','Smash Laterale'),
 ('Single',601,'Leo','Siwei','Smash Finale');

insert into deaths values ('Single',601,'Leo','Spear Pillar'),
 ('Single',601,'Siwei','Autodistruzione');


--Single-600
insert into kills values ('Single',600,'Sandro','Siwei','Speciale Laterale'),
 ('Single',600,'Sandro','Leo','Altro'),
 ('Single',600,'Siwei','Sandro','Smash Finale'),
 ('Single',600,'Leo','Ale','Smash in Giù'),
 ('Single',600,'Ale','Siwei','Smash in Su'),
 ('Single',600,'Sandro','Ale','Smash Laterale'),
 ('Single',600,'Siwei','Leo','Speciale in Giù'),
 ('Single',600,'Siwei','Sandro','Smash Finale'),
 ('Single',600,'Leo','Ale','Smash Finale'),
 ('Single',600,'Sandro','Leo','Smash Finale'),
 ('Single',600,'Sandro','Siwei','Speciale Laterale');

insert into deaths values ('Single',600,'Leo','Mancato Recupero');


--Single-599
insert into kills values ('Single',599,'Sandro','Ale','Speciale Laterale'),
 ('Single',599,'Ale','Siwei','Aereo Posteriore'),
 ('Single',599,'Siwei','Sandro','Altro'),
 ('Single',599,'Sandro','Leo','Speciale Laterale'),
 ('Single',599,'Ale','Siwei','Smash Finale'),
 ('Single',599,'Leo','Ale','Smash Finale'),
 ('Single',599,'Leo','Siwei','Peculiare'), --PECULIAR: KAZUYA RAGE DRIVE
 ('Single',599,'Sandro','Leo','Smash Laterale'),
 ('Single',599,'Ale','Sandro','Smash Finale'),
 ('Single',599,'Sandro','Ale','In Corsa'),
 ('Single',599,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',599,'Sandro','Autodistruzione');


--Single-598
insert into kills values ('Single',598,'Sandro','Leo','Smash in Su'),
 ('Single',598,'Siwei','Sandro','Altro'),
 ('Single',598,'Sandro','Siwei','Speciale Laterale'),
 ('Single',598,'Ale','Siwei','Smash Finale'),
 ('Single',598,'Sandro','Ale','Speciale Laterale'),
 ('Single',598,'Siwei','Sandro','Smash Finale'),
 ('Single',598,'Siwei','Ale','Smash Laterale'),
 ('Single',598,'Siwei','Leo','Smash Laterale'),
 ('Single',598,'Leo','Siwei','Smash Laterale'), --PECULIAR?: KAZUYA
 ('Single',598,'Ale','Sandro','Altro'),
 ('Single',598,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',598,'Sandro','Autodistruzione');


--Single-597
insert into kills values ('Single',597,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',597,'Siwei','Leo','Smash in Su'),
 ('Single',597,'Ale','Siwei','Altro'),
 ('Single',597,'Leo','Siwei','Altro'),
 ('Single',597,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',597,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',597,'Leo','Ale','Aereo Posteriore'),
 ('Single',597,'Siwei','Leo','Speciale Standard'),
 ('Single',597,'Siwei','Sandro','Smash Laterale'),
 ('Single',597,'Leo','Siwei','Speciale Standard'),
 ('Single',597,'Leo','Sandro','Smash Laterale'); --PECULIAR?: KAZUYA

insert into deaths values ('Single',597,'Siwei','Pac-Land'),
 ('Single',597,'Siwei','Pac-Land');


--Single-596
insert into kills values ('Single',596,'Sandro','Ale','Speciale Laterale'),
 ('Single',596,'Sandro','Ale','Altro'),
 ('Single',596,'Siwei','Leo','In Corsa'),
 ('Single',596,'Siwei','Sandro','Smash Laterale'),
 ('Single',596,'Ale','Siwei','Smash Finale'),
 ('Single',596,'Siwei','Leo','Smash Laterale'),
 ('Single',596,'Sandro','Ale','Aereo Posteriore'),
 ('Single',596,'Siwei','Sandro','In Corsa'),
 ('Single',596,'Leo','Siwei','Altro'),
 ('Single',596,'Siwei','Leo','Smash Laterale'),
 ('Single',596,'Siwei','Sandro','Speciale in Su');

insert into deaths values ('Single',596,'Ale','Autodistruzione');


--Single-595
insert into kills values ('Single',595,'Leo','Siwei','Altro'),
 ('Single',595,'Siwei','Ale','Smash Laterale'),
 ('Single',595,'Siwei','Sandro','Aereo Frontale'),
 ('Single',595,'Siwei','Leo','Smash Laterale'),
 ('Single',595,'Ale','Siwei','Aereo Posteriore'),
 ('Single',595,'Leo','Sandro','Altro'),
 ('Single',595,'Sandro','Leo','Aereo in Giù'),
 ('Single',595,'Leo','Ale','Altro'),
 ('Single',595,'Siwei','Leo','Smash Finale'),
 ('Single',595,'Sandro','Siwei','Aereo in Giù'),
 ('Single',595,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Single',595,'Siwei','Mancato Recupero'),
 ('Single',595,'Sandro','Mancato Recupero'),
 ('Single',595,'Ale','Mancato Recupero');


--Single-594
insert into kills values ('Single',594,'Siwei','Sandro','Smash in Su'),
 ('Single',594,'Sandro','Siwei','Smash in Su'),
 ('Single',594,'Siwei','Leo','Speciale Standard'),
 ('Single',594,'Siwei','Ale','Smash Finale'),
 ('Single',594,'Sandro','Leo','Altro'),
 ('Single',594,'Leo','Siwei','Altro'),
 ('Single',594,'Siwei','Sandro','Smash in Su'),
 ('Single',594,'Sandro','Siwei','Altro'),
 ('Single',594,'Leo','Ale','Smash Finale'),
 ('Single',594,'Leo','Sandro','Smash Finale'),
 ('Single',594,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',594,'Leo','Mancato Recupero'),
 ('Single',594,'Siwei','Mancato Recupero'),
 ('Single',594,'Siwei','Mancato Recupero');


--Single-593
insert into kills values ('Single',593,'Ale','Siwei','Speciale in Giù'),
 ('Single',593,'Ale','Leo','Altro'),
 ('Single',593,'Ale','Siwei','Aereo Frontale'),
 ('Single',593,'Sandro','Ale','Altro'),
 ('Single',593,'Siwei','Sandro','Smash in Su'),
 ('Single',593,'Siwei','Ale','Smash Finale'),
 ('Single',593,'Siwei','Leo','Speciale Standard'),
 ('Single',593,'Siwei','Sandro','Smash Laterale'),
 ('Single',593,'Sandro','Siwei','Smash Laterale'),
 ('Single',593,'Leo','Ale','Smash Laterale'),
 ('Single',593,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',593,'Leo','Autodistruzione'),
 ('Single',593,'Ale','WarioWare Inc.');


--Single-592
insert into kills values ('Single',592,'Ale','Leo','Smash Laterale'),
 ('Single',592,'Sandro','Siwei','Smash Laterale'),
 ('Single',592,'Sandro','Ale','Smash Laterale'),
 ('Single',592,'Leo','Sandro','Smash Finale'),
 ('Single',592,'Sandro','Siwei','Smash Finale'),
 ('Single',592,'Sandro','Leo','In Corsa'),
 ('Single',592,'Leo','Ale','Smash Laterale'), --PECULIAR?: KAZUYA
 ('Single',592,'Leo','Siwei','Smash Finale'),
 ('Single',592,'Ale','Sandro','Smash Finale'),
 ('Single',592,'Sandro','Ale','In Corsa'),
 ('Single',592,'Sandro','Leo','Speciale in Su');


--Single-591
insert into kills values ('Single',591,'Siwei','Sandro','Altro'),
 ('Single',591,'Ale','Leo','Meteora'),
 ('Single',591,'Ale','Siwei','Meteora'),
 ('Single',591,'Leo','Sandro','Smash Finale'),
 ('Single',591,'Siwei','Leo','Smash Finale'),
 ('Single',591,'Siwei','Sandro','Smash Finale'),
 ('Single',591,'Ale','Siwei','Meteora'),
 ('Single',591,'Leo','Ale','Altro'),
 ('Single',591,'Ale','Siwei','Altro'),
 ('Single',591,'Leo','Ale','Smash Laterale'), --PECULIAR?: KAZUYA ZOOM
 ('Single',591,'Ale','Leo','Speciale in Giù');

insert into deaths values ('Single',591,'Sandro','Mancato Recupero'),
 ('Single',591,'Siwei','Mancato Recupero');


--Single-590
insert into kills values ('Single',590,'Sandro','Siwei','Aereo in Giù'),
 ('Single',590,'Leo','Sandro','Altro'),
 ('Single',590,'Siwei','Ale','Speciale Standard'),
 ('Single',590,'Siwei','Leo','Speciale Standard'),
 ('Single',590,'Sandro','Siwei','Smash Finale'),
 ('Single',590,'Siwei','Leo','Altro'),
 ('Single',590,'Leo','Sandro','Altro'),
 ('Single',590,'Ale','Siwei','Speciale in Giù'),
 ('Single',590,'Ale','Sandro','Aereo Standard'),
 ('Single',590,'Leo','Ale','Smash Laterale'),
 ('Single',590,'Ale','Leo','Smash in Su');

insert into deaths values ('Single',590,'Sandro','Garden of Hope'),
 ('Single',590,'Leo','Garden of Hope'),
 ('Single',590,'Sandro','Garden of Hope');


--Single-589
insert into kills values ('Single',589,'Siwei','Sandro','Speciale Standard'),
 ('Single',589,'Leo','Siwei','Speciale Standard'),
 ('Single',589,'Siwei','Sandro','Smash Laterale'),
 ('Single',589,'Leo','Siwei','Altro'),
 ('Single',589,'Siwei','Ale','Smash in Su'),
 ('Single',589,'Siwei','Leo','Smash in Su'),
 ('Single',589,'Siwei','Leo','Altro'),
 ('Single',589,'Siwei','Ale','Smash Laterale'),
 ('Single',589,'Leo','Ale','Smash Finale'),
 ('Single',589,'Sandro','Siwei','Speciale Laterale'),
 ('Single',589,'Leo','Sandro','Aereo Frontale');

insert into deaths values ('Single',589,'Siwei','Mancato Recupero'),
 ('Single',589,'Leo','Mancato Recupero');


--Single-588
insert into kills values ('Single',588,'Leo','Sandro','Smash in Su'),
 ('Single',588,'Leo','Siwei','Altro'),
 ('Single',588,'Siwei','Leo','Smash Finale'),
 ('Single',588,'Siwei','Ale','Speciale Laterale'),
 ('Single',588,'Sandro','Siwei','Smash Laterale'),
 ('Single',588,'Siwei','Ale','Smash Finale'),
 ('Single',588,'Siwei','Leo','Smash Laterale'),
 ('Single',588,'Leo','Siwei','Smash Laterale'),
 ('Single',588,'Ale','Sandro','Smash in Su'),
 ('Single',588,'Sandro','Ale','Smash in Su'),
 ('Single',588,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',588,'Siwei','Autodistruzione');


--Single-587
insert into kills values ('Single',587,'Siwei','Sandro','Speciale Laterale'),
 ('Single',587,'Siwei','Leo','Speciale in Su'),
 ('Single',587,'Leo','Ale','Aereo Frontale'),
 ('Single',587,'Leo','Siwei','Smash Laterale'),
 ('Single',587,'Ale','Sandro','Altro'),
 ('Single',587,'Siwei','Leo','Altro'),
 ('Single',587,'Sandro','Siwei','Smash Finale'),
 ('Single',587,'Leo','Ale','Smash in Su'),
 ('Single',587,'Leo','Sandro','Smash Laterale'),
 ('Single',587,'Leo','Ale','Smash Laterale'),
 ('Single',587,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Single',587,'Sandro','3D Land'),
 ('Single',587,'Leo','Mancato Recupero');


--Single-586
insert into kills values ('Single',586,'Ale','Sandro','Speciale in Giù'),
 ('Single',586,'Leo','Siwei','Speciale in Giù'),
 ('Single',586,'Siwei','Sandro','Speciale Laterale'),
 ('Single',586,'Sandro','Siwei','Altro'),
 ('Single',586,'Ale','Leo','Smash Laterale'),
 ('Single',586,'Siwei','Ale','Speciale Laterale'),
 ('Single',586,'Ale','Sandro','Smash Finale'),
 ('Single',586,'Siwei','Leo','Speciale Laterale'),
 ('Single',586,'Siwei','Ale','Speciale Laterale'),
 ('Single',586,'Leo','Siwei','Smash Laterale'),
 ('Single',586,'Ale','Leo','Aereo Standard');

insert into deaths values ('Single',586,'Siwei','Mancato Recupero');


--Single-585
insert into kills values ('Single',585,'Sandro','Ale','Aereo in Giù'),
 ('Single',585,'Sandro','Leo','Smash Finale'),
 ('Single',585,'Siwei','Sandro','Smash in Su'),
 ('Single',585,'Ale','Siwei','Smash Finale'),
 ('Single',585,'Ale','Leo','Smash Finale'),
 ('Single',585,'Sandro','Siwei','Smash Finale'),
 ('Single',585,'Leo','Sandro','Smash Laterale'),
 ('Single',585,'Siwei','Ale','Altro'),
 ('Single',585,'Leo','Siwei','Speciale Laterale'),
 ('Single',585,'Sandro','Leo','Smash in Su'),
 ('Single',585,'Sandro','Ale','Smash Laterale');
 
insert into deaths values ('Single',585,'Ale','Palutenas Temple');


--Single-584
insert into kills values ('Single',584,'Leo','Sandro','Altro'),
 ('Single',584,'Siwei','Leo','Smash Laterale'),
 ('Single',584,'Leo','Sandro','Altro'),
 ('Single',584,'Sandro','Siwei','Smash Laterale'),
 ('Single',584,'Leo','Ale','Smash Laterale'),
 ('Single',584,'Siwei','Leo','Smash Finale'),
 ('Single',584,'Leo','Sandro','Speciale in Giù'),
 ('Single',584,'Ale','Siwei','Smash Finale'),
 ('Single',584,'Ale','Leo','Altro'),
 ('Single',584,'Siwei','Ale','Altro'),
 ('Single',584,'Ale','Siwei','In Corsa');

insert into deaths values ('Single',584,'Sandro','Mancato Recupero'),
 ('Single',584,'Sandro','Mancato Recupero'),
 ('Single',584,'Leo','Mancato Recupero'),
 ('Single',584,'Ale','Autodistruzione');


--Single-583
insert into kills values ('Single',583,'Ale','Leo','Altro'),
 ('Single',583,'Ale','Siwei','Aereo Posteriore'),
 ('Single',583,'Siwei','Ale','Smash Finale'),
 ('Single',583,'Sandro','Siwei','Smash in Su'),
 ('Single',583,'Siwei','Sandro','Speciale in Su'),
 ('Single',583,'Leo','Siwei','Smash Laterale'),
 ('Single',583,'Ale','Leo','Aereo Standard'),
 ('Single',583,'Sandro','Ale','Aereo in Giù'),
 ('Single',583,'Leo','Sandro','Smash Laterale'),
 ('Single',583,'Sandro','Ale','Smash Laterale'),
 ('Single',583,'Sandro','Leo','Altro');

insert into deaths values ('Single',583,'Leo','Find Mii'),
 ('Single',583,'Leo','Mancato Recupero');


--Single-582
insert into kills values ('Single',582,'Ale','Leo','Speciale Laterale'),
 ('Single',582,'Leo','Siwei','Altro'),
 ('Single',582,'Sandro','Ale','Speciale Laterale'),
 ('Single',582,'Sandro','Siwei','Speciale Laterale'),
 ('Single',582,'Ale','Siwei','Smash Finale'),
 ('Single',582,'Leo','Sandro','Aereo in Su'),
 ('Single',582,'Leo','Sandro','Aereo Posteriore'),
 ('Single',582,'Sandro','Ale','Smash Laterale'),
 ('Single',582,'Sandro','Leo','Smash Laterale'),
 ('Single',582,'Leo','Sandro','Smash Laterale'),
 ('Single',582,'Leo','Ale','Altro');

insert into deaths values ('Single',582,'Siwei','Wuhu Island'),
 ('Single',582,'Ale','Wuhu Island');


--Single-581
insert into kills values ('Single',581,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',581,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',581,'Ale','Siwei','Aereo in Giù'),
 ('Single',581,'Siwei','Leo','Smash in Su'),
 ('Single',581,'Sandro','Ale','Altro'),
 ('Single',581,'Ale','Sandro','Altro'),
 ('Single',581,'Siwei','Sandro','Smash Finale'),
 ('Single',581,'Siwei','Leo','Smash Finale'),
 ('Single',581,'Ale','Siwei','Altro'),
 ('Single',581,'Ale','Siwei','Speciale in Giù'),
 ('Single',581,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',581,'Ale','Autodistruzione'),
 ('Single',581,'Sandro','Mancato Recupero'),
 ('Single',581,'Siwei','Mancato Recupero');


--Single-580
insert into kills values ('Single',580,'Ale','Leo','Smash Laterale'),
 ('Single',580,'Leo','Siwei','Smash Laterale'),
 ('Single',580,'Sandro','Ale','Speciale Laterale'),
 ('Single',580,'Sandro','Leo','Aereo Posteriore'),
 ('Single',580,'Siwei','Sandro','Smash Finale'),
 ('Single',580,'Sandro','Leo','Smash Finale'),
 ('Single',580,'Ale','Siwei','Smash Finale'),
 ('Single',580,'Sandro','Ale','In Corsa'),
 ('Single',580,'Sandro','Siwei','Aereo in Giù'),
 ('Single',580,'Ale','Sandro','Aereo Frontale'),
 ('Single',580,'Sandro','Ale','Smash Laterale');


--Single-579
insert into kills values ('Single',579,'Siwei','Leo','Smash in Su'),
 ('Single',579,'Ale','Siwei','Altro'),
 ('Single',579,'Leo','Sandro','Smash Finale'),
 ('Single',579,'Siwei','Ale','Smash Finale'),
 ('Single',579,'Sandro','Siwei','Smash Finale'),
 ('Single',579,'Ale','Leo','Smash Laterale'),
 ('Single',579,'Siwei','Sandro','Smash Laterale'),
 ('Single',579,'Sandro','Leo','In Corsa'),
 ('Single',579,'Sandro','Ale','Altro'),
 ('Single',579,'Siwei','Sandro','Smash in Su'),
 ('Single',579,'Ale','Siwei','In Corsa');

insert into deaths values ('Single',579,'Siwei','Autodistruzione'),
 ('Single',579,'Ale','Autodistruzione');


--Single-578
insert into kills values ('Single',578,'Ale','Leo','Altro'),
 ('Single',578,'Ale','Sandro','Speciale in Su'),
 ('Single',578,'Ale','Sandro','Altro'),
 ('Single',578,'Sandro','Ale','Smash Laterale'),
 ('Single',578,'Sandro','Siwei','Smash in Su'),
 ('Single',578,'Siwei','Leo','Speciale Laterale'),
 ('Single',578,'Sandro','Siwei','Smash Laterale'),
 ('Single',578,'Leo','Ale','Smash in Su'),
 ('Single',578,'Siwei','Sandro','Speciale Laterale'),
 ('Single',578,'Leo','Siwei','Smash Laterale'),
 ('Single',578,'Ale','Leo','Speciale in Su');

insert into deaths values ('Single',578,'Leo','Mancato Recupero'),
 ('Single',578,'Sandro','Mancato Recupero');


--Single-577
insert into kills values ('Single',577,'Leo','Sandro','Smash Laterale'),
 ('Single',577,'Sandro','Ale','Smash Laterale'),
 ('Single',577,'Sandro','Siwei','In Corsa'),
 ('Single',577,'Leo','Sandro','Smash Finale'),
 ('Single',577,'Sandro','Leo','Altro'),
 ('Single',577,'Siwei','Ale','Smash Finale'),
 ('Single',577,'Sandro','Leo','Smash Finale'),
 ('Single',577,'Sandro','Siwei','Speciale Laterale'),
 ('Single',577,'Leo','Ale','Smash Laterale'), --PECULIAR?: KAZUYA SPECIAL ZOOM
 ('Single',577,'Siwei','Sandro','Altro'),
 ('Single',577,'Leo','Siwei','Altro');

insert into deaths values ('Single',577,'Leo','Mancato Recupero');


--Single-576
insert into kills values ('Single',576,'Siwei','Sandro','Altro'),
 ('Single',576,'Siwei','Leo','Smash Finale'),
 ('Single',576,'Sandro','Siwei','Aereo in Giù'),
 ('Single',576,'Sandro','Ale','Smash Finale'),
 ('Single',576,'Ale','Siwei','Speciale Standard'),
 ('Single',576,'Ale','Sandro','Altro'),
 ('Single',576,'Sandro','Leo','Speciale Laterale'),
 ('Single',576,'Sandro','Ale','Aereo in Giù'),
 ('Single',576,'Leo','Sandro','Altro'),
 ('Single',576,'Leo','Siwei','Smash Finale'),
 ('Single',576,'Ale','Leo','Aereo Posteriore');

insert into deaths values ('Single',576,'Sandro','Mancato Recupero'),
 ('Single',576,'Sandro','Mancato Recupero'),
 ('Single',576,'Sandro','Mancato Recupero');


--Single-575
insert into kills values ('Single',575,'Sandro','Leo','Speciale Laterale'),
 ('Single',575,'Sandro','Ale','Speciale Laterale'),
 ('Single',575,'Leo','Sandro','Smash Finale'),
 ('Single',575,'Leo','Siwei','Speciale Standard'),
 ('Single',575,'Sandro','Ale','Smash Finale'),
 ('Single',575,'Sandro','Leo','Aereo in Giù'),
 ('Single',575,'Leo','Siwei','Smash Laterale'),
 ('Single',575,'Siwei','Leo','Smash Laterale'),
 ('Single',575,'Siwei','Sandro','Smash in Su'),
 ('Single',575,'Ale','Siwei','Smash Finale'),
 ('Single',575,'Sandro','Ale','Aereo in Giù');


--Single-574
insert into kills values ('Single',574,'Leo','Siwei','Altro'),
 ('Single',574,'Ale','Leo','In Corsa'),
 ('Single',574,'Siwei','Ale','Smash Finale'),
 ('Single',574,'Ale','Siwei','Speciale in Su'),
 ('Single',574,'Ale','Sandro','Smash Finale'),
 ('Single',574,'Sandro','Leo','Smash Finale'),
 ('Single',574,'Leo','Ale','Altro'),
 ('Single',574,'Leo','Siwei','In Corsa'),
 ('Single',574,'Sandro','Ale','Altro'),
 ('Single',574,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',574,'Siwei','Autodistruzione'),
 ('Single',574,'Ale','Mancato Recupero'),
 ('Single',574,'Ale','Mancato Recupero');


--Single-573
insert into kills values ('Single',573,'Leo','Sandro','Smash Laterale'),
 ('Single',573,'Leo','Siwei','Smash in Su'),
 ('Single',573,'Sandro','Leo','Smash Finale'),
 ('Single',573,'Siwei','Ale','Altro'),
 ('Single',573,'Siwei','Leo','Altro'),
 ('Single',573,'Leo','Siwei','Smash Finale'),
 ('Single',573,'Siwei','Sandro','Altro'),
 ('Single',573,'Siwei','Sandro','Altro'),
 ('Single',573,'Leo','Ale','Altro'),
 ('Single',573,'Siwei','Leo','Smash Laterale'),
 ('Single',573,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',573,'Ale','Mancato Recupero'),
 ('Single',573,'Leo','Mancato Recupero'),
 ('Single',573,'Sandro','Mancato Recupero'),
 ('Single',573,'Sandro','Mancato Recupero'),
 ('Single',573,'Ale','Mancato Recupero');


--Single-572
insert into kills values ('Single',572,'Sandro','Siwei','Smash Laterale'),
 ('Single',572,'Siwei','Leo','Smash Finale'),
 ('Single',572,'Siwei','Sandro','Smash Laterale'),
 ('Single',572,'Leo','Ale','Altro'),
 ('Single',572,'Leo','Siwei','Smash Finale'),
 ('Single',572,'Sandro','Ale','Smash Laterale'),
 ('Single',572,'Sandro','Leo','In Corsa'),
 ('Single',572,'Siwei','Sandro','Smash Finale'),
 ('Single',572,'Sandro','Siwei','Smash Laterale'),
 ('Single',572,'Ale','Leo','Aereo in Giù'),
 ('Single',572,'Sandro','Ale','Smash in Su');

insert into deaths values ('Single',572,'Ale','Autodistruzione');


--Single-571
insert into kills values ('Single',571,'Sandro','Leo','Smash Laterale'),
 ('Single',571,'Sandro','Siwei','Smash Laterale'),
 ('Single',571,'Sandro','Ale','Speciale in Giù'),
 ('Single',571,'Leo','Siwei','Smash Finale'),
 ('Single',571,'Siwei','Sandro','Smash Laterale'),
 ('Single',571,'Siwei','Leo','Smash Finale'),
 ('Single',571,'Siwei','Sandro','Smash Finale'),
 ('Single',571,'Sandro','Ale','Altro'),
 ('Single',571,'Ale','Siwei','Smash in Su'),
 ('Single',571,'Sandro','Leo','In Corsa'),
 ('Single',571,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',571,'Ale','Autodistruzione');


--Doubles-259
insert into kills values ('Doubles',259,'Ale','Siwei','Smash Laterale'),
 ('Doubles',259,'Sandro','Leo','Smash Laterale'),
 ('Doubles',259,'Siwei','Ale','Altro'),
 ('Doubles',259,'Leo','Sandro','Speciale in Su'),
 ('Doubles',259,'Ale','Siwei','Speciale in Su'),
 ('Doubles',259,'Siwei','Ale','Smash Finale'),
 ('Doubles',259,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',259,'Siwei','Sandro','Smash in Su'),
 ('Doubles',259,'Ale','Siwei','Altro'),
 ('Doubles',259,'Leo','Ale','Footstool'),
 ('Doubles',259,'Sandro','Leo','Smash in Su');

insert into deaths values ('Doubles',259,'Ale','Spirit Train'),
 ('Doubles',259,'Leo','Fuoco Amico'),
 ('Doubles',259,'Siwei','Spirit Train');


--Doubles-258
insert into kills values ('Doubles',258,'Leo','Sandro','Altro'),
 ('Doubles',258,'Ale','Siwei','Smash Laterale'),
 ('Doubles',258,'Sandro','Leo','Altro'),
 ('Doubles',258,'Siwei','Ale','Smash Finale'),
 ('Doubles',258,'Siwei','Sandro','Smash Finale'),
 ('Doubles',258,'Ale','Siwei','Peculiare'),
 ('Doubles',258,'Leo','Ale','Altro'),
 ('Doubles',258,'Sandro','Leo','Smash Laterale'),
 ('Doubles',258,'Siwei','Sandro','Smash Finale'),
 ('Doubles',258,'Siwei','Ale','Smash Finale');

insert into deaths values ('Doubles',258,'Sandro','Mancato Recupero'),
 ('Doubles',258,'Leo','Mancato Recupero'),
 ('Doubles',258,'Ale','Autodistruzione');


--Doubles-257
insert into kills values ('Doubles',257,'Ale','Sandro','In Corsa'),
 ('Doubles',257,'Sandro','Ale','Speciale Standard'),
 ('Doubles',257,'Ale','Sandro','Grab'),
 ('Doubles',257,'Sandro','Siwei','Smash Finale'),
 ('Doubles',257,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',257,'Leo','Siwei','Speciale in Su'),
 ('Doubles',257,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',257,'Ale','Leo','Smash Finale'),
 ('Doubles',257,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',257,'Ale','Leo','Smash Laterale');

insert into deaths values ('Doubles',257,'Leo','Fuoco Amico'),
 ('Doubles',257,'Ale','Fuoco Amico');


--Doubles-256
insert into kills values ('Doubles',256,'Siwei','Leo','Aereo in Su'),
 ('Doubles',256,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',256,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',256,'Sandro','Ale','In Corsa'),
 ('Doubles',256,'Leo','Siwei','Altro'),
 ('Doubles',256,'Ale','Sandro','Smash Finale'),
 ('Doubles',256,'Siwei','Leo','In Corsa'),
 ('Doubles',256,'Sandro','Siwei','Speciale in Su'),
 ('Doubles',256,'Sandro','Ale','Speciale in Su'),
 ('Doubles',256,'Ale','Sandro','Smash Finale'),
 ('Doubles',256,'Ale','Leo','Peculiare'); --PECULIAR: MR. GAME & WATCH CHAIR

insert into deaths values ('Doubles',256,'Siwei','Fuoco Amico'),
 ('Doubles',256,'Siwei','Mancato Recupero');


--Doubles-255
insert into kills values ('Doubles',255,'Leo','Sandro','Altro'),
 ('Doubles',255,'Siwei','Leo','Altro'),
 ('Doubles',255,'Sandro','Ale','In Corsa'),
 ('Doubles',255,'Leo','Siwei','Smash in Su'),
 ('Doubles',255,'Sandro','Leo','Aereo in Su'),
 ('Doubles',255,'Ale','Siwei','Speciale in Su'),
 ('Doubles',255,'Sandro','Ale','Peculiare'),
 ('Doubles',255,'Sandro','Leo','Peculiare'),
 ('Doubles',255,'Leo','Sandro','Smash in Su'),
 ('Doubles',255,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Doubles',255,'Sandro','Pirate Ship'),
 ('Doubles',255,'Leo','Pirate Ship');


--Doubles-254
insert into kills values ('Doubles',254,'Leo','Sandro','Speciale in Su'),
 ('Doubles',254,'Ale','Sandro','Altro'),
 ('Doubles',254,'Siwei','Ale','In Corsa'),
 ('Doubles',254,'Ale','Siwei','Smash Finale'),
 ('Doubles',254,'Sandro','Ale','Smash Finale'),
 ('Doubles',254,'Sandro','Leo','Smash Laterale'),
 ('Doubles',254,'Leo','Sandro','Smash Finale'),
 ('Doubles',254,'Sandro','Ale','Smash Laterale'),
 ('Doubles',254,'Siwei','Leo','Smash Laterale'),
 ('Doubles',254,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',254,'Sandro','Mancato Recupero');


--Doubles-253
insert into kills values ('Doubles',253,'Leo','Sandro','Altro'),
 ('Doubles',253,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',253,'Sandro','Leo','Smash Finale'),
 ('Doubles',253,'Siwei','Sandro','Smash Finale'),
 ('Doubles',253,'Siwei','Sandro','Altro'),
 ('Doubles',253,'Ale','Leo','Smash Finale'),
 ('Doubles',253,'Leo','Ale','Smash Laterale'),
 ('Doubles',253,'Ale','Siwei','Smash in Su'),
 ('Doubles',253,'Ale','Siwei','Smash Finale'),
 ('Doubles',253,'Leo','Ale','Smash in Su');

insert into deaths values ('Doubles',253,'Sandro','Mancato Recupero'),
 ('Doubles',253,'Sandro','Mancato Recupero'),
 ('Doubles',253,'Sandro','Autodistruzione');


--Doubles-252
insert into kills values ('Doubles',252,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',252,'Ale','Leo','Altro'),
 ('Doubles',252,'Ale','Siwei','Smash Laterale'),
 ('Doubles',252,'Sandro','Leo','Altro'),
 ('Doubles',252,'Siwei','Sandro','Smash in Su'),
 ('Doubles',252,'Siwei','Ale','Altro'),
 ('Doubles',252,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',252,'Sandro','Siwei','Smash in Su'),
 ('Doubles',252,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',252,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',252,'Leo','Mancato Recupero'),
 ('Doubles',252,'Leo','Mancato Recupero'),
 ('Doubles',252,'Ale','Autodistruzione'),
 ('Doubles',252,'Leo','Fuoco Amico');


--Doubles-251
insert into kills values ('Doubles',251,'Leo','Sandro','Altro'),
 ('Doubles',251,'Siwei','Leo','Altro'),
 ('Doubles',251,'Ale','Sandro','Smash Laterale'),
 ('Doubles',251,'Sandro','Ale','Grab'),
 ('Doubles',251,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',251,'Sandro','Ale','Altro'),
 ('Doubles',251,'Ale','Sandro','Altro'),
 ('Doubles',251,'Leo','Siwei','Smash Laterale'),
 ('Doubles',251,'Siwei','Leo','Altro'),
 ('Doubles',251,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',251,'Sandro','Autodistruzione'),
 ('Doubles',251,'Ale','Mancato Recupero'),
 ('Doubles',251,'Sandro','Autodistruzione');


--Double-250
insert into kills values ('Doubles',250,'Ale','Sandro','Smash Laterale'),
 ('Doubles',250,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',250,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',250,'Siwei','Leo','Peculiare'),
 ('Doubles',250,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',250,'Siwei','Sandro','Smash Finale'),
 ('Doubles',250,'Sandro','Siwei','Smash Finale'),
 ('Doubles',250,'Ale','Leo','Smash Finale'),
 ('Doubles',250,'Leo','Ale','Altro'),
 ('Doubles',250,'Siwei','Sandro','Peculiare'),
 ('Doubles',250,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',250,'Ale','Fuoco Amico'),
 ('Doubles',250,'Siwei','Fuoco Amico'),
 ('Doubles',250,'Ale','Mancato Recupero');


--Doubles-249
insert into kills values ('Doubles',249,'Sandro','Ale','In Corsa'),
 ('Doubles',249,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',249,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',249,'Leo','Siwei','Smash Finale'),
 ('Doubles',249,'Ale','Sandro','Speciale Standard'),
 ('Doubles',249,'Ale','Sandro','Smash Finale'),
 ('Doubles',249,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',249,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',249,'Ale','Siwei','Grab'),
 ('Doubles',249,'Leo','Sandro','Speciale in Su');

insert into deaths values ('Doubles',249,'Siwei','Fuoco Amico');


--Doubles-248
insert into kills values ('Doubles',248,'Siwei','Ale','Smash Laterale'),
 ('Doubles',248,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',248,'Leo','Sandro','Smash in Su'),
 ('Doubles',248,'Sandro','Leo','Smash Finale'),
 ('Doubles',248,'Leo','Sandro','Speciale Standard'),
 ('Doubles',248,'Ale','Siwei','Smash Finale'),
 ('Doubles',248,'Sandro','Ale','Smash Laterale'),
 ('Doubles',248,'Leo','Siwei','Smash Finale'),
 ('Doubles',248,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Doubles',248,'Siwei','Fuoco Amico');


--Doubles-247
insert into kills values ('Doubles',247,'Leo','Sandro','Smash in Su'),
 ('Doubles',247,'Ale','Siwei','Altro'),
 ('Doubles',247,'Leo','Ale','Smash Laterale'),
 ('Doubles',247,'Siwei','Ale','Meteora'),
 ('Doubles',247,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',247,'Ale','Siwei','Altro'),
 ('Doubles',247,'Leo','Sandro','Aereo Frontale'),
 ('Doubles',247,'Sandro','Leo','Smash Laterale'),
 ('Doubles',247,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',247,'Siwei','Sandro','Smash Laterale');

insert into deaths values ('Doubles',247,'Siwei','Mancato Recupero'),
 ('Doubles',247,'Leo','Fuoco Amico'),
 ('Doubles',247,'Siwei','Mancato Recupero');


--Doubles-246
insert into kills values ('Doubles',246,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',246,'Leo','Sandro','Smash Laterale'),
 ('Doubles',246,'Siwei','Ale','Smash Finale'),
 ('Doubles',246,'Siwei','Leo','Smash Finale'),
 ('Doubles',246,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',246,'Ale','Sandro','Smash Finale'),
 ('Doubles',246,'Sandro','Ale','Smash Laterale'),
 ('Doubles',246,'Leo','Siwei','Smash Finale'),
 ('Doubles',246,'Ale','Leo','Fuoco Amico'),
 ('Doubles',246,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',246,'Siwei','Fuoco Amico'),
 ('Doubles',246,'Siwei','Fuoco Amico'),
 ('Doubles',246,'Leo','Fuoco Amico');


--Doubles-245
insert into kills values ('Doubles',245,'Sandro','Siwei','Altro'),
 ('Doubles',245,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',245,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',245,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',245,'Ale','Leo','Aereo in Su'),
 ('Doubles',245,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',245,'Siwei','Sandro','Aereo in Giù'),
 ('Doubles',245,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',245,'Ale','Sandro','Smash Laterale'),
 ('Doubles',245,'Ale','Leo','In Corsa'),
 ('Doubles',245,'Sandro','Ale','Aereo Frontale');

insert into deaths values ('Doubles',245,'Siwei','Balloon Fight'),
 ('Doubles',245,'Ale','Fuoco Amico');


--Doubles-244
insert into kills values ('Doubles',244,'Siwei','Ale','Aereo Frontale'),
 ('Doubles',244,'Ale','Siwei','Altro'),
 ('Doubles',244,'Siwei','Ale','Altro'),
 ('Doubles',244,'Ale','Sandro','Smash Laterale'),
 ('Doubles',244,'Siwei','Leo','Speciale Standard'),
 ('Doubles',244,'Ale','Sandro','Altro'),
 ('Doubles',244,'Leo','Siwei','Peculiare'), --PECULIAR: CORRIN
 ('Doubles',244,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',244,'Ale','Leo','Fuoco Amico'),
 ('Doubles',244,'Siwei','Ale','Smash Laterale'),
 ('Doubles',244,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',244,'Siwei','Mancato Recupero'),
 ('Doubles',244,'Ale','Kongo Jungle'),
 ('Doubles',244,'Sandro','Mancato Recupero'),
 ('Doubles',244,'Sandro','Fuoco Amico'),
 ('Doubles',244,'Leo','Fuoco Amico');


--Doubles-243
insert into kills values ('Doubles',243,'Ale','Siwei','Meteora'),
 ('Doubles',243,'Sandro','Ale','Smash Laterale'),
 ('Doubles',243,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',243,'Sandro','Leo','Smash Laterale'),
 ('Doubles',243,'Leo','Sandro','Smash in Su'),
 ('Doubles',243,'Ale','Sandro','Aereo in Giù');

insert into deaths values ('Doubles',243,'Siwei','Fuoco Amico'),
 ('Doubles',243,'Siwei','Autodistruzione'),
 ('Doubles',243,'Siwei','Autodistruzione');


--Doubles-242
insert into kills values ('Doubles',242,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',242,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',242,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',242,'Sandro','Ale','Altro'),
 ('Doubles',242,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',242,'Leo','Siwei','Peculiare'), --PECULIAR: WARIO
 ('Doubles',242,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',242,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',242,'Sandro','Siwei','Smash Finale'),
 ('Doubles',242,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Doubles',242,'Leo','Fuoco Amico'),
 ('Doubles',242,'Ale','Fuoco Amico'),
 ('Doubles',242,'Leo','Fuoco Amico');


--Doubles-241
insert into kills values ('Doubles',241,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',241,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',241,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',241,'Leo','Ale','Scudo Rotto'),
 ('Doubles',241,'Sandro','Leo','Smash Finale'),
 ('Doubles',241,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',241,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',241,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',241,'Ale','Scudo Rotto'),
 ('Doubles',241,'Siwei','Autodistruzione'),
 ('Doubles',241,'Sandro','Autodistruzione');


--Doubles-240
insert into kills values ('Doubles',240,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',240,'Siwei','Ale','Smash Finale'),
 ('Doubles',240,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',240,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',240,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',240,'Siwei','Ale','Smash Finale'),
 ('Doubles',240,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',240,'Sandro','Leo','Smash Laterale'),
 ('Doubles',240,'Sandro','Siwei','Smash in Su'),
 ('Doubles',240,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',240,'Leo','Fuoco Amico');


--Doubles-239
insert into kills values ('Doubles',239,'Leo','Sandro','Altro'),
 ('Doubles',239,'Leo','Ale','Smash Laterale'),
 ('Doubles',239,'Sandro','Siwei','Smash Finale'),
 ('Doubles',239,'Leo','Ale','Smash Finale'),
 ('Doubles',239,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',239,'Sandro','Leo','Smash Laterale'),
 ('Doubles',239,'Ale','Siwei','Smash Finale'),
 ('Doubles',239,'Sandro','Siwei','Smash Finale'),
 ('Doubles',239,'Sandro','Leo','Altro'),
 ('Doubles',239,'Leo','Sandro','Smash Laterale'),
 ('Doubles',239,'Leo','Ale','Aereo Frontale');

insert into deaths values ('Doubles',239,'Sandro','Autodistruzione'),
 ('Doubles',239,'Sandro','Fuoco Amico'),
 ('Doubles',239,'Leo','Mancato Recupero');


--Doubles-238
insert into kills values ('Doubles',238,'Sandro','Siwei','Smash in Su'),
 ('Doubles',238,'Leo','Ale','In Corsa'),
 ('Doubles',238,'Ale','Leo','Aereo Frontale'),
 ('Doubles',238,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',238,'Siwei','Ale','Smash Laterale'),
 ('Doubles',238,'Sandro','Leo','Altro'),
 ('Doubles',238,'Sandro','Siwei','Altro'),
 ('Doubles',238,'Leo','Sandro','Smash Finale'),
 ('Doubles',238,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',238,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',238,'Leo','Autodistruzione'),
 ('Doubles',238,'Siwei','Princess Peach Castle'),
 ('Doubles',238,'Siwei','Fuoco Amico');


--Doubles-237
insert into kills values ('Doubles',237,'Sandro','Leo','Altro'),
 ('Doubles',237,'Sandro','Siwei','Altro'),
 ('Doubles',237,'Sandro','Siwei','Smash Finale'),
 ('Doubles',237,'Leo','Sandro','Smash in Su'),
 ('Doubles',237,'Ale','Leo','Altro'),
 ('Doubles',237,'Siwei','Ale','Smash Finale'),
 ('Doubles',237,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',237,'Sandro','Leo','Altro'),
 ('Doubles',237,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Doubles',237,'Leo','Mancato Recupero'),
 ('Doubles',237,'Siwei','Mancato Recupero'),
 ('Doubles',237,'Leo','Autodistruzione'),
 ('Doubles',237,'Sandro','Fuoco Amico'),
 ('Doubles',237,'Leo','Mancato Recupero');


--Doubles-236
insert into kills values ('Doubles',236,'Sandro','Ale','Altro'),
 ('Doubles',236,'Siwei','Leo','Smash in Su'),
 ('Doubles',236,'Siwei','Sandro','Smash in Su'),
 ('Doubles',236,'Sandro','Ale','Smash Finale'),
 ('Doubles',236,'Leo','Siwei','Smash in Su'),
 ('Doubles',236,'Siwei','Sandro','Smash in Su'),
 ('Doubles',236,'Sandro','Ale','Smash Finale'),
 ('Doubles',236,'Siwei','Leo','Smash Laterale'),
 ('Doubles',236,'Leo','Siwei','Altro'),
 ('Doubles',236,'Siwei','Sandro','Smash Finale'),
 ('Doubles',236,'Leo','Siwei','Smash in Su');

insert into deaths values ('Doubles',236,'Ale','Mancato Recupero');


--Doubles-235
insert into kills values ('Doubles',235,'Sandro','Ale','Altro'),
 ('Doubles',235,'Leo','Siwei','Smash Laterale'),
 ('Doubles',235,'Siwei','Leo','Smash in Su'),
 ('Doubles',235,'Ale','Sandro','Speciale Standard'),
 ('Doubles',235,'Siwei','Leo','Smash Finale'),
 ('Doubles',235,'Ale','Sandro','Altro'),
 ('Doubles',235,'Sandro','Ale','Smash Laterale'),
 ('Doubles',235,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',235,'Ale','Leo','Smash in Su'),
 ('Doubles',235,'Siwei','Sandro','Smash Laterale');

insert into deaths values ('Doubles',235,'Sandro','Mancato Recupero');


--Doubles-234
insert into kills values ('Doubles',234,'Sandro','Leo','Speciale in Giù'),
 ('Doubles',234,'Ale','Siwei','Altro'),
 ('Doubles',234,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',234,'Leo','Siwei','Speciale Standard'),
 ('Doubles',234,'Leo','Sandro','Smash Laterale'),
 ('Doubles',234,'Siwei','Leo','Smash Laterale'),
 ('Doubles',234,'Ale','Leo','Fuoco Amico'),
 ('Doubles',234,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',234,'Sandro','Ale','Smash in Su'),
 ('Doubles',234,'Ale','Siwei','Aereo Standard'),
 ('Doubles',234,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Doubles',234,'Siwei','Autodistruzione'),
 ('Doubles',234,'Leo','Fuoco Amico');


--Single-570
insert into kills values ('Single',570,'Siwei','Leo','Smash Laterale'),
 ('Single',570,'Sandro','Siwei','Speciale Laterale'),
 ('Single',570,'Sandro','Ale','Speciale Laterale'),
 ('Single',570,'Ale','Sandro','Smash in Su'),
 ('Single',570,'Siwei','Ale','Aereo Frontale'),
 ('Single',570,'Ale','Siwei','Smash Finale'),
 ('Single',570,'Siwei','Leo','Aereo Frontale'),
 ('Single',570,'Siwei','Sandro','Aereo Frontale'),
 ('Single',570,'Siwei','Ale','Aereo Frontale'),
 ('Single',570,'Siwei','Leo','Smash Finale'),
 ('Single',570,'Sandro','Siwei','Speciale Laterale');


--Single-569
insert into kills values ('Single',569,'Ale','Leo','Altro'),
 ('Single',569,'Leo','Sandro','Smash Laterale'),
 ('Single',569,'Ale','Siwei','Altro'),
 ('Single',569,'Siwei','Ale','Altro'),
 ('Single',569,'Ale','Siwei','Smash Finale'),
 ('Single',569,'Leo','Siwei','Altro'),
 ('Single',569,'Leo','Sandro','Smash Laterale'),
 ('Single',569,'Leo','Sandro','Altro'),
 ('Single',569,'Leo','Ale','In Corsa'),
 ('Single',569,'Ale','Leo','Aereo Posteriore'),
 ('Single',569,'Leo','Ale','Altro');

insert into deaths values ('Single',569,'Leo','Mancato Recupero'),
 ('Single',569,'Siwei','Mancato Recupero'),
 ('Single',569,'Siwei','Mancato Recupero'),
 ('Single',569,'Sandro','Mancato Recupero'),
 ('Single',569,'Ale','Mancato Recupero');


--Single-568
insert into kills values ('Single',568,'Leo','Siwei','Altro'),
 ('Single',568,'Leo','Siwei','Altro'),
 ('Single',568,'Siwei','Ale','Smash Finale'),
 ('Single',568,'Ale','Sandro','Smash Laterale'),
 ('Single',568,'Ale','Leo','Smash Finale'),
 ('Single',568,'Sandro','Siwei','Smash Laterale'),
 ('Single',568,'Ale','Sandro','Smash Laterale'),
 ('Single',568,'Sandro','Ale','Smash Laterale'),
 ('Single',568,'Ale','Leo','Aereo in Su'),
 ('Single',568,'Sandro','Leo','Aereo Posteriore'),
 ('Single',568,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',568,'Siwei','Mancato Recupero'),
 ('Single',568,'Siwei','Autodistruzione');


--Single-567
insert into kills values ('Single',567,'Leo','Siwei','Smash Laterale'),
 ('Single',567,'Sandro','Ale','Smash in Su'),
 ('Single',567,'Siwei','Leo','Speciale Standard'),
 ('Single',567,'Leo','Sandro','Smash Finale'),
 ('Single',567,'Sandro','Ale','Altro'),
 ('Single',567,'Siwei','Leo','Smash Finale'),
 ('Single',567,'Ale','Siwei','Smash in Giù'),
 ('Single',567,'Ale','Sandro','Smash Finale'),
 ('Single',567,'Sandro','Ale','Smash Laterale'),
 ('Single',567,'Sandro','Siwei','Smash Finale'),
 ('Single',567,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',567,'Ale','Autodistruzione');


--Single-566
insert into kills values ('Single',566,'Ale','Leo','Altro'),
 ('Single',566,'Siwei','Ale','Speciale Laterale'),
 ('Single',566,'Ale','Sandro','Aereo Standard'),
 ('Single',566,'Leo','Siwei','Aereo Standard'),
 ('Single',566,'Siwei','Sandro','Speciale Laterale'),
 ('Single',566,'Sandro','Siwei','Smash Finale'),
 ('Single',566,'Sandro','Leo','Smash Finale'),
 ('Single',566,'Ale','Leo','Smash Finale'),
 ('Single',566,'Ale','Sandro','Smash Finale'),
 ('Single',566,'Ale','Siwei','In Corsa');

insert into deaths values ('Single',566,'Leo','Autodistruzione');


--Single-565
insert into kills values ('Single',565,'Siwei','Ale','Speciale Standard'),
 ('Single',565,'Ale','Sandro','Speciale in Giù'),
 ('Single',565,'Sandro','Ale','Altro'),
 ('Single',565,'Siwei','Leo','Aereo Frontale'),
 ('Single',565,'Sandro','Siwei','Smash in Su'),
 ('Single',565,'Ale','Sandro','Aereo Standard'),
 ('Single',565,'Sandro','Siwei','Speciale in Su'),
 ('Single',565,'Sandro','Leo','Altro'),
 ('Single',565,'Sandro','Ale','Meteora'),
 ('Single',565,'Leo','Sandro','Altro'),
 ('Single',565,'Siwei','Leo','Smash Finale');

insert into deaths values ('Single',565,'Ale','Autodistruzione'),
 ('Single',565,'Leo','Autodistruzione'),
 ('Single',565,'Sandro','Autodistruzione');


--Single-564
insert into kills values ('Single',564,'Siwei','Sandro','Altro'),
 ('Single',564,'Siwei','Leo','Speciale Laterale'),
 ('Single',564,'Ale','Siwei','Aereo Posteriore'),
 ('Single',564,'Siwei','Sandro','Altro'),
 ('Single',564,'Siwei','Ale','Smash Finale'),
 ('Single',564,'Leo','Sandro','Smash Finale'),
 ('Single',564,'Leo','Siwei','Speciale Standard'),
 ('Single',564,'Siwei','Leo','Speciale Laterale'),
 ('Single',564,'Ale','Siwei','Speciale in Giù'),
 ('Single',564,'Leo','Ale','Smash Laterale'),
 ('Single',564,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',564,'Sandro','Port Town Aero Dive'),
 ('Single',564,'Sandro','Port Town Aero Dive');


--Single-563
insert into kills values ('Single',563,'Ale','Siwei','Speciale Standard'),
 ('Single',563,'Siwei','Ale','Smash Finale'),
 ('Single',563,'Ale','Sandro','Smash Finale'),
 ('Single',563,'Sandro','Leo','Smash in Su'),
 ('Single',563,'Leo','Siwei','Smash Finale'),
 ('Single',563,'Siwei','Leo','Altro'),
 ('Single',563,'Siwei','Sandro','Smash Finale'),
 ('Single',563,'Sandro','Ale','Altro'),
 ('Single',563,'Siwei','Sandro','Speciale in Su'),
 ('Single',563,'Siwei','Leo','Speciale in Su'),
 ('Single',563,'Leo','Siwei','Smash Finale');

insert into deaths values ('Single',563,'Leo','Autodistruzione'),
 ('Single',563,'Ale','Autodistruzione');


--Single-562
insert into kills values ('Single',562,'Siwei','Sandro','Speciale Laterale'),
 ('Single',562,'Leo','Ale','Altro'),
 ('Single',562,'Ale','Siwei','Speciale in Giù'),
 ('Single',562,'Siwei','Leo','Speciale Laterale'),
 ('Single',562,'Siwei','Sandro','Smash Finale'),
 ('Single',562,'Leo','Sandro','Altro'),
 ('Single',562,'Leo','Siwei','Smash Laterale'),
 ('Single',562,'Ale','Leo','Smash Finale'),
 ('Single',562,'Ale','Siwei','Aereo Posteriore'),
 ('Single',562,'Ale','Leo','Aereo Standard');

insert into deaths values ('Single',562,'Sandro','Pac-Land');


--Single-561
insert into kills values ('Single',561,'Siwei','Leo','Speciale Laterale'),
 ('Single',561,'Sandro','Siwei','Altro'),
 ('Single',561,'Ale','Sandro','Speciale in Giù'),
 ('Single',561,'Ale','Siwei','Smash Finale'),
 ('Single',561,'Leo','Ale','Speciale Standard'),
 ('Single',561,'Siwei','Sandro','Smash Finale'),
 ('Single',561,'Siwei','Leo','Speciale Laterale'),
 ('Single',561,'Leo','Ale','Smash Laterale'),
 ('Single',561,'Ale','Leo','Speciale in Giù'),
 ('Single',561,'Sandro','Siwei','Smash Laterale'),
 ('Single',561,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',561,'Siwei','Autodistruzione');


--Single-560
insert into kills values ('Single',560,'Siwei','Leo','Smash Laterale'),
 ('Single',560,'Siwei','Sandro','Aereo in Giù'),
 ('Single',560,'Sandro','Siwei','Smash Laterale'),
 ('Single',560,'Sandro','Ale','Smash Laterale'),
 ('Single',560,'Siwei','Ale','Altro'),
 ('Single',560,'Ale','Sandro','Smash Finale'),
 ('Single',560,'Leo','Siwei','Smash Finale'),
 ('Single',560,'Siwei','Ale','Aereo Frontale'),
 ('Single',560,'Siwei','Leo','Smash Laterale'),
 ('Single',560,'Siwei','Sandro','Speciale Laterale'),
 ('Single',560,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Single',560,'Ale','Norfair');


--Single-559
insert into kills values ('Single',559,'Sandro','Siwei','In Corsa'),
 ('Single',559,'Ale','Sandro','Smash Laterale'),
 ('Single',559,'Siwei','Ale','In Corsa'),
 ('Single',559,'Siwei','Ale','Smash Finale'),
 ('Single',559,'Leo','Sandro','Speciale Standard'),
 ('Single',559,'Ale','Leo','Altro'),
 ('Single',559,'Ale','Siwei','Smash Finale'),
 ('Single',559,'Sandro','Ale','Smash Finale'),
 ('Single',559,'Sandro','Leo','Smash Finale'),
 ('Single',559,'Siwei','Sandro','Speciale Standard'),
 ('Single',559,'Siwei','Leo','Smash Finale');

insert into deaths values ('Single',559,'Leo','Flat Zone X');


--Single-558
insert into kills values ('Single',558,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',558,'Leo','Ale','Smash Laterale'),
 ('Single',558,'Ale','Sandro','Smash Laterale'),
 ('Single',558,'Sandro','Leo','Smash Finale'),
 ('Single',558,'Leo','Siwei','Altro'),
 ('Single',558,'Siwei','Ale','Speciale Standard'),
 ('Single',558,'Siwei','Sandro','Speciale Standard'),
 ('Single',558,'Ale','Siwei','Speciale in Giù'),
 ('Single',558,'Sandro','Leo','Smash Finale'),
 ('Single',558,'Sandro','Ale','Smash Finale'),
 ('Single',558,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',558,'Siwei','Mancato Recupero');


--Single-557
insert into kills values ('Single',557,'Sandro','Siwei','Smash Laterale'),
 ('Single',557,'Siwei','Sandro','Speciale Laterale'),
 ('Single',557,'Siwei','Ale','Smash Finale'),
 ('Single',557,'Ale','Leo','Smash in Su'),
 ('Single',557,'Ale','Sandro','Smash in Su'),
 ('Single',557,'Sandro','Siwei','Altro'),
 ('Single',557,'Sandro','Siwei','Smash Finale'),
 ('Single',557,'Sandro','Ale','In Corsa'),
 ('Single',557,'Ale','Leo','Smash Finale'),
 ('Single',557,'Leo','Sandro','Aereo in Giù'),
 ('Single',557,'Leo','Ale','Aereo in Giù');

insert into deaths values ('Single',557,'Siwei','Hyrule Castle');


--Single-556
insert into kills values ('Single',556,'Siwei','Leo','Speciale in Giù'),
 ('Single',556,'Leo','Siwei','Smash Laterale'),
 ('Single',556,'Leo','Sandro','Speciale in Su'),
 ('Single',556,'Leo','Sandro','Smash Finale'),
 ('Single',556,'Siwei','Ale','Smash Finale'),
 ('Single',556,'Sandro','Leo','Smash Finale'),
 ('Single',556,'Siwei','Sandro','Speciale in Giù'),
 ('Single',556,'Ale','Siwei','Smash Laterale'),
 ('Single',556,'Siwei','Ale','Smash Finale'),
 ('Single',556,'Siwei','Leo','Speciale Standard'),
 ('Single',556,'Ale','Siwei','Speciale in Giù');


--Single-555
insert into kills values ('Single',555,'Leo','Siwei','Altro'),
 ('Single',555,'Siwei','Sandro','Speciale in Su'),
 ('Single',555,'Siwei','Ale','Speciale Laterale'),
 ('Single',555,'Sandro','Leo','Aereo in Giù'),
 ('Single',555,'Sandro','Ale','Altro'),
 ('Single',555,'Siwei','Sandro','Altro'),
 ('Single',555,'Sandro','Siwei','Speciale Standard'),
 ('Single',555,'Sandro','Ale','Speciale Standard'),
 ('Single',555,'Sandro','Siwei','Speciale Standard'),
 ('Single',555,'Sandro','Leo','Smash Finale'),
 ('Single',555,'Leo','Sandro','Aereo in Giù');

insert into deaths values ('Single',555,'Siwei','Jungle Japes'),
 ('Single',555,'Ale','Jungle Japes'),
 ('Single',555,'Sandro','Jungle Japes');


--Single-554
insert into kills values ('Single',554,'Sandro','Ale','Altro'),
 ('Single',554,'Ale','Sandro','Smash in Su'),
 ('Single',554,'Ale','Siwei','Speciale Laterale'),
 ('Single',554,'Siwei','Leo','Speciale in Giù'),
 ('Single',554,'Sandro','Ale','Smash Finale'),
 ('Single',554,'Siwei','Sandro','Smash Finale'),
 ('Single',554,'Ale','Siwei','Smash Finale'),
 ('Single',554,'Ale','Leo','Smash Finale'),
 ('Single',554,'Siwei','Ale','Speciale in Giù'),
 ('Single',554,'Siwei','Sandro','Speciale Standard'),
 ('Single',554,'Leo','Siwei','Smash Finale');

insert into deaths values ('Single',554,'Ale','Autodistruzione');


--Single-553
insert into kills values ('Single',553,'Ale','Siwei','Speciale in Giù'),
 ('Single',553,'Ale','Sandro','Altro'),
 ('Single',553,'Ale','Leo','Meteora'),
 ('Single',553,'Sandro','Siwei','Smash in Su'),
 ('Single',553,'Sandro','Ale','Aereo in Su'),
 ('Single',553,'Ale','Leo','Smash Finale'),
 ('Single',553,'Sandro','Siwei','Aereo in Giù'),
 ('Single',553,'Ale','Sandro','Speciale in Giù'),
 ('Single',553,'Ale','Sandro','Altro'),
 ('Single',553,'Sandro','Ale','Speciale Laterale'),
 ('Single',553,'Ale','Leo','Smash in Su');

insert into deaths values ('Single',553,'Sandro','Mancato Recupero'),
 ('Single',553,'Sandro','Autodistruzione');

 
--Single-552
insert into kills values ('Single',552,'Ale','Leo','Aereo Frontale'),
 ('Single',552,'Leo','Sandro','Speciale Standard'),
 ('Single',552,'Leo','Siwei','Smash Laterale'),
 ('Single',552,'Leo','Siwei','Smash Finale'),
 ('Single',552,'Ale','Sandro','Aereo Standard'),
 ('Single',552,'Ale','Leo','Aereo Standard'),
 ('Single',552,'Siwei','Ale','Smash Finale'),
 ('Single',552,'Siwei','Sandro','Speciale Laterale'),
 ('Single',552,'Leo','Ale','Smash Finale'),
 ('Single',552,'Ale','Siwei','Speciale in Giù'),
 ('Single',552,'Ale','Leo','Smash in Su');


--Single-551
insert into kills values ('Single',551,'Sandro','Ale','Smash Laterale'),
 ('Single',551,'Sandro','Siwei','Speciale in Su'),
 ('Single',551,'Siwei','Sandro','In Corsa'),
 ('Single',551,'Siwei','Leo','In Corsa'),
 ('Single',551,'Sandro','Siwei','Smash Finale'),
 ('Single',551,'Sandro','Ale','Smash Laterale'),
 ('Single',551,'Ale','Sandro','Altro'),
 ('Single',551,'Ale','Siwei','Aereo Frontale'),
 ('Single',551,'Sandro','Ale','Smash Finale'),
 ('Single',551,'Leo','Sandro','Speciale in Su');

insert into deaths values ('Single',551,'Sandro','Wuhu Island');


--Single-550
insert into kills values ('Single',550,'Siwei','Leo','Speciale Laterale'),
 ('Single',550,'Sandro','Ale','Smash Laterale'),
 ('Single',550,'Siwei','Sandro','Speciale Laterale'),
 ('Single',550,'Sandro','Siwei','Smash Laterale'),
 ('Single',550,'Siwei','Sandro','Smash Finale'),
 ('Single',550,'Leo','Siwei','Altro'),
 ('Single',550,'Leo','Ale','Smash Laterale'),
 ('Single',550,'Siwei','Leo','Smash in Su'),
 ('Single',550,'Ale','Siwei','Speciale Standard'),
 ('Single',550,'Leo','Ale','Smash Laterale'),
 ('Single',550,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',550,'Siwei','Mancato Recupero');


--Single-549
insert into kills values ('Single',549,'Ale','Siwei','Aereo Posteriore'),
 ('Single',549,'Siwei','Sandro','Speciale Standard'),
 ('Single',549,'Siwei','Ale','Smash Finale'),
 ('Single',549,'Ale','Leo','Aereo Standard'),
 ('Single',549,'Siwei','Ale','Altro'),
 ('Single',549,'Sandro','Siwei','Smash Laterale'),
 ('Single',549,'Sandro','Siwei','Smash Finale'),
 ('Single',549,'Leo','Sandro','Altro'),
 ('Single',549,'Leo','Ale','Smash in Su'),
 ('Single',549,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',549,'Ale','Mancato Recupero'),
 ('Single',549,'Sandro','Autodistruzione');


--Single-548
insert into kills values ('Single',548,'Leo','Ale','Meteora'),
 ('Single',548,'Ale','Sandro','Altro'),
 ('Single',548,'Ale','Siwei','Aereo Standard'),
 ('Single',548,'Sandro','Leo','Smash in Su'),
 ('Single',548,'Ale','Siwei','Speciale Standard'),
 ('Single',548,'Leo','Ale','Smash Finale'),
 ('Single',548,'Leo','Sandro','Smash Finale'),
 ('Single',548,'Siwei','Leo','Speciale Laterale'),
 ('Single',548,'Leo','Siwei','Peculiare'),
 ('Single',548,'Sandro','Ale','Smash Finale'),
 ('Single',548,'Sandro','Leo','Aereo in Giù');

insert into deaths values ('Single',548,'Sandro','Autodistruzione');


--Single-547
insert into kills values ('Single',547,'Leo','Siwei','Altro'),
 ('Single',547,'Siwei','Sandro','Altro'),
 ('Single',547,'Sandro','Leo','Aereo Posteriore'),
 ('Single',547,'Ale','Siwei','Aereo Posteriore'),
 ('Single',547,'Siwei','Sandro','Speciale Laterale'),
 ('Single',547,'Siwei','Ale','Speciale Laterale'),
 ('Single',547,'Ale','Leo','Smash Laterale'),
 ('Single',547,'Siwei','Ale','Speciale Laterale'),
 ('Single',547,'Ale','Siwei','Altro'),
 ('Single',547,'Ale','Leo','Aereo Standard');

insert into deaths values ('Single',547,'Siwei','Mancato Recupero'),
 ('Single',547,'Sandro','Mancato Recupero'),
 ('Single',547,'Sandro','Wily Castle'),
 ('Single',547,'Siwei','Wily Castle');


--Single-546
insert into kills values ('Single',546,'Siwei','Ale','Smash Laterale'),
 ('Single',546,'Sandro','Siwei','Smash Laterale'),
 ('Single',546,'Siwei','Leo','Aereo Frontale'),
 ('Single',546,'Siwei','Sandro','Smash Finale'),
 ('Single',546,'Leo','Siwei','Smash Laterale'),
 ('Single',546,'Leo','Ale','Smash Laterale'),
 ('Single',546,'Leo','Sandro','Smash Laterale'),
 ('Single',546,'Ale','Sandro','Smash Laterale'),
 ('Single',546,'Siwei','Leo','Altro'),
 ('Single',546,'Leo','Siwei','Smash Laterale'),
 ('Single',546,'Leo','Ale','Aereo Posteriore');

insert into deaths values ('Single',546,'Leo','Mancato Recupero');


--Single-545
insert into kills values ('Single',545,'Sandro','Siwei','Speciale in Su'),
 ('Single',545,'Ale','Sandro','Altro'),
 ('Single',545,'Siwei','Ale','In Corsa'),
 ('Single',545,'Leo','Siwei','Peculiare'),
 ('Single',545,'Siwei','Leo','Smash Laterale'),
 ('Single',545,'Ale','Sandro','Smash Finale'),
 ('Single',545,'Leo','Siwei','Smash Laterale'),
 ('Single',545,'Leo','Sandro','Smash Finale'),
 ('Single',545,'Leo','Ale','Smash in Su'),
 ('Single',545,'Ale','Leo','In Corsa'),
 ('Single',545,'Ale','Leo','Speciale Standard');

insert into deaths values ('Single',545,'Sandro','Autodistruzione');


--Single-544
insert into kills values ('Single',544,'Leo','Siwei','Aereo in Su'),
 ('Single',544,'Ale','Leo','Altro'),
 ('Single',544,'Siwei','Ale','Speciale Laterale'),
 ('Single',544,'Leo','Sandro','Smash Finale'),
 ('Single',544,'Ale','Leo','Smash Finale'),
 ('Single',544,'Leo','Siwei','Smash in Su'),
 ('Single',544,'Leo','Ale','Smash Laterale'),
 ('Single',544,'Leo','Sandro','Smash Laterale'),
 ('Single',544,'Leo','Siwei','Altro'),
 ('Single',544,'Leo','Ale','In Corsa'),
 ('Single',544,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',544,'Leo','Pirate Ship'),
 ('Single',544,'Siwei','Pirate Ship');


--Single-543
insert into kills values ('Single',543,'Ale','Sandro','Speciale in Giù'),
 ('Single',543,'Sandro','Siwei','Smash Laterale'),
 ('Single',543,'Ale','Sandro','Aereo Frontale'),
 ('Single',543,'Sandro','Siwei','Smash Finale'),
 ('Single',543,'Sandro','Leo','Speciale Laterale'),
 ('Single',543,'Siwei','Ale','Smash in Su'),
 ('Single',543,'Leo','Siwei','Altro'),
 ('Single',543,'Ale','Sandro','Smash Finale'),
 ('Single',543,'Ale','Leo','Smash in Su'),
 ('Single',543,'Leo','Ale','Smash Laterale'),
 ('Single',543,'Ale','Leo','Smash in Giù');

insert into deaths values ('Single',543,'Siwei','Autodistruzione');


--Single-542
insert into kills values ('Single',542,'Ale','Siwei','Altro'),
 ('Single',542,'Siwei','Ale','Smash Laterale'),
 ('Single',542,'Leo','Sandro','Speciale Laterale'),
 ('Single',542,'Sandro','Siwei','Smash Finale'),
 ('Single',542,'Sandro','Ale','Smash Finale'),
 ('Single',542,'Sandro','Leo','Smash Finale'),
 ('Single',542,'Ale','Sandro','Speciale in Giù'),
 ('Single',542,'Siwei','Leo','Smash Finale'),
 ('Single',542,'Sandro','Siwei','Smash Laterale'),
 ('Single',542,'Sandro','Ale','Aereo Frontale'),
 ('Single',542,'Leo','Sandro','Smash in Su');

insert into deaths values ('Single',542,'Siwei','Mancato Recupero');


--Single-541
insert into kills values ('Single',541,'Leo','Sandro','Smash Laterale'),
 ('Single',541,'Siwei','Ale','Altro'),
 ('Single',541,'Leo','Siwei','Altro'),
 ('Single',541,'Sandro','Leo','Altro'),
 ('Single',541,'Leo','Sandro','Smash in Su'),
 ('Single',541,'Siwei','Ale','In Corsa'),
 ('Single',541,'Siwei','Leo','Speciale in Giù'),
 ('Single',541,'Leo','Siwei','Smash in Su'),
 ('Single',541,'Siwei','Leo','Smash Finale'),
 ('Single',541,'Siwei','Sandro','Smash Finale'),
 ('Single',541,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Single',541,'Ale','Autodistruzione'),
 ('Single',541,'Siwei','Mushroomy Kingdom'),
 ('Single',541,'Leo','Mushroomy Kingdom');


--Single-540
insert into kills values ('Single',540,'Sandro','Ale','Aereo in Giù'),
 ('Single',540,'Sandro','Leo','Smash Laterale'),
 ('Single',540,'Leo','Siwei','Smash Laterale'),
 ('Single',540,'Leo','Sandro','Smash Laterale'),
 ('Single',540,'Sandro','Ale','Speciale in Giù'),
 ('Single',540,'Siwei','Leo','Speciale in Giù'),
 ('Single',540,'Sandro','Ale','Smash Laterale'),
 ('Single',540,'Leo','Siwei','Smash Finale'),
 ('Single',540,'Leo','Sandro','Smash Finale'),
 ('Single',540,'Sandro','Siwei','Smash in Giù'),
 ('Single',540,'Sandro','Leo','Smash Laterale');


--Doubles-233
insert into kills values ('Doubles',233,'Ale','Siwei','Smash Laterale'),
 ('Doubles',233,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',233,'Leo','Ale','Smash Finale'),
 ('Doubles',233,'Siwei','Sandro','Smash Finale'),
 ('Doubles',233,'Ale','Leo','Peculiare'), --PECULIAR: KIRBY
 ('Doubles',233,'Ale','Siwei','Meteora'),
 ('Doubles',233,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',233,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',233,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',233,'Sandro','Siwei','Aereo in Giù');

insert into deaths values ('Doubles',233,'Leo','Fuoco Amico'),
 ('Doubles',233,'Ale','Fuoco Amico');


--Doubles-232
insert into kills values ('Doubles',232,'Sandro','Leo','Smash Finale'),
 ('Doubles',232,'Ale','Siwei','Smash Finale'),
 ('Doubles',232,'Siwei','Ale','Smash in Su'),
 ('Doubles',232,'Leo','Sandro','Smash Finale'),
 ('Doubles',232,'Leo','Siwei','Smash Laterale'),
 ('Doubles',232,'Sandro','Leo','In Corsa'),
 ('Doubles',232,'Siwei','Ale','Smash in Su'),
 ('Doubles',232,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',232,'Sandro','Leo','Aereo in Su'),
 ('Doubles',232,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',232,'Sandro','Ale','In Corsa');

insert into deaths values ('Doubles',232,'Sandro','Fuoco Amico'),
 ('Doubles',232,'Siwei','Fuoco Amico');


--Doubles-231
insert into kills values ('Doubles',231,'Sandro','Leo','Smash Laterale'),
 ('Doubles',231,'Ale','Siwei','Smash in Su'),
 ('Doubles',231,'Ale','Siwei','Smash Finale'),
 ('Doubles',231,'Sandro','Ale','Grab'),
 ('Doubles',231,'Leo','Sandro','Aereo Posteriore'),
 ('Doubles',231,'Sandro','Leo','Smash Finale'),
 ('Doubles',231,'Ale','Sandro','Altro'),
 ('Doubles',231,'Siwei','Ale','Smash Laterale'),
 ('Doubles',231,'Leo','Siwei','Smash Finale'),
 ('Doubles',231,'Ale','Sandro','Speciale Standard');

insert into deaths values ('Doubles',231,'Sandro','Autodistruzione');


--Doubles-230
insert into kills values ('Doubles',230,'Ale','Siwei','Speciale Standard'),
 ('Doubles',230,'Sandro','Leo','Altro'),
 ('Doubles',230,'Leo','Ale','Smash Laterale'),
 ('Doubles',230,'Siwei','Sandro','Aereo Frontale'),
 ('Doubles',230,'Ale','Siwei','Smash Laterale'),
 ('Doubles',230,'Leo','Sandro','Smash in Giù'),
 ('Doubles',230,'Siwei','Ale','Aereo Frontale'),
 ('Doubles',230,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',230,'Leo','Ale','Speciale in Giù'),
 ('Doubles',230,'Sandro','Siwei','Smash Finale'),
 ('Doubles',230,'Leo','Sandro','Speciale in Giù');

insert into deaths values ('Doubles',230,'Leo','Mute City SNES');


--Doubles-229
insert into kills values ('Doubles',229,'Leo','Siwei','Speciale in Su'),
 ('Doubles',229,'Siwei','Leo','Smash Laterale'),
 ('Doubles',229,'Leo','Ale','Fuoco Amico'),
 ('Doubles',229,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',229,'Leo','Siwei','Smash Finale'),
 ('Doubles',229,'Ale','Sandro','Smash Laterale'),
 ('Doubles',229,'Siwei','Leo','Aereo Posteriore'),
 ('Doubles',229,'Sandro','Ale','Smash Laterale'),
 ('Doubles',229,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',229,'Ale','Siwei','Peculiare'), --PECULIAR: DIDDY KONG
 ('Doubles',229,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',229,'Ale','Fuoco Amico');


--Doubles-228
insert into kills values ('Doubles',228,'Sandro','Ale','Altro'),
 ('Doubles',228,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',228,'Siwei','Leo','Altro'),
 ('Doubles',228,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',228,'Sandro','Siwei','Smash Finale'),
 ('Doubles',228,'Siwei','Leo','Altro'),
 ('Doubles',228,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',228,'Leo','Siwei','Smash Finale'),
 ('Doubles',228,'Leo','Ale','Altro'),
 ('Doubles',228,'Leo','Ale','In Corsa');

insert into deaths values ('Doubles',228,'Ale','Autodistruzione'),
 ('Doubles',228,'Leo','Mancato Recupero'),
 ('Doubles',228,'Sandro','Fuoco Amico'),
 ('Doubles',228,'Ale','Autodistruzione');


--Doubles-227
insert into kills values ('Doubles',227,'Leo','Sandro','Altro'),
 ('Doubles',227,'Leo','Ale','Scudo Rotto'),
 ('Doubles',227,'Ale','Siwei','Smash Finale'),
 ('Doubles',227,'Leo','Ale','Altro'),
 ('Doubles',227,'Leo','Sandro','Smash Finale'),
 ('Doubles',227,'Sandro','Leo','Smash Laterale'),
 ('Doubles',227,'Leo','Ale','Smash Laterale'),
 ('Doubles',227,'Sandro','Siwei','Smash Finale'),
 ('Doubles',227,'Siwei','Sandro','Smash Laterale');

insert into deaths values ('Doubles',227,'Ale','Scudo Rotto'),
 ('Doubles',227,'Ale','Mancato Recupero');


--Doubles-226
insert into kills values ('Doubles',226,'Siwei','Ale','Smash Laterale'),
 ('Doubles',226,'Leo','Sandro','Altro'),
 ('Doubles',226,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',226,'Sandro','Siwei','Smash in Su'),
 ('Doubles',226,'Ale','Siwei','Smash in Su'),
 ('Doubles',226,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',226,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',226,'Siwei','Sandro','Smash Finale'),
 ('Doubles',226,'Siwei','Ale','Speciale Laterale' );

insert into deaths values ('Doubles',226,'Sandro','Brinstar Depths'),
 ('Doubles',226,'Leo','Fuoco Amico'),
 ('Doubles',226,'Ale','Fuoco Amico');


--Doubles-225
insert into kills values ('Doubles',225,'Sandro','Ale','Altro'),
 ('Doubles',225,'Ale','Sandro','Smash in Su'),
 ('Doubles',225,'Sandro','Leo','Speciale Standard'),
 ('Doubles',225,'Leo','Siwei','Speciale in Su'),
 ('Doubles',225,'Sandro','Ale','Speciale in Su'),
 ('Doubles',225,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',225,'Ale','Sandro','Aereo in Su'),
 ('Doubles',225,'Ale','Siwei','Smash Finale'),
 ('Doubles',225,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',225,'Siwei','Leo','Aereo in Su');

insert into deaths values ('Doubles',225,'Ale','Mancato Recupero');


--Doubles-224
insert into kills values ('Doubles',224,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',224,'Ale','Leo','Smash in Su'),
 ('Doubles',224,'Siwei','Sandro','Smash Finale'),
 ('Doubles',224,'Siwei','Ale','Speciale in Giù'),
 ('Doubles',224,'Sandro','Siwei','Smash Finale'),
 ('Doubles',224,'Ale','Siwei','Smash Finale'),
 ('Doubles',224,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',224,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',224,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',224,'Sandro','Siwei','Smash Laterale');


--Doubles-223
insert into kills values ('Doubles',223,'Siwei','Sandro','Altro'),
 ('Doubles',223,'Sandro','Leo','Peculiare'), --PECULIAR: LUCAS PK ROCKET
 ('Doubles',223,'Siwei','Ale','Smash Laterale'),
 ('Doubles',223,'Sandro','Leo','Altro'),
 ('Doubles',223,'Sandro','Siwei','Smash in Su'),
 ('Doubles',223,'Ale','Siwei','Altro'),
 ('Doubles',223,'Siwei','Sandro','Aereo Posteriore'),
 ('Doubles',223,'Ale','Leo','Altro'),
 ('Doubles',223,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Doubles',223,'Sandro','Autodistruzione'),
 ('Doubles',223,'Leo','Autodistruzione'),
 ('Doubles',223,'Leo','Mancato Recupero');


--Doubles-222
insert into kills values ('Doubles',222,'Leo','Ale','Fuoco Amico'),
 ('Doubles',222,'Ale','Siwei','Smash Laterale'),
 ('Doubles',222,'Sandro','Leo','Altro'),
 ('Doubles',222,'Leo','Sandro','Aereo in Su'),
 ('Doubles',222,'Siwei','Ale','Smash in Su'),
 ('Doubles',222,'Leo','Siwei','Smash Finale'),
 ('Doubles',222,'Leo','Sandro','Aereo in Su'),
 ('Doubles',222,'Siwei','Ale','Smash Finale'),
 ('Doubles',222,'Sandro','Leo','Altro'),
 ('Doubles',222,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',222,'Sandro','Ale','Smash Finale');

insert into deaths values ('Doubles',222,'Ale','Fuoco Amico'),
 ('Doubles',222,'Leo','Mancato Recupero'),
 ('Doubles',222,'Leo','Autodistruzione'),
 ('Doubles',222,'Siwei','Fuoco Amico');


--Doubles-221
insert into kills values ('Doubles',221,'Ale','Siwei','Altro'),
 ('Doubles',221,'Ale','Sandro','Smash in Su'),
 ('Doubles',221,'Sandro','Ale','Smash Finale'),
 ('Doubles',221,'Sandro','Leo','Smash Finale'),
 ('Doubles',221,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',221,'Ale','Sandro','Speciale Standard'),
 ('Doubles',221,'Siwei','Ale','Speciale in Su'),
 ('Doubles',221,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',221,'Leo','Sandro','Smash Finale'),
 ('Doubles',221,'Leo','Siwei','Altro');

insert into deaths values ('Doubles',221,'Siwei','Autodistruzione'),
 ('Doubles',221,'Siwei','Autodistruzione');


--Doubles-220
insert into kills values ('Doubles',220,'Sandro','Siwei','Altro'),
 ('Doubles',220,'Leo','Ale','Smash Laterale'),
 ('Doubles',220,'Leo','Sandro','Aereo Frontale'),
 ('Doubles',220,'Ale','Leo','Aereo in Su'),
 ('Doubles',220,'Sandro','Siwei','In Corsa'),
 ('Doubles',220,'Leo','Sandro','Smash Laterale'),
 ('Doubles',220,'Leo','Ale','Smash Laterale'),
 ('Doubles',220,'Ale','Leo','Smash in Su'),
 ('Doubles',220,'Sandro','Siwei','Smash Finale'),
 ('Doubles',220,'Sandro','Leo','Speciale Laterale');

insert into deaths values ('Doubles',220,'Siwei','Gerudo Valley');


--Doubles-219
insert into kills values ('Doubles',219,'Ale','Sandro','Altro'),
 ('Doubles',219,'Siwei','Sandro','Altro'),
 ('Doubles',219,'Sandro','Siwei','Smash Finale'),
 ('Doubles',219,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',219,'Ale','Leo','Smash Laterale'),
 ('Doubles',219,'Siwei','Sandro','Altro'),
 ('Doubles',219,'Leo','Siwei','Altro'),
 ('Doubles',219,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',219,'Siwei','Leo','Smash Laterale'),
 ('Doubles',219,'Siwei','Leo','Altro');

insert into deaths values ('Doubles',219,'Sandro','Mancato Recupero'),
 ('Doubles',219,'Sandro','Mancato Recupero'),
 ('Doubles',219,'Ale','Fuoco Amico'),
 ('Doubles',219,'Siwei','Mancato Recupero'),
 ('Doubles',219,'Ale','Fuoco Amico');


--Doubles-218
insert into kills values ('Doubles',218,'Leo','Ale','Smash Laterale'),
 ('Doubles',218,'Leo','Siwei','Smash Laterale'),
 ('Doubles',218,'Ale','Leo','Smash Finale'),
 ('Doubles',218,'Ale','Sandro','Smash Finale'),
 ('Doubles',218,'Leo','Ale','Smash Finale'),
 ('Doubles',218,'Leo','Siwei','In Corsa'),
 ('Doubles',218,'Ale','Leo','Smash Laterale'),
 ('Doubles',218,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',218,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',218,'Ale','Fuoco Amico');


--Doubles-217
insert into kills values ('Doubles',217,'Ale','Siwei','Speciale Laterale'),
 ('Doubles',217,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',217,'Sandro','Siwei','Speciale in Su'),
 ('Doubles',217,'Leo','Ale','Speciale in Su'),
 ('Doubles',217,'Sandro','Leo','Smash Laterale'),
 ('Doubles',217,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Doubles',217,'Leo','Ale','Smash Finale'),
 ('Doubles',217,'Leo','Ale','Speciale in Su'),
 ('Doubles',217,'Siwei','Sandro','Altro'),
 ('Doubles',217,'Ale','Siwei','Smash Laterale'),
 ('Doubles',217,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',217,'Leo','Fuoco Amico');


--Doubles-216
insert into kills values ('Doubles',216,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',216,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',216,'Leo','Siwei','Smash Laterale'),
 ('Doubles',216,'Leo','Siwei','Smash Laterale'),
 ('Doubles',216,'Siwei','Sandro','Smash in Su'),
 ('Doubles',216,'Ale','Leo','In Corsa'),
 ('Doubles',216,'Sandro','Ale','Smash in Su'),
 ('Doubles',216,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',216,'Sandro','Ale','Altro');

insert into deaths values ('Doubles',216,'Ale','Fuoco Amico'),
 ('Doubles',216,'Ale','Unova Pokemon League');


--Doubles-215
insert into kills values ('Doubles',215,'Ale','Siwei','Smash in Su'),
 ('Doubles',215,'Ale','Sandro','Smash in Su'),
 ('Doubles',215,'Siwei','Ale','Smash in Giù'),
 ('Doubles',215,'Ale','Siwei','Smash Finale'),
 ('Doubles',215,'Siwei','Leo','Smash Finale'),
 ('Doubles',215,'Leo','Sandro','Altro'),
 ('Doubles',215,'Sandro','Ale','Smash Laterale'),
 ('Doubles',215,'Leo','Sandro','Smash Finale'),
 ('Doubles',215,'Leo','Siwei','Altro');

insert into deaths values ('Doubles',215,'Sandro','Gamer'),
 ('Doubles',215,'Siwei','Gamer');


--Doubles-214
insert into kills values ('Doubles',214,'Leo','Siwei','Smash Laterale'),
 ('Doubles',214,'Ale','Sandro','Speciale in Su'),
 ('Doubles',214,'Leo','Ale','Smash Laterale'),
 ('Doubles',214,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',214,'Ale','Leo','Altro'),
 ('Doubles',214,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',214,'Siwei','Sandro','Altro'),
 ('Doubles',214,'Sandro','Ale','Altro'),
 ('Doubles',214,'Siwei','Leo','Smash Laterale'),
 ('Doubles',214,'Siwei','Sandro','Smash Laterale');

insert into deaths values ('Doubles',214,'Leo','Fuoco Amico'),
 ('Doubles',214,'Leo','Autodistruzione'),
 ('Doubles',214,'Siwei','Fuoco Amico'),
 ('Doubles',214,'Sandro','Mancato Recupero'),
 ('Doubles',214,'Ale','Norfair');


--Doubles-213
insert into kills values ('Doubles',213,'Siwei','Sandro','Altro'),
 ('Doubles',213,'Sandro','Siwei','Smash in Su'),
 ('Doubles',213,'Sandro','Leo','Smash Finale'),
 ('Doubles',213,'Siwei','Ale','Smash Laterale'),
 ('Doubles',213,'Siwei','Sandro','Smash in Su'),
 ('Doubles',213,'Sandro','Siwei','Altro'),
 ('Doubles',213,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',213,'Leo','Ale','In Corsa'),
 ('Doubles',213,'Sandro','Leo','Altro'),
 ('Doubles',213,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',213,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',213,'Sandro','Autodistruzione'),
 ('Doubles',213,'Siwei','Mancato Recupero'),
 ('Doubles',213,'Siwei','Fuoco Amico'),
 ('Doubles',213,'Leo','Mancato Recupero'),
 ('Doubles',213,'Sandro','Fuoco Amico');


--Doubles-212
insert into kills values ('Doubles',212,'Siwei','Ale','Altro'),
 ('Doubles',212,'Sandro','Leo','Altro'),
 ('Doubles',212,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',212,'Leo','Sandro','Smash Laterale'),
 ('Doubles',212,'Siwei','Ale','Smash Finale'),
 ('Doubles',212,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',212,'Siwei','Sandro','Altro'),
 ('Doubles',212,'Sandro','Siwei','Altro'),
 ('Doubles',212,'Ale','Siwei','Grab'),
 ('Doubles',212,'Sandro','Leo','Smash in Su');

insert into deaths values ('Doubles',212,'Ale','Autodistruzione'),
 ('Doubles',212,'Leo','Mancato Recupero'),
 ('Doubles',212,'Leo','Fuoco Amico'),
 ('Doubles',212,'Sandro','Autodistruzione'),
 ('Doubles',212,'Siwei','Mancato Recupero');


--Doubles-211
insert into kills values ('Doubles',211,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',211,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',211,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',211,'Siwei','Leo','Smash Laterale'),
 ('Doubles',211,'Leo','Siwei','Altro'),
 ('Doubles',211,'Siwei','Ale','Speciale in Giù'),
 ('Doubles',211,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',211,'Leo','Ale','Fuoco Amico'),
 ('Doubles',211,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',211,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',211,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',211,'Siwei','Autodistruzione'),
 ('Doubles',211,'Sandro','Fuoco Amico'),
 ('Doubles',211,'Ale','Fuoco Amico'),
 ('Doubles',211,'Siwei','Fuoco Amico');


--Doubles-210
insert into kills values ('Doubles',210,'Siwei','Sandro','Altro'),
 ('Doubles',210,'Sandro','Siwei','Smash in Su'),
 ('Doubles',210,'Ale','Leo','Smash in Su'),
 ('Doubles',210,'Leo','Ale','Smash Finale'),
 ('Doubles',210,'Siwei','Sandro','Altro'),
 ('Doubles',210,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',210,'Sandro','Siwei','Smash in Su'),
 ('Doubles',210,'Siwei','Leo','Smash Finale'),
 ('Doubles',210,'Sandro','Ale','Smash Laterale'),
 ('Doubles',210,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',210,'Ale','Sandro','Aereo in Giù');

insert into deaths values ('Doubles',210,'Sandro','Mancato Recupero'),
 ('Doubles',210,'Sandro','Autodistruzione'),
 ('Doubles',210,'Leo','Fuoco Amico');


--Doubles-209
insert into kills values ('Doubles',209,'Ale','Siwei','Smash in Su'),
 ('Doubles',209,'Leo','Sandro','Aereo Posteriore'),
 ('Doubles',209,'Siwei','Ale','Altro'),
 ('Doubles',209,'Sandro','Leo','Smash Finale'),
 ('Doubles',209,'Siwei','Sandro','Smash Finale'),
 ('Doubles',209,'Ale','Siwei','Grab'),
 ('Doubles',209,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',209,'Sandro','Leo','Smash Finale'),
 ('Doubles',209,'Ale','Siwei','Smash in Su'),
 ('Doubles',209,'Leo','Sandro','Aereo Posteriore'),
 ('Doubles',209,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',209,'Ale','Autodistruzione'),
 ('Doubles',209,'Ale','Fuoco Amico');


--Doubles-208
insert into kills values ('Doubles',208,'Ale','Siwei','Meteora'),
 ('Doubles',208,'Sandro','Ale','Altro'),
 ('Doubles',208,'Siwei','Leo','Altro'),
 ('Doubles',208,'Siwei','Ale','Altro'),
 ('Doubles',208,'Ale','Siwei','Smash in Su'),
 ('Doubles',208,'Ale','Sandro','Smash Finale'),
 ('Doubles',208,'Leo','Ale','Fuoco Amico'),
 ('Doubles',208,'Siwei','Leo','Smash Finale'),
 ('Doubles',208,'Sandro','Ale','Smash Finale');

insert into deaths values ('Doubles',208,'Ale','Autodistruzione'),
 ('Doubles',208,'Leo','Mancato Recupero'),
 ('Doubles',208,'Ale','Mancato Recupero'),
 ('Doubles',208,'Ale','Fuoco Amico');


--Doubles-207
insert into kills values ('Doubles',207,'Leo','Ale','Speciale in Su'),
 ('Doubles',207,'Siwei','Sandro','Smash in Su'),
 ('Doubles',207,'Sandro','Siwei','Altro'),
 ('Doubles',207,'Ale','Leo','Smash Finale'),
 ('Doubles',207,'Leo','Ale','Aereo in Giù'),
 ('Doubles',207,'Leo','Siwei','Smash Finale'),
 ('Doubles',207,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',207,'Sandro','Siwei','Peculiare'), --PECULIAR: CHARIZARD
 ('Doubles',207,'Ale','Leo','Smash Finale'),
 ('Doubles',207,'Sandro','Ale','Aereo Frontale');

insert into deaths values ('Doubles',207,'Siwei','Autodistruzione');


--Doubles-206
insert into kills values ('Doubles',206,'Siwei','Sandro','Altro'),
 ('Doubles',206,'Ale','Siwei','In Corsa'),
 ('Doubles',206,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',206,'Sandro','Leo','Altro'),
 ('Doubles',206,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',206,'Sandro','Siwei','Altro'),
 ('Doubles',206,'Siwei','Ale','Smash Laterale'),
 ('Doubles',206,'Leo','Sandro','Altro'),
 ('Doubles',206,'Sandro','Leo','Smash Laterale'),
 ('Doubles',206,'Sandro','Siwei','In Corsa');

insert into deaths values ('Doubles',206,'Sandro','Skyworld'),
 ('Doubles',206,'Sandro','Fuoco Amico'),
 ('Doubles',206,'Leo','Autodistruzione'),
 ('Doubles',206,'Leo','Fuoco Amico'),
 ('Doubles',206,'Siwei','Autodistruzione'),
 ('Doubles',206,'Sandro','Skyworld');


--Doubles-205
insert into kills values ('Doubles',205,'Sandro','Ale','Altro'),
 ('Doubles',205,'Leo','Siwei','Altro'),
 ('Doubles',205,'Ale','Leo','Altro'),
 ('Doubles',205,'Leo','Siwei','Altro'),
 ('Doubles',205,'Siwei','Sandro','Smash Finale'),
 ('Doubles',205,'Sandro','Siwei','Altro'),
 ('Doubles',205,'Sandro','Ale','Smash Laterale'),
 ('Doubles',205,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',205,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Doubles',205,'Ale','Autodistruzione'),
 ('Doubles',205,'Siwei','Mancato Recupero'),
 ('Doubles',205,'Leo','Mancato Recupero'),
 ('Doubles',205,'Siwei','Mancato Recupero'),
 ('Doubles',205,'Siwei','Mancato Recupero'),
 ('Doubles',205,'Sandro','Fuoco Amico');


--Doubles-204
insert into kills values ('Doubles',204,'Leo','Siwei','Smash Laterale'),
 ('Doubles',204,'Sandro','Ale','Altro'),
 ('Doubles',204,'Siwei','Leo','Smash Finale'),
 ('Doubles',204,'Leo','Sandro','Smash Finale'),
 ('Doubles',204,'Ale','Siwei','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Doubles',204,'Leo','Ale','Fuoco Amico'),
 ('Doubles',204,'Leo','Sandro','Smash Laterale'),
 ('Doubles',204,'Leo','Siwei','Smash in Su'),
 ('Doubles',204,'Ale','Sandro','Peculiare'); --PECULIAR: LITTLE MAC KO

insert into deaths values ('Doubles',204,'Ale','Autodistruzione'),
 ('Doubles',204,'Ale','Fuoco Amico');


--Single-539
insert into kills values ('Single',539,'Siwei','Leo','In Corsa'),
 ('Single',539,'Leo','Ale','Aereo in Giù'),
 ('Single',539,'Leo','Sandro','Smash Laterale'),
 ('Single',539,'Ale','Sandro','Smash Finale'),
 ('Single',539,'Ale','Siwei','Smash Finale'),
 ('Single',539,'Sandro','Siwei','Altro'),
 ('Single',539,'Leo','Ale','Speciale in Su'),
 ('Single',539,'Ale','Leo','Aereo Posteriore'),
 ('Single',539,'Siwei','Sandro','Smash Laterale'),
 ('Single',539,'Leo','Siwei','Aereo Frontale'),
 ('Single',539,'Leo','Ale','Footstool');

insert into deaths values ('Single',539,'Siwei','Autodistruzione');


--Single-538
insert into kills values ('Single',538,'Leo','Sandro','Altro'),
 ('Single',538,'Sandro','Leo','Speciale in Su'),
 ('Single',538,'Leo','Sandro','Altro'),
 ('Single',538,'Leo','Sandro','Altro'),
 ('Single',538,'Leo','Siwei','Aereo Frontale'),
 ('Single',538,'Siwei','Ale','Smash Finale'),
 ('Single',538,'Ale','Leo','Meteora'),
 ('Single',538,'Leo','Ale','Speciale Standard'),
 ('Single',538,'Ale','Siwei','Smash in Su'),
 ('Single',538,'Ale','Leo','Smash Finale'),
 ('Single',538,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Single',538,'Sandro','Mancato Recupero'),
 ('Single',538,'Sandro','Autodistruzione'),
 ('Single',538,'Sandro','Autodistruzione');


--Single-537
insert into kills values ('Single',537,'Siwei','Sandro','Smash Laterale'),
 ('Single',537,'Ale','Siwei','Aereo Posteriore'),
 ('Single',537,'Leo','Siwei','Speciale Standard'),
 ('Single',537,'Leo','Ale','Speciale Laterale'),
 ('Single',537,'Leo','Siwei','Speciale Laterale'),
 ('Single',537,'Sandro','Leo','Smash Finale'),
 ('Single',537,'Leo','Sandro','Altro'),
 ('Single',537,'Leo','Ale','Smash Finale'),
 ('Single',537,'Sandro','Leo','Smash Laterale'),
 ('Single',537,'Leo','Ale','Speciale Laterale'),
 ('Single',537,'Sandro','Leo','Aereo in Su');

insert into deaths values ('Single',537,'Sandro','Autodistruzione');


--Single-536
insert into kills values ('Single',536,'Sandro','Ale','Altro'),
 ('Single',536,'Siwei','Sandro','Speciale Standard'),
 ('Single',536,'Siwei','Leo','Smash in Su'),
 ('Single',536,'Sandro','Siwei','Smash Finale'),
 ('Single',536,'Sandro','Ale','Aereo in Su'),
 ('Single',536,'Ale','Leo','Meteora'),
 ('Single',536,'Siwei','Sandro','Smash Finale'),
 ('Single',536,'Sandro','Siwei','In Corsa'),
 ('Single',536,'Sandro','Leo','Smash Finale'),
 ('Single',536,'Sandro','Siwei','Smash Laterale'),
 ('Single',536,'Ale','Sandro','Smash in Giù');

insert into deaths values ('Single',536,'Ale','Autodistruzione');


--Single-535
insert into kills values ('Single',535,'Siwei','Sandro','Altro'),
 ('Single',535,'Ale','Siwei','Speciale Standard'),
 ('Single',535,'Leo','Ale','Speciale in Su'),
 ('Single',535,'Siwei','Leo','Aereo Frontale'),
 ('Single',535,'Siwei','Sandro','Altro'),
 ('Single',535,'Ale','Siwei','Altro'),
 ('Single',535,'Ale','Leo','Aereo Posteriore'),
 ('Single',535,'Siwei','Ale','Altro'),
 ('Single',535,'Siwei','Sandro','Speciale Standard'),
 ('Single',535,'Leo','Siwei','Altro'),
 ('Single',535,'Leo','Ale','Speciale in Su');

insert into deaths values ('Single',535,'Sandro','Big Blue'),
 ('Single',535,'Sandro','Big Blue'),
 ('Single',535,'Siwei','Autodistruzione');


--Single-534
insert into kills values ('Single',534,'Sandro','Ale','Altro'),
 ('Single',534,'Ale','Siwei','Altro'),
 ('Single',534,'Sandro','Leo','Aereo Posteriore'),
 ('Single',534,'Sandro','Ale','Altro'),
 ('Single',534,'Leo','Sandro','Speciale in Su'),
 ('Single',534,'Ale','Siwei','Smash Finale'),
 ('Single',534,'Leo','Sandro','Smash Finale'),
 ('Single',534,'Siwei','Leo','Smash Finale'),
 ('Single',534,'Sandro','Ale','Footstool'),
 ('Single',534,'Sandro','Siwei','Smash Laterale'),
 ('Single',534,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',534,'Ale','Mancato Recupero'),
 ('Single',534,'Siwei','Mancato Recupero'),
 ('Single',534,'Ale','Mancato Recupero');


--Single-533
insert into kills values ('Single',533,'Sandro','Ale','Speciale Laterale'),
 ('Single',533,'Siwei','Leo','Speciale in Su'),
 ('Single',533,'Siwei','Sandro','Altro'),
 ('Single',533,'Ale','Siwei','Smash Finale'),
 ('Single',533,'Ale','Leo','Smash Finale'),
 ('Single',533,'Siwei','Ale','Smash Finale'),
 ('Single',533,'Ale','Siwei','Altro'),
 ('Single',533,'Ale','Sandro','Aereo Frontale'),
 ('Single',533,'Ale','Leo','Speciale Standard'),
 ('Single',533,'Sandro','Siwei','Smash Finale'),
 ('Single',533,'Siwei','Ale','Altro');

insert into deaths values ('Single',533,'Sandro','Mancato Recupero'),
 ('Single',533,'Siwei','Kongo Jungle'),
 ('Single',533,'Ale','Autodistruzione');


--Single-532
insert into kills values ('Single',532,'Ale','Siwei','Smash in Su'),
 ('Single',532,'Ale','Sandro','Aereo in Su'),
 ('Single',532,'Sandro','Siwei','Altro'),
 ('Single',532,'Siwei','Leo','Smash Finale'),
 ('Single',532,'Sandro','Ale','Aereo in Giù'),
 ('Single',532,'Sandro','Siwei','Smash Laterale'),
 ('Single',532,'Ale','Sandro','Aereo Posteriore'),
 ('Single',532,'Leo','Sandro','Smash Laterale'),
 ('Single',532,'Ale','Leo','Speciale in Giù'),
 ('Single',532,'Leo','Ale','Smash Laterale'),
 ('Single',532,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',532,'Siwei','Mute City SNES');


--Single-531
insert into kills values ('Single',531,'Siwei','Leo','Aereo in Su'),
 ('Single',531,'Ale','Siwei','Smash in Su'),
 ('Single',531,'Ale','Sandro','Smash in Su'),
 ('Single',531,'Sandro','Siwei','Smash Finale'),
 ('Single',531,'Leo','Sandro','Smash Finale'),
 ('Single',531,'Leo','Ale','Smash Finale'),
 ('Single',531,'Ale','Leo','Smash in Su'),
 ('Single',531,'Ale','Sandro','Smash Finale'),
 ('Single',531,'Ale','Siwei','Smash Laterale'),
 ('Single',531,'Leo','Ale','Smash Laterale'),
 ('Single',531,'Ale','Leo','Speciale in Giù');


--Single-530
insert into kills values ('Single',530,'Ale','Siwei','Speciale Laterale'),
 ('Single',530,'Siwei','Ale','Altro'),
 ('Single',530,'Sandro','Siwei','Smash Laterale'),
 ('Single',530,'Ale','Leo','Altro'),
 ('Single',530,'Sandro','Ale','Smash in Su'),
 ('Single',530,'Siwei','Sandro','Aereo Frontale'),
 ('Single',530,'Ale','Sandro','Smash Finale'),
 ('Single',530,'Leo','Siwei','Smash Finale'),
 ('Single',530,'Sandro','Leo','Smash Finale'),
 ('Single',530,'Leo','Sandro','Smash Laterale'),
 ('Single',530,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',530,'Ale','Autodistruzione'),
 ('Single',530,'Leo','Mancato Recupero');


--Single-529
insert into kills values ('Single',529,'Ale','Siwei','Aereo Frontale'),
 ('Single',529,'Siwei','Ale','Speciale in Su'),
 ('Single',529,'Siwei','Leo','Speciale Laterale'),
 ('Single',529,'Ale','Sandro','Aereo Frontale'),
 ('Single',529,'Sandro','Leo','Smash Finale'),
 ('Single',529,'Sandro','Ale','Smash Finale'),
 ('Single',529,'Sandro','Siwei','Aereo in Giù'),
 ('Single',529,'Ale','Sandro','Smash Laterale'),
 ('Single',529,'Sandro','Siwei','Altro'),
 ('Single',529,'Sandro','Leo','Aereo in Giù'),
 ('Single',529,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Single',529,'Siwei','Pirate Ship');


--Single-528
insert into kills values ('Single',528,'Ale','Sandro','Speciale Standard'),
 ('Single',528,'Sandro','Siwei','In Corsa'),
 ('Single',528,'Siwei','Sandro','Altro'),
 ('Single',528,'Siwei','Ale','Smash Laterale'),
 ('Single',528,'Sandro','Siwei','Altro'),
 ('Single',528,'Sandro','Leo','Speciale Standard'),
 ('Single',528,'Siwei','Sandro','Smash Finale'),
 ('Single',528,'Leo','Siwei','Aereo Posteriore'),
 ('Single',528,'Ale','Leo','Aereo in Giù'),
 ('Single',528,'Leo','Ale','Smash Finale'),
 ('Single',528,'Ale','Leo','Aereo Standard');

insert into deaths values ('Single',528,'Siwei','Balloon Fight');


--Single-527
insert into kills values ('Single',527,'Sandro','Siwei','Speciale in Giù'),
 ('Single',527,'Ale','Sandro','Smash Laterale'),
 ('Single',527,'Sandro','Ale','Altro'),
 ('Single',527,'Sandro','Siwei','Smash Finale'),
 ('Single',527,'Ale','Leo','Smash Finale'),
 ('Single',527,'Leo','Siwei','Smash Finale'),
 ('Single',527,'Sandro','Ale','Smash Laterale'),
 ('Single',527,'Sandro','Leo','Speciale Laterale'),
 ('Single',527,'Leo','Sandro','Altro'),
 ('Single',527,'Sandro','Leo','Speciale Laterale'),
 ('Single',527,'Sandro','Ale','In Corsa');

insert into deaths values ('Single',527,'Ale','Corneria');


--Single-526
insert into kills values ('Single',526,'Leo','Siwei','Altro'),
 ('Single',526,'Siwei','Ale','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',526,'Ale','Siwei','Altro'),
 ('Single',526,'Ale','Leo','Smash Laterale'),
 ('Single',526,'Leo','Siwei','Altro'),
 ('Single',526,'Ale','Sandro','Smash in Su'),
 ('Single',526,'Sandro','Leo','Smash Finale'),
 ('Single',526,'Ale','Leo','Smash Laterale'),
 ('Single',526,'Sandro','Ale','Speciale in Su'),
 ('Single',526,'Ale','Sandro','Smash in Su'),
 ('Single',526,'Ale','Sandro','Speciale Standard');

insert into deaths values ('Single',526,'Siwei','Autodistruzione'),
 ('Single',526,'Siwei','Autodistruzione'),
 ('Single',526,'Siwei','Autodistruzione');


--Single-525
insert into kills values ('Single',525,'Sandro','Ale','Speciale Laterale'),
 ('Single',525,'Siwei','Leo','Altro'),
 ('Single',525,'Sandro','Siwei','Speciale in Su'),
 ('Single',525,'Leo','Sandro','Smash Finale'),
 ('Single',525,'Ale','Leo','Smash Finale'),
 ('Single',525,'Sandro','Siwei','Smash Finale'),
 ('Single',525,'Siwei','Ale','Smash in Giù'),
 ('Single',525,'Ale','Sandro','Smash in Su'),
 ('Single',525,'Siwei','Ale','Smash Finale'),
 ('Single',525,'Sandro','Leo','Smash Finale'),
 ('Single',525,'Sandro','Siwei','Smash Finale');


--Single-524
insert into kills values ('Single',524,'Ale','Sandro','Smash in Su'),
 ('Single',524,'Sandro','Ale','Smash Finale'),
 ('Single',524,'Sandro','Siwei','Speciale in Su'),
 ('Single',524,'Ale','Leo','Smash Finale'),
 ('Single',524,'Leo','Sandro','Smash Laterale'),
 ('Single',524,'Leo','Sandro','Smash Finale'),
 ('Single',524,'Ale','Siwei','Speciale Standard'),
 ('Single',524,'Leo','Ale','Smash Laterale'),
 ('Single',524,'Siwei','Leo','Smash in Su'),
 ('Single',524,'Ale','Leo','Smash Finale'),
 ('Single',524,'Siwei','Ale','Speciale Laterale');


--Single-523
insert into kills values ('Single',523,'Siwei','Sandro','Altro'),
 ('Single',523,'Sandro','Siwei','In Corsa'),
 ('Single',523,'Sandro','Ale','Smash Laterale'),
 ('Single',523,'Siwei','Leo','Smash Finale'),
 ('Single',523,'Ale','Siwei','Altro'),
 ('Single',523,'Sandro','Siwei','Smash Finale'),
 ('Single',523,'Leo','Sandro','Speciale in Giù'),
 ('Single',523,'Sandro','Ale','Altro'),
 ('Single',523,'Sandro','Leo','Speciale in Su'),
 ('Single',523,'Ale','Sandro','Aereo Standard'),
 ('Single',523,'Leo','Ale','Scudo Rotto');

insert into deaths values ('Single',523,'Sandro','Mancato Recupero'),
 ('Single',523,'Siwei','Autodistruzione'),
 ('Single',523,'Ale','Gamer'),
 ('Single',523,'Ale','Scudo Rotto');


--Single-522
insert into kills values ('Single',522,'Leo','Siwei','Smash in Su'),
 ('Single',522,'Sandro','Ale','Speciale in Giù'),
 ('Single',522,'Siwei','Leo','Smash Finale'),
 ('Single',522,'Siwei','Sandro','Speciale in Su'),
 ('Single',522,'Sandro','Siwei','Speciale in Giù'),
 ('Single',522,'Sandro','Ale','Smash Finale'),
 ('Single',522,'Siwei','Leo','Speciale in Giù'),
 ('Single',522,'Ale','Sandro','Smash Finale'),
 ('Single',522,'Leo','Ale','Smash in Su'),
 ('Single',522,'Sandro','Siwei','Aereo in Giù'),
 ('Single',522,'Sandro','Leo','Smash in Su');


--Single-521
insert into kills values ('Single',521,'Siwei','Leo','Smash Laterale'),
 ('Single',521,'Ale','Siwei','Speciale Standard'),
 ('Single',521,'Siwei','Ale','Smash Finale'),
 ('Single',521,'Siwei','Sandro','Smash in Su'),
 ('Single',521,'Ale','Siwei','Speciale Standard'),
 ('Single',521,'Leo','Ale','Speciale Standard'),
 ('Single',521,'Sandro','Leo','Smash Finale'),
 ('Single',521,'Siwei','Leo','Altro'),
 ('Single',521,'Siwei','Sandro','Smash Finale'),
 ('Single',521,'Sandro','Siwei','Altro'),
 ('Single',521,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',521,'Leo','Autodistruzione'),
 ('Single',521,'Siwei','Autodistruzione');


--Single-520
insert into kills values ('Single',520,'Sandro','Leo','Smash Laterale'),
 ('Single',520,'Sandro','Siwei','Speciale Standard'),
 ('Single',520,'Siwei','Sandro','Speciale Standard'),
 ('Single',520,'Leo','Ale','Smash Finale'),
 ('Single',520,'Sandro','Siwei','Altro'),
 ('Single',520,'Ale','Leo','Smash Finale'),
 ('Single',520,'Siwei','Ale','Altro'),
 ('Single',520,'Leo','Sandro','Smash in Su'),
 ('Single',520,'Ale','Siwei','In Corsa'),
 ('Single',520,'Ale','Sandro','Smash Finale'),
 ('Single',520,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',520,'Siwei','Autodistruzione');


--Single-519
insert into kills values ('Single',519,'Leo','Sandro','Altro'),
 ('Single',519,'Leo','Siwei','Smash Laterale'),
 ('Single',519,'Siwei','Leo','Altro'),
 ('Single',519,'Siwei','Ale','Speciale Laterale'),
 ('Single',519,'Sandro','Siwei','Speciale in Su'),
 ('Single',519,'Ale','Sandro','Smash in Giù'),
 ('Single',519,'Siwei','Leo','Smash in Giù'),
 ('Single',519,'Sandro','Ale','Aereo Frontale'),
 ('Single',519,'Siwei','Leo','Smash Finale'),
 ('Single',519,'Ale','Sandro','Smash Finale'),
 ('Single',519,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Single',519,'Sandro','Autodistruzione');


--Single-518
insert into kills values ('Single',518,'Ale','Leo','Smash Laterale'),
 ('Single',518,'Ale','Siwei','Aereo in Giù'),
 ('Single',518,'Leo','Sandro','Smash Finale'),
 ('Single',518,'Sandro','Ale','Smash Finale'),
 ('Single',518,'Siwei','Sandro','Altro'),
 ('Single',518,'Ale','Siwei','Altro'),
 ('Single',518,'Siwei','Leo','Altro'),
 ('Single',518,'Sandro','Ale','Smash Finale'),
 ('Single',518,'Ale','Leo','Altro'),
 ('Single',518,'Ale','Siwei','Altro'),
 ('Single',518,'Ale','Sandro','Altro');

insert into deaths values ('Single',518,'Siwei','Mancato Recupero'),
 ('Single',518,'Leo','Autodistruzione'),
 ('Single',518,'Siwei','Hyrule Castle'),
 ('Single',518,'Sandro','Hyrule Castle');


--Single-517
insert into kills values ('Single',517,'Leo','Siwei','Smash Laterale'),
 ('Single',517,'Leo','Sandro','Smash Laterale'),
 ('Single',517,'Siwei','Leo','Speciale Standard'),
 ('Single',517,'Leo','Ale','Speciale Standard'),
 ('Single',517,'Siwei','Leo','Smash Laterale'),
 ('Single',517,'Ale','Siwei','Smash Finale'),
 ('Single',517,'Ale','Sandro','Smash Finale'),
 ('Single',517,'Siwei','Ale','Smash Finale'),
 ('Single',517,'Siwei','Leo','Speciale Standard'),
 ('Single',517,'Ale','Siwei','Aereo Frontale'),
 ('Single',517,'Sandro','Ale','Smash Finale');


--Single-516
insert into kills values ('Single',516,'Leo','Siwei','Meteora'),
 ('Single',516,'Siwei','Sandro','Smash Laterale'),
 ('Single',516,'Siwei','Ale','Smash Laterale'),
 ('Single',516,'Siwei','Leo','Altro'),
 ('Single',516,'Sandro','Siwei','Altro'),
 ('Single',516,'Sandro','Leo','Speciale Standard'),
 ('Single',516,'Sandro','Ale','Speciale Standard'),
 ('Single',516,'Sandro','Leo','Speciale Standard'),
 ('Single',516,'Sandro','Ale','In Corsa');

insert into deaths values ('Single',516,'Siwei','Autodistruzione'),
 ('Single',516,'Siwei','Mancato Recupero');


--Single-515
insert into kills values ('Single',515,'Ale','Sandro','Smash in Su'),
 ('Single',515,'Sandro','Leo','Speciale in Giù'),
 ('Single',515,'Sandro','Ale','Speciale in Giù'),
 ('Single',515,'Leo','Siwei','Smash in Giù'),
 ('Single',515,'Sandro','Siwei','Smash Finale'),
 ('Single',515,'Siwei','Sandro','Smash Finale'),
 ('Single',515,'Siwei','Leo','Smash Laterale'),
 ('Single',515,'Leo','Ale','Meteora'),
 ('Single',515,'Sandro','Siwei','Smash Laterale'),
 ('Single',515,'Sandro','Ale','In Corsa'),
 ('Single',515,'Leo','Sandro','Altro');

insert into deaths values ('Single',515,'Sandro','Autodistruzione');


--Single-514
insert into kills values ('Single',514,'Leo','Siwei','Altro'),
 ('Single',514,'Siwei','Ale','In Corsa'),
 ('Single',514,'Siwei','Leo','Smash Laterale'),
 ('Single',514,'Leo','Ale','Smash Finale'),
 ('Single',514,'Leo','Sandro','Smash Laterale'),
 ('Single',514,'Sandro','Siwei','In Corsa'),
 ('Single',514,'Sandro','Leo','Smash Finale'),
 ('Single',514,'Siwei','Ale','Altro'),
 ('Single',514,'Siwei','Sandro','Smash Finale'),
 ('Single',514,'Leo','Siwei','Smash Finale'),
 ('Single',514,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',514,'Siwei','Mancato Recupero'),
 ('Single',514,'Ale','Autodistruzione');


--Single-513
insert into kills values ('Single',513,'Sandro','Ale','In Corsa'),
 ('Single',513,'Ale','Siwei','Smash Laterale'),
 ('Single',513,'Sandro','Leo','In Corsa'),
 ('Single',513,'Siwei','Ale','Smash Laterale'),
 ('Single',513,'Sandro','Siwei','Smash Finale'),
 ('Single',513,'Ale','Sandro','Altro'),
 ('Single',513,'Sandro','Ale','Smash Laterale'),
 ('Single',513,'Siwei','Leo','Peculiare'), --PECULIAR: DIDDY KONG MONKEY KICK
 ('Single',513,'Sandro','Siwei','Smash Laterale'),
 ('Single',513,'Leo','Sandro','Smash Laterale'),
 ('Single',513,'Sandro','Leo','Smash Laterale');


--Single-512
insert into kills values ('Single',512,'Siwei','Leo','Smash in Su'),
 ('Single',512,'Leo','Siwei','Speciale in Su'),
 ('Single',512,'Ale','Sandro','Smash in Su'),
 ('Single',512,'Siwei','Ale','Smash Laterale'),
 ('Single',512,'Siwei','Ale','Altro'),
 ('Single',512,'Leo','Sandro','Smash Laterale'),
 ('Single',512,'Sandro','Leo','Altro'),
 ('Single',512,'Leo','Ale','Altro'),
 ('Single',512,'Leo','Sandro','Altro'),
 ('Single',512,'Leo','Siwei','Smash Laterale'),
 ('Single',512,'Siwei','Leo','Smash Finale');

insert into deaths values ('Single',512,'Ale','Autodistruzione'),
 ('Single',512,'Leo','Saffron City'),
 ('Single',512,'Sandro','Autodistruzione');


--Single-511
insert into kills values ('Single',511,'Siwei','Ale','Altro'),
 ('Single',511,'Leo','Siwei','Speciale Laterale'),
 ('Single',511,'Siwei','Leo','Speciale in Su'),
 ('Single',511,'Siwei','Sandro','Smash Finale'),
 ('Single',511,'Sandro','Siwei','Altro'),
 ('Single',511,'Sandro','Leo','Smash Finale'),
 ('Single',511,'Siwei','Ale','Altro'),
 ('Single',511,'Sandro','Siwei','Speciale in Giù'),
 ('Single',511,'Ale','Sandro','Smash Laterale'),
 ('Single',511,'Ale','Leo','Altro'),
 ('Single',511,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',511,'Ale','Mancato Recupero'),
 ('Single',511,'Ale','Mancato Recupero'),
 ('Single',511,'Leo','Mancato Recupero');


--Single-510
insert into kills values ('Single',510,'Ale','Leo','Smash Laterale'),
 ('Single',510,'Sandro','Siwei','Altro'),
 ('Single',510,'Siwei','Sandro','Smash Laterale'),
 ('Single',510,'Ale','Leo','Altro'),
 ('Single',510,'Sandro','Siwei','Altro'),
 ('Single',510,'Sandro','Ale','Speciale Laterale'),
 ('Single',510,'Siwei','Sandro','Smash Laterale'),
 ('Single',510,'Siwei','Leo','Smash Finale'),
 ('Single',510,'Siwei','Sandro','Altro'),
 ('Single',510,'Ale','Siwei','Altro');

insert into deaths values ('Single',510,'Siwei','Dream Land GB'),
 ('Single',510,'Leo','Mancato Recupero'),
 ('Single',510,'Siwei','Autodistruzione'),
 ('Single',510,'Sandro','Dream Land GB'),
 ('Single',510,'Siwei','Autodistruzione');


--Single-509
insert into kills values ('Single',509,'Leo','Siwei','Footstool'),
 ('Single',509,'Ale','Sandro','Smash Laterale'),
 ('Single',509,'Leo','Ale','Speciale Laterale'),
 ('Single',509,'Sandro','Leo','Altro'),
 ('Single',509,'Ale','Siwei','Smash in Su'),
 ('Single',509,'Leo','Sandro','Smash Finale'),
 ('Single',509,'Sandro','Siwei','Speciale Laterale'),
 ('Single',509,'Sandro','Ale','Speciale Laterale'),
 ('Single',509,'Sandro','Leo','Smash Laterale'),
 ('Single',509,'Sandro','Ale','Smash Finale'),
 ('Single',509,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',509,'Leo','Mancato Recupero');


--Single-508
insert into kills values ('Single',508,'Sandro','Siwei','Aereo in Giù'),
 ('Single',508,'Siwei','Leo','Aereo Frontale'),
 ('Single',508,'Leo','Sandro','Altro'),
 ('Single',508,'Leo','Ale','Smash Laterale'),
 ('Single',508,'Leo','Siwei','Altro'),
 ('Single',508,'Siwei','Leo','Altro'),
 ('Single',508,'Siwei','Ale','Altro'),
 ('Single',508,'Siwei','Sandro','Smash Finale'),
 ('Single',508,'Sandro','Siwei','Speciale in Giù'),
 ('Single',508,'Ale','Leo','Smash Finale'),
 ('Single',508,'Sandro','Ale','Aereo in Su');

insert into deaths values ('Single',508,'Siwei','Mancato Recupero'),
 ('Single',508,'Leo','Norfair'),
 ('Single',508,'Ale','Norfair');


--Single-507
insert into kills values ('Single',507,'Ale','Sandro','Meteora'),
 ('Single',507,'Leo','Siwei','Altro'),
 ('Single',507,'Ale','Leo','Altro'),
 ('Single',507,'Sandro','Ale','Speciale Laterale'),
 ('Single',507,'Sandro','Siwei','Smash Finale'),
 ('Single',507,'Leo','Ale','In Corsa'),
 ('Single',507,'Siwei','Sandro','Smash Finale'),
 ('Single',507,'Sandro','Leo','Speciale in Su'),
 ('Single',507,'Leo','Siwei','Altro'),
 ('Single',507,'Sandro','Ale','Speciale Laterale'),
 ('Single',507,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',507,'Siwei','Autodistruzione'),
 ('Single',507,'Leo','Mancato Recupero'),
 ('Single',507,'Siwei','Autodistruzione');


--Single-506
insert into kills values ('Single',506,'Ale','Leo','Smash Laterale'),
 ('Single',506,'Leo','Siwei','Smash Laterale'),
 ('Single',506,'Leo','Sandro','In Corsa'),
 ('Single',506,'Sandro','Ale','Smash Laterale'),
 ('Single',506,'Siwei','Leo','Smash Finale'),
 ('Single',506,'Leo','Siwei','Smash Laterale'),
 ('Single',506,'Sandro','Ale','Aereo in Giù'),
 ('Single',506,'Leo','Sandro','Smash Finale'),
 ('Single',506,'Sandro','Siwei','Aereo Frontale'),
 ('Single',506,'Sandro','Leo','Aereo in Giù'),
 ('Single',506,'Sandro','Ale','Speciale Laterale');


--Single-505
insert into kills values ('Single',505,'Sandro','Leo','Altro'),
 ('Single',505,'Sandro','Siwei','Smash Laterale'),
 ('Single',505,'Leo','Ale','Smash Laterale'),
 ('Single',505,'Leo','Sandro','Smash Finale'),
 ('Single',505,'Leo','Siwei','Smash Laterale'),
 ('Single',505,'Siwei','Ale','Smash Laterale'),
 ('Single',505,'Sandro','Leo','Smash Finale'),
 ('Single',505,'Leo','Sandro','Speciale in Giù'),
 ('Single',505,'Leo','Siwei','In Corsa'),
 ('Single',505,'Leo','Ale','Smash Finale'),
 ('Single',505,'Sandro','Leo','Smash Finale');


--Single-504
insert into kills values ('Single',504,'Ale','Siwei','Smash Laterale'),
 ('Single',504,'Ale','Sandro','Altro'),
 ('Single',504,'Siwei','Leo','Smash Laterale'),
 ('Single',504,'Sandro','Siwei','Smash Finale'),
 ('Single',504,'Sandro','Ale','Smash Finale'),
 ('Single',504,'Leo','Sandro','Smash Finale'),
 ('Single',504,'Sandro','Ale','Aereo Posteriore'),
 ('Single',504,'Sandro','Leo','Speciale Laterale'),
 ('Single',504,'Leo','Siwei','Smash Laterale'),
 ('Single',504,'Sandro','Ale','Smash Finale'),
 ('Single',504,'Leo','Sandro','Aereo in Giù');

insert into deaths values ('Single',504,'Sandro','Autodistruzione');


--Single-503
insert into kills values ('Single',503,'Leo','Siwei','Aereo Frontale'),
 ('Single',503,'Leo','Siwei','Altro'),
 ('Single',503,'Siwei','Leo','Smash in Su'),
 ('Single',503,'Siwei','Ale','Speciale Standard'),
 ('Single',503,'Siwei','Sandro','Speciale Standard'),
 ('Single',503,'Leo','Siwei','Smash Finale'),
 ('Single',503,'Sandro','Leo','Smash Laterale'),
 ('Single',503,'Sandro','Ale','Smash Laterale'),
 ('Single',503,'Ale','Sandro','Altro'),
 ('Single',503,'Leo','Ale','In Corsa'),
 ('Single',503,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',503,'Sandro','Mushroomy Kingdom');


--Single-502
insert into kills values ('Single',502,'Sandro','Siwei','Speciale Laterale'),
 ('Single',502,'Sandro','Leo','Speciale in Giù'),
 ('Single',502,'Siwei','Sandro','Smash in Su'),
 ('Single',502,'Sandro','Ale','Smash Finale'),
 ('Single',502,'Siwei','Sandro','Speciale in Su'),
 ('Single',502,'Ale','Siwei','Smash Finale'),
 ('Single',502,'Sandro','Leo','Aereo in Su'),
 ('Single',502,'Sandro','Ale','Smash Finale'),
 ('Single',502,'Leo','Sandro','Aereo in Su'),
 ('Single',502,'Ale','Siwei','Smash in Su'),
 ('Single',502,'Ale','Leo','Speciale in Giù');


--Single-501
insert into kills values ('Single',501,'Ale','Sandro','Smash Laterale'),
 ('Single',501,'Ale','Leo','Meteora'),
 ('Single',501,'Sandro','Siwei','Aereo in Su'),
 ('Single',501,'Sandro','Leo','Altro'),
 ('Single',501,'Ale','Siwei','Altro'),
 ('Single',501,'Siwei','Ale','Speciale Laterale'),
 ('Single',501,'Siwei','Leo','Smash Finale'),
 ('Single',501,'Ale','Sandro','Altro'),
 ('Single',501,'Sandro','Ale','Smash Laterale'),
 ('Single',501,'Sandro','Siwei','Altro'),
 ('Single',501,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',501,'Leo','Autodistruzione'),
 ('Single',501,'Siwei','Autodistruzione'),
 ('Single',501,'Sandro','Autodistruzione'),
 ('Single',501,'Siwei','Autodistruzione');


--Single-500
insert into kills values ('Single',500,'Ale','Siwei','Aereo Frontale'),
 ('Single',500,'Leo','Sandro','Smash Laterale'),
 ('Single',500,'Siwei','Leo','Speciale Laterale'),
 ('Single',500,'Siwei','Sandro','Speciale Laterale'),
 ('Single',500,'Sandro','Siwei','Altro'),
 ('Single',500,'Leo','Ale','Smash Laterale'),
 ('Single',500,'Sandro','Siwei','Smash Finale'),
 ('Single',500,'Sandro','Ale','Smash Laterale'),
 ('Single',500,'Leo','Sandro','Smash Laterale'),
 ('Single',500,'Ale','Leo','Smash Finale'),
 ('Single',500,'Leo','Ale','In Corsa');

insert into deaths values ('Single',500,'Siwei','Autodistruzione');


--Single-499
insert into kills values ('Single',499,'Ale','Leo','Altro'),
 ('Single',499,'Siwei','Sandro','Speciale Standard'),
 ('Single',499,'Ale','Siwei','Aereo Standard'),
 ('Single',499,'Siwei','Ale','Smash in Su'),
 ('Single',499,'Siwei','Leo','Smash Finale'),
 ('Single',499,'Leo','Sandro','Smash Finale'),
 ('Single',499,'Leo','Siwei','Smash Finale'),
 ('Single',499,'Siwei','Leo','Smash in Su'),
 ('Single',499,'Ale','Sandro','Smash Finale'),
 ('Single',499,'Siwei','Ale','Smash Finale'),
 ('Single',499,'Ale','Siwei','Speciale Laterale');


--Single-498
insert into kills values ('Single',498,'Leo','Siwei','Aereo Frontale'),
 ('Single',498,'Sandro','Ale','Aereo Posteriore'),
 ('Single',498,'Siwei','Sandro','Speciale Laterale'),
 ('Single',498,'Siwei','Leo','Speciale Laterale'),
 ('Single',498,'Siwei','Sandro','Smash Finale'),
 ('Single',498,'Leo','Siwei','Smash Finale'),
 ('Single',498,'Sandro','Ale','Smash Finale'),
 ('Single',498,'Sandro','Siwei','Smash Laterale'),
 ('Single',498,'Ale','Sandro','Peculiare'), --PECULIAR: KIRBY STAR
 ('Single',498,'Ale','Leo','Smash Laterale'),
 ('Single',498,'Leo','Ale','Smash Finale');


--Single-497
insert into kills values ('Single',497,'Leo','Sandro','Altro'),
 ('Single',497,'Siwei','Leo','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',497,'Ale','Siwei','Aereo Posteriore'),
 ('Single',497,'Leo','Ale','Altro'),
 ('Single',497,'Sandro','Siwei','Smash Finale'),
 ('Single',497,'Ale','Sandro','Aereo Standard'),
 ('Single',497,'Leo','Siwei','Smash Finale'),
 ('Single',497,'Ale','Leo','Smash Finale'),
 ('Single',497,'Ale','Sandro','Meteora'),
 ('Single',497,'Leo','Ale','Smash Laterale'),
 ('Single',497,'Ale','Leo','Altro');

insert into deaths values ('Single',497,'Sandro','Mancato Recupero'),
 ('Single',497,'Leo','Autodistruzione');


--Single-496
insert into kills values ('Single',496,'Siwei','Sandro','Speciale Standard'),
 ('Single',496,'Ale','Siwei','Speciale Laterale'),
 ('Single',496,'Siwei','Sandro','Smash Finale'),
 ('Single',496,'Siwei','Ale','Smash Laterale'),
 ('Single',496,'Ale','Leo','Grab'),
 ('Single',496,'Siwei','Leo','Aereo Frontale'),
 ('Single',496,'Siwei','Ale','Aereo Frontale'),
 ('Single',496,'Leo','Siwei','Speciale Standard'),
 ('Single',496,'Leo','Ale','Smash Finale'),
 ('Single',496,'Siwei','Leo','Altro');

insert into deaths values ('Single',496,'Sandro','Autodistruzione'),
 ('Single',496,'Leo','Autodistruzione');

--Single-495
insert into kills values ('Single',495,'Ale','Leo','Peculiare'), --PECULIAR: KIRBY INHALE
 ('Single',495,'Leo','Sandro','Smash Laterale'),
 ('Single',495,'Leo','Sandro','Smash Finale'),
 ('Single',495,'Ale','Siwei','Speciale Standard'),
 ('Single',495,'Siwei','Ale','Speciale Laterale'),
 ('Single',495,'Siwei','Sandro','Smash Finale'),
 ('Single',495,'Siwei','Leo','Smash Finale'),
 ('Single',495,'Ale','Siwei','Smash Finale'),
 ('Single',495,'Ale','Leo','Altro'),
 ('Single',495,'Siwei','Ale','Speciale in Giù'),
 ('Single',495,'Ale','Siwei','Meteora');


--Single-494
insert into kills values ('Single',494,'Sandro','Siwei','Aereo in Su'),
 ('Single',494,'Ale','Leo','Altro'),
 ('Single',494,'Siwei','Sandro','Altro'),
 ('Single',494,'Siwei','Leo','Smash Finale'),
 ('Single',494,'Siwei','Sandro','Smash Finale'),
 ('Single',494,'Leo','Ale','Altro'),
 ('Single',494,'Sandro','Siwei','Smash Laterale'),
 ('Single',494,'Sandro','Leo','Smash Laterale'),
 ('Single',494,'Sandro','Siwei','Aereo Frontale'),
 ('Single',494,'Sandro','Ale','Smash in Su'),
 ('Single',494,'Ale','Sandro','Aereo Standard');

insert into deaths values ('Single',494,'Leo','Mancato Recupero'),
 ('Single',494,'Sandro','Mario Circuit'),
 ('Single',494,'Ale','Autodistruzione');


--Single-493
insert into kills values ('Single',493,'Siwei','Leo','Altro'),
 ('Single',493,'Ale','Sandro','Smash Laterale'),
 ('Single',493,'Ale','Leo','Altro'),
 ('Single',493,'Sandro','Siwei','Aereo in Su'),
 ('Single',493,'Leo','Ale','Altro'),
 ('Single',493,'Ale','Siwei','Smash Laterale'),
 ('Single',493,'Sandro','Ale','Aereo in Su'),
 ('Single',493,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',493,'Leo','Sandro','Altro'),
 ('Single',493,'Sandro','Leo','Smash Finale'),
 ('Single',493,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',493,'Leo','Mancato Recupero'),
 ('Single',493,'Leo','Kongo Jungle'),
 ('Single',493,'Ale','Mancato Recupero'),
 ('Single',493,'Sandro','Autodistruzione');


--Single-492
insert into kills values ('Single',492,'Ale','Leo','Smash Laterale'),
 ('Single',492,'Leo','Siwei','In Corsa'),
 ('Single',492,'Siwei','Ale','Smash in Su'),
 ('Single',492,'Leo','Sandro','Smash in Su'),
 ('Single',492,'Sandro','Siwei','Smash in Su'),
 ('Single',492,'Siwei','Leo','Aereo in Giù'),
 ('Single',492,'Siwei','Sandro','Aereo Frontale'),
 ('Single',492,'Sandro','Siwei','Aereo Frontale'),
 ('Single',492,'Sandro','Ale','Altro'),
 ('Single',492,'Leo','Sandro','Smash Laterale'),
 ('Single',492,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',492,'Ale','Autodistruzione');


--Single-491
insert into kills values ('Single',491,'Siwei','Sandro','Smash in Su'),
 ('Single',491,'Siwei','Ale','Speciale Laterale'),
 ('Single',491,'Leo','Siwei','Altro'),
 ('Single',491,'Sandro','Leo','Aereo Frontale'),
 ('Single',491,'Ale','Sandro','Smash in Su'),
 ('Single',491,'Leo','Ale','Smash Finale'),
 ('Single',491,'Sandro','Siwei','Aereo Frontale'),
 ('Single',491,'Ale','Leo','Altro'),
 ('Single',491,'Siwei','Sandro','Altro'),
 ('Single',491,'Siwei','Leo','Smash in Giù'),
 ('Single',491,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',491,'Siwei','Gamer'),
 ('Single',491,'Leo','Gamer'),
 ('Single',491,'Sandro','Gamer');


--Single-490
insert into kills values ('Single',490,'Ale','Leo','Smash in Su'),
 ('Single',490,'Sandro','Siwei','Smash Laterale'),
 ('Single',490,'Sandro','Siwei','Altro'),
 ('Single',490,'Ale','Leo','Altro'),
 ('Single',490,'Siwei','Sandro','Smash Laterale'),
 ('Single',490,'Leo','Ale','Altro'),
 ('Single',490,'Sandro','Siwei','Aereo in Su'),
 ('Single',490,'Sandro','Leo','Smash Laterale'),
 ('Single',490,'Ale','Sandro','Smash Finale'),
 ('Single',490,'Sandro','Ale','Smash Laterale'),
 ('Single',490,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',490,'Siwei','Autodistruzione'),
 ('Single',490,'Leo','Mancato Recupero'),
 ('Single',490,'Ale','Mancato Recupero');


--Single-489
insert into kills values ('Single',489,'Sandro','Leo','Smash Laterale'),
 ('Single',489,'Leo','Ale','Altro'),
 ('Single',489,'Leo','Sandro','Aereo in Giù'),
 ('Single',489,'Ale','Siwei','Smash Laterale'),
 ('Single',489,'Sandro','Siwei','Smash Finale'),
 ('Single',489,'Siwei','Leo','Smash in Su'),
 ('Single',489,'Siwei','Sandro','Smash in Su'),
 ('Single',489,'Siwei','Ale','Smash in Su'),
 ('Single',489,'Leo','Sandro','Smash Finale'),
 ('Single',489,'Siwei','Leo','Smash Laterale'),
 ('Single',489,'Ale','Siwei','Smash Laterale');


--Single-488
insert into kills values ('Single',488,'Ale','Sandro','Smash Laterale'),
 ('Single',488,'Sandro','Leo','Altro'),
 ('Single',488,'Sandro','Ale','Aereo Posteriore'),
 ('Single',488,'Siwei','Sandro','Speciale Standard'),
 ('Single',488,'Sandro','Siwei','Aereo in Giù'),
 ('Single',488,'Sandro','Ale','Smash Finale'),
 ('Single',488,'Leo','Sandro','Smash Finale'),
 ('Single',488,'Ale','Siwei','Meteora'),
 ('Single',488,'Siwei','Leo','Smash Laterale'),
 ('Single',488,'Leo','Siwei','Speciale in Giù'),
 ('Single',488,'Leo','Ale','Speciale in Giù');

insert into deaths values ('Single',488,'Leo','Mancato Recupero');


--Single-487
insert into kills values ('Single',487,'Leo','Siwei','Smash Laterale'),
 ('Single',487,'Siwei','Leo','Smash Laterale'),
 ('Single',487,'Leo','Sandro','Altro'),
 ('Single',487,'Sandro','Leo','Smash Finale'),
 ('Single',487,'Leo','Ale','Smash Laterale'),
 ('Single',487,'Sandro','Siwei','Altro'),
 ('Single',487,'Leo','Sandro','Speciale in Giù'),
 ('Single',487,'Leo','Ale','Smash Finale'),
 ('Single',487,'Sandro','Siwei','Aereo Frontale'),
 ('Single',487,'Sandro','Leo','Smash Laterale'),
 ('Single',487,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',487,'Sandro','Autodistruzione'),
 ('Single',487,'Siwei','Autodistruzione');


--Single-486
insert into kills values ('Single',486,'Sandro','Leo','Speciale in Su'),
 ('Single',486,'Leo','Siwei','Speciale Standard'),
 ('Single',486,'Siwei','Sandro','Smash in Su'),
 ('Single',486,'Leo','Sandro','Smash Finale'),
 ('Single',486,'Sandro','Ale','Altro'),
 ('Single',486,'Ale','Siwei','Meteora'),
 ('Single',486,'Sandro','Leo','Smash Finale'),
 ('Single',486,'Ale','Sandro','Smash Finale'),
 ('Single',486,'Ale','Siwei','Smash Finale'),
 ('Single',486,'Ale','Leo','Speciale Laterale');

insert into deaths values ('Single',486,'Ale','Mancato Recupero');


--Single-485
insert into kills values ('Single',485,'Ale','Sandro','Aereo Posteriore'),
 ('Single',485,'Leo','Siwei','Speciale in Giù'),
 ('Single',485,'Sandro','Leo','Smash Finale'),
 ('Single',485,'Siwei','Ale','Aereo in Su'),
 ('Single',485,'Leo','Sandro','Smash Laterale'),
 ('Single',485,'Ale','Leo','Smash Finale'),
 ('Single',485,'Ale','Siwei','Smash Finale'),
 ('Single',485,'Leo','Ale','Smash Laterale'),
 ('Single',485,'Ale','Sandro','Smash in Su'),
 ('Single',485,'Leo','Siwei','Smash Laterale'),
 ('Single',485,'Ale','Leo','Smash Laterale');


--Single-484
insert into kills values ('Single',484,'Siwei','Sandro','Speciale Standard'),
 ('Single',484,'Ale','Leo','Meteora'),
 ('Single',484,'Ale','Sandro','Smash in Su'),
 ('Single',484,'Ale','Leo','Altro'),
 ('Single',484,'Ale','Siwei','Speciale Standard'),
 ('Single',484,'Leo','Ale','Altro'),
 ('Single',484,'Siwei','Leo','Smash Finale'),
 ('Single',484,'Sandro','Siwei','Smash in Su'),
 ('Single',484,'Siwei','Sandro','Smash Laterale'),
 ('Single',484,'Siwei','Ale','Smash Laterale'),
 ('Single',484,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',484,'Leo','Dream Land GB'),
 ('Single',484,'Ale','Autodistruzione');


--Single-483
insert into kills values ('Single',483,'Ale','Siwei','Aereo Standard'),
 ('Single',483,'Leo','Sandro','Aereo Posteriore'),
 ('Single',483,'Siwei','Ale','Speciale Laterale'),
 ('Single',483,'Sandro','Leo','Smash Finale'),
 ('Single',483,'Leo','Ale','Smash Laterale'),
 ('Single',483,'Leo','Sandro','Speciale Laterale'),
 ('Single',483,'Ale','Siwei','In Corsa'),
 ('Single',483,'Ale','Leo','Smash Finale'),
 ('Single',483,'Sandro','Siwei','Smash Finale'),
 ('Single',483,'Sandro','Leo','Speciale in Su'),
 ('Single',483,'Sandro','Ale','Smash in Su');


--Single-482
insert into kills values ('Single',482,'Sandro','Siwei','Altro'),
 ('Single',482,'Sandro','Leo','Smash Laterale'),
 ('Single',482,'Siwei','Ale','Speciale in Su'),
 ('Single',482,'Siwei','Leo','Smash Finale'),
 ('Single',482,'Ale','Sandro','In Corsa'),
 ('Single',482,'Sandro','Leo','Smash Laterale'),
 ('Single',482,'Ale','Sandro','Smash Finale'),
 ('Single',482,'Ale','Siwei','Aereo Frontale'),
 ('Single',482,'Sandro','Ale','Aereo in Giù'),
 ('Single',482,'Sandro','Siwei','Smash Finale'),
 ('Single',482,'Ale','Sandro','Aereo Posteriore');

insert into deaths values ('Single',482,'Siwei','Autodistruzione');


--Single-481
insert into kills values ('Single',481,'Siwei','Sandro','Smash in Giù'),
 ('Single',481,'Sandro','Leo','Speciale Standard'),
 ('Single',481,'Siwei','Ale','Speciale Laterale'),
 ('Single',481,'Ale','Leo','Speciale Laterale'),
 ('Single',481,'Sandro','Ale','Smash Laterale'),
 ('Single',481,'Sandro','Siwei','Altro'),
 ('Single',481,'Leo','Sandro','Smash Finale'),
 ('Single',481,'Leo','Siwei','Aereo Posteriore'),
 ('Single',481,'Ale','Leo','Aereo Posteriore'),
 ('Single',481,'Siwei','Sandro','Smash Finale'),
 ('Single',481,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',481,'Siwei','Mancato Recupero');


--Single-480
insert into kills values ('Single',480,'Leo','Sandro','In Corsa'),
 ('Single',480,'Sandro','Siwei','Smash Laterale'),
 ('Single',480,'Siwei','Leo','Altro'),
 ('Single',480,'Sandro','Ale','Altro'),
 ('Single',480,'Sandro','Siwei','Smash Finale'),
 ('Single',480,'Sandro','Leo','Smash Finale'),
 ('Single',480,'Siwei','Sandro','Altro'),
 ('Single',480,'Leo','Ale','Smash Finale'),
 ('Single',480,'Ale','Siwei','Meteora'),
 ('Single',480,'Leo','Sandro','Speciale Laterale'),
 ('Single',480,'Ale','Leo','Smash in Su');

insert into deaths values ('Single',480,'Leo','Mancato Recupero'),
 ('Single',480,'Ale','Mancato Recupero'),
 ('Single',480,'Sandro','Halberd');


--Single-479
insert into kills values ('Single',479,'Sandro','Ale','Speciale in Su'),
 ('Single',479,'Siwei','Leo','Altro'),
 ('Single',479,'Leo','Sandro','In Corsa'),
 ('Single',479,'Sandro','Siwei','Aereo in Giù'),
 ('Single',479,'Siwei','Ale','Altro'),
 ('Single',479,'Siwei','Leo','Smash Finale'),
 ('Single',479,'Leo','Siwei','Speciale Standard'),
 ('Single',479,'Siwei','Ale','Altro'),
 ('Single',479,'Leo','Sandro','Smash Laterale'),
 ('Single',479,'Sandro','Leo','In Corsa'),
 ('Single',479,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Single',479,'Leo','Autodistruzione'),
 ('Single',479,'Ale','Autodistruzione');


--Single-478
insert into kills values ('Single',478,'Siwei','Sandro','Speciale Standard'),
 ('Single',478,'Ale','Siwei','Altro'),
 ('Single',478,'Ale','Sandro','Altro'),
 ('Single',478,'Siwei','Leo','Smash in Su'),
 ('Single',478,'Siwei','Ale','Smash Finale'),
 ('Single',478,'Siwei','Leo','Smash Finale'),
 ('Single',478,'Sandro','Siwei','Smash Finale'),
 ('Single',478,'Ale','Siwei','Altro'),
 ('Single',478,'Leo','Ale','Smash Finale'),
 ('Single',478,'Sandro','Leo','Smash Laterale'),
 ('Single',478,'Sandro','Ale','Altro');

insert into deaths values ('Single',478,'Siwei','3D Land'),
 ('Single',478,'Sandro','3D Land'),
 ('Single',478,'Siwei','Mancato Recupero'),
 ('Single',478,'Ale','Autodistruzione');


--Single-477
insert into kills values ('Single',477,'Siwei','Leo','Altro'),
 ('Single',477,'Sandro','Ale','Aereo in Giù'),
 ('Single',477,'Siwei','Sandro','Smash Laterale'),
 ('Single',477,'Ale','Siwei','Altro'),
 ('Single',477,'Ale','Siwei','Smash Finale'),
 ('Single',477,'Ale','Sandro','Smash Finale'),
 ('Single',477,'Siwei','Leo','Altro'),
 ('Single',477,'Sandro','Ale','Speciale Laterale'),
 ('Single',477,'Sandro','Leo','Altro'),
 ('Single',477,'Siwei','Sandro','Smash in Su'),
 ('Single',477,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Single',477,'Leo','Mancato Recupero'),
 ('Single',477,'Siwei','Mancato Recupero'),
 ('Single',477,'Leo','Autodistruzione'),
 ('Single',477,'Leo','Mancato Recupero');


--Single-476
insert into kills values ('Single',476,'Sandro','Ale','Smash Laterale'),
 ('Single',476,'Leo','Sandro','Smash Laterale'),
 ('Single',476,'Siwei','Leo','Speciale Laterale'),
 ('Single',476,'Ale','Siwei','Altro'),
 ('Single',476,'Siwei','Sandro','Speciale Laterale'),
 ('Single',476,'Sandro','Ale','Altro'),
 ('Single',476,'Sandro','Siwei','Smash Laterale'),
 ('Single',476,'Sandro','Leo','Altro'),
 ('Single',476,'Leo','Sandro','Smash Laterale'),
 ('Single',476,'Siwei','Ale','Speciale Laterale'),
 ('Single',476,'Siwei','Leo','Smash Finale');

insert into deaths values ('Single',476,'Ale','Autodistruzione'),
 ('Single',476,'Leo','Mancato Recupero');


--Single-475
insert into kills values ('Single',475,'Sandro','Siwei','Aereo Frontale'),
 ('Single',475,'Ale','Sandro','Speciale in Giù'),
 ('Single',475,'Leo','Ale','Smash Laterale'),
 ('Single',475,'Sandro','Ale','Smash Finale'),
 ('Single',475,'Leo','Siwei','Smash Laterale'),
 ('Single',475,'Leo','Ale','Smash Finale'),
 ('Single',475,'Sandro','Leo','Aereo Frontale'),
 ('Single',475,'Siwei','Sandro','Smash in Su'),
 ('Single',475,'Siwei','Leo','Speciale in Su'),
 ('Single',475,'Leo','Siwei','Altro'),
 ('Single',475,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',475,'Siwei','Autodistruzione');


--Single-474
insert into kills values ('Single',474,'Leo','Siwei','Smash Laterale'),
 ('Single',474,'Sandro','Leo','Smash Laterale'),
 ('Single',474,'Ale','Sandro','Aereo Posteriore'),
 ('Single',474,'Siwei','Ale','Altro'),
 ('Single',474,'Sandro','Siwei','Smash Finale'),
 ('Single',474,'Sandro','Leo','Smash Laterale'),
 ('Single',474,'Siwei','Sandro','Speciale in Giù'),
 ('Single',474,'Ale','Siwei','Smash Finale'),
 ('Single',474,'Sandro','Ale','Aereo Posteriore'),
 ('Single',474,'Sandro','Leo','Smash Finale'),
 ('Single',474,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',474,'Ale','Mancato Recupero');


--Single-473
insert into kills values ('Single',473,'Ale','Siwei','Speciale in Giù'),
 ('Single',473,'Siwei','Sandro','Altro'),
 ('Single',473,'Siwei','Ale','Smash Finale'),
 ('Single',473,'Ale','Sandro','Smash Finale'),
 ('Single',473,'Ale','Siwei','Speciale in Giù'),
 ('Single',473,'Ale','Leo','Speciale Standard'),
 ('Single',473,'Siwei','Sandro','Speciale Laterale'),
 ('Single',473,'Leo','Siwei','Speciale Standard'),
 ('Single',473,'Leo','Ale','Smash Laterale'),
 ('Single',473,'Ale','Leo','Aereo Posteriore'),
 ('Single',473,'Leo','Ale','Speciale Standard');

insert into deaths values ('Single',473,'Sandro','Mancato Recupero');


--Doubles-203
insert into kills values ('Doubles',203,'Siwei','Leo','Smash Laterale'),
 ('Doubles',203,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',203,'Leo','Ale','Smash Laterale'),
 ('Doubles',203,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',203,'Leo','Siwei','Smash Finale'),
 ('Doubles',203,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',203,'Leo','Ale','Altro'),
 ('Doubles',203,'Leo','Siwei','Altro'),
 ('Doubles',203,'Sandro','Ale','Altro');

insert into deaths values ('Doubles',203,'Sandro','Fuoco Amico'),
 ('Doubles',203,'Ale','Autodistruzione'),
 ('Doubles',203,'Siwei','Autodistruzione'),
 ('Doubles',203,'Ale','Autodistruzione');


--Doubles-202
insert into kills values ('Doubles',202,'Ale','Leo','Altro'),
 ('Doubles',202,'Ale','Siwei','Speciale Standard'),
 ('Doubles',202,'Siwei','Sandro','Smash in Su'),
 ('Doubles',202,'Ale','Leo','Speciale Standard'),
 ('Doubles',202,'Ale','Siwei','Speciale Standard'),
 ('Doubles',202,'Leo','Ale','Altro'),
 ('Doubles',202,'Siwei','Sandro','Peculiare'), --PECULIAR: GANONDORF UP TILT
 ('Doubles',202,'Siwei','Ale','Smash in Su'),
 ('Doubles',202,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',202,'Ale','Siwei','Smash in Su');

insert into deaths values ('Doubles',202,'Leo','Mancato Recupero'),
 ('Doubles',202,'Leo','Fuoco Amico');


--Doubles-201
insert into kills values ('Doubles',201,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',201,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',201,'Sandro','Ale','Smash Laterale'),
 ('Doubles',201,'Siwei','Leo','Speciale in Su'),
 ('Doubles',201,'Ale','Sandro','Altro'),
 ('Doubles',201,'Leo','Siwei','Smash Laterale'),
 ('Doubles',201,'Sandro','Leo','Altro'),
 ('Doubles',201,'Leo','Sandro','Smash Laterale'),
 ('Doubles',201,'Sandro','Ale','Altro'),
 ('Doubles',201,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',201,'Siwei','Fuoco Amico'),
 ('Doubles',201,'Sandro','Autodistruzione'),
 ('Doubles',201,'Leo','Mancato Recupero'),
 ('Doubles',201,'Ale','Autodistruzione');


--Doubles-200
insert into kills values ('Doubles',200,'Ale','Siwei','Smash Laterale'),
 ('Doubles',200,'Siwei','Leo','Speciale in Su'),
 ('Doubles',200,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',200,'Siwei','Ale','Smash Finale'),
 ('Doubles',200,'Ale','Siwei','Smash Finale'),
 ('Doubles',200,'Siwei','Leo','Speciale in Su'),
 ('Doubles',200,'Ale','Sandro','Aereo in Su'),
 ('Doubles',200,'Ale','Siwei','Peculiare'), --PECULIAR: PALUTENA FORWARD SMASH
 ('Doubles',200,'Ale','Sandro','Meteora');

insert into deaths values ('Doubles',200,'Sandro','Fuoco Amico');


--Doubles-199
insert into kills values ('Doubles',199,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',199,'Siwei','Sandro','Smash in Giù'),
 ('Doubles',199,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',199,'Ale','Leo','Smash Laterale'),
 ('Doubles',199,'Sandro','Ale','Altro'),
 ('Doubles',199,'Leo','Siwei','Smash Laterale'),
 ('Doubles',199,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',199,'Siwei','Sandro','Altro'),
 ('Doubles',199,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',199,'Leo','Siwei','Smash in Su'),
 ('Doubles',199,'Leo','Ale','Speciale Standard');

insert into deaths values ('Doubles',199,'Ale','Fuoco Amico'),
 ('Doubles',199,'Ale','Autodistruzione'),
 ('Doubles',199,'Sandro','Autodistruzione');


--Doubles-198
insert into kills values ('Doubles',198,'Sandro','Ale','Altro'),
 ('Doubles',198,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',198,'Leo','Ale','Smash Laterale'),
 ('Doubles',198,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',198,'Leo','Siwei','Smash Laterale'),
 ('Doubles',198,'Ale','Leo','Speciale Laterale'),
 ('Doubles',198,'Siwei','Leo','Smash Finale'),
 ('Doubles',198,'Ale','Sandro','Smash Finale'),
 ('Doubles',198,'Leo','Siwei','Smash Laterale'),
 ('Doubles',198,'Siwei','Leo','Speciale Laterale');

insert into deaths values ('Doubles',198,'Ale','Autodistruzione'),
 ('Doubles',198,'Sandro','Fuoco Amico');


--Doubles-197
insert into kills values ('Doubles',197,'Leo','Siwei','Smash Laterale'),
 ('Doubles',197,'Leo','Sandro','Smash Laterale'),
 ('Doubles',197,'Sandro','Leo','Altro'),
 ('Doubles',197,'Siwei','Ale','Smash Finale'),
 ('Doubles',197,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',197,'Ale','Sandro','Meteora'),
 ('Doubles',197,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',197,'Siwei','Ale','Smash Finale'),
 ('Doubles',197,'Leo','Siwei','Altro'),
 ('Doubles',197,'Sandro','Leo','Smash Laterale'),
 ('Doubles',197,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',197,'Leo','Mancato Recupero'),
 ('Doubles',197,'Siwei','Fuoco Amico'),
 ('Doubles',197,'Siwei','Mancato Recupero');


--Doubles-196
insert into kills values ('Doubles',196,'Ale','Siwei','Altro'),
 ('Doubles',196,'Ale','Sandro','Aereo Standard'),
 ('Doubles',196,'Sandro','Ale','Smash Laterale'),
 ('Doubles',196,'Ale','Siwei','Altro'),
 ('Doubles',196,'Sandro','Leo','Smash Laterale'),
 ('Doubles',196,'Siwei','Ale','Smash Finale'),
 ('Doubles',196,'Leo','Sandro','Smash Finale'),
 ('Doubles',196,'Ale','Siwei','Smash Finale'),
 ('Doubles',196,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',196,'Siwei','Mancato Recupero'),
 ('Doubles',196,'Siwei','Autodistruzione');


--Doubles-195
insert into kills values ('Doubles',195,'Leo','Sandro','Smash Laterale'),
 ('Doubles',195,'Sandro','Siwei','Smash in Su'),
 ('Doubles',195,'Leo','Ale','Altro'),
 ('Doubles',195,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',195,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',195,'Leo','Ale','Smash Finale'),
 ('Doubles',195,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',195,'Ale','Siwei','Altro'),
 ('Doubles',195,'Ale','Leo','Smash Finale'),
 ('Doubles',195,'Sandro','Ale','Fuoco Amico');

insert into deaths values ('Doubles',195,'Ale','Mancato Recupero'),
 ('Doubles',195,'Sandro','Fuoco Amico'),
 ('Doubles',195,'Siwei','Mancato Recupero'),
 ('Doubles',195,'Ale','Fuoco Amico');


--Doubles-194
insert into kills values ('Doubles',194,'Siwei','Leo','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Doubles',194,'Leo','Sandro','Smash Laterale'),
 ('Doubles',194,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',194,'Sandro','Ale','Smash Finale'),
 ('Doubles',194,'Siwei','Leo','Smash Finale'),
 ('Doubles',194,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',194,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',194,'Leo','Sandro','Smash Finale'),
 ('Doubles',194,'Ale','Siwei','Speciale Standard');

insert into deaths values ('Doubles',194,'Siwei','Fuoco Amico'),
 ('Doubles',194,'Sandro','Fuoco Amico');


--Doubles-193
insert into kills values ('Doubles',193,'Sandro','Leo','Altro'),
 ('Doubles',193,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',193,'Leo','Sandro','Smash Finale'),
 ('Doubles',193,'Sandro','Ale','Smash Finale'),
 ('Doubles',193,'Ale','Siwei','Smash Laterale'),
 ('Doubles',193,'Siwei','Leo','Aereo in Su'),
 ('Doubles',193,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',193,'Sandro','Ale','Smash in Su'),
 ('Doubles',193,'Ale','Siwei','Altro'),
 ('Doubles',193,'Ale','Sandro','Altro');

insert into deaths values ('Doubles',193,'Leo','Jungle Japes'),
 ('Doubles',193,'Leo','Jungle Japes'),
 ('Doubles',193,'Siwei','Fuoco Amico'),
 ('Doubles',193,'Sandro','Fuoco Amico'),
 ('Doubles',193,'Siwei','Jungle Japes'),
 ('Doubles',193,'Sandro','Jungle Japes');


--Doubles-192
insert into kills values ('Doubles',192,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',192,'Ale','Siwei','Altro'),
 ('Doubles',192,'Leo','Sandro','Meteora'),
 ('Doubles',192,'Sandro','Leo','Altro'),
 ('Doubles',192,'Ale','Siwei','Altro'),
 ('Doubles',192,'Sandro','Leo','Smash Finale'),
 ('Doubles',192,'Siwei','Sandro','Smash Finale'),
 ('Doubles',192,'Leo','Ale','Smash Finale'),
 ('Doubles',192,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',192,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',192,'Ale','Fuoco Amico'),
 ('Doubles',192,'Siwei','Mancato Recupero'),
 ('Doubles',192,'Leo','Autodistruzione'),
 ('Doubles',192,'Siwei','Fuoco Amico');


--Doubles-191
insert into kills values ('Doubles',191,'Ale','Leo','Fuoco Amico'),
 ('Doubles',191,'Ale','Sandro','Smash in Su'),
 ('Doubles',191,'Sandro','Ale','Altro'),
 ('Doubles',191,'Sandro','Leo','Smash Laterale'),
 ('Doubles',191,'Ale','Siwei','Smash Finale'),
 ('Doubles',191,'Sandro','Leo','Speciale Standard'),
 ('Doubles',191,'Sandro','Ale','Smash Finale'),
 ('Doubles',191,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',191,'Ale','Sandro','Peculiare'), --PECULIAR: CHARIZARD
 ('Doubles',191,'Siwei','Ale','Altro');

insert into deaths values ('Doubles',191,'Leo','Fuoco Amico'),
 ('Doubles',191,'Ale','Autodistruzione'),
 ('Doubles',191,'Siwei','Fuoco Amico');


--Doubles-190
insert into kills values ('Doubles',190,'Leo','Siwei','Smash Laterale'),
 ('Doubles',190,'Siwei','Leo','Altro'),
 ('Doubles',190,'Leo','Sandro','Smash Finale'),
 ('Doubles',190,'Ale','Siwei','Altro'),
 ('Doubles',190,'Leo','Sandro','Altro'),
 ('Doubles',190,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',190,'Siwei','Ale','Smash in Su'),
 ('Doubles',190,'Leo','Siwei','Altro'),
 ('Doubles',190,'Sandro','Ale','Smash in Su'),
 ('Doubles',190,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Doubles',190,'Leo','Garden of Hope'),
 ('Doubles',190,'Siwei','Autodistruzione'),
 ('Doubles',190,'Sandro','Autodistruzione'),
 ('Doubles',190,'Siwei','Mancato Recupero');


--Doubles-189
insert into kills values ('Doubles',189,'Leo','Sandro','Smash Laterale'),
 ('Doubles',189,'Ale','Leo','Speciale Standard'),
 ('Doubles',189,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',189,'Leo','Ale','Smash Laterale'),
 ('Doubles',189,'Leo','Sandro','Smash Finale'),
 ('Doubles',189,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',189,'Sandro','Siwei','Smash Finale'),
 ('Doubles',189,'Sandro','Siwei','Speciale in Giù'),
 ('Doubles',189,'Ale','Leo','Smash Finale');

insert into deaths values ('Doubles',189,'Siwei','Fuoco Amico'),
 ('Doubles',189,'Leo','Fuoco Amico');


--Doubles-188
insert into kills values ('Doubles',188,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',188,'Ale','Siwei','Meteora'),
 ('Doubles',188,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',188,'Leo','Ale','Speciale Laterale'),
 ('Doubles',188,'Siwei','Sandro','Smash Finale'),
 ('Doubles',188,'Ale','Leo','Altro'),
 ('Doubles',188,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',188,'Ale','Leo','Smash Finale'),
 ('Doubles',188,'Siwei','Sandro','Smash in Su'),
 ('Doubles',188,'Siwei','Ale','Altro'),
 ('Doubles',188,'Ale','Siwei','Altro');

insert into deaths values ('Doubles',188,'Leo','Fuoco Amico'),
 ('Doubles',188,'Siwei','Mancato Recupero');


--Doubles-187
insert into kills values ('Doubles',187,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',187,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',187,'Sandro','Siwei','Altro'),
 ('Doubles',187,'Sandro','Siwei','Altro'),
 ('Doubles',187,'Sandro','Leo','Smash Finale'),
 ('Doubles',187,'Siwei','Sandro','Smash in Su'),
 ('Doubles',187,'Ale','Siwei','Smash Finale'),
 ('Doubles',187,'Sandro','Leo','Smash Finale'),
 ('Doubles',187,'Siwei','Ale','Smash in Su'),
 ('Doubles',187,'Siwei','Sandro','Smash Finale'),
 ('Doubles',187,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Doubles',187,'Siwei','Autodistruzione'),
 ('Doubles',187,'Siwei','Mancato Recupero');


--Doubles-186
insert into kills values ('Doubles',186,'Sandro','Ale','Smash Laterale'),
 ('Doubles',186,'Sandro','Siwei','Smash Finale'),
 ('Doubles',186,'Ale','Sandro','Smash in Su'),
 ('Doubles',186,'Siwei','Leo','Speciale in Su'),
 ('Doubles',186,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',186,'Siwei','Sandro','Smash Finale'),
 ('Doubles',186,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',186,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',186,'Sandro','Ale','Aereo Frontale'),
 ('Doubles',186,'Ale','Sandro','Smash in Su'),
 ('Doubles',186,'Leo','Ale','Peculiare'); --PECULIAR: JOKER END SCREEN

insert into deaths values ('Doubles',186,'Leo','Fuoco Amico');


--Doubles-185
insert into kills values ('Doubles',185,'Ale','Leo','Smash in Su'),
 ('Doubles',185,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',185,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',185,'Siwei','Sandro','Smash Finale'),
 ('Doubles',185,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',185,'Ale','Sandro','Smash Finale'),
 ('Doubles',185,'Leo','Siwei','Speciale in Giù'),
 ('Doubles',185,'Ale','Leo','Speciale Laterale');

insert into deaths values ('Doubles',185,'Sandro','Fuoco Amico'),
 ('Doubles',185,'Sandro','Fuoco Amico');


--Doubles-184
insert into kills values ('Doubles',184,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',184,'Sandro','Leo','Smash Laterale'),
 ('Doubles',184,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',184,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',184,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',184,'Sandro','Leo','Altro'),
 ('Doubles',184,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',184,'Sandro','Leo','Speciale Laterale');

insert into deaths values ('Doubles',184,'Ale','Fuoco Amico'),
 ('Doubles',184,'Leo','Autodistruzione');


--Doubles-183
insert into kills values ('Doubles',183,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',183,'Siwei','Ale','Smash Laterale'),
 ('Doubles',183,'Sandro','Leo','Smash Laterale'),
 ('Doubles',183,'Leo','Sandro','Grab'),
 ('Doubles',183,'Ale','Siwei','Smash in Su'),
 ('Doubles',183,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',183,'Siwei','Ale','Smash in Su'),
 ('Doubles',183,'Ale','Siwei','Speciale Standard'),
 ('Doubles',183,'Ale','Leo','Fuoco Amico'),
 ('Doubles',183,'Sandro','Ale','Smash Laterale'),
 ('Doubles',183,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',183,'Siwei','Fuoco Amico'),
 ('Doubles',183,'Sandro','Fuoco Amico'),
 ('Doubles',183,'Leo','Fuoco Amico'),
 ('Doubles',183,'Sandro','Mute City SNES');


--Doubles-182
insert into kills values ('Doubles',182,'Siwei','Sandro','Smash in Su'),
 ('Doubles',182,'Ale','Sandro','Speciale Standard'),
 ('Doubles',182,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',182,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',182,'Siwei','Leo','In Corsa'),
 ('Doubles',182,'Siwei','Sandro','Smash in Su'),
 ('Doubles',182,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',182,'Siwei','Leo','Smash Finale'),
 ('Doubles',182,'Sandro','Ale','Smash Laterale'),
 ('Doubles',182,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Doubles',182,'Ale','Fuoco Amico');


--Single-472
insert into kills values ('Single',472,'Ale','Siwei','Speciale Standard'),
 ('Single',472,'Ale','Sandro','Grab'),
 ('Single',472,'Sandro','Leo','Smash Finale'),
 ('Single',472,'Siwei','Ale','Smash Finale'),
 ('Single',472,'Ale','Sandro','Smash Finale'),
 ('Single',472,'Siwei','Ale','In Corsa'),
 ('Single',472,'Ale','Siwei','Speciale Standard'),
 ('Single',472,'Sandro','Siwei','Smash Finale'),
 ('Single',472,'Sandro','Leo','Altro'),
 ('Single',472,'Ale','Sandro','Smash Finale'),
 ('Single',472,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',472,'Leo','Autodistruzione');


--Single-471
insert into kills values ('Single',471,'Sandro','Leo','Speciale in Giù'),
 ('Single',471,'Sandro','Siwei','Smash in Su'),
 ('Single',471,'Ale','Sandro','Smash in Su'),
 ('Single',471,'Siwei','Ale','Smash Finale'),
 ('Single',471,'Ale','Leo','Speciale in Su'),
 ('Single',471,'Sandro','Siwei','Smash Finale'),
 ('Single',471,'Sandro','Ale','Aereo in Giù'),
 ('Single',471,'Ale','Sandro','Smash Finale'),
 ('Single',471,'Sandro','Ale','Smash Finale'),
 ('Single',471,'Sandro','Siwei','Smash in Su'),
 ('Single',471,'Leo','Sandro','Smash Finale');


--Single-470
insert into kills values ('Single',470,'Sandro','Siwei','Smash in Su'),
 ('Single',470,'Siwei','Ale','Aereo Frontale'),
 ('Single',470,'Ale','Leo','Smash Finale'),
 ('Single',470,'Ale','Siwei','Smash Finale'),
 ('Single',470,'Siwei','Sandro','Smash Finale'),
 ('Single',470,'Sandro','Ale','Speciale Laterale'),
 ('Single',470,'Sandro','Leo','Smash Finale'),
 ('Single',470,'Sandro','Siwei','Aereo in Giù'),
 ('Single',470,'Ale','Sandro','Aereo Standard'),
 ('Single',470,'Sandro','Ale','Aereo in Giù'),
 ('Single',470,'Sandro','Leo','Smash Laterale');


--Single-469
insert into kills values ('Single',469,'Leo','Siwei','Smash Laterale'),
 ('Single',469,'Ale','Sandro','Altro'),
 ('Single',469,'Ale','Leo','Aereo Standard'),
 ('Single',469,'Siwei','Ale','Altro'),
 ('Single',469,'Leo','Ale','Meteora'),
 ('Single',469,'Leo','Siwei','Smash Finale'),
 ('Single',469,'Ale','Leo','Speciale Standard'),
 ('Single',469,'Sandro','Siwei','Smash Finale'),
 ('Single',469,'Ale','Leo','Altro'),
 ('Single',469,'Ale','Sandro','Speciale in Giù'),
 ('Single',469,'Sandro','Ale','Altro');

insert into deaths values ('Single',469,'Sandro','Mancato Recupero'),
 ('Single',469,'Ale','Mancato Recupero'),
 ('Single',469,'Leo','Mancato Recupero'),
 ('Single',469,'Ale','Autodistruzione');


--Single-468
insert into kills values ('Single',468,'Sandro','Siwei','Smash in Su'),
 ('Single',468,'Siwei','Ale','Speciale in Su'),
 ('Single',468,'Siwei','Sandro','Smash Finale'),
 ('Single',468,'Ale','Siwei','Speciale Laterale'),
 ('Single',468,'Siwei','Leo','Speciale in Su'),
 ('Single',468,'Leo','Ale','Smash Laterale'),
 ('Single',468,'Ale','Siwei','Smash Finale'),
 ('Single',468,'Ale','Leo','Smash Finale'),
 ('Single',468,'Ale','Sandro','Speciale Laterale'),
 ('Single',468,'Sandro','Ale','Altro'),
 ('Single',468,'Sandro','Leo','Smash Finale');


--Single-467
insert into kills values ('Single',467,'Leo','Siwei','Speciale in Su'),
 ('Single',467,'Ale','Sandro','Aereo in Su'),
 ('Single',467,'Sandro','Ale','Aereo in Su'),
 ('Single',467,'Ale','Siwei','Smash Finale'),
 ('Single',467,'Sandro','Leo','Smash Finale'),
 ('Single',467,'Siwei','Sandro','Smash Finale'),
 ('Single',467,'Ale','Leo','Meteora'),
 ('Single',467,'Siwei','Ale','Speciale in Su'),
 ('Single',467,'Leo','Sandro','Smash Finale'),
 ('Single',467,'Leo','Siwei','Smash Finale'),
 ('Single',467,'Ale','Leo','Speciale Standard');


--Single-466
insert into kills values ('Single',466,'Ale','Leo','Altro'),
 ('Single',466,'Sandro','Siwei','Aereo in Su'),
 ('Single',466,'Ale','Sandro','Altro'),
 ('Single',466,'Siwei','Leo','Speciale in Su'),
 ('Single',466,'Sandro','Ale','Smash Finale'),
 ('Single',466,'Ale','Siwei','Smash Finale'),
 ('Single',466,'Ale','Sandro','Aereo Frontale'),
 ('Single',466,'Siwei','Ale','Speciale in Su'),
 ('Single',466,'Siwei','Leo','Speciale in Su'),
 ('Single',466,'Ale','Sandro','In Corsa'),
 ('Single',466,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Single',466,'Leo','Mancato Recupero'),
 ('Single',466,'Sandro','Autodistruzione');


--Single-465
insert into kills values ('Single',465,'Sandro','Siwei','Speciale Laterale'),
 ('Single',465,'Ale','Leo','Aereo Frontale'),
 ('Single',465,'Siwei','Sandro','Speciale in Su'),
 ('Single',465,'Sandro','Siwei','Aereo in Giù'),
 ('Single',465,'Sandro','Ale','Smash Finale'),
 ('Single',465,'Sandro','Leo','Smash Laterale'),
 ('Single',465,'Ale','Sandro','Aereo Frontale'),
 ('Single',465,'Leo','Ale','Smash Laterale'),
 ('Single',465,'Ale','Sandro','Altro'),
 ('Single',465,'Leo','Ale','Altro');

insert into deaths values ('Single',465,'Siwei','Autodistruzione'),
 ('Single',465,'Sandro','Mancato Recupero');


--Single-464
insert into kills values ('Single',464,'Siwei','Ale','Speciale Laterale'),
 ('Single',464,'Ale','Leo','Altro'),
 ('Single',464,'Leo','Siwei','Speciale in Giù'),
 ('Single',464,'Ale','Sandro','Smash in Su'),
 ('Single',464,'Sandro','Leo','Smash Finale'),
 ('Single',464,'Sandro','Siwei','Altro'),
 ('Single',464,'Sandro','Ale','Speciale in Su'),
 ('Single',464,'Leo','Sandro','Smash Finale'),
 ('Single',464,'Sandro','Leo','Aereo in Giù'),
 ('Single',464,'Sandro','Siwei','Smash Laterale'),
 ('Single',464,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',464,'Siwei','Summit');


--Single-463
insert into kills values ('Single',463,'Leo','Ale','Speciale in Su'),
 ('Single',463,'Leo','Sandro','Speciale in Giù'),
 ('Single',463,'Siwei','Ale','Altro'),
 ('Single',463,'Ale','Siwei','Smash in Su'),
 ('Single',463,'Siwei','Leo','Smash Finale'),
 ('Single',463,'Leo','Sandro','Smash in Su'),
 ('Single',463,'Ale','Siwei','Aereo Frontale'),
 ('Single',463,'Ale','Leo','Altro'),
 ('Single',463,'Ale','Sandro','Altro'),
 ('Single',463,'Leo','Siwei','Smash Finale'),
 ('Single',463,'Ale','Leo','Speciale Standard');

insert into deaths values ('Single',463,'Ale','Autodistruzione'),
 ('Single',463,'Leo','Autodistruzione'),
 ('Single',463,'Sandro','Mancato Recupero');


--Single-462
insert into kills values ('Single',462,'Siwei','Sandro','Smash Laterale'),
 ('Single',462,'Sandro','Siwei','Speciale Laterale'),
 ('Single',462,'Leo','Siwei','Peculiare'), --PECULIAR: CHARIZARD
 ('Single',462,'Siwei','Leo','Smash in Su'),
 ('Single',462,'Leo','Sandro','Smash Finale'),
 ('Single',462,'Leo','Siwei','Smash Finale'),
 ('Single',462,'Leo','Ale','Smash Finale'),
 ('Single',462,'Ale','Leo','Smash Finale'),
 ('Single',462,'Leo','Sandro','Speciale in Su'),
 ('Single',462,'Leo','Ale','Smash Finale'),
 ('Single',462,'Ale','Leo','Aereo Frontale');


--Single-461
insert into kills values ('Single',461,'Sandro','Siwei','Speciale Laterale'),
 ('Single',461,'Sandro','Ale','Speciale Laterale'),
 ('Single',461,'Siwei','Leo','Smash Laterale'),
 ('Single',461,'Ale','Sandro','Smash in Su'),
 ('Single',461,'Sandro','Siwei','Smash Finale'),
 ('Single',461,'Leo','Ale','Aereo Frontale'),
 ('Single',461,'Leo','Sandro','Speciale in Giù'),
 ('Single',461,'Sandro','Leo','Speciale Laterale'),
 ('Single',461,'Siwei','Ale','Smash Laterale'),
 ('Single',461,'Siwei','Leo','Smash Finale'),
 ('Single',461,'Siwei','Sandro','Smash Finale');


--Single-460
insert into kills values ('Single',460,'Ale','Siwei','Smash Laterale'),
 ('Single',460,'Ale','Sandro','Smash Laterale'),
 ('Single',460,'Leo','Siwei','Speciale in Giù'),
 ('Single',460,'Siwei','Leo','Speciale Standard'),
 ('Single',460,'Siwei','Ale','Smash in Su'),
 ('Single',460,'Ale','Siwei','Aereo Frontale'),
 ('Single',460,'Ale','Sandro','Speciale Standard'),
 ('Single',460,'Ale','Leo','Smash Finale'),
 ('Single',460,'Leo','Ale','Aereo Posteriore'),
 ('Single',460,'Ale','Leo','Altro'),
 ('Single',460,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Single',460,'Leo','Kalos Pokemon League');


--Single-459
insert into kills values ('Single',459,'Ale','Leo','Aereo Posteriore'),
 ('Single',459,'Ale','Siwei','Aereo Frontale'),
 ('Single',459,'Sandro','Ale','Speciale in Su'),
 ('Single',459,'Siwei','Leo','Smash Finale'),
 ('Single',459,'Siwei','Sandro','Smash in Su'),
 ('Single',459,'Siwei','Sandro','Smash in Su'),
 ('Single',459,'Sandro','Siwei','Smash Laterale'),
 ('Single',459,'Siwei','Ale','In Corsa'),
 ('Single',459,'Siwei','Leo','Smash Laterale'),
 ('Single',459,'Siwei','Sandro','Smash Finale'),
 ('Single',459,'Ale','Siwei','Speciale in Giù');


--Single-458
insert into kills values ('Single',458,'Ale','Sandro','Altro'),
 ('Single',458,'Ale','Leo','Smash Laterale'),
 ('Single',458,'Siwei','Ale','Speciale Standard'),
 ('Single',458,'Ale','Siwei','Smash Laterale'),
 ('Single',458,'Leo','Siwei','Speciale in Su'),
 ('Single',458,'Siwei','Sandro','Smash Laterale'),
 ('Single',458,'Sandro','Siwei','Smash Finale'),
 ('Single',458,'Sandro','Leo','Speciale in Su'),
 ('Single',458,'Sandro','Ale','Speciale in Su'),
 ('Single',458,'Ale','Sandro','In Corsa'),
 ('Single',458,'Ale','Leo','Aereo Frontale');

insert into deaths values ('Single',458,'Sandro','Autodistruzione');


--Single-457
insert into kills values ('Single',457,'Siwei','Ale','Altro'),
 ('Single',457,'Sandro','Siwei','Altro'),
 ('Single',457,'Siwei','Sandro','Smash in Su'),
 ('Single',457,'Leo','Siwei','Smash Finale'),
 ('Single',457,'Sandro','Leo','Aereo in Giù'),
 ('Single',457,'Ale','Leo','Smash Finale'),
 ('Single',457,'Ale','Sandro','Smash Finale'),
 ('Single',457,'Leo','Ale','Speciale in Su'),
 ('Single',457,'Ale','Sandro','Aereo Frontale'),
 ('Single',457,'Ale','Siwei','Aereo in Su'),
 ('Single',457,'Leo','Ale','Speciale in Su');

insert into deaths values ('Single',457,'Siwei','Mancato Recupero');


--Single-456
insert into kills values ('Single',456,'Leo','Sandro','Aereo in Giù'),
 ('Single',456,'Sandro','Siwei','Aereo in Su'),
 ('Single',456,'Sandro','Siwei','Smash Finale'),
 ('Single',456,'Sandro','Ale','Smash Finale'),
 ('Single',456,'Sandro','Leo','Aereo in Giù'),
 ('Single',456,'Ale','Sandro','Smash Finale'),
 ('Single',456,'Sandro','Siwei','Speciale Standard'),
 ('Single',456,'Leo','Ale','Smash Finale'),
 ('Single',456,'Sandro','Leo','Smash in Su'),
 ('Single',456,'Leo','Sandro','Aereo in Giù'),
 ('Single',456,'Ale','Leo','Smash Finale');


--Single-455
insert into kills values ('Single',455,'Siwei','Leo','Smash in Su'),
 ('Single',455,'Siwei','Ale','Smash Laterale'),
 ('Single',455,'Siwei','Sandro','Altro'),
 ('Single',455,'Siwei','Sandro','Altro'),
 ('Single',455,'Sandro','Siwei','Aereo in Su'),
 ('Single',455,'Ale','Leo','Smash Finale'),
 ('Single',455,'Ale','Sandro','Smash Finale'),
 ('Single',455,'Leo','Ale','Smash Laterale'),
 ('Single',455,'Siwei','Leo','Smash in Su'),
 ('Single',455,'Siwei','Ale','Altro');

insert into deaths values ('Single',455,'Sandro','Autodistruzione'),
 ('Single',455,'Sandro','Autodistruzione'),
 ('Single',455,'Ale','Mancato Recupero');


--Single-454
insert into kills values ('Single',454,'Leo','Sandro','Altro'),
 ('Single',454,'Sandro','Siwei','Speciale Standard'),
 ('Single',454,'Ale','Leo','Smash in Su'),
 ('Single',454,'Leo','Siwei','Smash Finale'),
 ('Single',454,'Ale','Sandro','Smash Finale'),
 ('Single',454,'Leo','Ale','In Corsa'),
 ('Single',454,'Sandro','Siwei','Smash Laterale'),
 ('Single',454,'Leo','Sandro','Altro'),
 ('Single',454,'Ale','Leo','Speciale Laterale'),
 ('Single',454,'Leo','Ale','Smash Finale'),
 ('Single',454,'Leo','Ale','Smash in Giù');

insert into deaths values ('Single',454,'Sandro','Mancato Recupero'),
 ('Single',454,'Sandro','Autodistruzione');


--Single-453
insert into kills values ('Single',453,'Siwei','Leo','Aereo in Su'),
 ('Single',453,'Ale','Siwei','Smash in Su'),
 ('Single',453,'Siwei','Ale','Altro'),
 ('Single',453,'Siwei','Leo','Smash Laterale'),
 ('Single',453,'Ale','Sandro','Smash in Su'),
 ('Single',453,'Ale','Siwei','Smash Finale'),
 ('Single',453,'Sandro','Leo','Smash Laterale'),
 ('Single',453,'Sandro','Siwei','Smash Laterale'),
 ('Single',453,'Sandro','Ale','Smash in Su'),
 ('Single',453,'Ale','Sandro','Smash in Su'),
 ('Single',453,'Sandro','Ale','Smash Laterale');


--Single-452
insert into kills values ('Single',452,'Ale','Siwei','Altro'),
 ('Single',452,'Sandro','Leo','Smash Laterale'),
 ('Single',452,'Leo','Sandro','Smash Finale'),
 ('Single',452,'Leo','Siwei','Altro'),
 ('Single',452,'Leo','Ale','Smash Laterale'),
 ('Single',452,'Siwei','Leo','Smash Finale'),
 ('Single',452,'Ale','Siwei','Smash Laterale'),
 ('Single',452,'Leo','Sandro','Aereo Frontale'),
 ('Single',452,'Leo','Ale','Smash Finale'),
 ('Single',452,'Sandro','Leo','Smash in Su'),
 ('Single',452,'Sandro','Ale','Altro');

insert into deaths values ('Single',452,'Siwei','Mancato Recupero'),
 ('Single',452,'Siwei','Autodistruzione'),
 ('Single',452,'Ale','Autodistruzione');


--Single-451
insert into kills values ('Single',451,'Ale','Siwei','Smash in Su'),
 ('Single',451,'Siwei','Leo','Smash Laterale'),
 ('Single',451,'Siwei','Sandro','Smash Finale'),
 ('Single',451,'Siwei','Ale','Smash in Su'),
 ('Single',451,'Sandro','Leo','Smash Finale'),
 ('Single',451,'Siwei','Sandro','Smash Laterale'),
 ('Single',451,'Sandro','Siwei','Aereo in Su'),
 ('Single',451,'Leo','Ale','Aereo Posteriore'),
 ('Single',451,'Sandro','Siwei','Smash Laterale'),
 ('Single',451,'Ale','Leo','Smash Finale'),
 ('Single',451,'Sandro','Ale','Smash Finale');


--Single-450
insert into kills values ('Single',450,'Leo','Ale','Aereo Frontale'),
 ('Single',450,'Sandro','Siwei','Altro'),
 ('Single',450,'Siwei','Ale','Altro'),
 ('Single',450,'Leo','Siwei','Altro'),
 ('Single',450,'Leo','Sandro','Altro'),
 ('Single',450,'Ale','Siwei','Altro'),
 ('Single',450,'Ale','Leo','Meteora'),
 ('Single',450,'Ale','Sandro','Smash Laterale'),
 ('Single',450,'Sandro','Leo','Altro'),
 ('Single',450,'Leo','Sandro','Speciale Standard'),
 ('Single',450,'Leo','Ale','Altro');

insert into deaths values ('Single',450,'Siwei','Mancato Recupero'),
 ('Single',450,'Ale','Autodistruzione'),
 ('Single',450,'Sandro','Mancato Recupero'),
 ('Single',450,'Siwei','Autodistruzione'),
 ('Single',450,'Siwei','Mancato Recupero'),
 ('Single',450,'Leo','Mancato Recupero'),
 ('Single',450,'Ale','Autodistruzione');


--Single-449
insert into kills values ('Single',449,'Siwei','Leo','Speciale in Giù'),
 ('Single',449,'Leo','Siwei','Smash Laterale'),
 ('Single',449,'Ale','Sandro','Altro'),
 ('Single',449,'Siwei','Ale','Smash Finale'),
 ('Single',449,'Siwei','Leo','Altro'),
 ('Single',449,'Ale','Siwei','Smash Laterale'),
 ('Single',449,'Sandro','Siwei','Smash Finale'),
 ('Single',449,'Leo','Ale','Smash Finale'),
 ('Single',449,'Sandro','Ale','In Corsa'),
 ('Single',449,'Ale','Sandro','Altro'),
 ('Single',449,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',449,'Sandro','Mancato Recupero'),
 ('Single',449,'Leo','Mancato Recupero'),
 ('Single',449,'Sandro','Autodistruzione');


--Single-448
insert into kills values ('Single',448,'Ale','Sandro','Speciale in Giù'),
 ('Single',448,'Siwei','Leo','In Corsa'),
 ('Single',448,'Leo','Ale','Speciale Standard'),
 ('Single',448,'Sandro','Siwei','Smash Finale'),
 ('Single',448,'Ale','Leo','Altro'),
 ('Single',448,'Ale','Sandro','Smash Finale'),
 ('Single',448,'Ale','Siwei','Aereo Posteriore'),
 ('Single',448,'Siwei','Sandro','Smash Finale'),
 ('Single',448,'Leo','Ale','Smash Finale'),
 ('Single',448,'Ale','Siwei','Meteora'),
 ('Single',448,'Ale','Leo','Aereo Posteriore');

insert into deaths values ('Single',448,'Leo','Skyloft');


--Single-447
insert into kills values ('Single',447,'Leo','Ale','Smash Laterale'),
 ('Single',447,'Siwei','Sandro','Altro'),
 ('Single',447,'Siwei','Leo','Speciale Laterale'),
 ('Single',447,'Sandro','Siwei','Smash Finale'),
 ('Single',447,'Ale','Siwei','Speciale in Giù'),
 ('Single',447,'Ale','Sandro','Smash Laterale'),
 ('Single',447,'Sandro','Leo','Speciale in Giù'),
 ('Single',447,'Sandro','Ale','Speciale Laterale'),
 ('Single',447,'Sandro','Siwei','Smash Finale'),
 ('Single',447,'Ale','Sandro','In Corsa'),
 ('Single',447,'Ale','Leo','In Corsa');

insert into deaths values ('Single',447,'Sandro','Autodistruzione');


--Single-446
insert into kills values ('Single',446,'Leo','Sandro','Meteora'),
 ('Single',446,'Ale','Leo','Meteora'),
 ('Single',446,'Siwei','Ale','Speciale Standard'),
 ('Single',446,'Ale','Siwei','Altro'),
 ('Single',446,'Leo','Sandro','Altro'),
 ('Single',446,'Siwei','Leo','Smash Finale'),
 ('Single',446,'Siwei','Ale','Speciale in Su'),
 ('Single',446,'Ale','Siwei','Smash in Giù'),
 ('Single',446,'Ale','Leo','Altro'),
 ('Single',446,'Siwei','Sandro','In Corsa'),
 ('Single',446,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Single',446,'Siwei','Autodistruzione'),
 ('Single',446,'Leo','Mancato Recupero');


--Single-445
insert into kills values ('Single',445,'Ale','Leo','Altro'),
 ('Single',445,'Leo','Siwei','Speciale in Su'),
 ('Single',445,'Siwei','Leo','Altro'),
 ('Single',445,'Siwei','Ale','Smash Finale'),
 ('Single',445,'Siwei','Sandro','Speciale in Giù'),
 ('Single',445,'Sandro','Siwei','Speciale in Su'),
 ('Single',445,'Sandro','Leo','Smash Finale'),
 ('Single',445,'Sandro','Siwei','Speciale in Su'),
 ('Single',445,'Sandro','Ale','Altro'),
 ('Single',445,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',445,'Leo','Mancato Recupero'),
 ('Single',445,'Leo','Autodistruzione'),
 ('Single',445,'Ale','Mancato Recupero');


--Single-444
insert into kills values ('Single',444,'Siwei','Sandro','Speciale Laterale'),
 ('Single',444,'Leo','Siwei','Aereo Frontale'),
 ('Single',444,'Siwei','Ale','Smash in Giù'),
 ('Single',444,'Siwei','Sandro','Smash Finale'),
 ('Single',444,'Sandro','Leo','Smash Finale'),
 ('Single',444,'Ale','Siwei','Smash Finale'),
 ('Single',444,'Ale','Leo','Aereo Posteriore'),
 ('Single',444,'Siwei','Sandro','Speciale Laterale'),
 ('Single',444,'Leo','Ale','Smash Laterale'),
 ('Single',444,'Siwei','Ale','Smash Finale'),
 ('Single',444,'Leo','Siwei','Smash Finale');


--Single-443
insert into kills values ('Single',443,'Leo','Siwei','Speciale Standard'),
 ('Single',443,'Sandro','Leo','Altro'),
 ('Single',443,'Siwei','Sandro','Smash Finale'),
 ('Single',443,'Siwei','Ale','Smash Finale'),
 ('Single',443,'Leo','Siwei','Smash Finale'),
 ('Single',443,'Siwei','Leo','Speciale Standard'),
 ('Single',443,'Leo','Siwei','Speciale Standard'),
 ('Single',443,'Sandro','Leo','Smash in Su'),
 ('Single',443,'Sandro','Ale','Altro'),
 ('Single',443,'Ale','Sandro','Smash in Giù'),
 ('Single',443,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',443,'Leo','Mancato Recupero');


--Single-442
insert into kills values ('Single',442,'Siwei','Ale','Aereo in Su'),
 ('Single',442,'Siwei','Sandro','Altro'),
 ('Single',442,'Leo','Siwei','Smash Laterale'),
 ('Single',442,'Siwei','Sandro','Smash Laterale'),
 ('Single',442,'Sandro','Siwei','Altro'),
 ('Single',442,'Ale','Siwei','Smash Finale'),
 ('Single',442,'Leo','Sandro','Smash Finale'),
 ('Single',442,'Leo','Ale','Aereo Frontale'),
 ('Single',442,'Ale','Leo','In Corsa'),
 ('Single',442,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',442,'Siwei','Autodistruzione');


--Single-441
insert into kills values ('Single',441,'Leo','Siwei','Smash Laterale'),
 ('Single',441,'Sandro','Ale','Speciale Laterale'),
 ('Single',441,'Siwei','Sandro','Smash in Su'),
 ('Single',441,'Siwei','Leo','Smash Finale'),
 ('Single',441,'Siwei','Ale','Smash in Su'),
 ('Single',441,'Sandro','Leo','Altro'),
 ('Single',441,'Sandro','Siwei','Smash Finale'),
 ('Single',441,'Siwei','Ale','Aereo in Su'),
 ('Single',441,'Sandro','Siwei','Aereo in Giù'),
 ('Single',441,'Sandro','Leo','Altro');

insert into deaths values ('Single',441,'Sandro','Autodistruzione'),
 ('Single',441,'Leo','Saffron City'),
 ('Single',441,'Leo','Saffron City');


--Single-440
insert into kills values ('Single',440,'Leo','Ale','Aereo Frontale'),
 ('Single',440,'Sandro','Siwei','Smash in Su'),
 ('Single',440,'Leo','Sandro','Aereo Frontale'),
 ('Single',440,'Ale','Leo','Altro'),
 ('Single',440,'Ale','Siwei','Altro'),
 ('Single',440,'Leo','Ale','Altro'),
 ('Single',440,'Siwei','Sandro','Smash Finale'),
 ('Single',440,'Leo','Siwei','Speciale Standard'),
 ('Single',440,'Ale','Leo','Smash Finale'),
 ('Single',440,'Leo','Ale','Aereo Frontale'),
 ('Single',440,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',440,'Leo','Norfair'),
 ('Single',440,'Siwei','Norfair'),
 ('Single',440,'Ale','Norfair');


--Single-439
insert into kills values ('Single',439,'Leo','Ale','Aereo in Giù'),
 ('Single',439,'Siwei','Sandro','Speciale in Giù'),
 ('Single',439,'Sandro','Siwei','Speciale Laterale'),
 ('Single',439,'Sandro','Leo','Speciale Laterale'),
 ('Single',439,'Siwei','Sandro','Speciale in Giù'),
 ('Single',439,'Leo','Siwei','Smash Finale'),
 ('Single',439,'Leo','Ale','Aereo in Giù'),
 ('Single',439,'Sandro','Leo','Smash Finale'),
 ('Single',439,'Siwei','Sandro','Smash Finale'),
 ('Single',439,'Leo','Ale','Smash Finale'),
 ('Single',439,'Leo','Siwei','Smash Finale');


--Single-438
insert into kills values ('Single',438,'Sandro','Siwei','Footstool'),
 ('Single',438,'Sandro','Ale','Smash in Su'),
 ('Single',438,'Siwei','Leo','Smash Finale'),
 ('Single',438,'Leo','Sandro','Smash Laterale'),
 ('Single',438,'Ale','Siwei','Smash Finale'),
 ('Single',438,'Leo','Ale','Altro'),
 ('Single',438,'Siwei','Sandro','Smash Finale'),
 ('Single',438,'Ale','Siwei','Aereo Standard'),
 ('Single',438,'Sandro','Leo','Altro'),
 ('Single',438,'Leo','Sandro','Speciale in Giù'),
 ('Single',438,'Ale','Leo','Altro');

insert into deaths values ('Single',438,'Ale','Port Town Aero Dive'),
 ('Single',438,'Ale','Port Town Aero Dive'),
 ('Single',438,'Leo','Port Town Aero Dive');


--Single-437
insert into kills values ('Single',437,'Leo','Ale','Speciale Standard'),
 ('Single',437,'Ale','Sandro','Speciale in Su'),
 ('Single',437,'Ale','Siwei','Speciale in Su'),
 ('Single',437,'Sandro','Leo','Aereo Frontale'),
 ('Single',437,'Leo','Siwei','Smash Laterale'),
 ('Single',437,'Leo','Ale','Smash Finale'),
 ('Single',437,'Ale','Leo','Altro'),
 ('Single',437,'Ale','Sandro','Aereo Standard'),
 ('Single',437,'Siwei','Leo','Altro'),
 ('Single',437,'Sandro','Ale','Aereo Posteriore'),
 ('Single',437,'Sandro','Siwei','Speciale in Giù');

insert into deaths values ('Single',437,'Leo','Mancato Recupero'),
 ('Single',437,'Leo','Rainbow Cruise');


--Doubles-181
insert into kills values ('Doubles',181,'Siwei','Ale','Smash in Su'),
 ('Doubles',181,'Leo','Siwei','Speciale in Giù'),
 ('Doubles',181,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',181,'Sandro','Ale','Smash Laterale'),
 ('Doubles',181,'Sandro','Leo','Smash Laterale'),
 ('Doubles',181,'Ale','Siwei','Altro'),
 ('Doubles',181,'Sandro','Leo','Smash Finale'),
 ('Doubles',181,'Leo','Siwei','Altro'),
 ('Doubles',181,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',181,'Siwei','Ale','Smash Finale'),
 ('Doubles',181,'Leo','Siwei','Peculiare'); --PECULIAR: JOKER END SCREEN

insert into deaths values ('Doubles',181,'Siwei','Mancato Recupero'),
 ('Doubles',181,'Siwei','Mancato Recupero');


--Doubles-180
insert into kills values ('Doubles',180,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',180,'Siwei','Leo','Altro'),
 ('Doubles',180,'Ale','Sandro','Altro'),
 ('Doubles',180,'Ale','Sandro','Grab'),
 ('Doubles',180,'Siwei','Leo','Smash Finale'),
 ('Doubles',180,'Leo','Siwei','Smash Finale'),
 ('Doubles',180,'Ale','Sandro','Smash Finale'),
 ('Doubles',180,'Siwei','Ale','Smash Laterale'),
 ('Doubles',180,'Siwei','Leo','Altro'),
 ('Doubles',180,'Leo','Siwei','Speciale Laterale');

insert into deaths values ('Doubles',180,'Sandro','Mancato Recupero'),
 ('Doubles',180,'Leo','Autodistruzione');


--Doubles-179
insert into kills values ('Doubles',179,'Sandro','Leo','Altro'),
 ('Doubles',179,'Siwei','Ale','Smash Laterale'),
 ('Doubles',179,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',179,'Sandro','Ale','Smash Laterale'),
 ('Doubles',179,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',179,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',179,'Sandro','Ale','Altro'),
 ('Doubles',179,'Siwei','Leo','Smash in Su'),
 ('Doubles',179,'Leo','Siwei','Smash Finale'),
 ('Doubles',179,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',179,'Leo','Autodistruzione'),
 ('Doubles',179,'Ale','Autodistruzione');


--Doubles-178
insert into kills values ('Doubles',178,'Ale','Leo','Altro'),
 ('Doubles',178,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',178,'Siwei','Sandro','Speciale Standard'),
 ('Doubles',178,'Ale','Leo','Altro'),
 ('Doubles',178,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',178,'Siwei','Leo','Smash in Su'),
 ('Doubles',178,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',178,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',178,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',178,'Leo','Autodistruzione'),
 ('Doubles',178,'Sandro','Fuoco Amico'),
 ('Doubles',178,'Leo','Skyworld'),
 ('Doubles',178,'Ale','Fuoco Amico'),
 ('Doubles',178,'Siwei','Fuoco Amico');


--Doubles-177
insert into kills values ('Doubles',177,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',177,'Ale','Sandro','Smash in Su'),
 ('Doubles',177,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',177,'Sandro','Leo','Smash in Su'),
 ('Doubles',177,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',177,'Sandro','Ale','Smash Laterale'),
 ('Doubles',177,'Ale','Sandro','Grab'),
 ('Doubles',177,'Sandro','Ale','Smash Finale'),
 ('Doubles',177,'Leo','Siwei','Grab'),
 ('Doubles',177,'Sandro','Leo','Altro'),
 ('Doubles',177,'Ale','Sandro','Aereo Frontale');

insert into deaths values ('Doubles',177,'Siwei','Fuoco Amico');


--Doubles-176
insert into kills values ('Doubles',176,'Ale','Siwei','Smash in Su'),
 ('Doubles',176,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',176,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',176,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',176,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',176,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',176,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',176,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',176,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',176,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',176,'Ale','Fuoco Amico'),
 ('Doubles',176,'Ale','Fuoco Amico');


--Doubles-175
insert into kills values ('Doubles',175,'Sandro','Ale','Smash Laterale'),
 ('Doubles',175,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',175,'Sandro','Leo','Smash Finale'),
 ('Doubles',175,'Leo','Sandro','Smash in Giù'),
 ('Doubles',175,'Ale','Siwei','Grab'),
 ('Doubles',175,'Siwei','Ale','Smash Finale'),
 ('Doubles',175,'Sandro','Leo','Smash Laterale'),
 ('Doubles',175,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',175,'Ale','Sandro','Altro'),
 ('Doubles',175,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',175,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',175,'Sandro','Fuoco Amico'),
 ('Doubles',175,'Sandro','Autodistruzione'),
 ('Doubles',175,'Siwei','Fuoco Amico');


--Doubles-174
insert into kills values ('Doubles',174,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',174,'Sandro','Ale','Smash in Su'),
 ('Doubles',174,'Sandro','Ale','Smash in Su'),
 ('Doubles',174,'Leo','Siwei','Altro'),
 ('Doubles',174,'Sandro','Siwei','Smash Finale'),
 ('Doubles',174,'Leo','Ale','Altro');

insert into deaths values ('Doubles',174,'Siwei','Mushroom Kingdom U'),
 ('Doubles',174,'Ale','Mancato Recupero');


--Doubles-173
insert into kills values ('Doubles',173,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',173,'Ale','Leo','Altro'),
 ('Doubles',173,'Siwei','Ale','Altro'),
 ('Doubles',173,'Sandro','Siwei','Smash Finale'),
 ('Doubles',173,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',173,'Ale','Siwei','Smash Finale'),
 ('Doubles',173,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',173,'Leo','Sandro','Altro'),
 ('Doubles',173,'Ale','Leo','Meteora');

insert into deaths values ('Doubles',173,'Leo','Mancato Recupero'),
 ('Doubles',173,'Ale','Mancato Recupero'),
 ('Doubles',173,'Sandro','Autodistruzione');


--Doubles-172
insert into kills values ('Doubles',172,'Siwei','Leo','Altro'),
 ('Doubles',172,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',172,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',172,'Leo','Sandro','Smash Finale'),
 ('Doubles',172,'Siwei','Ale','Altro'),
 ('Doubles',172,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',172,'Ale','Siwei','Speciale Standard'),
 ('Doubles',172,'Leo','Sandro','Speciale Standard');


--Doubles-171
insert into kills values ('Doubles',171,'Ale','Leo','Altro'),
 ('Doubles',171,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',171,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',171,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',171,'Siwei','Sandro','Smash Finale'),
 ('Doubles',171,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',171,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',171,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',171,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',171,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',171,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',171,'Leo','Living Room'),
 ('Doubles',171,'Ale','Fuoco Amico'),
 ('Doubles',171,'Ale','Fuoco Amico'),
 ('Doubles',171,'Sandro','Fuoco Amico'),
 ('Doubles',171,'Ale','Fuoco Amico');


--Doubles-170
insert into kills values ('Doubles',170,'Siwei','Ale','Smash Laterale'),
 ('Doubles',170,'Siwei','Leo','Altro'),
 ('Doubles',170,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',170,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',170,'Sandro','Leo','Smash Laterale'),
 ('Doubles',170,'Leo','Sandro','Smash Finale'),
 ('Doubles',170,'Leo','Siwei','Smash Laterale'),
 ('Doubles',170,'Sandro','Ale','Altro'),
 ('Doubles',170,'Sandro','Leo','Smash Finale'),
 ('Doubles',170,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',170,'Ale','Sandro','Smash in Su');

insert into deaths values ('Doubles',170,'Leo','Mute City SNES'),
 ('Doubles',170,'Siwei','Fuoco Amico');


--Doubles-169
insert into kills values ('Doubles',169,'Sandro','Siwei','Speciale in Giù'),
 ('Doubles',169,'Sandro','Ale','Aereo in Su'),
 ('Doubles',169,'Ale','Sandro','Smash Finale'),
 ('Doubles',169,'Sandro','Siwei','Smash Finale'),
 ('Doubles',169,'Siwei','Leo','Smash Laterale'),
 ('Doubles',169,'Ale','Sandro','Smash in Su'),
 ('Doubles',169,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',169,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',169,'Sandro','Ale','Smash Finale');


--Doubles-168
insert into kills values ('Doubles',168,'Sandro','Ale','Smash Laterale'),
 ('Doubles',168,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',168,'Ale','Siwei','Smash Finale'),
 ('Doubles',168,'Sandro','Ale','Smash Finale'),
 ('Doubles',168,'Siwei','Leo','Smash Finale'),
 ('Doubles',168,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',168,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',168,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',168,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',168,'Siwei','Leo','Smash Finale');

insert into deaths values ('Doubles',168,'Siwei','Fuoco Amico');


--Doubles-167
insert into kills values ('Doubles',167,'Leo','Siwei','Altro'),
 ('Doubles',167,'Sandro','Leo','Speciale in Su'),
 ('Doubles',167,'Leo','Sandro','Aereo Posteriore'),
 ('Doubles',167,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',167,'Sandro','Ale','Smash Finale'),
 ('Doubles',167,'Ale','Siwei','Smash in Su'),
 ('Doubles',167,'Ale','Sandro','Smash Finale'),
 ('Doubles',167,'Ale','Leo','Fuoco Amico'),
 ('Doubles',167,'Sandro','Leo','Speciale in Giù'),
 ('Doubles',167,'Siwei','Ale','Speciale Laterale');

insert into deaths values ('Doubles',167,'Siwei','Mancato Recupero'),
 ('Doubles',167,'Leo','Fuoco Amico');


--Doubles-166
insert into kills values ('Doubles',166,'Siwei','Ale','Speciale in Su'),
 ('Doubles',166,'Sandro','Leo','Aereo in Su'),
 ('Doubles',166,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',166,'Leo','Ale','Altro'),
 ('Doubles',166,'Sandro','Siwei','Smash Finale'),
 ('Doubles',166,'Ale','Leo','Speciale Laterale'),
 ('Doubles',166,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',166,'Siwei','Ale','Altro'),
 ('Doubles',166,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',166,'Ale','Mancato Recupero'),
 ('Doubles',166,'Sandro','Mancato Recupero');


--Doubles-165
insert into kills values ('Doubles',165,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',165,'Sandro','Ale','Altro'),
 ('Doubles',165,'Leo','Siwei','Smash Laterale'),
 ('Doubles',165,'Ale','Sandro','Aereo in Su'),
 ('Doubles',165,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',165,'Leo','Ale','Speciale Standard'),
 ('Doubles',165,'Leo','Siwei','Smash Laterale'),
 ('Doubles',165,'Sandro','Ale','Smash Laterale'),
 ('Doubles',165,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',165,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',165,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Doubles',165,'Leo','Fuoco Amico');


--Doubles-164
insert into kills values ('Doubles',164,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',164,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',164,'Sandro','Leo','Altro'),
 ('Doubles',164,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',164,'Siwei','Ale','Smash Finale'),
 ('Doubles',164,'Ale','Siwei','Smash Finale'),
 ('Doubles',164,'Leo','Ale','Altro'),
 ('Doubles',164,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',164,'Sandro','Leo','Smash Finale'),
 ('Doubles',164,'Leo','Sandro','Aereo Frontale');

insert into deaths values ('Doubles',164,'Siwei','Fuoco Amico'),
 ('Doubles',164,'Ale','Fuoco Amico'),
 ('Doubles',164,'Ale','Mancato Recupero');


--Single-436
insert into kills values ('Single',436,'Leo','Siwei','Speciale in Su'),
 ('Single',436,'Siwei','Leo','Altro'),
 ('Single',436,'Sandro','Siwei','Speciale in Su'),
 ('Single',436,'Siwei','Ale','Smash Laterale'),
 ('Single',436,'Siwei','Leo','Smash in Su'),
 ('Single',436,'Ale','Sandro','Speciale in Giù'),
 ('Single',436,'Siwei','Sandro','Smash in Su'),
 ('Single',436,'Siwei','Leo','Smash in Su'),
 ('Single',436,'Sandro','Ale','Smash Finale'),
 ('Single',436,'Sandro','Siwei','Smash Finale'),
 ('Single',436,'Ale','Sandro','Aereo Standard');


--Single-435
insert into kills values ('Single',435,'Ale','Siwei','Speciale in Giù'),
 ('Single',435,'Siwei','Sandro','Smash Laterale'),
 ('Single',435,'Siwei','Ale','Speciale Standard'),
 ('Single',435,'Siwei','Leo','Speciale in Su'),
 ('Single',435,'Leo','Sandro','Smash Finale'),
 ('Single',435,'Ale','Siwei','Smash Finale'),
 ('Single',435,'Sandro','Leo','Smash Laterale'),
 ('Single',435,'Sandro','Siwei','Smash Finale'),
 ('Single',435,'Sandro','Ale','Smash Finale'),
 ('Single',435,'Siwei','Sandro','Altro'),
 ('Single',435,'Ale','Leo','In Corsa');

insert into deaths values ('Single',435,'Sandro','Autodistruzione');


--Single-434
insert into kills values ('Single',434,'Sandro','Ale','In Corsa'),
 ('Single',434,'Ale','Leo','In Corsa'),
 ('Single',434,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',434,'Leo','Ale','Smash Finale'),
 ('Single',434,'Leo','Sandro','Smash Finale'),
 ('Single',434,'Ale','Leo','Aereo Posteriore'),
 ('Single',434,'Sandro','Siwei','Smash Finale'),
 ('Single',434,'Siwei','Sandro','Smash Laterale'),
 ('Single',434,'Sandro','Ale','In Corsa'),
 ('Single',434,'Leo','Siwei','Smash Finale'),
 ('Single',434,'Leo','Sandro','Smash Laterale');


--Single-433
insert into kills values ('Single',433,'Ale','Sandro','Altro'),
 ('Single',433,'Ale','Siwei','Smash Laterale'),
 ('Single',433,'Siwei','Leo','Smash Laterale'),
 ('Single',433,'Siwei','Ale','Aereo in Giù'),
 ('Single',433,'Siwei','Sandro','Altro'),
 ('Single',433,'Ale','Siwei','Altro'),
 ('Single',433,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',433,'Leo','Sandro','Speciale in Giù'),
 ('Single',433,'Ale','Leo','Grab'),
 ('Single',433,'Leo','Ale','Aereo Frontale'),
 ('Single',433,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',433,'Sandro','Mancato Recupero'),
 ('Single',433,'Sandro','Find Mii'),
 ('Single',433,'Siwei','Find Mii');


--Single-432
insert into kills values ('Single',432,'Sandro','Siwei','Speciale Laterale'),
 ('Single',432,'Siwei','Sandro','Speciale in Su'),
 ('Single',432,'Siwei','Leo','Smash Finale'),
 ('Single',432,'Sandro','Ale','Aereo Frontale'),
 ('Single',432,'Sandro','Siwei','Smash in Su'),
 ('Single',432,'Siwei','Sandro','Smash Laterale'),
 ('Single',432,'Sandro','Leo','Smash in Su'),
 ('Single',432,'Sandro','Siwei','Smash in Su'),
 ('Single',432,'Leo','Ale','Smash Finale'),
 ('Single',432,'Sandro','Leo','Smash Finale'),
 ('Single',432,'Ale','Sandro','Aereo Posteriore');


--Single-431
insert into kills values ('Single',431,'Ale','Sandro','Altro'),
 ('Single',431,'Leo','Siwei','Speciale in Su'),
 ('Single',431,'Siwei','Leo','In Corsa'),
 ('Single',431,'Leo','Sandro','Speciale Standard'),
 ('Single',431,'Sandro','Ale','Smash Finale'),
 ('Single',431,'Sandro','Ale','Smash Laterale'),
 ('Single',431,'Siwei','Sandro','In Corsa'),
 ('Single',431,'Ale','Siwei','Aereo Frontale'),
 ('Single',431,'Ale','Leo','Smash Finale'),
 ('Single',431,'Ale','Leo','Aereo Frontale'),
 ('Single',431,'Ale','Siwei','Speciale Standard');

insert into deaths values ('Single',431,'Sandro','Mancato Recupero');


--Single-430
insert into kills values ('Single',430,'Leo','Ale','Smash Laterale'),
 ('Single',430,'Sandro','Siwei','Speciale Standard'),
 ('Single',430,'Leo','Ale','Smash Laterale'),
 ('Single',430,'Ale','Leo','Smash Laterale'),
 ('Single',430,'Ale','Leo','Smash Finale'),
 ('Single',430,'Leo','Sandro','Smash Finale'),
 ('Single',430,'Siwei','Ale','Speciale Laterale'),
 ('Single',430,'Sandro','Siwei','Smash in Su'),
 ('Single',430,'Sandro','Siwei','Smash Laterale'),
 ('Single',430,'Leo','Sandro','Aereo Posteriore'),
 ('Single',430,'Leo','Sandro','Smash Finale');


--Single-429
insert into kills values ('Single',429,'Sandro','Siwei','Speciale Laterale'),
 ('Single',429,'Siwei','Sandro','Smash Laterale'),
 ('Single',429,'Siwei','Leo','Smash Finale'),
 ('Single',429,'Leo','Ale','Altro'),
 ('Single',429,'Sandro','Siwei','Smash Finale'),
 ('Single',429,'Ale','Sandro','Smash Finale'),
 ('Single',429,'Sandro','Leo','Speciale Laterale'),
 ('Single',429,'Ale','Siwei','Smash in Su'),
 ('Single',429,'Leo','Ale','Smash Laterale'),
 ('Single',429,'Ale','Leo','Aereo Frontale');

insert into deaths values ('Single',429,'Ale','Mancato Recupero'),
 ('Single',429,'Sandro','Autodistruzione');


--Single-428
insert into kills values ('Single',428,'Siwei','Sandro','Smash Laterale'),
 ('Single',428,'Siwei','Ale','Smash Laterale'),
 ('Single',428,'Ale','Siwei','Speciale in Su'),
 ('Single',428,'Sandro','Ale','Smash Finale'),
 ('Single',428,'Ale','Leo','Smash Finale'),
 ('Single',428,'Siwei','Sandro','Smash in Su'),
 ('Single',428,'Leo','Ale','Smash Finale'),
 ('Single',428,'Leo','Siwei','Smash Finale'),
 ('Single',428,'Siwei','Leo','Smash Finale'),
 ('Single',428,'Sandro','Siwei','Altro'),
 ('Single',428,'Sandro','Leo','Aereo in Su');


--Single-427
insert into kills values ('Single',427,'Siwei','Ale','Smash Laterale'),
 ('Single',427,'Siwei','Leo','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',427,'Ale','Sandro','Aereo Standard'),
 ('Single',427,'Sandro','Leo','Smash Laterale'),
 ('Single',427,'Sandro','Ale','Aereo Posteriore'),
 ('Single',427,'Siwei','Sandro','Speciale Laterale'),
 ('Single',427,'Ale','Siwei','Smash in Giù'),
 ('Single',427,'Leo','Ale','Smash Finale'),
 ('Single',427,'Leo','Siwei','Smash Finale'),
 ('Single',427,'Sandro','Siwei','Smash Laterale'),
 ('Single',427,'Leo','Sandro','Smash Laterale');


--Single-426
insert into kills values ('Single',426,'Ale','Leo','Speciale Laterale'),
 ('Single',426,'Leo','Sandro','Peculiare'), --PECULIAR: NESS PK ROCKET
 ('Single',426,'Ale','Siwei','Aereo Posteriore'),
 ('Single',426,'Sandro','Siwei','Smash Finale'),
 ('Single',426,'Siwei','Ale','Altro'),
 ('Single',426,'Leo','Ale','Smash Finale'),
 ('Single',426,'Ale','Leo','Aereo Standard'),
 ('Single',426,'Leo','Siwei','Altro'),
 ('Single',426,'Ale','Sandro','Altro'),
 ('Single',426,'Leo','Ale','Aereo Posteriore'),
 ('Single',426,'Sandro','Leo','Aereo Frontale');


--Single-425
insert into kills values ('Single',425,'Siwei','Sandro','Smash in Su'),
 ('Single',425,'Leo','Ale','Altro'),
 ('Single',425,'Leo','Siwei','Altro'),
 ('Single',425,'Sandro','Leo','Smash Finale'),
 ('Single',425,'Leo','Sandro','Peculiare'), --PECULIAR: NESS PK ROCKET
 ('Single',425,'Leo','Siwei','Smash Finale'),
 ('Single',425,'Leo','Ale','Speciale in Su'),
 ('Single',425,'Ale','Leo','Smash Laterale'),
 ('Single',425,'Siwei','Leo','Smash Finale'),
 ('Single',425,'Ale','Siwei','Smash in Giù'),
 ('Single',425,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',425,'Ale','Autodistruzione');


--Single-424
insert into kills values ('Single',424,'Leo','Ale','Speciale Standard'),
 ('Single',424,'Sandro','Siwei','Altro'),
 ('Single',424,'Leo','Ale','Speciale Laterale'),
 ('Single',424,'Ale','Leo','Altro'),
 ('Single',424,'Leo','Sandro','Smash Laterale'),
 ('Single',424,'Sandro','Siwei','Smash Finale'),
 ('Single',424,'Sandro','Leo','Smash Finale'),
 ('Single',424,'Siwei','Ale','Speciale Laterale'),
 ('Single',424,'Siwei','Sandro','Speciale in Su'),
 ('Single',424,'Sandro','Leo','Altro'),
 ('Single',424,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Single',424,'Siwei','Mancato Recupero'),
 ('Single',424,'Leo','Autodistruzione'),
 ('Single',424,'Leo','Midgar');


--Single-423
insert into kills values ('Single',423,'Sandro','Ale','Smash Laterale'),
 ('Single',423,'Ale','Siwei','Smash Laterale'),
 ('Single',423,'Siwei','Sandro','Smash Finale'),
 ('Single',423,'Siwei','Leo','Speciale Laterale'),
 ('Single',423,'Leo','Ale','Smash Finale'),
 ('Single',423,'Sandro','Siwei','Smash Finale'),
 ('Single',423,'Siwei','Sandro','Speciale Laterale'),
 ('Single',423,'Ale','Leo','Aereo Posteriore'),
 ('Single',423,'Leo','Ale','Smash Laterale'),
 ('Single',423,'Leo','Siwei','Smash Laterale'),
 ('Single',423,'Sandro','Leo','Smash Finale');


--Single-422
insert into kills values ('Single',422,'Sandro','Siwei','Speciale Standard'),
 ('Single',422,'Ale','Leo','Smash Laterale'),
 ('Single',422,'Siwei','Ale','Speciale Laterale'),
 ('Single',422,'Siwei','Sandro','Smash Finale'),
 ('Single',422,'Sandro','Ale','Smash Finale'),
 ('Single',422,'Leo','Sandro','Smash Finale'),
 ('Single',422,'Leo','Siwei','Smash Finale'),
 ('Single',422,'Ale','Leo','Aereo in Giù'),
 ('Single',422,'Leo','Sandro','Smash Laterale'),
 ('Single',422,'Ale','Leo','Aereo Posteriore'),
 ('Single',422,'Ale','Siwei','Altro');

insert into deaths values ('Single',422,'Siwei','Halberd');


--Single-421
insert into kills values ('Single',421,'Ale','Siwei','Meteora'),
 ('Single',421,'Sandro','Ale','Aereo in Giù'),
 ('Single',421,'Siwei','Leo','Speciale Laterale'),
 ('Single',421,'Siwei','Ale','Speciale Laterale'),
 ('Single',421,'Leo','Sandro','Smash Finale'),
 ('Single',421,'Leo','Siwei','Speciale in Su'),
 ('Single',421,'Sandro','Leo','Smash Finale'),
 ('Single',421,'Siwei','Leo','Smash Finale'),
 ('Single',421,'Siwei','Sandro','Speciale Laterale'),
 ('Single',421,'Sandro','Siwei','Aereo in Giù');

insert into deaths values ('Single',421,'Ale','Autodistruzione');


--Single-420
insert into kills values ('Single',420,'Ale','Sandro','Meteora'),
 ('Single',420,'Leo','Ale','Smash Laterale'),
 ('Single',420,'Ale','Sandro','Altro'),
 ('Single',420,'Sandro','Ale','Smash in Giù'),
 ('Single',420,'Siwei','Leo','Speciale Laterale'),
 ('Single',420,'Siwei','Sandro','Speciale Laterale'),
 ('Single',420,'Leo','Ale','Smash Laterale'),
 ('Single',420,'Leo','Siwei','Grab'),
 ('Single',420,'Leo','Siwei','Footstool'),
 ('Single',420,'Siwei','Leo','Speciale Laterale'),
 ('Single',420,'Siwei','Leo','Smash Finale');

insert into deaths values ('Single',420,'Sandro','Mancato Recupero');


--Single-419
insert into kills values ('Single',419,'Leo','Sandro','Speciale Standard'),
 ('Single',419,'Ale','Siwei','Smash in Su'),
 ('Single',419,'Siwei','Ale','Smash Laterale'),
 ('Single',419,'Sandro','Leo','Smash Finale'),
 ('Single',419,'Ale','Sandro','Smash Finale'),
 ('Single',419,'Sandro','Leo','Speciale Laterale'),
 ('Single',419,'Leo','Siwei','Speciale Standard'),
 ('Single',419,'Leo','Siwei','Altro'),
 ('Single',419,'Sandro','Ale','Altro'),
 ('Single',419,'Ale','Sandro','Speciale Laterale'),
 ('Single',419,'Ale','Leo','Aereo in Su');

insert into deaths values ('Single',419,'Siwei','Mancato Recupero'),
 ('Single',419,'Ale','Hyrule Castle');


--Single-418
insert into kills values ('Single',418,'Ale','Sandro','Aereo Frontale'),
 ('Single',418,'Leo','Ale','Speciale in Su'),
 ('Single',418,'Sandro','Leo','Smash Finale'),
 ('Single',418,'Ale','Sandro','Smash Finale'),
 ('Single',418,'Ale','Siwei','Smash Finale'),
 ('Single',418,'Siwei','Ale','In Corsa'),
 ('Single',418,'Ale','Siwei','Altro'),
 ('Single',418,'Ale','Sandro','Aereo in Su'),
 ('Single',418,'Ale','Leo','Smash Laterale'),
 ('Single',418,'Leo','Siwei','Smash Finale'),
 ('Single',418,'Leo','Ale','Speciale Standard');

insert into deaths values ('Single',418,'Siwei','Autodistruzione');


--Single-417
insert into kills values ('Single',417,'Siwei','Ale','Altro'),
 ('Single',417,'Siwei','Sandro','Smash Laterale'),
 ('Single',417,'Sandro','Siwei','Aereo Standard'),
 ('Single',417,'Ale','Leo','Aereo Posteriore'),
 ('Single',417,'Siwei','Sandro','In Corsa'),
 ('Single',417,'Sandro','Leo','Smash Finale'),
 ('Single',417,'Ale','Sandro','Speciale Standard'),
 ('Single',417,'Leo','Ale','Aereo Frontale'),
 ('Single',417,'Ale','Siwei','Smash in Su'),
 ('Single',417,'Ale','Leo','Aereo Posteriore'),
 ('Single',417,'Siwei','Ale','Smash Finale');


--Single-416
insert into kills values ('Single',416,'Siwei','Sandro','Altro'),
 ('Single',416,'Siwei','Ale','Smash Laterale'),
 ('Single',416,'Siwei','Leo','Peculiare'), --PECULIAR: CLOUD LIMIT
 ('Single',416,'Sandro','Siwei','Smash Finale'),
 ('Single',416,'Siwei','Sandro','Smash Laterale'),
 ('Single',416,'Ale','Leo','Smash Finale'),
 ('Single',416,'Ale','Siwei','Smash Finale'),
 ('Single',416,'Sandro','Ale','Smash Finale'),
 ('Single',416,'Leo','Sandro','Smash Finale'),
 ('Single',416,'Siwei','Leo','Smash Finale'),
 ('Single',416,'Ale','Siwei','Aereo Frontale');

insert into deaths values ('Single',416,'Sandro','Autodistruzione');


--Single-415
insert into kills values ('Single',415,'Sandro','Leo','Peculiare'), --PECULIAR: CHARIZARD
 ('Single',415,'Sandro','Ale','Aereo Frontale'),
 ('Single',415,'Siwei','Sandro','Peculiare'), --PECULIAR: CLOUD LIMIT
 ('Single',415,'Leo','Siwei','Smash Finale'),
 ('Single',415,'Ale','Sandro','Smash Laterale'),
 ('Single',415,'Siwei','Leo','Altro'),
 ('Single',415,'Ale','Siwei','Altro'),
 ('Single',415,'Sandro','Ale','Peculiare'), --PECULIAR: CHARIZARD
 ('Single',415,'Siwei','Sandro','Smash Laterale'),
 ('Single',415,'Ale','Siwei','Smash Finale');

insert into deaths values ('Single',415,'Leo','Autodistruzione'),
 ('Single',415,'Leo','Spear Pillar'),
 ('Single',415,'Siwei','Spear Pillar');


--Single-414
insert into kills values ('Single',414,'Sandro','Leo','Altro'),
 ('Single',414,'Leo','Siwei','Altro'),
 ('Single',414,'Leo','Sandro','Smash Finale'),
 ('Single',414,'Sandro','Siwei','Altro'),
 ('Single',414,'Sandro','Leo','Speciale in Su'),
 ('Single',414,'Sandro','Leo','Smash Finale'),
 ('Single',414,'Siwei','Ale','Altro'),
 ('Single',414,'Sandro','Siwei','Altro'),
 ('Single',414,'Ale','Sandro','Smash Laterale'),
 ('Single',414,'Sandro','Ale','Smash Laterale'),
 ('Single',414,'Sandro','Ale','Altro');

insert into deaths values ('Single',414,'Leo','Mancato Recupero'),
 ('Single',414,'Siwei','Autodistruzione'),
 ('Single',414,'Siwei','Autodistruzione'),
 ('Single',414,'Ale','Mancato Recupero'),
 ('Single',414,'Siwei','Mancato Recupero'),
 ('Single',414,'Ale','Autodistruzione');


--Single-413
insert into kills values ('Single',413,'Sandro','Siwei','Speciale Standard'),
 ('Single',413,'Leo','Sandro','Altro'),
 ('Single',413,'Ale','Leo','Aereo Frontale'),
 ('Single',413,'Leo','Siwei','Smash Finale'),
 ('Single',413,'Leo','Sandro','Smash Finale'),
 ('Single',413,'Leo','Ale','Aereo Posteriore'),
 ('Single',413,'Ale','Leo','Smash Finale'),
 ('Single',413,'Leo','Siwei','Aereo Posteriore'),
 ('Single',413,'Ale','Leo','Speciale in Giù'),
 ('Single',413,'Sandro','Ale','Smash Finale'),
 ('Single',413,'Ale','Sandro','In Corsa');

insert into deaths values ('Single',413,'Sandro','Mancato Recupero');


--Single-412
insert into kills values ('Single',412,'Ale','Siwei','Aereo Frontale'),
 ('Single',412,'Ale','Sandro','Altro'),
 ('Single',412,'Siwei','Ale','In Corsa'),
 ('Single',412,'Siwei','Leo','Altro'),
 ('Single',412,'Leo','Siwei','Speciale in Su'),
 ('Single',412,'Leo','Ale','Smash Finale'),
 ('Single',412,'Ale','Sandro','Speciale Standard'),
 ('Single',412,'Ale','Siwei','Smash Finale'),
 ('Single',412,'Ale','Leo','Altro'),
 ('Single',412,'Sandro','Ale','Smash Finale'),
 ('Single',412,'Leo','Sandro','Speciale in Su');

insert into deaths values ('Single',412,'Sandro','Autodistruzione'),
 ('Single',412,'Leo','Garden of Hope');


--Single-411
insert into kills values ('Single',411,'Leo','Siwei','Speciale Standard'),
 ('Single',411,'Ale','Sandro','Smash Laterale'),
 ('Single',411,'Siwei','Leo','Smash Laterale'),
 ('Single',411,'Siwei','Ale','Peculiare'), --PECULIAR: GANONDORF UP TILT
 ('Single',411,'Sandro','Siwei','Smash Laterale'),
 ('Single',411,'Siwei','Sandro','Smash Finale'),
 ('Single',411,'Siwei','Ale','Smash Finale'),
 ('Single',411,'Leo','Sandro','Smash Finale'),
 ('Single',411,'Ale','Siwei','Smash Laterale'),
 ('Single',411,'Ale','Leo','Smash Laterale'),
 ('Single',411,'Leo','Ale','Aereo Frontale');


--Single-410
insert into kills values ('Single',410,'Siwei','Leo','Speciale Standard'),
 ('Single',410,'Leo','Siwei','Speciale Standard'),
 ('Single',410,'Siwei','Ale','Smash Laterale'),
 ('Single',410,'Siwei','Leo','Smash Finale'),
 ('Single',410,'Siwei','Sandro','In Corsa'),
 ('Single',410,'Sandro','Siwei','Smash in Su'),
 ('Single',410,'Ale','Sandro','Smash Finale'),
 ('Single',410,'Sandro','Ale','Smash Laterale'),
 ('Single',410,'Sandro','Leo','Altro'),
 ('Single',410,'Ale','Siwei','Smash Laterale'),
 ('Single',410,'Sandro','Ale','Smash Finale');


--Single-409
insert into kills values ('Single',409,'Ale','Sandro','Altro'),
 ('Single',409,'Sandro','Ale','Speciale in Giù'),
 ('Single',409,'Sandro','Leo','Speciale in Giù'),
 ('Single',409,'Ale','Siwei','Altro'),
 ('Single',409,'Leo','Ale','Altro'),
 ('Single',409,'Sandro','Leo','Altro'),
 ('Single',409,'Leo','Sandro','Altro'),
 ('Single',409,'Sandro','Siwei','Speciale Laterale'),
 ('Single',409,'Siwei','Ale','Altro'),
 ('Single',409,'Sandro','Leo','Altro'),
 ('Single',409,'Sandro','Siwei','Speciale Laterale');

insert into deaths values ('Single',409,'Sandro','Autodistruzione'),
 ('Single',409,'Ale','Autodistruzione'),
 ('Single',409,'Sandro','Mancato Recupero'),
 ('Single',409,'Ale','Autodistruzione'),
 ('Single',409,'Leo','Mancato Recupero');


--Doubles-163
insert into kills values ('Doubles',163,'Ale','Sandro','Smash Laterale'),
 ('Doubles',163,'Leo','Sandro','Altro'),
 ('Doubles',163,'Sandro','Ale','Aereo in Su'),
 ('Doubles',163,'Sandro','Leo','Smash Finale'),
 ('Doubles',163,'Leo','Siwei','Smash Laterale'),
 ('Doubles',163,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',163,'Sandro','Leo','Smash Finale'),
 ('Doubles',163,'Sandro','Ale','Altro'),
 ('Doubles',163,'Leo','Siwei','Smash Finale'),
 ('Doubles',163,'Sandro','Leo','Smash Finale'),
 ('Doubles',163,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',163,'Sandro','Brinstar Depths'),
 ('Doubles',163,'Sandro','Fuoco Amico'),
 ('Doubles',163,'Ale','Mancato Recupero');


--Doubles-162
insert into kills values ('Doubles',162,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',162,'Leo','Ale','Speciale Laterale'),
 ('Doubles',162,'Sandro','Leo','Speciale in Giù'),
 ('Doubles',162,'Leo','Sandro','Smash Finale'),
 ('Doubles',162,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',162,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',162,'Sandro','Siwei','Smash Finale'),
 ('Doubles',162,'Leo','Sandro','Smash Laterale'),
 ('Doubles',162,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',162,'Leo','Ale','Speciale in Giù'),
 ('Doubles',162,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',162,'Siwei','Fuoco Amico'),
 ('Doubles',162,'Ale','Fuoco Amico');


--Doubles-161
insert into kills values ('Doubles',161,'Leo','Sandro','Smash Laterale'),
 ('Doubles',161,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',161,'Sandro','Leo','Aereo in Su'),
 ('Doubles',161,'Sandro','Leo','Altro'),
 ('Doubles',161,'Leo','Sandro','Smash Laterale'),
 ('Doubles',161,'Ale','Siwei','Smash Laterale'),
 ('Doubles',161,'Siwei','Ale','Smash Laterale'),
 ('Doubles',161,'Ale','Leo','Smash Laterale'),
 ('Doubles',161,'Siwei','Sandro','Aereo Frontale'),
 ('Doubles',161,'Siwei','Ale','Smash Finale'),
 ('Doubles',161,'Ale','Siwei','Aereo Frontale');

insert into deaths values ('Doubles',161,'Siwei','Fuoco Amico'),
 ('Doubles',161,'Leo','Autodistruzione');


--Doubles-160
insert into kills values ('Doubles',160,'Leo','Ale','In Corsa'),
 ('Doubles',160,'Siwei','Sandro','Speciale in Giù'),
 ('Doubles',160,'Sandro','Siwei','Aereo Posteriore'),
 ('Doubles',160,'Ale','Leo','Smash Laterale'),
 ('Doubles',160,'Sandro','Siwei','Altro'),
 ('Doubles',160,'Siwei','Ale','Altro'),
 ('Doubles',160,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',160,'Ale','Siwei','Altro'),
 ('Doubles',160,'Sandro','Leo','Smash Laterale'),
 ('Doubles',160,'Sandro','Leo','Altro');

insert into deaths values ('Doubles',160,'Siwei','Autodistruzione'),
 ('Doubles',160,'Ale','Mancato Recupero'),
 ('Doubles',160,'Sandro','Fuoco Amico'),
 ('Doubles',160,'Siwei','Mancato Recupero'),
 ('Doubles',160,'Leo','Autodistruzione');


--Doubles-159
insert into kills values ('Doubles',159,'Siwei','Sandro','Altro'),
 ('Doubles',159,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',159,'Ale','Sandro','Altro'),
 ('Doubles',159,'Leo','Siwei','Smash Laterale'),
 ('Doubles',159,'Leo','Siwei','Smash Finale'),
 ('Doubles',159,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',159,'Sandro','Ale','Smash Laterale'),
 ('Doubles',159,'Ale','Sandro','Altro'),
 ('Doubles',159,'Siwei','Leo','Smash in Su');

insert into deaths values ('Doubles',159,'Sandro','BUG'),
 ('Doubles',159,'Sandro','Spirit Train'),
 ('Doubles',159,'Leo','Fuoco Amico'),
 ('Doubles',159,'Sandro','Spirit Train');


--Doubles-158
insert into kills values ('Doubles',158,'Ale','Siwei','Smash Laterale'),
 ('Doubles',158,'Sandro','Leo','Smash Laterale'),
 ('Doubles',158,'Siwei','Leo','Altro'),
 ('Doubles',158,'Leo','Ale','Fuoco Amico'),
 ('Doubles',158,'Ale','Sandro','Smash Laterale'),
 ('Doubles',158,'Leo','Siwei','Smash Finale'),
 ('Doubles',158,'Leo','Ale','Fuoco Amico'),
 ('Doubles',158,'Siwei','Leo','Speciale in Su'),
 ('Doubles',158,'Ale','Sandro','Smash in Su'),
 ('Doubles',158,'Ale','Siwei','Smash Laterale'),
 ('Doubles',158,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Doubles',158,'Leo','Jungle Japes'),
 ('Doubles',158,'Ale','Fuoco Amico'),
 ('Doubles',158,'Ale','Fuoco Amico');


--Doubles-157
insert into kills values ('Doubles',157,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',157,'Sandro','Siwei','Aereo Frontale'),
 ('Doubles',157,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',157,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',157,'Leo','Ale','Smash Laterale'),
 ('Doubles',157,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',157,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',157,'Leo','Sandro','Smash Laterale'),
 ('Doubles',157,'Sandro','Leo','Smash Laterale');


--Doubles-156
insert into kills values ('Doubles',156,'Sandro','Leo','Smash in Su'),
 ('Doubles',156,'Sandro','Siwei','Speciale in Giù'),
 ('Doubles',156,'Leo','Ale','Smash Finale'),
 ('Doubles',156,'Siwei','Sandro','Smash Finale'),
 ('Doubles',156,'Ale','Leo','Smash Laterale'),
 ('Doubles',156,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',156,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',156,'Sandro','Siwei','Smash Finale'),
 ('Doubles',156,'Sandro','Leo','Aereo in Su');

insert into deaths values ('Doubles',156,'Sandro','Fuoco Amico');


--Doubles-155
insert into kills values ('Doubles',155,'Siwei','Leo','Smash Laterale'),
 ('Doubles',155,'Ale','Siwei','Aereo Standard'),
 ('Doubles',155,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',155,'Ale','Leo','Fuoco Amico'),
 ('Doubles',155,'Ale','Sandro','Smash Laterale'),
 ('Doubles',155,'Sandro','Leo','Altro'),
 ('Doubles',155,'Ale','Siwei','Meteora'),
 ('Doubles',155,'Ale','Siwei','Altro'),
 ('Doubles',155,'Sandro','Leo','Smash Laterale'),
 ('Doubles',155,'Sandro','Ale','Smash Laterale'),
 ('Doubles',155,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',155,'Leo','Fuoco Amico'),
 ('Doubles',155,'Leo','Autodistruzione'),
 ('Doubles',155,'Siwei','Autodistruzione');


--Doubles-154
insert into kills values ('Doubles',154,'Leo','Sandro','Speciale in Su'),
 ('Doubles',154,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',154,'Ale','Leo','Fuoco Amico'),
 ('Doubles',154,'Sandro','Ale','Aereo Frontale'),
 ('Doubles',154,'Sandro','Ale','Smash Finale'),
 ('Doubles',154,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',154,'Leo','Siwei','Speciale in Su'),
 ('Doubles',154,'Sandro','Leo','Smash in Su'),
 ('Doubles',154,'Leo','Siwei','Altro'),
 ('Doubles',154,'Sandro','Leo','Smash Finale'),
 ('Doubles',154,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Doubles',154,'Leo','Fuoco Amico'),
 ('Doubles',154,'Siwei','Autodistruzione');


--Doubles-153
insert into kills values ('Doubles',153,'Sandro','Leo','Smash Laterale'),
 ('Doubles',153,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',153,'Ale','Sandro','Smash Laterale'),
 ('Doubles',153,'Leo','Siwei','Altro'),
 ('Doubles',153,'Sandro','Ale','Smash Finale'),
 ('Doubles',153,'Leo','Sandro','Smash Finale'),
 ('Doubles',153,'Leo','Ale','Fuoco Amico'),
 ('Doubles',153,'Leo','Ale','Fuoco Amico'),
 ('Doubles',153,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',153,'Sandro','Ale','Altro'),
 ('Doubles',153,'Ale','Siwei','Speciale Standard');

insert into deaths values ('Doubles',153,'Ale','Fuoco Amico'),
 ('Doubles',153,'Ale','Fuoco Amico'),
 ('Doubles',153,'Ale','Autodistruzione');


--Doubles-152
insert into kills values ('Doubles',152,'Leo','Siwei','Altro'),
 ('Doubles',152,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',152,'Leo','Ale','Altro'),
 ('Doubles',152,'Leo','Siwei','Smash Laterale'),
 ('Doubles',152,'Sandro','Ale','Smash Finale'),
 ('Doubles',152,'Siwei','Leo','Smash Laterale'),
 ('Doubles',152,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',152,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',152,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',152,'Siwei','Mancato Recupero'),
 ('Doubles',152,'Sandro','Fuoco Amico'),
 ('Doubles',152,'Ale','Autodistruzione'),
 ('Doubles',152,'Siwei','Fuoco Amico'),
 ('Doubles',152,'Sandro','Fuoco Amico');


--Doubles-151
insert into kills values ('Doubles',151,'Siwei','Leo','Speciale in Su'),
 ('Doubles',151,'Leo','Siwei','Speciale Standard'),
 ('Doubles',151,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',151,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',151,'Sandro','Siwei','Smash Finale'),
 ('Doubles',151,'Siwei','Leo','Speciale in Su'),
 ('Doubles',151,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',151,'Leo','Siwei','Smash Finale'),
 ('Doubles',151,'Sandro','Ale','Aereo Posteriore'),
 ('Doubles',151,'Leo','Ale','In Corsa');


--Doubles-150
insert into kills values ('Doubles',150,'Siwei','Leo','Altro'),
 ('Doubles',150,'Siwei','Ale','Peculiare'), --PECULIAR: LITTLE MAC
 ('Doubles',150,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',150,'Ale','Sandro','Aereo Standard'),
 ('Doubles',150,'Ale','Sandro','Smash Finale'),
 ('Doubles',150,'Sandro','Ale','Aereo Posteriore'),
 ('Doubles',150,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',150,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',150,'Ale','Siwei','Smash in Giù'),
 ('Doubles',150,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',150,'Leo','Autodistruzione'),
 ('Doubles',150,'Siwei','Fuoco Amico'),
 ('Doubles',150,'Sandro','Fuoco Amico');


--Doubles-149
insert into kills values ('Doubles',149,'Ale','Sandro','Aereo Standard'),
 ('Doubles',149,'Ale','Leo','Smash Laterale'),
 ('Doubles',149,'Leo','Ale','Smash Laterale'),
 ('Doubles',149,'Sandro','Siwei','Smash Finale'),
 ('Doubles',149,'Siwei','Sandro','Smash Finale'),
 ('Doubles',149,'Leo','Siwei','Smash Finale'),
 ('Doubles',149,'Ale','Leo','Smash Finale'),
 ('Doubles',149,'Sandro','Siwei','Smash Finale'),
 ('Doubles',149,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',149,'Siwei','Sandro','Smash Finale'),
 ('Doubles',149,'Siwei','Leo','Aereo Frontale');


--Doubles-148
insert into kills values ('Doubles',148,'Leo','Ale','Smash Laterale'),
 ('Doubles',148,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',148,'Leo','Sandro','Smash Laterale'),
 ('Doubles',148,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',148,'Leo','Sandro','Smash Finale'),
 ('Doubles',148,'Leo','Ale','Smash Finale'),
 ('Doubles',148,'Ale','Leo','Altro'),
 ('Doubles',148,'Ale','Siwei','Altro'),
 ('Doubles',148,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',148,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',148,'Leo','Fuoco Amico'),
 ('Doubles',148,'Siwei','Fuoco Amico'),
 ('Doubles',148,'Leo','Mancato Recupero'),
 ('Doubles',148,'Siwei','Mancato Recupero'),
 ('Doubles',148,'Siwei','Fuoco Amico');


--Doubles-147
insert into kills values ('Doubles',147,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',147,'Siwei','Leo','Speciale in Su'),
 ('Doubles',147,'Leo','Siwei','Altro'),
 ('Doubles',147,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',147,'Sandro','Siwei','Smash in Su'),
 ('Doubles',147,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',147,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',147,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',147,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',147,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',147,'Ale','Fuoco Amico'),
 ('Doubles',147,'Siwei','Mancato Recupero'),
 ('Doubles',147,'Leo','Fuoco Amico'),
 ('Doubles',147,'Sandro','Fuoco Amico');


--Doubles-146
insert into kills values ('Doubles',146,'Sandro','Leo','Smash Laterale'),
 ('Doubles',146,'Leo','Ale','Smash Finale'),
 ('Doubles',146,'Sandro','Siwei','Smash in Su'),
 ('Doubles',146,'Sandro','Leo','Smash Finale'),
 ('Doubles',146,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',146,'Sandro','Siwei','Smash in Su'),
 ('Doubles',146,'Sandro','Leo','Smash Laterale'),
 ('Doubles',146,'Siwei','Ale','Smash Laterale'),
 ('Doubles',146,'Sandro','Siwei','Speciale Laterale');


--Doubles-145
insert into kills values ('Doubles',145,'Siwei','Ale','Speciale Standard'),
 ('Doubles',145,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',145,'Sandro','Leo','Smash Finale'),
 ('Doubles',145,'Leo','Sandro','Smash Finale'),
 ('Doubles',145,'Ale','Siwei','Smash Laterale'),
 ('Doubles',145,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',145,'Ale','Siwei','Altro'),
 ('Doubles',145,'Ale','Leo','Speciale Laterale'),
 ('Doubles',145,'Siwei','Sandro','Altro'),
 ('Doubles',145,'Siwei','Ale','Aereo Posteriore'),
 ('Doubles',145,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Doubles',145,'Leo','Fuoco Amico'),
 ('Doubles',145,'Siwei','Autodistruzione'),
 ('Doubles',145,'Sandro','Mancato Recupero');


--Doubles-144
insert into kills values ('Doubles',144,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',144,'Ale','Leo','Smash Laterale'),
 ('Doubles',144,'Siwei','Ale','Smash Laterale'),
 ('Doubles',144,'Ale','Siwei','Altro'),
 ('Doubles',144,'Leo','Sandro','Smash Finale'),
 ('Doubles',144,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',144,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',144,'Sandro','Siwei','In Corsa'),
 ('Doubles',144,'Leo','Sandro','Altro'),
 ('Doubles',144,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',144,'Siwei','Mancato Recupero'),
 ('Doubles',144,'Leo','Fuoco Amico'),
 ('Doubles',144,'Sandro','Fuoco Amico'),
 ('Doubles',144,'Sandro','Autodistruzione');


--Doubles-143
insert into kills values ('Doubles',143,'Leo','Siwei','Altro'),
 ('Doubles',143,'Siwei','Ale','Smash Laterale'),
 ('Doubles',143,'Leo','Siwei','Altro'),
 ('Doubles',143,'Sandro','Leo','Smash Finale'),
 ('Doubles',143,'Leo','Sandro','Smash Laterale'),
 ('Doubles',143,'Siwei','Leo','Altro'),
 ('Doubles',143,'Leo','Sandro','Smash Finale'),
 ('Doubles',143,'Leo','Ale','Fuoco Amico'),
 ('Doubles',143,'Sandro','Leo','Smash Finale'),
 ('Doubles',143,'Sandro','Ale','Altro');

insert into deaths values ('Doubles',143,'Siwei','Mancato Recupero'),
 ('Doubles',143,'Siwei','Mancato Recupero'),
 ('Doubles',143,'Leo','Mancato Recupero'),
 ('Doubles',143,'Ale','Fuoco Amico'),
 ('Doubles',143,'Ale','Autodistruzione');


--Doubles-142
insert into kills values ('Doubles',142,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',142,'Leo','Ale','Fuoco Amico'),
 ('Doubles',142,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',142,'Leo','Sandro','Altro'),
 ('Doubles',142,'Ale','Siwei','Altro'),
 ('Doubles',142,'Ale','Leo','Fuoco Amico'),
 ('Doubles',142,'Leo','Siwei','Altro'),
 ('Doubles',142,'Leo','Sandro','Smash Finale');

insert into deaths values ('Doubles',142,'Ale','Fuoco Amico'),
 ('Doubles',142,'Sandro','3D Land'),
 ('Doubles',142,'Leo','Fuoco Amico'),
 ('Doubles',142,'Siwei','Autodistruzione'),
 ('Doubles',142,'Siwei','Autodistruzione');


--Doubles-141
insert into kills values ('Doubles',141,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',141,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',141,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',141,'Siwei','Sandro','Altro'),
 ('Doubles',141,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',141,'Siwei','Ale','Altro'),
 ('Doubles',141,'Siwei','Sandro','Smash Finale'),
 ('Doubles',141,'Ale','Siwei','Altro'),
 ('Doubles',141,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',141,'Leo','Sandro','Altro'),
 ('Doubles',141,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Doubles',141,'Sandro','Autodistruzione'),
 ('Doubles',141,'Ale','Mancato Recupero'),
 ('Doubles',141,'Sandro','Autodistruzione');


--Doubles-140
insert into kills values ('Doubles',140,'Ale','Sandro','In Corsa'),
 ('Doubles',140,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',140,'Leo','Ale','Speciale in Giù'),
 ('Doubles',140,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',140,'Sandro','Siwei','Smash Finale'),
 ('Doubles',140,'Sandro','Ale','Smash Laterale'),
 ('Doubles',140,'Sandro','Siwei','Smash in Su'),
 ('Doubles',140,'Ale','Sandro','Smash Laterale'),
 ('Doubles',140,'Ale','Leo','Speciale in Giù'),
 ('Doubles',140,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Doubles',140,'Leo','Fuoco Amico');


--Doubles-139
insert into kills values ('Doubles',139,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',139,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',139,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',139,'Siwei','Leo','Aereo Posteriore'),
 ('Doubles',139,'Ale','Siwei','Smash Finale'),
 ('Doubles',139,'Siwei','Ale','Smash Finale'),
 ('Doubles',139,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',139,'Siwei','Leo','Smash Finale'),
 ('Doubles',139,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',139,'Leo','Siwei','Aereo in Su');

insert into deaths values ('Doubles',139,'Sandro','Fuoco Amico'),
 ('Doubles',139,'Sandro','Fuoco Amico');


--Doubles-138
insert into kills values ('Doubles',138,'Ale','Leo','Smash Laterale'),
 ('Doubles',138,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',138,'Sandro','Leo','Smash Finale'),
 ('Doubles',138,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',138,'Leo','Sandro','Altro'),
 ('Doubles',138,'Ale','Siwei','Meteora'),
 ('Doubles',138,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',138,'Siwei','Sandro','Altro'),
 ('Doubles',138,'Ale','Siwei','Meteora');

insert into deaths values ('Doubles',138,'Ale','Fuoco Amico');


--Doubles-137
insert into kills values ('Doubles',137,'Leo','Siwei','Smash Laterale'),
 ('Doubles',137,'Siwei','Leo','Smash Laterale'),
 ('Doubles',137,'Leo','Sandro','Smash Laterale'),
 ('Doubles',137,'Siwei','Ale','Smash Finale'),
 ('Doubles',137,'Ale','Leo','Fuoco Amico'),
 ('Doubles',137,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',137,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',137,'Siwei','Ale','Smash Finale'),
 ('Doubles',137,'Sandro','Leo','Smash Finale'),
 ('Doubles',137,'Ale','Siwei','Altro'),
 ('Doubles',137,'Ale','Sandro','Meteora');

insert into deaths values ('Doubles',137,'Leo','Fuoco Amico'),
 ('Doubles',137,'Siwei','Mancato Recupero');


--Doubles-136
insert into kills values ('Doubles',136,'Leo','Sandro','Altro'),
 ('Doubles',136,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',136,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',136,'Ale','Siwei','Speciale Standard'),
 ('Doubles',136,'Sandro','Leo','Smash Finale'),
 ('Doubles',136,'Siwei','Ale','Smash Finale'),
 ('Doubles',136,'Ale','Sandro','Altro'),
 ('Doubles',136,'Ale','Siwei','Aereo Standard'),
 ('Doubles',136,'Sandro','Ale','Smash Laterale'),
 ('Doubles',136,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',136,'Sandro','Autodistruzione'),
 ('Doubles',136,'Sandro','Mancato Recupero'),
 ('Doubles',136,'Leo','Autodistruzione');


--Double-135
insert into kills values ('Doubles',135,'Sandro','Leo','Smash Laterale'),
 ('Doubles',135,'Siwei','Sandro','Smash in Su'),
 ('Doubles',135,'Sandro','Siwei','Smash Finale'),
 ('Doubles',135,'Siwei','Ale','In Corsa'),
 ('Doubles',135,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',135,'Leo','Ale','Smash Laterale'),
 ('Doubles',135,'Leo','Sandro','Aereo in Giù'),
 ('Doubles',135,'Ale','Siwei','Speciale Laterale'),
 ('Doubles',135,'Sandro','Leo','Smash Finale'),
 ('Doubles',135,'Siwei','Ale','Smash Finale'),
 ('Doubles',135,'Sandro','Siwei','Speciale Laterale');


--Single-408
insert into kills values ('Single',408,'Ale','Sandro','Altro'),
 ('Single',408,'Leo','Ale','Speciale Standard'),
 ('Single',408,'Ale','Siwei','Aereo Posteriore'),
 ('Single',408,'Sandro','Leo','Smash Finale'),
 ('Single',408,'Leo','Ale','Smash Finale'),
 ('Single',408,'Leo','Sandro','Speciale Standard'),
 ('Single',408,'Sandro','Siwei','Altro'),
 ('Single',408,'Siwei','Leo','Smash Laterale'),
 ('Single',408,'Sandro','Leo','Smash Finale'),
 ('Single',408,'Ale','Sandro','Smash Finale'),
 ('Single',408,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',408,'Sandro','Mancato Recupero');


--Single-407
insert into kills values ('Single',407,'Ale','Sandro','Altro'),
 ('Single',407,'Leo','Siwei','Altro'),
 ('Single',407,'Sandro','Leo','Smash Finale'),
 ('Single',407,'Ale','Sandro','Meteora'),
 ('Single',407,'Sandro','Ale','Aereo Frontale'),
 ('Single',407,'Siwei','Sandro','Speciale in Su'),
 ('Single',407,'Leo','Siwei','Altro'),
 ('Single',407,'Leo','Ale','Meteora'),
 ('Single',407,'Siwei','Leo','Speciale in Su'),
 ('Single',407,'Siwei','Leo','Smash Finale'),
 ('Single',407,'Ale','Siwei','Meteora');

insert into deaths values ('Single',407,'Sandro','Mancato Recupero'),
 ('Single',407,'Siwei','Autodistruzione'),
 ('Single',407,'Siwei','Mancato Recupero');


--Single-406
insert into kills values ('Single',406,'Leo','Sandro','Speciale Standard'),
 ('Single',406,'Siwei','Sandro','Speciale Laterale'),
 ('Single',406,'Leo','Ale','Speciale Laterale'),
 ('Single',406,'Sandro','Leo','Smash Laterale'),
 ('Single',406,'Sandro','Siwei','Smash Laterale'),
 ('Single',406,'Sandro','Ale','Smash Finale'),
 ('Single',406,'Sandro','Leo','Smash Laterale'),
 ('Single',406,'Leo','Ale','Smash Finale'),
 ('Single',406,'Siwei','Leo','Smash Finale'),
 ('Single',406,'Sandro','Siwei','Aereo Frontale'),
 ('Single',406,'Sandro','Siwei','Footstool');


--Single-405
insert into kills values ('Single',405,'Ale','Sandro','Meteora'),
 ('Single',405,'Leo','Siwei','Speciale Standard'),
 ('Single',405,'Leo','Ale','Speciale in Giù'),
 ('Single',405,'Siwei','Leo','Smash Finale'),
 ('Single',405,'Siwei','Leo','Altro'),
 ('Single',405,'Leo','Sandro','Smash Laterale'),
 ('Single',405,'Leo','Ale','Speciale Standard'),
 ('Single',405,'Leo','Siwei','Aereo Posteriore'),
 ('Single',405,'Ale','Leo','Altro'),
 ('Single',405,'Siwei','Ale','Speciale Laterale');

insert into deaths values ('Single',405,'Sandro','Autodistruzione'),
 ('Single',405,'Leo','PictoChat 2');


--Single-404
insert into kills values ('Single',404,'Sandro','Siwei','Smash in Su'),
 ('Single',404,'Sandro','Ale','Meteora'),
 ('Single',404,'Ale','Sandro','Smash Laterale'),
 ('Single',404,'Ale','Leo','Smash in Giù'),
 ('Single',404,'Sandro','Siwei','Smash Laterale'),
 ('Single',404,'Siwei','Sandro','Smash Finale'),
 ('Single',404,'Leo','Ale','Smash Laterale'),
 ('Single',404,'Ale','Leo','In Corsa'),
 ('Single',404,'Sandro','Siwei','Aereo in Su'),
 ('Single',404,'Sandro','Leo','Altro'),
 ('Single',404,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',404,'Leo','Autodistruzione');


--Single-403
insert into kills values ('Single',403,'Sandro','Siwei','Altro'),
 ('Single',403,'Ale','Sandro','Aereo Posteriore'),
 ('Single',403,'Sandro','Leo','Aereo in Su'),
 ('Single',403,'Sandro','Siwei','Smash Finale'),
 ('Single',403,'Sandro','Ale','Smash Finale'),
 ('Single',403,'Ale','Sandro','Smash in Su'),
 ('Single',403,'Sandro','Ale','Speciale Laterale'),
 ('Single',403,'Leo','Sandro','Altro'),
 ('Single',403,'Ale','Leo','Aereo Standard'),
 ('Single',403,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',403,'Siwei','Mancato Recupero'),
 ('Single',403,'Siwei','Autodistruzione'),
 ('Single',403,'Sandro','Mancato Recupero');


--Single-402
insert into kills values ('Single',402,'Ale','Siwei','Smash Laterale'),
 ('Single',402,'Siwei','Sandro','Smash Laterale'),
 ('Single',402,'Ale','Leo','Speciale in Giù'),
 ('Single',402,'Sandro','Ale','Smash Finale'),
 ('Single',402,'Leo','Sandro','Smash Finale'),
 ('Single',402,'Ale','Leo','Aereo Frontale'),
 ('Single',402,'Ale','Siwei','Speciale in Giù'),
 ('Single',402,'Siwei','Ale','Speciale Laterale'),
 ('Single',402,'Sandro','Siwei','Smash Finale'),
 ('Single',402,'Sandro','Ale','Altro'),
 ('Single',402,'Leo','Sandro','Speciale Laterale');

insert into deaths values ('Single',402,'Ale','Autodistruzione');


--Single-401
insert into kills values ('Single',401,'Leo','Sandro','Smash Laterale'),
 ('Single',401,'Sandro','Leo','Smash Laterale'),
 ('Single',401,'Sandro','Siwei','Smash Laterale'),
 ('Single',401,'Sandro','Ale','Smash Finale'),
 ('Single',401,'Leo','Sandro','Smash in Su'),
 ('Single',401,'Leo','Siwei','Smash Finale'),
 ('Single',401,'Sandro','Ale','Smash Laterale'),
 ('Single',401,'Sandro','Leo','Smash Finale'),
 ('Single',401,'Leo','Sandro','Aereo in Giù'),
 ('Single',401,'Siwei','Leo','Smash Finale'),
 ('Single',401,'Ale','Siwei','Smash Finale');


--Single-400
insert into kills values ('Single',400,'Ale','Sandro','Aereo Frontale'),
 ('Single',400,'Siwei','Leo','Altro'),
 ('Single',400,'Sandro','Siwei','Smash in Su'),
 ('Single',400,'Sandro','Ale','Smash Finale'),
 ('Single',400,'Leo','Siwei','Smash Finale'),
 ('Single',400,'Siwei','Sandro','In Corsa'),
 ('Single',400,'Leo','Siwei','Peculiare'), --PECULIAR: CHARIZARD
 ('Single',400,'Ale','Leo','Aereo Posteriore'),
 ('Single',400,'Sandro','Ale','Aereo in Su'),
 ('Single',400,'Ale','Sandro','Smash in Su'),
 ('Single',400,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',400,'Leo','Living Room');


--Single-399
insert into kills values ('Single',399,'Ale','Siwei','Smash Laterale'),
 ('Single',399,'Leo','Sandro','Speciale in Su'),
 ('Single',399,'Siwei','Ale','Altro'),
 ('Single',399,'Sandro','Leo','Smash Finale'),
 ('Single',399,'Ale','Sandro','Smash Finale'),
 ('Single',399,'Sandro','Siwei','Smash in Su'),
 ('Single',399,'Ale','Leo','Altro'),
 ('Single',399,'Sandro','Siwei','Smash Finale'),
 ('Single',399,'Sandro','Ale','Aereo in Su'),
 ('Single',399,'Leo','Sandro','Smash Finale'),
 ('Single',399,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',399,'Leo','Mancato Recupero');


--Single-398
insert into kills values ('Single',398,'Leo','Sandro','Altro'),
 ('Single',398,'Sandro','Siwei','Speciale Laterale'),
 ('Single',398,'Leo','Ale','Speciale in Su'),
 ('Single',398,'Leo','Siwei','Speciale in Su'),
 ('Single',398,'Ale','Leo','Smash Finale'),
 ('Single',398,'Leo','Sandro','Speciale in Su'),
 ('Single',398,'Sandro','Ale','Speciale Laterale'),
 ('Single',398,'Siwei','Leo','Smash Laterale'),
 ('Single',398,'Ale','Siwei','Speciale Standard'),
 ('Single',398,'Ale','Sandro','Aereo Standard'),
 ('Single',398,'Leo','Ale','Altro');

insert into deaths values ('Single',398,'Sandro','3D Land'),
 ('Single',398,'Ale','3D Land');


--Single-397
insert into kills values ('Single',397,'Sandro','Ale','Speciale in Giù'),
 ('Single',397,'Sandro','Siwei','Aereo in Giù'),
 ('Single',397,'Sandro','Leo','Smash Finale'),
 ('Single',397,'Siwei','Sandro','Smash in Su'),
 ('Single',397,'Ale','Siwei','Smash Finale'),
 ('Single',397,'Leo','Ale','Smash Laterale'),
 ('Single',397,'Siwei','Sandro','Smash Finale'),
 ('Single',397,'Ale','Leo','Aereo Standard'),
 ('Single',397,'Leo','Siwei','Smash Laterale'),
 ('Single',397,'Sandro','Leo','Speciale Laterale'),
 ('Single',397,'Sandro','Ale','Smash Laterale');


--Single-396
insert into kills values ('Single',396,'Leo','Siwei','Altro'),
 ('Single',396,'Sandro','Ale','Altro'),
 ('Single',396,'Siwei','Sandro','Smash Laterale'),
 ('Single',396,'Sandro','Leo','Smash Laterale'),
 ('Single',396,'Sandro','Ale','Smash Finale'),
 ('Single',396,'Leo','Siwei','Smash Finale'),
 ('Single',396,'Leo','Ale','Speciale Laterale'),
 ('Single',396,'Sandro','Leo','Speciale Standard'),
 ('Single',396,'Sandro','Siwei','Speciale Laterale'),
 ('Single',396,'Leo','Sandro','Aereo in Su'),
 ('Single',396,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',396,'Siwei','Mancato Recupero'),
 ('Single',396,'Ale','Corneria');


--Single-395
insert into kills values ('Single',395,'Sandro','Siwei','Altro'),
 ('Single',395,'Sandro','Ale','Smash Laterale'),
 ('Single',395,'Leo','Sandro','Aereo in Giù'),
 ('Single',395,'Ale','Siwei','Smash Finale'),
 ('Single',395,'Ale','Sandro','Altro'),
 ('Single',395,'Siwei','Leo','Smash Finale'),
 ('Single',395,'Sandro','Ale','Speciale Laterale'),
 ('Single',395,'Ale','Sandro','Smash Finale'),
 ('Single',395,'Siwei','Leo','Speciale Laterale'),
 ('Single',395,'Siwei','Leo','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',395,'Ale','Siwei','Speciale Laterale');

insert into deaths values ('Single',395,'Siwei','Mancato Recupero');


--Single-394
insert into kills values ('Single',394,'Sandro','Leo','Altro'),
 ('Single',394,'Ale','Sandro','Altro'),
 ('Single',394,'Ale','Siwei','Altro'),
 ('Single',394,'Sandro','Ale','Smash Laterale'),
 ('Single',394,'Sandro','Leo','Smash Finale'),
 ('Single',394,'Leo','Ale','Altro'),
 ('Single',394,'Ale','Sandro','Aereo Frontale'),
 ('Single',394,'Sandro','Siwei','Smash in Su'),
 ('Single',394,'Siwei','Ale','Aereo Posteriore'),
 ('Single',394,'Sandro','Leo','Smash Finale'),
 ('Single',394,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Single',394,'Leo','Mancato Recupero'),
 ('Single',394,'Sandro','Autodistruzione'),
 ('Single',394,'Siwei','Mancato Recupero'),
 ('Single',394,'Ale','Autodistruzione');


--Single-393
insert into kills values ('Single',393,'Sandro','Siwei','Speciale Laterale'),
 ('Single',393,'Sandro','Leo','Speciale Laterale'),
 ('Single',393,'Ale','Sandro','Aereo Posteriore'),
 ('Single',393,'Leo','Ale','Aereo Posteriore'),
 ('Single',393,'Siwei','Sandro','Smash Finale'),
 ('Single',393,'Ale','Siwei','Smash Finale'),
 ('Single',393,'Ale','Leo','Smash Finale'),
 ('Single',393,'Siwei','Ale','Altro'),
 ('Single',393,'Sandro','Leo','Smash Finale'),
 ('Single',393,'Siwei','Sandro','Speciale Standard'),
 ('Single',393,'Ale','Siwei','Aereo Posteriore');


--Single-392
insert into kills values ('Single',392,'Sandro','Leo','Speciale Laterale'),
 ('Single',392,'Sandro','Siwei','Speciale Laterale'),
 ('Single',392,'Leo','Sandro','Smash Laterale'),
 ('Single',392,'Sandro','Leo','Smash Finale'),
 ('Single',392,'Sandro','Siwei','Smash Finale'),
 ('Single',392,'Siwei','Ale','Smash Laterale'),
 ('Single',392,'Siwei','Sandro','Smash Finale'),
 ('Single',392,'Leo','Siwei','Smash Finale'),
 ('Single',392,'Leo','Sandro','Speciale Standard'),
 ('Single',392,'Ale','Leo','Aereo Posteriore');


--Single-391
insert into kills values ('Single',391,'Siwei','Leo','Altro'),
 ('Single',391,'Leo','Sandro','Speciale Laterale'),
 ('Single',391,'Ale','Siwei','Aereo Posteriore'),
 ('Single',391,'Siwei','Leo','Speciale Standard'),
 ('Single',391,'Siwei','Ale','Smash Finale'),
 ('Single',391,'Siwei','Sandro','Smash Finale'),
 ('Single',391,'Leo','Siwei','Speciale Standard'),
 ('Single',391,'Ale','Sandro','Speciale Laterale'),
 ('Single',391,'Siwei','Leo','Aereo Frontale'),
 ('Single',391,'Siwei','Ale','Smash Finale'),
 ('Single',391,'Ale','Siwei','Altro');

insert into deaths values ('Single',391,'Leo','Mancato Recupero'),
 ('Single',391,'Siwei','Mancato Recupero');


--Single-390
insert into kills values ('Single',390,'Sandro','Siwei','Smash Laterale'),
 ('Single',390,'Leo','Sandro','Speciale in Giù'),
 ('Single',390,'Sandro','Leo','Speciale Laterale'),
 ('Single',390,'Sandro','Siwei','Smash Finale'),
 ('Single',390,'Leo','Sandro','Speciale Laterale'),
 ('Single',390,'Ale','Leo','Speciale in Giù'),
 ('Single',390,'Siwei','Ale','Speciale Laterale'),
 ('Single',390,'Ale','Sandro','Altro'),
 ('Single',390,'Leo','Ale','Altro'),
 ('Single',390,'Leo','Siwei','Altro'),
 ('Single',390,'Leo','Ale','Altro');

insert into deaths values ('Single',390,'Sandro','Mancato Recupero'),
 ('Single',390,'Ale','Autodistruzione'),
 ('Single',390,'Siwei','Autodistruzione'),
 ('Single',390,'Ale','Autodistruzione');


--Single-389
insert into kills values ('Single',389,'Sandro','Ale','Altro'),
 ('Single',389,'Leo','Siwei','Altro'),
 ('Single',389,'Ale','Sandro','Smash Laterale'),
 ('Single',389,'Siwei','Ale','Altro'),
 ('Single',389,'Siwei','Leo','Altro'),
 ('Single',389,'Sandro','Siwei','Altro'),
 ('Single',389,'Leo','Sandro','Altro'),
 ('Single',389,'Ale','Leo','Smash Finale'),
 ('Single',389,'Sandro','Siwei','Speciale Laterale'),
 ('Single',389,'Sandro','Leo','Altro'),
 ('Single',389,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Single',389,'Ale','Garden of Hope'),
 ('Single',389,'Siwei','Mancato Recupero'),
 ('Single',389,'Ale','Mancato Recupero'),
 ('Single',389,'Leo','Garden of Hope'),
 ('Single',389,'Siwei','Garden of Hope'),
 ('Single',389,'Sandro','Mancato Recupero'),
 ('Single',389,'Leo','Garden of Hope');


--Single-388
insert into kills values ('Single',388,'Sandro','Ale','Smash Laterale'),
 ('Single',388,'Sandro','Siwei','Smash Laterale'),
 ('Single',388,'Leo','Siwei','Altro'),
 ('Single',388,'Ale','Sandro','Aereo Posteriore'),
 ('Single',388,'Leo','Ale','Speciale Laterale'),
 ('Single',388,'Sandro','Leo','Smash Finale'),
 ('Single',388,'Ale','Siwei','Aereo Posteriore'),
 ('Single',388,'Leo','Sandro','Speciale Standard'),
 ('Single',388,'Sandro','Leo','Smash in Su'),
 ('Single',388,'Sandro','Ale','Smash Finale'),
 ('Single',388,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',388,'Siwei','Autodistruzione');


--Single-387
insert into kills values ('Single',387,'Ale','Leo','Smash Laterale'),
 ('Single',387,'Ale','Siwei','Aereo Posteriore'),
 ('Single',387,'Sandro','Ale','Aereo Frontale'),
 ('Single',387,'Ale','Sandro','Aereo Standard'),
 ('Single',387,'Sandro','Leo','Smash Finale'),
 ('Single',387,'Siwei','Sandro','Smash Finale'),
 ('Single',387,'Sandro','Ale','Altro'),
 ('Single',387,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',387,'Ale','Sandro','Aereo Posteriore'),
 ('Single',387,'Ale','Siwei','Smash in Giù'),
 ('Single',387,'Leo','Ale','Speciale Laterale');


--Single-386
insert into kills values ('Single',386,'Leo','Siwei','Speciale in Giù'),
 ('Single',386,'Leo','Sandro','Speciale in Giù'),
 ('Single',386,'Siwei','Ale','Smash Finale'),
 ('Single',386,'Siwei','Leo','Altro'),
 ('Single',386,'Ale','Sandro','Smash Laterale'),
 ('Single',386,'Ale','Siwei','Smash Finale'),
 ('Single',386,'Leo','Ale','Smash Laterale'),
 ('Single',386,'Ale','Siwei','Altro'),
 ('Single',386,'Leo','Sandro','Smash Laterale'),
 ('Single',386,'Ale','Leo','Altro'),
 ('Single',386,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',386,'Siwei','Pirate Ship'),
 ('Single',386,'Leo','Pirate Ship');


--Single-385
insert into kills values ('Single',385,'Leo','Sandro','Smash Laterale'),
 ('Single',385,'Leo','Ale','Speciale in Giù'),
 ('Single',385,'Ale','Siwei','Smash Laterale'),
 ('Single',385,'Sandro','Ale','Smash Finale'),
 ('Single',385,'Sandro','Leo','Smash Laterale'),
 ('Single',385,'Siwei','Sandro','Speciale in Giù'),
 ('Single',385,'Ale','Sandro','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',385,'Siwei','Ale','Smash in Giù'),
 ('Single',385,'Leo','Siwei','Aereo Posteriore'),
 ('Single',385,'Siwei','Leo','Smash in Giù'),
 ('Single',385,'Leo','Siwei','Smash Finale');


--Single-384
insert into kills values ('Single',384,'Sandro','Siwei','Altro'),
 ('Single',384,'Leo','Ale','Speciale in Su'),
 ('Single',384,'Siwei','Leo','Smash in Su'),
 ('Single',384,'Leo','Sandro','Speciale in Su'),
 ('Single',384,'Sandro','Siwei','Smash Finale'),
 ('Single',384,'Siwei','Leo','Altro'),
 ('Single',384,'Leo','Ale','Speciale in Su'),
 ('Single',384,'Siwei','Sandro','Smash in Su'),
 ('Single',384,'Leo','Siwei','Aereo Posteriore'),
 ('Single',384,'Ale','Leo','Smash Laterale'),
 ('Single',384,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',384,'Leo','Autodistruzione');


--Single-383
insert into kills values ('Single',383,'Leo','Ale','Smash Laterale'),
 ('Single',383,'Leo','Siwei','Speciale in Su'),
 ('Single',383,'Sandro','Leo','Aereo in Giù'),
 ('Single',383,'Sandro','Siwei','Smash Finale'),
 ('Single',383,'Sandro','Ale','Smash Finale'),
 ('Single',383,'Siwei','Sandro','Speciale in Su'),
 ('Single',383,'Leo','Ale','Smash Finale'),
 ('Single',383,'Siwei','Leo','Speciale in Su'),
 ('Single',383,'Sandro','Siwei','Aereo in Giù'),
 ('Single',383,'Leo','Sandro','Smash Finale'),
 ('Single',383,'Leo','Sandro','Speciale in Su');


--Single-382
insert into kills values ('Single',382,'Sandro','Siwei','Smash Laterale'),
 ('Single',382,'Siwei','Leo','Smash Finale'),
 ('Single',382,'Leo','Siwei','Smash Laterale'),
 ('Single',382,'Leo','Sandro','Smash Finale'),
 ('Single',382,'Siwei','Ale','Smash Laterale'),
 ('Single',382,'Sandro','Leo','Altro'),
 ('Single',382,'Ale','Siwei','Altro'),
 ('Single',382,'Ale','Sandro','Speciale Standard'),
 ('Single',382,'Sandro','Ale','Smash Laterale'),
 ('Single',382,'Leo','Sandro','Smash Laterale'),
 ('Single',382,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',382,'Leo','Pirate Ship'),
 ('Single',382,'Siwei','Autodistruzione');


--Single-381
insert into kills values ('Single',381,'Ale','Siwei','Altro'),
 ('Single',381,'Sandro','Leo','Altro'),
 ('Single',381,'Ale','Sandro','Speciale in Giù'),
 ('Single',381,'Leo','Ale','Smash Finale'),
 ('Single',381,'Ale','Siwei','Smash Finale'),
 ('Single',381,'Ale','Sandro','Smash Finale'),
 ('Single',381,'Ale','Leo','Smash Finale'),
 ('Single',381,'Sandro','Siwei','Altro'),
 ('Single',381,'Ale','Leo','Altro'),
 ('Single',381,'Ale','Sandro','Altro');

insert into deaths values ('Single',381,'Siwei','Mancato Recupero'),
 ('Single',381,'Leo','Mancato Recupero'),
 ('Single',381,'Siwei','Autodistruzione'),
 ('Single',381,'Leo','Mancato Recupero'),
 ('Single',381,'Sandro','Autodistruzione');


--Single-380
insert into kills values ('Single',380,'Siwei','Ale','Smash Laterale'),
 ('Single',380,'Leo','Sandro','Aereo Posteriore'),
 ('Single',380,'Sandro','Leo','In Corsa'),
 ('Single',380,'Sandro','Siwei','Aereo in Giù'),
 ('Single',380,'Siwei','Ale','Smash Finale'),
 ('Single',380,'Ale','Siwei','Smash Laterale'),
 ('Single',380,'Ale','Leo','Smash Laterale'),
 ('Single',380,'Ale','Sandro','Smash Laterale'),
 ('Single',380,'Siwei','Sandro','Smash Finale'),
 ('Single',380,'Ale','Leo','Speciale in Giù'),
 ('Single',380,'Siwei','Ale','In Corsa');


--Single-379
insert into kills values ('Single',379,'Sandro','Ale','Smash Laterale'),
 ('Single',379,'Ale','Siwei','Smash Laterale'),
 ('Single',379,'Sandro','Leo','Aereo Frontale'),
 ('Single',379,'Siwei','Sandro','Speciale Laterale'),
 ('Single',379,'Sandro','Siwei','Smash Finale'),
 ('Single',379,'Ale','Leo','In Corsa'),
 ('Single',379,'Siwei','Sandro','Speciale Laterale'),
 ('Single',379,'Sandro','Ale','Aereo in Giù'),
 ('Single',379,'Leo','Siwei','Altro'),
 ('Single',379,'Ale','Leo','Smash Laterale'),
 ('Single',379,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',379,'Siwei','Autodistruzione');


--Single-378
insert into kills values ('Single',378,'Leo','Ale','Smash Laterale'),
 ('Single',378,'Sandro','Siwei','Aereo in Su'),
 ('Single',378,'Ale','Sandro','Aereo Frontale'),
 ('Single',378,'Siwei','Leo','Altro'),
 ('Single',378,'Sandro','Siwei','Smash Finale'),
 ('Single',378,'Siwei','Leo','Smash Finale'),
 ('Single',378,'Siwei','Sandro','Smash Laterale'),
 ('Single',378,'Sandro','Siwei','In Corsa'),
 ('Single',378,'Leo','Ale','Aereo Posteriore'),
 ('Single',378,'Leo','Ale','Altro'),
 ('Single',378,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',378,'Leo','Mancato Recupero'),
 ('Single',378,'Ale','Mancato Recupero');


--Single-377
insert into kills values ('Single',377,'Ale','Sandro','Speciale in Giù'),
 ('Single',377,'Sandro','Ale','Smash in Su'),
 ('Single',377,'Siwei','Sandro','Smash Laterale'),
 ('Single',377,'Ale','Leo','In Corsa'),
 ('Single',377,'Sandro','Siwei','Aereo in Giù'),
 ('Single',377,'Siwei','Leo','Smash Finale'),
 ('Single',377,'Siwei','Ale','Smash Laterale'),
 ('Single',377,'Siwei','Leo','Speciale in Giù'),
 ('Single',377,'Ale','Siwei','Smash Laterale'),
 ('Single',377,'Siwei','Sandro','Aereo in Su'),
 ('Single',377,'Siwei','Ale','Smash Finale');


--Single-376
insert into kills values ('Single',376,'Leo','Siwei','Speciale in Giù'),
 ('Single',376,'Sandro','Leo','Altro'),
 ('Single',376,'Siwei','Sandro','Smash Finale'),
 ('Single',376,'Siwei','Ale','Smash in Su'),
 ('Single',376,'Sandro','Siwei','Aereo in Giù'),
 ('Single',376,'Ale','Sandro','Speciale Laterale'),
 ('Single',376,'Siwei','Leo','Smash Finale'),
 ('Single',376,'Sandro','Ale','Smash Laterale'),
 ('Single',376,'Leo','Siwei','Speciale in Giù'),
 ('Single',376,'Ale','Sandro','Smash Finale'),
 ('Single',376,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',376,'Leo','Mancato Recupero');


--Single-375
insert into kills values ('Single',375,'Ale','Sandro','Altro'),
 ('Single',375,'Ale','Siwei','Speciale Laterale'),
 ('Single',375,'Leo','Ale','Aereo Frontale'),
 ('Single',375,'Siwei','Leo','Speciale Laterale'),
 ('Single',375,'Leo','Ale','Altro'),
 ('Single',375,'Leo','Sandro','Speciale Standard'),
 ('Single',375,'Ale','Siwei','Smash Laterale'),
 ('Single',375,'Ale','Leo','Speciale Laterale'),
 ('Single',375,'Leo','Sandro','Smash Laterale'),
 ('Single',375,'Siwei','Ale','Speciale Laterale'),
 ('Single',375,'Leo','Siwei','Speciale in Giù');

insert into deaths values ('Single',375,'Sandro','Autodistruzione'),
 ('Single',375,'Ale','BUG');


--Single-374
insert into kills values ('Single',374,'Ale','Siwei','Speciale Laterale'),
 ('Single',374,'Sandro','Leo','Aereo in Giù'),
 ('Single',374,'Leo','Siwei','Speciale Laterale'),
 ('Single',374,'Leo','Sandro','Speciale in Giù'),
 ('Single',374,'Siwei','Ale','Speciale Laterale'),
 ('Single',374,'Ale','Leo','Speciale Laterale'),
 ('Single',374,'Sandro','Siwei','Smash Finale'),
 ('Single',374,'Ale','Sandro','Smash Finale'),
 ('Single',374,'Leo','Ale','Scudo Rotto'),
 ('Single',374,'Leo','Sandro','Speciale in Giù'),
 ('Single',374,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',374,'Ale','Scudo Rotto');

--Single-373
insert into kills values ('Single',373,'Ale','Leo','Altro'),
 ('Single',373,'Leo','Ale','Meteora'),
 ('Single',373,'Siwei','Leo','Speciale in Giù'),
 ('Single',373,'Leo','Siwei','Speciale Laterale'),
 ('Single',373,'Siwei','Ale','Speciale Laterale'),
 ('Single',373,'Siwei','Leo','Smash Finale'),
 ('Single',373,'Ale','Sandro','Smash Finale'),
 ('Single',373,'Ale','Siwei','Altro'),
 ('Single',373,'Sandro','Ale','Smash Finale'),
 ('Single',373,'Sandro','Siwei','Aereo Posteriore');

insert into deaths values ('Single',373,'Leo','Mancato Recupero'),
 ('Single',373,'Siwei','3D Land');


--Single-372
insert into kills values ('Single',372,'Siwei','Leo','Altro'),
 ('Single',372,'Ale','Sandro','Speciale Laterale'),
 ('Single',372,'Sandro','Siwei','Aereo in Giù'),
 ('Single',372,'Sandro','Leo','Smash Finale'),
 ('Single',372,'Sandro','Ale','Smash Finale'),
 ('Single',372,'Siwei','Sandro','Speciale in Giù'),
 ('Single',372,'Siwei','Ale','Altro'),
 ('Single',372,'Ale','Siwei','Speciale Laterale'),
 ('Single',372,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',372,'Sandro','Leo','Aereo in Giù'),
 ('Single',372,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',372,'Leo','Mancato Recupero'),
 ('Single',372,'Ale','Mancato Recupero');


--Single-371
insert into kills values ('Single',371,'Ale','Sandro','Speciale in Su'),
 ('Single',371,'Sandro','Leo','Altro'),
 ('Single',371,'Sandro','Siwei','Aereo in Giù'),
 ('Single',371,'Leo','Ale','Smash Laterale'),
 ('Single',371,'Ale','Sandro','Smash Finale'),
 ('Single',371,'Sandro','Leo','Aereo in Giù'),
 ('Single',371,'Siwei','Ale','Speciale Standard'),
 ('Single',371,'Ale','Siwei','Smash in Giù'),
 ('Single',371,'Siwei','Leo','Speciale Standard'),
 ('Single',371,'Ale','Sandro','Speciale in Su'),
 ('Single',371,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',371,'Leo','Mancato Recupero');


--Single-370
insert into kills values ('Single',370,'Ale','Siwei','Aereo Frontale'),
 ('Single',370,'Siwei','Ale','Altro'),
 ('Single',370,'Ale','Leo','Speciale in Giù'),
 ('Single',370,'Ale','Siwei','Smash Finale'),
 ('Single',370,'Sandro','Leo','Smash Finale'),
 ('Single',370,'Siwei','Sandro','Speciale Standard'),
 ('Single',370,'Leo','Ale','Speciale in Su'),
 ('Single',370,'Siwei','Leo','Altro'),
 ('Single',370,'Sandro','Siwei','Altro'),
 ('Single',370,'Sandro','Ale','Altro');

insert into deaths values ('Single',370,'Ale','Mancato Recupero'),
 ('Single',370,'Leo','Mancato Recupero'),
 ('Single',370,'Siwei','Mancato Recupero'),
 ('Single',370,'Ale','Mancato Recupero');


--Single-369
insert into kills values ('Single',369,'Leo','Sandro','Altro'),
 ('Single',369,'Ale','Siwei','Speciale in Giù'),
 ('Single',369,'Sandro','Siwei','Altro'),
 ('Single',369,'Siwei','Sandro','Speciale in Giù'),
 ('Single',369,'Siwei','Leo','Speciale Laterale'),
 ('Single',369,'Leo','Ale','Smash Laterale'),
 ('Single',369,'Ale','Sandro','Smash Finale'),
 ('Single',369,'Ale','Siwei','Aereo Standard'),
 ('Single',369,'Ale','Leo','Speciale in Giù'),
 ('Single',369,'Leo','Ale','Smash Finale'),
 ('Single',369,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',369,'Siwei','Mancato Recupero');


--Single-368
insert into kills values ('Single',368,'Ale','Siwei','Speciale in Giù'),
 ('Single',368,'Sandro','Ale','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',368,'Siwei','Leo','Smash in Su'),
 ('Single',368,'Ale','Siwei','Smash Finale'),
 ('Single',368,'Ale','Sandro','Smash Finale'),
 ('Single',368,'Sandro','Siwei','Smash Finale'),
 ('Single',368,'Sandro','Leo','Aereo in Giù'),
 ('Single',368,'Sandro','Ale','Speciale in Su'),
 ('Single',368,'Ale','Sandro','In Corsa'),
 ('Single',368,'Sandro','Leo','Smash Finale'),
 ('Single',368,'Sandro','Ale','Peculiare'); --PECULIAR: MR. GAME & WATCH CHAIR


--Single-367
insert into kills values ('Single',367,'Sandro','Ale','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',367,'Siwei','Sandro','Altro'),
 ('Single',367,'Sandro','Siwei','Speciale in Su'),
 ('Single',367,'Sandro','Leo','Speciale in Su'),
 ('Single',367,'Sandro','Ale','Speciale in Su'),
 ('Single',367,'Sandro','Leo','Altro'),
 ('Single',367,'Sandro','Siwei','Smash Finale'),
 ('Single',367,'Sandro','Leo','Speciale in Su'),
 ('Single',367,'Siwei','Ale','Aereo Frontale'),
 ('Single',367,'Siwei','Sandro','Aereo Frontale'),
 ('Single',367,'Siwei','Sandro','Aereo in Su');

insert into deaths values ('Single',367,'Sandro','Autodistruzione'),
 ('Single',367,'Leo','Autodistruzione');


--Single-366
insert into kills values ('Single',366,'Sandro','Siwei','Smash Laterale'),
 ('Single',366,'Leo','Ale','Peculiare'), --PECULIAR: CHARIZARD
 ('Single',366,'Siwei','Leo','Smash Laterale'),
 ('Single',366,'Sandro','Siwei','Smash Finale'),
 ('Single',366,'Siwei','Sandro','Aereo Frontale'),
 ('Single',366,'Leo','Siwei','Peculiare'), --PECULIAR: CHARIZARD
 ('Single',366,'Leo','Ale','Altro'),
 ('Single',366,'Ale','Leo','Speciale in Giù'),
 ('Single',366,'Sandro','Ale','Altro'),
 ('Single',366,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',366,'Ale','Autodistruzione'),
 ('Single',366,'Ale','Autodistruzione');


--Single-365
insert into kills values ('Single',365,'Leo','Ale','Altro'),
 ('Single',365,'Ale','Siwei','Speciale Laterale'),
 ('Single',365,'Siwei','Leo','Aereo Frontale'),
 ('Single',365,'Sandro','Siwei','Altro'),
 ('Single',365,'Ale','Sandro','Speciale Laterale'),
 ('Single',365,'Leo','Ale','Speciale Laterale'),
 ('Single',365,'Leo','Siwei','Meteora'),
 ('Single',365,'Sandro','Leo','Altro'),
 ('Single',365,'Leo','Ale','Smash Finale'),
 ('Single',365,'Leo','Sandro','Altro'),
 ('Single',365,'Sandro','Leo','Altro');

insert into deaths values ('Single',365,'Ale','Summit'),
 ('Single',365,'Siwei','Summit'),
 ('Single',365,'Leo','Mancato Recupero'),
 ('Single',365,'Sandro','Summit'),
 ('Single',365,'Leo','Autodistruzione');


--Single-364
insert into kills values ('Single',364,'Ale','Sandro','Speciale Laterale'),
 ('Single',364,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',364,'Siwei','Leo','Smash Laterale'),
 ('Single',364,'Siwei','Ale','Smash Laterale'),
 ('Single',364,'Sandro','Siwei','Smash Finale'),
 ('Single',364,'Sandro','Leo','Smash Finale'),
 ('Single',364,'Ale','Sandro','Aereo Frontale'),
 ('Single',364,'Leo','Sandro','Smash Finale'),
 ('Single',364,'Siwei','Leo','Smash Finale'),
 ('Single',364,'Ale','Siwei','Smash Laterale');


--Single-363
insert into kills values ('Single',363,'Leo','Siwei','Smash Laterale'),
 ('Single',363,'Ale','Leo','Speciale Standard'),
 ('Single',363,'Leo','Ale','Smash Laterale'),
 ('Single',363,'Sandro','Siwei','Altro'),
 ('Single',363,'Siwei','Ale','Speciale Standard'),
 ('Single',363,'Leo','Ale','Speciale Laterale'),
 ('Single',363,'Ale','Leo','Altro'),
 ('Single',363,'Siwei','Sandro','Smash in Su'),
 ('Single',363,'Sandro','Siwei','Altro'),
 ('Single',363,'Sandro','Leo','Peculiare'); --PECULIAR: MR. GAME & WATCH CHAIR

insert into deaths values ('Single',363,'Leo','Autodistruzione'),
 ('Single',363,'Siwei','Autodistruzione');


--Single-362
insert into kills values ('Single',362,'Ale','Leo','Peculiare'), --PECULIAR: KIRBY STAR
 ('Single',362,'Leo','Siwei','Altro'),
 ('Single',362,'Sandro','Leo','Speciale Laterale'),
 ('Single',362,'Ale','Sandro','Aereo Frontale'),
 ('Single',362,'Siwei','Ale','Speciale in Su'),
 ('Single',362,'Siwei','Sandro','Altro'),
 ('Single',362,'Siwei','Ale','Speciale Laterale'),
 ('Single',362,'Sandro','Siwei','Smash Laterale'),
 ('Single',362,'Leo','Siwei','Altro'),
 ('Single',362,'Ale','Sandro','Altro'),
 ('Single',362,'Ale','Leo','Aereo Standard');

insert into deaths values ('Single',362,'Siwei','Mancato Recupero'),
 ('Single',362,'Siwei','Mancato Recupero'),
 ('Single',362,'Sandro','Autodistruzione');


--Single-361
insert into kills values ('Single',361,'Ale','Sandro','Altro'),
 ('Single',361,'Ale','Siwei','Altro'),
 ('Single',361,'Ale','Leo','Grab'),
 ('Single',361,'Siwei','Ale','Speciale in Su'),
 ('Single',361,'Sandro','Siwei','Altro'),
 ('Single',361,'Sandro','Siwei','Smash Finale'),
 ('Single',361,'Ale','Sandro','Aereo Standard'),
 ('Single',361,'Leo','Ale','Aereo Frontale'),
 ('Single',361,'Sandro','Leo','Smash in Su'),
 ('Single',361,'Ale','Sandro','Speciale in Giù'),
 ('Single',361,'Ale','Leo','Altro');

insert into deaths values ('Single',361,'Sandro','Mancato Recupero'),
 ('Single',361,'Siwei','Autodistruzione'),
 ('Single',361,'Siwei','Autodistruzione'),
 ('Single',361,'Leo','Magicant');


--Single-360
insert into kills values ('Single',360,'Sandro','Leo','Speciale Laterale'),
 ('Single',360,'Ale','Sandro','Smash Laterale'),
 ('Single',360,'Leo','Siwei','Altro'),
 ('Single',360,'Leo','Siwei','Altro'),
 ('Single',360,'Sandro','Ale','Smash Finale'),
 ('Single',360,'Leo','Siwei','Altro'),
 ('Single',360,'Leo','Ale','Smash Laterale'),
 ('Single',360,'Sandro','Leo','Speciale Laterale'),
 ('Single',360,'Ale','Sandro','Aereo Posteriore'),
 ('Single',360,'Sandro','Leo','Smash Laterale'),
 ('Single',360,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Single',360,'Siwei','Mancato Recupero'),
 ('Single',360,'Siwei','Find Mii');


--Single-359
insert into kills values ('Single',359,'Sandro','Siwei','Speciale Laterale'),
 ('Single',359,'Siwei','Leo','Smash Laterale'),
 ('Single',359,'Ale','Sandro','Aereo Frontale'),
 ('Single',359,'Ale','Siwei','Aereo Frontale'),
 ('Single',359,'Leo','Ale','Smash Finale'),
 ('Single',359,'Ale','Leo','Altro'),
 ('Single',359,'Sandro','Leo','Smash Finale'),
 ('Single',359,'Sandro','Siwei','Smash Finale'),
 ('Single',359,'Ale','Sandro','Smash Laterale'),
 ('Single',359,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',359,'Leo','Mancato Recupero');


--Single-358
insert into kills values ('Single',358,'Leo','Siwei','Altro'),
 ('Single',358,'Sandro','Ale','Smash Laterale'),
 ('Single',358,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD FLARE BLITZ
 ('Single',358,'Sandro','Leo','Smash Laterale'),
 ('Single',358,'Siwei','Ale','Speciale in Su'),
 ('Single',358,'Leo','Siwei','Peculiare'), --PECULIAR: CHARIZARD FLARE BLITZ
 ('Single',358,'Ale','Leo','Aereo Posteriore'),
 ('Single',358,'Siwei','Sandro','Speciale in Giù'),
 ('Single',358,'Leo','Ale','Smash Laterale'),
 ('Single',358,'Siwei','Sandro','Speciale Laterale'),
 ('Single',358,'Leo','Siwei','Smash Laterale');


--Single-357
insert into kills values ('Single',357,'Siwei','Leo','Speciale in Su'),
 ('Single',357,'Leo','Sandro','In Corsa'),
 ('Single',357,'Leo','Ale','Smash in Su'),
 ('Single',357,'Ale','Siwei','Smash in Su'),
 ('Single',357,'Sandro','Ale','Altro'),
 ('Single',357,'Sandro','Leo','Smash Finale'),
 ('Single',357,'Ale','Siwei','Smash Finale'),
 ('Single',357,'Leo','Sandro','Smash in Su'),
 ('Single',357,'Siwei','Ale','Speciale Laterale'),
 ('Single',357,'Siwei','Leo','Smash Laterale'),
 ('Single',357,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Single',357,'Ale','Mancato Recupero');


--Single-356
insert into kills values ('Single',356,'Ale','Leo','Meteora'),
 ('Single',356,'Sandro','Ale','Speciale in Giù'),
 ('Single',356,'Leo','Sandro','Aereo Posteriore'),
 ('Single',356,'Ale','Siwei','Aereo in Giù'),
 ('Single',356,'Leo','Ale','Smash Finale'),
 ('Single',356,'Sandro','Leo','Smash Finale'),
 ('Single',356,'Leo','Siwei','In Corsa'),
 ('Single',356,'Siwei','Ale','Smash Finale'),
 ('Single',356,'Leo','Sandro','Smash Laterale'),
 ('Single',356,'Leo','Siwei','Speciale in Giù'),
 ('Single',356,'Sandro','Leo','Smash Finale');


--Single-355
insert into kills values ('Single',355,'Ale','Sandro','Aereo Posteriore'),
 ('Single',355,'Leo','Sandro','Altro'),
 ('Single',355,'Sandro','Ale','Speciale Laterale'),
 ('Single',355,'Siwei','Leo','In Corsa'),
 ('Single',355,'Sandro','Siwei','Smash Finale'),
 ('Single',355,'Leo','Siwei','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',355,'Leo','Ale','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',355,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',355,'Leo','Ale','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',355,'Siwei','Leo','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',355,'Leo','Siwei','Altro');

insert into deaths values ('Single',355,'Sandro','Autodistruzione'),
 ('Single',355,'Siwei','Port Town Aero Dive');


--Single-354
insert into kills values ('Single',354,'Sandro','Siwei','Speciale in Su'),
 ('Single',354,'Siwei','Leo','Altro'),
 ('Single',354,'Siwei','Sandro','Aereo in Giù'),
 ('Single',354,'Leo','Siwei','Aereo Posteriore'),
 ('Single',354,'Siwei','Sandro','Speciale Standard'),
 ('Single',354,'Sandro','Siwei','Smash Finale'),
 ('Single',354,'Sandro','Ale','Aereo in Giù'),
 ('Single',354,'Leo','Ale','Smash Laterale'),
 ('Single',354,'Sandro','Leo','Aereo in Su'),
 ('Single',354,'Leo','Sandro','Speciale Standard'),
 ('Single',354,'Ale','Leo','Smash Finale');


--Single-353
insert into kills values ('Single',353,'Siwei','Leo','Speciale in Giù'),
 ('Single',353,'Sandro','Ale','Altro'),
 ('Single',353,'Siwei','Sandro','Speciale in Giù'),
 ('Single',353,'Sandro','Siwei','Aereo in Giù'),
 ('Single',353,'Sandro','Ale','Smash Finale'),
 ('Single',353,'Sandro','Siwei','Speciale Laterale'),
 ('Single',353,'Siwei','Sandro','Aereo Frontale'),
 ('Single',353,'Leo','Siwei','Smash Laterale'),
 ('Single',353,'Leo','Ale','Smash Laterale'),
 ('Single',353,'Leo','Sandro','Altro');

insert into deaths values ('Single',353,'Ale','Mancato Recupero'),
 ('Single',353,'Sandro','Mancato Recupero');


--Single-352
insert into kills values ('Single',352,'Ale','Sandro','Altro'),
 ('Single',352,'Sandro','Leo','Smash Finale'),
 ('Single',352,'Sandro','Ale','Smash Finale'),
 ('Single',352,'Leo','Sandro','Smash Finale'),
 ('Single',352,'Leo','Siwei','Smash Laterale'),
 ('Single',352,'Ale','Leo','Smash in Giù'),
 ('Single',352,'Leo','Ale','Speciale in Su'),
 ('Single',352,'Siwei','Leo','Aereo in Su'),
 ('Single',352,'Ale','Siwei','Altro'),
 ('Single',352,'Siwei','Ale','Speciale Standard');

insert into deaths values ('Single',352,'Sandro','Jungle Japes');


--Single-351
insert into kills values ('Single',351,'Siwei','Leo','Altro'),
 ('Single',351,'Siwei','Ale','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',351,'Leo','Sandro','Altro'),
 ('Single',351,'Leo','Siwei','Altro'),
 ('Single',351,'Siwei','Ale','Smash Laterale'),
 ('Single',351,'Leo','Siwei','Altro'),
 ('Single',351,'Siwei','Leo','Smash in Su'),
 ('Single',351,'Sandro','Siwei','Smash Finale'),
 ('Single',351,'Sandro','Ale','Smash Finale'),
 ('Single',351,'Leo','Sandro','Altro'),
 ('Single',351,'Leo','Sandro','In Corsa');

insert into deaths values ('Single',351,'Sandro','Flat Zone X');


--Single-350
insert into kills values ('Single',350,'Leo','Sandro','Smash Laterale'),
 ('Single',350,'Siwei','Leo','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',350,'Siwei','Sandro','Speciale Standard'),
 ('Single',350,'Leo','Ale','Smash Finale'),
 ('Single',350,'Leo','Siwei','Smash Laterale'),
 ('Single',350,'Siwei','Ale','Smash Finale'),
 ('Single',350,'Leo','Siwei','Altro'),
 ('Single',350,'Ale','Leo','Aereo Frontale'),
 ('Single',350,'Ale','Sandro','Aereo Posteriore'),
 ('Single',350,'Siwei','Leo','Smash Laterale'),
 ('Single',350,'Siwei','Ale','Peculiare'); --PECULIAR: LITTLE MAC KO

insert into deaths values ('Single',350,'Siwei','Mancato Recupero');


--Single-349
insert into kills values ('Single',349,'Ale','Leo','In Corsa'),
 ('Single',349,'Siwei','Sandro','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',349,'Leo','Siwei','Smash Laterale'),
 ('Single',349,'Ale','Sandro','Smash Laterale'),
 ('Single',349,'Leo','Ale','Speciale in Giù'),
 ('Single',349,'Sandro','Leo','Smash Laterale'),
 ('Single',349,'Ale','Siwei','Aereo Frontale'),
 ('Single',349,'Siwei','Sandro','Speciale Laterale'),
 ('Single',349,'Leo','Ale','Smash Finale'),
 ('Single',349,'Ale','Leo','Aereo Standard'),
 ('Single',349,'Ale','Siwei','Grab');


--Single-348
insert into kills values ('Single',348,'Ale','Sandro','Altro'),
 ('Single',348,'Sandro','Siwei','Speciale Laterale'),
 ('Single',348,'Siwei','Sandro','Speciale in Giù'),
 ('Single',348,'Leo','Ale','Speciale Standard'),
 ('Single',348,'Sandro','Siwei','Smash Finale'),
 ('Single',348,'Siwei','Leo','Smash Laterale'),
 ('Single',348,'Sandro','Ale','Aereo in Giù'),
 ('Single',348,'Ale','Siwei','Aereo Frontale'),
 ('Single',348,'Leo','Sandro','Smash Laterale'),
 ('Single',348,'Ale','Leo','Smash Laterale'),
 ('Single',348,'Leo','Ale','Aereo Frontale');

insert into deaths values ('Single',348,'Sandro','Autodistruzione');


--Single-347
insert into kills values ('Single',347,'Sandro','Siwei','Smash Laterale'),
 ('Single',347,'Leo','Sandro','Speciale Standard'),
 ('Single',347,'Ale','Leo','Aereo Posteriore'),
 ('Single',347,'Siwei','Ale','Smash Finale'),
 ('Single',347,'Sandro','Leo','Smash Finale'),
 ('Single',347,'Sandro','Siwei','Smash Finale'),
 ('Single',347,'Leo','Siwei','Altro'),
 ('Single',347,'Ale','Sandro','Smash Laterale'),
 ('Single',347,'Leo','Ale','Speciale Laterale'),
 ('Single',347,'Ale','Leo','Smash Laterale'),
 ('Single',347,'Sandro','Ale','Altro');

insert into deaths values ('Single',347,'Siwei','Autodistruzione');


--Singe-346
insert into kills values ('Single',346,'Leo','Siwei','Smash Laterale'),
 ('Single',346,'Ale','Leo','Speciale Laterale'),
 ('Single',346,'Leo','Ale','In Corsa'),
 ('Single',346,'Siwei','Sandro','Speciale Standard'),
 ('Single',346,'Ale','Siwei','Meteora'),
 ('Single',346,'Siwei','Ale','Speciale Standard'),
 ('Single',346,'Ale','Sandro','Altro'),
 ('Single',346,'Sandro','Siwei','Altro'),
 ('Single',346,'Sandro','Ale','Speciale in Giù'),
 ('Single',346,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',346,'Leo','Autodistruzione'),
 ('Single',346,'Sandro','Mancato Recupero');


--Single-345
insert into kills values ('Single',345,'Ale','Leo','Meteora'),
 ('Single',345,'Sandro','Siwei','Smash Laterale'),
 ('Single',345,'Ale','Siwei','Altro'),
 ('Single',345,'Siwei','Sandro','Smash Laterale'),
 ('Single',345,'Siwei','Leo','Smash Laterale'),
 ('Single',345,'Sandro','Ale','Altro'),
 ('Single',345,'Ale','Sandro','Meteora'),
 ('Single',345,'Sandro','Ale','Smash Finale'),
 ('Single',345,'Ale','Siwei','Meteora'),
 ('Single',345,'Sandro','Ale','Smash Laterale'),
 ('Single',345,'Leo','Sandro','Peculiare'); --PECULIAR: JOKER END

insert into deaths values ('Single',345,'Siwei','Mancato Recupero');


--Single-344
insert into kills values ('Single',344,'Ale','Siwei','Aereo in Giù'),
 ('Single',344,'Leo','Sandro','Smash Laterale'),
 ('Single',344,'Sandro','Leo','Smash Laterale'),
 ('Single',344,'Sandro','Siwei','Smash Laterale'),
 ('Single',344,'Ale','Sandro','Altro'),
 ('Single',344,'Sandro','Ale','Aereo in Giù'),
 ('Single',344,'Leo','Ale','In Corsa'),
 ('Single',344,'Ale','Leo','Speciale Standard'),
 ('Single',344,'Leo','Sandro','Smash Laterale'),
 ('Single',344,'Leo','Siwei','Smash Laterale'),
 ('Single',344,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',344,'Sandro','Mancato Recupero');


--Single-343
insert into kills values ('Single',343,'Siwei','Ale','Speciale in Su'),
 ('Single',343,'Siwei','Sandro','Speciale in Su'),
 ('Single',343,'Sandro','Ale','Smash Finale'),
 ('Single',343,'Siwei','Leo','Smash Laterale'),
 ('Single',343,'Leo','Siwei','Smash Laterale'),
 ('Single',343,'Ale','Sandro','Smash Laterale'),
 ('Single',343,'Ale','Sandro','Meteora'),
 ('Single',343,'Leo','Ale','Altro'),
 ('Single',343,'Siwei','Leo','Speciale Laterale'),
 ('Single',343,'Leo','Siwei','Speciale Laterale'),
 ('Single',343,'Siwei','Leo','Speciale in Su');

insert into deaths values ('Single',343,'Ale','Autodistruzione');


--Single-342
insert into kills values ('Single',342,'Sandro','Siwei','Smash Laterale'),
 ('Single',342,'Sandro','Leo','Smash Laterale'),
 ('Single',342,'Siwei','Sandro','Altro'),
 ('Single',342,'Sandro','Siwei','Smash Laterale'),
 ('Single',342,'Siwei','Ale','Smash Laterale'),
 ('Single',342,'Sandro','Ale','Altro'),
 ('Single',342,'Sandro','Leo','Smash in Su'),
 ('Single',342,'Leo','Siwei','Smash Laterale'),
 ('Single',342,'Leo','Sandro','Smash Laterale'),
 ('Single',342,'Leo','Ale','Altro'),
 ('Single',342,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',342,'Sandro','Mancato Recupero'),
 ('Single',342,'Ale','Autodistruzione'),
 ('Single',342,'Ale','Autodistruzione');


--Single-341
insert into kills values ('Single',341,'Ale','Siwei','Smash Laterale'),
 ('Single',341,'Ale','Sandro','Speciale in Giù'),
 ('Single',341,'Siwei','Ale','Aereo Frontale'),
 ('Single',341,'Sandro','Leo','Speciale Laterale'),
 ('Single',341,'Leo','Siwei','Altro'),
 ('Single',341,'Sandro','Ale','Smash Finale'),
 ('Single',341,'Siwei','Sandro','Smash Finale'),
 ('Single',341,'Ale','Siwei','Altro'),
 ('Single',341,'Leo','Sandro','Speciale Standard'),
 ('Single',341,'Ale','Leo','Speciale Standard'),
 ('Single',341,'Ale','Leo','Grab');

insert into deaths values ('Single',341,'Siwei','Mancato Recupero'),
 ('Single',341,'Siwei','Mancato Recupero');


--Single-340
insert into kills values ('Single',340,'Sandro','Siwei','Speciale Laterale'),
 ('Single',340,'Siwei','Ale','Speciale Laterale'),
 ('Single',340,'Sandro','Leo','Speciale Laterale'),
 ('Single',340,'Leo','Sandro','Smash Finale'),
 ('Single',340,'Sandro','Siwei','Aereo in Giù'),
 ('Single',340,'Sandro','Leo','Aereo in Giù'),
 ('Single',340,'Sandro','Ale','Smash in Su'),
 ('Single',340,'Siwei','Sandro','Smash Finale'),
 ('Single',340,'Ale','Siwei','Speciale in Giù'),
 ('Single',340,'Leo','Ale','Altro'),
 ('Single',340,'Leo','Sandro','Smash in Su');

insert into deaths values ('Single',340,'Ale','Autodistruzione');


--Single-339
insert into kills values ('Single',339,'Leo','Siwei','Smash Laterale'),
 ('Single',339,'Siwei','Sandro','Speciale Laterale'),
 ('Single',339,'Siwei','Leo','Smash Finale'),
 ('Single',339,'Leo','Ale','Smash Laterale'),
 ('Single',339,'Ale','Siwei','Smash Laterale'),
 ('Single',339,'Leo','Ale','Speciale Standard'),
 ('Single',339,'Leo','Siwei','Speciale in Giù'),
 ('Single',339,'Sandro','Leo','Smash Laterale'),
 ('Single',339,'Leo','Sandro','Speciale Standard'),
 ('Single',339,'Sandro','Ale','Smash Finale'),
 ('Single',339,'Sandro','Leo','Aereo in Giù');


--Single-338
insert into kills values ('Single',338,'Leo','Ale','Meteora'),
 ('Single',338,'Sandro','Leo','Speciale in Su'),
 ('Single',338,'Ale','Sandro','Speciale Laterale'),
 ('Single',338,'Sandro','Siwei','Smash Finale'),
 ('Single',338,'Ale','Sandro','Smash Laterale'),
 ('Single',338,'Siwei','Leo','Aereo Frontale'),
 ('Single',338,'Ale','Siwei','Smash Laterale'),
 ('Single',338,'Sandro','Ale','Smash Finale'),
 ('Single',338,'Ale','Sandro','Smash Finale'),
 ('Single',338,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Single',338,'Leo','Autodistruzione');


--Single-337
insert into kills values ('Single',337,'Sandro','Leo','Aereo Frontale'),
 ('Single',337,'Ale','Siwei','Speciale Standard'),
 ('Single',337,'Leo','Ale','Speciale Laterale'),
 ('Single',337,'Ale','Leo','Speciale in Giù'),
 ('Single',337,'Sandro','Siwei','Smash Finale'),
 ('Single',337,'Ale','Sandro','Speciale in Giù'),
 ('Single',337,'Leo','Sandro','Speciale Standard'),
 ('Single',337,'Leo','Siwei','Smash Finale'),
 ('Single',337,'Sandro','Leo','Smash Finale'),
 ('Single',337,'Ale','Sandro','Smash Laterale');


--Single-336
insert into kills values ('Single',336,'Leo','Sandro','Altro'),
 ('Single',336,'Siwei','Leo','In Corsa'),
 ('Single',336,'Siwei','Ale','Speciale Standard'),
 ('Single',336,'Ale','Siwei','Smash in Su'),
 ('Single',336,'Ale','Sandro','Smash Finale'),
 ('Single',336,'Leo','Sandro','Smash Laterale'),
 ('Single',336,'Leo','Siwei','Smash Finale'),
 ('Single',336,'Siwei','Leo','Altro'),
 ('Single',336,'Leo','Ale','Speciale Standard'),
 ('Single',336,'Leo','Siwei','Speciale Standard'),
 ('Single',336,'Leo','Ale','Aereo in Giù');

insert into deaths values ('Single',336,'Sandro','Mancato Recupero'),
 ('Single',336,'Leo','Mancato Recupero');


--Single-335
insert into kills values ('Single',335,'Sandro','Siwei','Smash Laterale'),
 ('Single',335,'Siwei','Leo','Speciale Standard'),
 ('Single',335,'Siwei','Ale','Smash in Su'),
 ('Single',335,'Siwei','Sandro','Smash Laterale'),
 ('Single',335,'Siwei','Ale','Smash Finale'),
 ('Single',335,'Siwei','Sandro','Altro'),
 ('Single',335,'Ale','Siwei','Smash in Su'),
 ('Single',335,'Siwei','Sandro','Smash Laterale'),
 ('Single',335,'Siwei','Ale','Speciale Standard'),
 ('Single',335,'Siwei','Leo','Smash Laterale'),
 ('Single',335,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Single',335,'Sandro','Mancato Recupero');


--Single-334
insert into kills values ('Single',334,'Leo','Ale','Smash in Su'),
 ('Single',334,'Siwei','Leo','Speciale in Giù'),
 ('Single',334,'Siwei','Sandro','Speciale Laterale'),
 ('Single',334,'Leo','Siwei','Aereo Frontale'),
 ('Single',334,'Leo','Sandro','Smash Laterale'),
 ('Single',334,'Siwei','Ale','In Corsa'),
 ('Single',334,'Sandro','Siwei','Smash Finale'),
 ('Single',334,'Ale','Leo','Smash Laterale'),
 ('Single',334,'Siwei','Sandro','Smash Finale'),
 ('Single',334,'Siwei','Ale','In Corsa');

insert into deaths values ('Single',334,'Leo','Garreg Mach Monastery');


--Single-333
insert into kills values ('Single',333,'Ale','Sandro','Speciale Laterale'),
 ('Single',333,'Ale','Siwei','Smash Laterale'),
 ('Single',333,'Sandro','Ale','Smash in Su'),
 ('Single',333,'Siwei','Leo','Smash Finale'),
 ('Single',333,'Sandro','Siwei','Smash Finale'),
 ('Single',333,'Ale','Sandro','Smash Finale'),
 ('Single',333,'Siwei','Ale','Smash Finale'),
 ('Single',333,'Siwei','Sandro','In Corsa'),
 ('Single',333,'Ale','Siwei','Speciale Laterale'),
 ('Single',333,'Ale','Leo','Speciale Laterale'),
 ('Single',333,'Leo','Ale','Speciale in Giù');


--Single-332
insert into kills values ('Single',332,'Leo','Sandro','Altro'),
 ('Single',332,'Sandro','Siwei','Smash Laterale'),
 ('Single',332,'Siwei','Sandro','Smash Finale'),
 ('Single',332,'Ale','Leo','Smash Laterale'),
 ('Single',332,'Sandro','Ale','Aereo in Giù'),
 ('Single',332,'Leo','Siwei','Speciale Laterale'),
 ('Single',332,'Leo','Ale','Smash Laterale'),
 ('Single',332,'Sandro','Siwei','Speciale in Giù'),
 ('Single',332,'Sandro','Leo','Smash Laterale'),
 ('Single',332,'Leo','Sandro','Altro'),
 ('Single',332,'Leo','Ale','Speciale Laterale');

insert into deaths values ('Single',332,'Sandro','Autodistruzione');


--Single-331
insert into kills values ('Single',331,'Siwei','Sandro','Altro'),
 ('Single',331,'Leo','Ale','Altro'),
 ('Single',331,'Ale','Leo','Aereo Frontale'),
 ('Single',331,'Sandro','Siwei','Altro'),
 ('Single',331,'Leo','Sandro','Speciale Standard'),
 ('Single',331,'Leo','Ale','Smash Finale'),
 ('Single',331,'Ale','Sandro','Smash Finale'),
 ('Single',331,'Leo','Ale','In Corsa'),
 ('Single',331,'Leo','Siwei','Speciale in Giù'),
 ('Single',331,'Siwei','Leo','Speciale in Giù'),
 ('Single',331,'Leo','Siwei','Speciale Standard');

insert into deaths values ('Single',331,'Sandro','Mancato Recupero'),
 ('Single',331,'Ale','Autodistruzione'),
 ('Single',331,'Siwei','Mancato Recupero');


--Single-330
insert into kills values ('Single',330,'Sandro','Siwei','Speciale Standard'),
 ('Single',330,'Sandro','Ale','Smash in Su'),
 ('Single',330,'Ale','Leo','Smash Finale'),
 ('Single',330,'Ale','Sandro','Smash Finale'),
 ('Single',330,'Leo','Siwei','Smash Laterale'),
 ('Single',330,'Sandro','Leo','Speciale Standard'),
 ('Single',330,'Sandro','Siwei','Altro'),
 ('Single',330,'Leo','Sandro','Altro'),
 ('Single',330,'Leo','Ale','Smash Laterale'),
 ('Single',330,'Leo','Ale','In Corsa'),
 ('Single',330,'Leo','Sandro','Altro');

insert into deaths values ('Single',330,'Siwei','Mancato Recupero'),
 ('Single',330,'Sandro','Mancato Recupero'),
 ('Single',330,'Sandro','Mancato Recupero');


--Doubles-134
insert into kills values ('Doubles',134,'Leo','Sandro','Smash Laterale'),
 ('Doubles',134,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',134,'Leo','Ale','Aereo Frontale'),
 ('Doubles',134,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',134,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',134,'Ale','Leo','Aereo in Su'),
 ('Doubles',134,'Siwei','Sandro','Smash Finale'),
 ('Doubles',134,'Leo','Ale','Smash Finale'),
 ('Doubles',134,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',134,'Leo','Ale','Speciale Laterale');

insert into deaths values ('Doubles',134,'Siwei','Fuoco Amico'),
 ('Doubles',134,'Siwei','Fuoco Amico');


--Doubles-133
insert into kills values ('Doubles',133,'Leo','Sandro','Meteora'),
 ('Doubles',133,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',133,'Siwei','Ale','Aereo Posteriore'),
 ('Doubles',133,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',133,'Leo','Siwei','Smash Finale'),
 ('Doubles',133,'Sandro','Ale','Smash Laterale'),
 ('Doubles',133,'Leo','Sandro','Altro'),
 ('Doubles',133,'Sandro','Leo','Altro'),
 ('Doubles',133,'Leo','Ale','Fuoco Amico'),
 ('Doubles',133,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',133,'Siwei','Fuoco Amico'),
 ('Doubles',133,'Sandro','Autodistruzione'),
 ('Doubles',133,'Ale','Fuoco Amico');


--Doubles-132
insert into kills values ('Doubles',132,'Sandro','Leo','Smash in Su'),
 ('Doubles',132,'Ale','Siwei','Smash Laterale'),
 ('Doubles',132,'Sandro','Ale','Smash Finale'),
 ('Doubles',132,'Ale','Sandro','Smash Laterale'),
 ('Doubles',132,'Leo','Siwei','Smash Laterale'),
 ('Doubles',132,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',132,'Ale','Sandro','Smash Laterale'),
 ('Doubles',132,'Sandro','Ale','Altro'),
 ('Doubles',132,'Siwei','Leo','Aereo in Su'),
 ('Doubles',132,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',132,'Siwei','Fuoco Amico'),
 ('Doubles',132,'Ale','Autodistruzione');


--Doubles-131
insert into kills values ('Doubles',131,'Sandro','Siwei','Aereo in Su'),
 ('Doubles',131,'Leo','Ale','Smash Laterale'),
 ('Doubles',131,'Siwei','Leo','Smash Finale'),
 ('Doubles',131,'Sandro','Siwei','Altro'),
 ('Doubles',131,'Siwei','Sandro','Aereo Posteriore'),
 ('Doubles',131,'Leo','Siwei','Smash Finale'),
 ('Doubles',131,'Ale','Sandro','Altro'),
 ('Doubles',131,'Ale','Sandro','Smash Laterale'),
 ('Doubles',131,'Ale','Leo','Smash Laterale'),
 ('Doubles',131,'Sandro','Ale','Smash Finale'),
 ('Doubles',131,'Ale','Sandro','Smash in Su');

insert into deaths values ('Doubles',131,'Siwei','Autodistruzione'),
 ('Doubles',131,'Sandro','Autodistruzione');


--Doubles-130
insert into kills values ('Doubles',130,'Sandro','Leo','Altro'),
 ('Doubles',130,'Ale','Siwei','Speciale in Su'),
 ('Doubles',130,'Siwei','Sandro','Aereo in Su'),
 ('Doubles',130,'Leo','Ale','Smash in Su'),
 ('Doubles',130,'Leo','Sandro','Smash in Su'),
 ('Doubles',130,'Sandro','Leo','Altro'),
 ('Doubles',130,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',130,'Leo','Ale','Altro'),
 ('Doubles',130,'Sandro','Siwei','Smash Finale'),
 ('Doubles',130,'Leo','Sandro','Aereo Posteriore'),
 ('Doubles',130,'Leo','Ale','Smash in Su');

insert into deaths values ('Doubles',130,'Leo','Kalos Pokemon League'),
 ('Doubles',130,'Leo','Autodistruzione'),
 ('Doubles',130,'Ale','Mancato Recupero');


--Doubles-129
insert into kills values ('Doubles',129,'Sandro','Ale','Smash Laterale'),
 ('Doubles',129,'Sandro','Ale','Altro'),
 ('Doubles',129,'Siwei','Leo','Smash Laterale'),
 ('Doubles',129,'Sandro','Ale','Altro'),
 ('Doubles',129,'Leo','Sandro','Smash Laterale'),
 ('Doubles',129,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',129,'Sandro','Leo','Smash Laterale'),
 ('Doubles',129,'Siwei','Leo','Aereo Frontale');

insert into deaths values ('Doubles',129,'Sandro','Autodistruzione'),
 ('Doubles',129,'Siwei','Autodistruzione'),
 ('Doubles',129,'Ale','Mancato Recupero'),
 ('Doubles',129,'Ale','Autodistruzione');


--Doubles-128
insert into kills values ('Doubles',128,'Ale','Leo','Smash Laterale'),
 ('Doubles',128,'Sandro','Leo','Aereo in Su'),
 ('Doubles',128,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',128,'Sandro','Leo','Smash Laterale'),
 ('Doubles',128,'Siwei','Sandro','Aereo Posteriore'),
 ('Doubles',128,'Ale','Siwei','Smash Laterale'),
 ('Doubles',128,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',128,'Sandro','Leo','Aereo in Su'),
 ('Doubles',128,'Sandro','Siwei','Smash in Su');

insert into deaths values ('Doubles',128,'Ale','Fuoco Amico'),
 ('Doubles',128,'Ale','Fuoco Amico');


--Doubles-127
insert into kills values ('Doubles',127,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',127,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',127,'Sandro','Leo','Smash in Su'),
 ('Doubles',127,'Ale','Sandro','Altro'),
 ('Doubles',127,'Siwei','Ale','Smash Finale'),
 ('Doubles',127,'Ale','Siwei','Smash Laterale'),
 ('Doubles',127,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',127,'Leo','Siwei','Meteora'),
 ('Doubles',127,'Ale','Sandro','Aereo Frontale');

insert into deaths values ('Doubles',127,'Siwei','Fuoco Amico'),
 ('Doubles',127,'Sandro','Autodistruzione');


--Doubles-126
insert into kills values ('Doubles',126,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',126,'Siwei','Leo','Smash Laterale'),
 ('Doubles',126,'Leo','Sandro','Smash Laterale'),
 ('Doubles',126,'Siwei','Ale','Smash Finale'),
 ('Doubles',126,'Ale','Siwei','Altro'),
 ('Doubles',126,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',126,'Sandro','Leo','Smash Laterale'),
 ('Doubles',126,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',126,'Leo','Sandro','In Corsa');

insert into deaths values ('Doubles',126,'Siwei','Pac-Land'),
 ('Doubles',126,'Sandro','Fuoco Amico');


--Doubles-125
insert into kills values ('Doubles',125,'Sandro','Ale','Aereo Frontale'),
 ('Doubles',125,'Sandro','Leo','Altro'),
 ('Doubles',125,'Leo','Sandro','Aereo Posteriore'),
 ('Doubles',125,'Sandro','Ale','Smash Laterale'),
 ('Doubles',125,'Siwei','Ale','In Corsa'),
 ('Doubles',125,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',125,'Leo','Sandro','Altro'),
 ('Doubles',125,'Siwei','Leo','Smash in Su'),
 ('Doubles',125,'Leo','Sandro','Aereo Frontale'),
 ('Doubles',125,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',125,'Sandro','Figure-8 Circuit');


--Doubles-124
insert into kills values ('Doubles',124,'Siwei','Leo','Smash in Su'),
 ('Doubles',124,'Sandro','Ale','Smash Laterale'),
 ('Doubles',124,'Ale','Sandro','Smash Laterale'),
 ('Doubles',124,'Leo','Siwei','Smash Finale'),
 ('Doubles',124,'Siwei','Leo','Smash Finale'),
 ('Doubles',124,'Leo','Siwei','Smash Laterale'),
 ('Doubles',124,'Leo','Sandro','Smash Finale'),
 ('Doubles',124,'Sandro','Ale','Smash Laterale'),
 ('Doubles',124,'Siwei','Leo','Smash Finale'),
 ('Doubles',124,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',124,'Ale','Sandro','Altro');

insert into deaths values ('Doubles',124,'Siwei','Fuoco Amico'),
 ('Doubles',124,'Sandro','Mancato Recupero');


--Doubles-123
insert into kills values ('Doubles',123,'Ale','Siwei','Smash Laterale'),
 ('Doubles',123,'Leo','Sandro','Altro'),
 ('Doubles',123,'Siwei','Ale','Speciale Standard'),
 ('Doubles',123,'Sandro','Leo','Aereo in Su'),
 ('Doubles',123,'Leo','Sandro','Altro'),
 ('Doubles',123,'Siwei','Ale','Smash Finale'),
 ('Doubles',123,'Ale','Siwei','Smash Laterale'),
 ('Doubles',123,'Ale','Leo','Smash in Su'),
 ('Doubles',123,'Leo','Sandro','Speciale Standard'),
 ('Doubles',123,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',123,'Leo','Ale','Aereo Frontale');

insert into deaths values ('Doubles',123,'Sandro','Mancato Recupero'),
 ('Doubles',123,'Siwei','Fuoco Amico');


--Doubles-122
insert into kills values ('Doubles',122,'Leo','Siwei','Smash Laterale'),
 ('Doubles',122,'Sandro','Siwei','Speciale in Su'),
 ('Doubles',122,'Siwei','Sandro','Altro'),
 ('Doubles',122,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',122,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',122,'Ale','Leo','Smash Finale'),
 ('Doubles',122,'Sandro','Ale','Smash Finale'),
 ('Doubles',122,'Sandro','Siwei','Smash Finale'),
 ('Doubles',122,'Leo','Ale','Altro');

insert into deaths values ('Doubles',122,'Sandro','Autodistruzione'),
 ('Doubles',122,'Ale','Autodistruzione');


--Doubles-121
insert into kills values ('Doubles',121,'Leo','Siwei','Altro'),
 ('Doubles',121,'Sandro','Ale','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Doubles',121,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',121,'Ale','Leo','In Corsa'), 
 ('Doubles',121,'Sandro','Ale','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Doubles',121,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',121,'Ale','Leo','Speciale in Su'),
 ('Doubles',121,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',121,'Siwei','Sandro','Altro'),
 ('Doubles',121,'Ale','Sandro','Altro'),
 ('Doubles',121,'Ale','Leo','Altro');

insert into deaths values ('Doubles',121,'Siwei','Gamer'),
 ('Doubles',121,'Siwei','Fuoco Amico'),
 ('Doubles',121,'Sandro','Gamer'),
 ('Doubles',121,'Sandro','Autodistruzione'),
 ('Doubles',121,'Leo','Autodistruzione');


--Doubles-120
insert into kills values ('Doubles',120,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',120,'Sandro','Ale','Speciale in Su'),
 ('Doubles',120,'Leo','Sandro','Speciale Standard'),
 ('Doubles',120,'Siwei','Ale','In Corsa'),
 ('Doubles',120,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',120,'Sandro','Leo','Smash Finale'),
 ('Doubles',120,'Ale','Siwei','Smash Finale'),
 ('Doubles',120,'Ale','Sandro','Smash Finale'),
 ('Doubles',120,'Leo','Sandro','Grab');

insert into deaths values ('Doubles',120,'Siwei','Fuoco Amico');


--Doubles-119
insert into kills values ('Doubles',119,'Sandro','Siwei','Altro'),
 ('Doubles',119,'Siwei','Leo','Smash Finale'),
 ('Doubles',119,'Sandro','Ale','In Corsa'),
 ('Doubles',119,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',119,'Sandro','Siwei','Smash Finale'),
 ('Doubles',119,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',119,'Siwei','Sandro','Smash Finale'),
 ('Doubles',119,'Siwei','Leo','Smash in Su'),
 ('Doubles',119,'Leo','Siwei','Smash Finale'),
 ('Doubles',119,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',119,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',119,'Sandro','Fuoco Amico'),
 ('Doubles',119,'Ale','Fuoco Amico'),
 ('Doubles',119,'Sandro','Fuoco Amico');


--Doubles-118
insert into kills values ('Doubles',118,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',118,'Siwei','Sandro','Speciale in Giù'),
 ('Doubles',118,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',118,'Siwei','Ale','Smash Finale'),
 ('Doubles',118,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',118,'Ale','Leo','Smash Finale'),
 ('Doubles',118,'Siwei','Ale','Speciale Standard'),
 ('Doubles',118,'Leo','Ale','Smash Finale'),
 ('Doubles',118,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',118,'Ale','Siwei','Aereo in Su');

insert into deaths values ('Doubles',118,'Leo','Fuoco Amico'),
 ('Doubles',118,'Siwei','Fuoco Amico');


--Doubles-117
insert into kills values ('Doubles',117,'Sandro','Siwei','Altro'),
 ('Doubles',117,'Ale','Leo','Smash in Su'),
 ('Doubles',117,'Sandro','Ale','Speciale Standard'),
 ('Doubles',117,'Siwei','Sandro','Smash Finale'),
 ('Doubles',117,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',117,'Leo','Ale','Smash Finale'),
 ('Doubles',117,'Siwei','Leo','Altro'),
 ('Doubles',117,'Leo','Ale','Smash Laterale'),
 ('Doubles',117,'Sandro','Siwei','Altro');

insert into deaths values ('Doubles',117,'Siwei','Brinstar Depths'),
 ('Doubles',117,'Leo','Brinstar Depths'),
 ('Doubles',117,'Siwei','Autodistruzione');


--Doubles-116
insert into kills values ('Doubles',116,'Ale','Siwei','Altro'),
 ('Doubles',116,'Leo','Sandro','Altro'),
 ('Doubles',116,'Sandro','Leo','Smash Finale'),
 ('Doubles',116,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',116,'Leo','Sandro','Smash Laterale'),
 ('Doubles',116,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',116,'Ale','Siwei','Smash Finale'),
 ('Doubles',116,'Ale','Leo','Smash in Su'),
 ('Doubles',116,'Ale','Leo','Altro'),
 ('Doubles',116,'Siwei','Ale','Smash Laterale'),
 ('Doubles',116,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Doubles',116,'Siwei','Hyrule Castle'),
 ('Doubles',116,'Sandro','Mancato Recupero'),
 ('Doubles',116,'Ale','Fuoco Amico'),
 ('Doubles',116,'Leo','Mancato Recupero');


--Doubles-115
insert into kills values ('Doubles',115,'Sandro','Leo','Altro'),
 ('Doubles',115,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',115,'Leo','Ale','Aereo Frontale'),
 ('Doubles',115,'Ale','Leo','Altro'),
 ('Doubles',115,'Siwei','Sandro','Smash Finale'),
 ('Doubles',115,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',115,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',115,'Siwei','Sandro','Smash Finale'),
 ('Doubles',115,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',115,'Sandro','Siwei','Speciale Laterale');

insert into deaths values ('Doubles',115,'Leo','Mancato Recupero'),
 ('Doubles',115,'Leo','Fuoco Amico'),
 ('Doubles',115,'Ale','Fuoco Amico');


--Doubles-114
insert into kills values ('Doubles',114,'Sandro','Siwei','Altro'),
 ('Doubles',114,'Siwei','Sandro','In Corsa'),
 ('Doubles',114,'Siwei','Leo','Speciale in Su'),
 ('Doubles',114,'Siwei','Sandro','Smash Finale'),
 ('Doubles',114,'Leo','Siwei','Altro'),
 ('Doubles',114,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',114,'Ale','Leo','Smash in Su'),
 ('Doubles',114,'Sandro','Siwei','Altro'),
 ('Doubles',114,'Siwei','Sandro','Smash Finale');

insert into deaths values ('Doubles',114,'Siwei','Mancato Recupero'),
 ('Doubles',114,'Siwei','3D Land'),
 ('Doubles',114,'Sandro','Autodistruzione');


--Single-329
insert into kills values ('Single',329,'Ale','Sandro','Speciale in Giù'),
 ('Single',329,'Siwei','Ale','Smash Laterale'),
 ('Single',329,'Leo','Siwei','Speciale in Giù'),
 ('Single',329,'Sandro','Leo','Smash Finale'),
 ('Single',329,'Siwei','Sandro','Smash Finale'),
 ('Single',329,'Leo','Ale','Smash Finale'),
 ('Single',329,'Ale','Leo','Altro'),
 ('Single',329,'Ale','Siwei','In Corsa'),
 ('Single',329,'Leo','Sandro','Smash Laterale'),
 ('Single',329,'Siwei','Ale','Smash Finale'),
 ('Single',329,'Leo','Siwei','Speciale Laterale');

insert into deaths values ('Single',329,'Leo','Autodistruzione');


--Single-328
insert into kills values ('Single',328,'Ale','Sandro','Aereo Frontale'),
 ('Single',328,'Sandro','Ale','Speciale Standard'),
 ('Single',328,'Sandro','Leo','Speciale Standard'),
 ('Single',328,'Sandro','Siwei','Smash Finale'),
 ('Single',328,'Siwei','Sandro','In Corsa'),
 ('Single',328,'Siwei','Leo','Smash Finale'),
 ('Single',328,'Sandro','Siwei','Speciale Laterale'),
 ('Single',328,'Leo','Ale','Smash Laterale'),
 ('Single',328,'Sandro','Leo','Smash Finale'),
 ('Single',328,'Ale','Sandro','In Corsa'),
 ('Single',328,'Siwei','Ale','Speciale in Su');


--Single-327
insert into kills values ('Single',327,'Sandro','Siwei','Speciale Laterale'),
 ('Single',327,'Sandro','Leo','Speciale Laterale'),
 ('Single',327,'Siwei','Sandro','Smash Laterale'),
 ('Single',327,'Leo','Siwei','Altro'),
 ('Single',327,'Sandro','Ale','Smash in Su'),
 ('Single',327,'Siwei','Sandro','Smash Laterale'),
 ('Single',327,'Siwei','Leo','Smash Laterale'),
 ('Single',327,'Ale','Siwei','Speciale in Giù'),
 ('Single',327,'Leo','Ale','Speciale Laterale'),
 ('Single',327,'Ale','Sandro','Altro'),
 ('Single',327,'Ale','Leo','In Corsa');

insert into deaths values ('Single',327,'Siwei','Autodistruzione'),
 ('Single',327,'Sandro','BUG');


--Single-326
insert into kills values ('Single',326,'Sandro','Leo','Smash Laterale'),
 ('Single',326,'Siwei','Sandro','Smash Laterale'),
 ('Single',326,'Ale','Siwei','Altro'),
 ('Single',326,'Siwei','Ale','Altro'),
 ('Single',326,'Siwei','Sandro','Smash Laterale'),
 ('Single',326,'Siwei','Leo','Altro'),
 ('Single',326,'Ale','Siwei','Smash Laterale'),
 ('Single',326,'Ale','Siwei','Speciale Standard'),
 ('Single',326,'Sandro','Ale','Smash Finale'),
 ('Single',326,'Leo','Ale','Altro'),
 ('Single',326,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',326,'Siwei','Mancato Recupero'),
 ('Single',326,'Ale','Mancato Recupero'),
 ('Single',326,'Leo','Distant Planet'),
 ('Single',326,'Ale','Autodistruzione');


--Single-325
insert into kills values ('Single',325,'Siwei','Sandro','Smash Laterale'),
 ('Single',325,'Ale','Siwei','Altro'),
 ('Single',325,'Siwei','Ale','Smash Laterale'),
 ('Single',325,'Ale','Leo','Smash Laterale'),
 ('Single',325,'Sandro','Siwei','Smash Finale'),
 ('Single',325,'Leo','Sandro','Smash Laterale'),
 ('Single',325,'Sandro','Leo','Smash Laterale'),
 ('Single',325,'Siwei','Ale','Altro'),
 ('Single',325,'Siwei','Leo','Smash Finale'),
 ('Single',325,'Sandro','Siwei','Speciale in Giù'),
 ('Single',325,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',325,'Siwei','Mancato Recupero'),
 ('Single',325,'Ale','Autodistruzione');


--Single-324
insert into kills values ('Single',324,'Siwei','Sandro','Altro'),
 ('Single',324,'Sandro','Siwei','Smash Finale'),
 ('Single',324,'Sandro','Siwei','Aereo Frontale'),
 ('Single',324,'Ale','Sandro','Smash Laterale'),
 ('Single',324,'Sandro','Leo','Smash in Su'),
 ('Single',324,'Siwei','Ale','Aereo in Su'),
 ('Single',324,'Leo','Sandro','Smash Finale'),
 ('Single',324,'Leo','Siwei','Speciale Laterale'),
 ('Single',324,'Ale','Leo','Aereo Frontale'),
 ('Single',324,'Leo','Ale','Speciale Laterale'),
 ('Single',324,'Leo','Ale','In Corsa');

insert into deaths values ('Single',324,'Sandro','Flat Zone X');


--Single-323
insert into kills values ('Single',323,'Sandro','Siwei','Smash Laterale'),
 ('Single',323,'Sandro','Ale','Aereo in Giù'),
 ('Single',323,'Sandro','Leo','Aereo in Giù'),
 ('Single',323,'Sandro','Siwei','Altro'),
 ('Single',323,'Siwei','Sandro','Smash Finale'),
 ('Single',323,'Sandro','Siwei','Smash Finale'),
 ('Single',323,'Sandro','Ale','Aereo Frontale'),
 ('Single',323,'Leo','Sandro','Altro'),
 ('Single',323,'Sandro','Leo','Speciale in Giù'),
 ('Single',323,'Ale','Sandro','Aereo Posteriore'),
 ('Single',323,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',323,'Siwei','Autodistruzione'),
 ('Single',323,'Sandro','Norfair');


--Single-322
insert into kills values ('Single',322,'Leo','Sandro','Speciale Laterale'),
 ('Single',322,'Leo','Sandro','Speciale Laterale'),
 ('Single',322,'Ale','Leo','Aereo Posteriore'),
 ('Single',322,'Ale','Siwei','Aereo Posteriore'),
 ('Single',322,'Leo','Ale','Speciale Laterale'),
 ('Single',322,'Leo','Siwei','Speciale Laterale'),
 ('Single',322,'Ale','Leo','Smash Laterale'),
 ('Single',322,'Siwei','Sandro','Smash Finale'),
 ('Single',322,'Leo','Siwei','Altro'),
 ('Single',322,'Leo','Ale','Smash Laterale'),
 ('Single',322,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',322,'Siwei','Autodistruzione');


--Single-321
insert into kills values ('Single',321,'Ale','Sandro','Speciale in Giù'),
 ('Single',321,'Ale','Siwei','Aereo Posteriore'),
 ('Single',321,'Siwei','Leo','Speciale Laterale'),
 ('Single',321,'Sandro','Ale','Smash Finale'),
 ('Single',321,'Siwei','Sandro','Smash Finale'),
 ('Single',321,'Leo','Siwei','Smash Laterale'),
 ('Single',321,'Siwei','Ale','Speciale Laterale'),
 ('Single',321,'Sandro','Leo','Aereo in Su'),
 ('Single',321,'Sandro','Siwei','Smash Finale'),
 ('Single',321,'Sandro','Ale','Altro'),
 ('Single',321,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',321,'Ale','Autodistruzione');


--Single-320
insert into kills values ('Single',320,'Leo','Sandro','Speciale in Su'),
 ('Single',320,'Ale','Leo','Altro'),
 ('Single',320,'Leo','Ale','Speciale in Su'),
 ('Single',320,'Sandro','Siwei','Smash Finale'),
 ('Single',320,'Leo','Sandro','Altro'),
 ('Single',320,'Leo','Siwei','Smash Finale'),
 ('Single',320,'Leo','Ale','Speciale in Su'),
 ('Single',320,'Sandro','Leo','Smash in Su'),
 ('Single',320,'Sandro','Siwei','Aereo in Giù'),
 ('Single',320,'Ale','Leo','Altro'),
 ('Single',320,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',320,'Leo','Mancato Recupero'),
 ('Single',320,'Sandro','Mancato Recupero'),
 ('Single',320,'Leo','Midgar');


--Single-319
insert into kills values ('Single',319,'Leo','Siwei','Speciale Standard'),
 ('Single',319,'Siwei','Sandro','Speciale Laterale'),
 ('Single',319,'Siwei','Leo','Speciale in Giù'),
 ('Single',319,'Ale','Sandro','Smash Laterale'),
 ('Single',319,'Siwei','Leo','Speciale Laterale'),
 ('Single',319,'Leo','Ale','Speciale Standard'),
 ('Single',319,'Leo','Siwei','Smash Laterale'),
 ('Single',319,'Ale','Siwei','Aereo Standard'),
 ('Single',319,'Ale','Sandro','Smash Laterale'),
 ('Single',319,'Leo','Ale','Smash Laterale'),
 ('Single',319,'Ale','Leo','Smash in Su');


--Single-318
insert into kills values ('Single',318,'Sandro','Leo','Aereo in Giù'),
 ('Single',318,'Siwei','Sandro','In Corsa'),
 ('Single',318,'Sandro','Siwei','Smash Laterale'),
 ('Single',318,'Sandro','Ale','Smash Finale'),
 ('Single',318,'Leo','Sandro','Smash Finale'),
 ('Single',318,'Siwei','Ale','Smash Finale'),
 ('Single',318,'Siwei','Leo','Smash Finale'),
 ('Single',318,'Leo','Siwei','Peculiare'), --PECULIAR: PALUTENA FORWARD SMASH
 ('Single',318,'Ale','Leo','Aereo Posteriore'),
 ('Single',318,'Sandro','Ale','Aereo in Giù'),
 ('Single',318,'Siwei','Sandro','Smash Finale');


--Single-317
insert into kills values ('Single',317,'Sandro','Leo','Speciale Laterale'),
 ('Single',317,'Leo','Ale','Smash Laterale'),
 ('Single',317,'Leo','Sandro','Smash Laterale'),
 ('Single',317,'Sandro','Siwei','Speciale Laterale'),
 ('Single',317,'Leo','Ale','Aereo Posteriore'),
 ('Single',317,'Ale','Sandro','Altro'),
 ('Single',317,'Sandro','Leo','Speciale Laterale'),
 ('Single',317,'Sandro','Leo','Speciale Laterale'),
 ('Single',317,'Siwei','Sandro','Altro'),
 ('Single',317,'Ale','Siwei','Altro'),
 ('Single',317,'Ale','Siwei','Altro');

insert into deaths values ('Single',317,'Sandro','Autodistruzione'),
 ('Single',317,'Sandro','Autodistruzione'),
 ('Single',317,'Siwei','Mancato Recupero'),
 ('Single',317,'Siwei','Mancato Recupero');


--Single-316
insert into kills values ('Single',316,'Sandro','Ale','Speciale in Giù'),
 ('Single',316,'Leo','Siwei','Speciale in Giù'),
 ('Single',316,'Siwei','Leo','Smash Laterale'),
 ('Single',316,'Leo','Sandro','Smash Laterale'),
 ('Single',316,'Siwei','Ale','Smash Finale'),
 ('Single',316,'Sandro','Siwei','Aereo in Giù'),
 ('Single',316,'Ale','Sandro','Aereo Frontale'),
 ('Single',316,'Leo','Siwei','Speciale Laterale'),
 ('Single',316,'Sandro','Leo','Smash Finale'),
 ('Single',316,'Leo','Sandro','Speciale Laterale'),
 ('Single',316,'Ale','Leo','Meteora');


--Single-315
insert into kills values ('Single',315,'Sandro','Leo','Speciale in Giù'),
 ('Single',315,'Leo','Ale','Smash in Su'),
 ('Single',315,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',315,'Leo','Sandro','Smash in Su'),
 ('Single',315,'Sandro','Siwei','Smash Finale'),
 ('Single',315,'Sandro','Siwei','Aereo in Su'),
 ('Single',315,'Leo','Sandro','Aereo in Su'),
 ('Single',315,'Sandro','Leo','Smash Laterale'),
 ('Single',315,'Sandro','Ale','Smash Finale'),
 ('Single',315,'Leo','Sandro','Smash Finale'),
 ('Single',315,'Ale','Leo','Smash in Su');


--Single-314
insert into kills values ('Single',314,'Leo','Sandro','Speciale in Giù'),
 ('Single',314,'Sandro','Siwei','Aereo in Giù'),
 ('Single',314,'Leo','Sandro','Speciale Laterale'),
 ('Single',314,'Leo','Ale','In Corsa'),
 ('Single',314,'Sandro','Leo','Smash in Su'),
 ('Single',314,'Leo','Siwei','Smash Finale'),
 ('Single',314,'Sandro','Ale','Smash in Su'),
 ('Single',314,'Siwei','Sandro','Speciale in Giù'),
 ('Single',314,'Ale','Leo','Smash Laterale'),
 ('Single',314,'Siwei','Leo','Altro'),
 ('Single',314,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',314,'Leo','Pirate Ship');


--Single-313
insert into kills values ('Single',313,'Ale','Sandro','Altro'),
 ('Single',313,'Sandro','Siwei','Speciale Laterale'),
 ('Single',313,'Siwei','Ale','Smash in Su'),
 ('Single',313,'Sandro','Leo','Altro'),
 ('Single',313,'Siwei','Sandro','Smash Finale'),
 ('Single',313,'Sandro','Siwei','Smash in Su'),
 ('Single',313,'Sandro','Leo','Speciale Laterale'),
 ('Single',313,'Sandro','Ale','Smash Finale'),
 ('Single',313,'Leo','Sandro','Aereo Posteriore'),
 ('Single',313,'Ale','Siwei','Meteora'),
 ('Single',313,'Ale','Leo','In Corsa');

insert into deaths values ('Single',313,'Leo','Mancato Recupero'),
 ('Single',313,'Sandro','Mancato Recupero');


--Single-312
insert into kills values ('Single',312,'Ale','Sandro','Meteora'),
 ('Single',312,'Sandro','Leo','Altro'),
 ('Single',312,'Sandro','Leo','Smash Laterale'),
 ('Single',312,'Leo','Ale','In Corsa'),
 ('Single',312,'Sandro','Siwei','Smash Finale'),
 ('Single',312,'Siwei','Leo','Smash Finale'),
 ('Single',312,'Ale','Siwei','Aereo in Giù'),
 ('Single',312,'Sandro','Ale','Speciale in Giù'),
 ('Single',312,'Ale','Sandro','Altro'),
 ('Single',312,'Sandro','Ale','Speciale Laterale'),
 ('Single',312,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Single',312,'Sandro','Princess Peach Castle');


--Single-311
insert into kills values ('Single',311,'Leo','Sandro','Altro'),
 ('Single',311,'Sandro','Leo','Smash Laterale'),
 ('Single',311,'Siwei','Leo','Speciale Standard'),
 ('Single',311,'Leo','Sandro','Speciale Standard'),
 ('Single',311,'Leo','Siwei','Smash Finale'),
 ('Single',311,'Leo','Ale','Smash Finale'),
 ('Single',311,'Sandro','Leo','Smash Finale'),
 ('Single',311,'Sandro','Ale','Smash in Su'),
 ('Single',311,'Sandro','Siwei','Smash in Su'),
 ('Single',311,'Siwei','Sandro','In Corsa'),
 ('Single',311,'Ale','Siwei','Altro');

insert into deaths values ('Single',311,'Sandro','Mancato Recupero'),
 ('Single',311,'Siwei','Autodistruzione');


--Single-310
insert into kills values ('Single',310,'Sandro','Leo','Smash Laterale'),
 ('Single',310,'Sandro','Leo','Aereo in Giù'),
 ('Single',310,'Sandro','Ale','Smash Laterale'),
 ('Single',310,'Ale','Sandro','Speciale in Giù'),
 ('Single',310,'Leo','Siwei','Smash Finale'),
 ('Single',310,'Sandro','Siwei','Smash Finale'),
 ('Single',310,'Ale','Sandro','Aereo Posteriore'),
 ('Single',310,'Sandro','Ale','Smash Laterale'),
 ('Single',310,'Leo','Siwei','Smash in Su'),
 ('Single',310,'Sandro','Leo','Aereo in Giù'),
 ('Single',310,'Ale','Sandro','Aereo Posteriore');


--Single-309
insert into kills values ('Single',309,'Ale','Siwei','Aereo Frontale'),
 ('Single',309,'Sandro','Leo','Altro'),
 ('Single',309,'Ale','Sandro','Altro'),
 ('Single',309,'Siwei','Leo','Altro'),
 ('Single',309,'Siwei','Ale','Speciale in Su'),
 ('Single',309,'Siwei','Sandro','Speciale in Giù'),
 ('Single',309,'Leo','Siwei','Smash Laterale'),
 ('Single',309,'Siwei','Ale','Speciale in Su'),
 ('Single',309,'Siwei','Ale','Altro'),
 ('Single',309,'Siwei','Leo','Speciale in Su');

insert into deaths values ('Single',309,'Leo','Autodistruzione'),
 ('Single',309,'Leo','Mancato Recupero'),
 ('Single',309,'Sandro','Autodistruzione'),
 ('Single',309,'Ale','Mancato Recupero');


--Single-308
insert into kills values ('Single',308,'Ale','Sandro','Aereo Standard'),
 ('Single',308,'Siwei','Leo','Smash in Su'),
 ('Single',308,'Leo','Siwei','Smash Finale'),
 ('Single',308,'Sandro','Leo','Smash Finale'),
 ('Single',308,'Siwei','Sandro','Smash Laterale'),
 ('Single',308,'Sandro','Ale','Smash Laterale'),
 ('Single',308,'Siwei','Ale','Smash Finale'),
 ('Single',308,'Siwei','Leo','Altro'),
 ('Single',308,'Sandro','Siwei','Smash in Su'),
 ('Single',308,'Siwei','Sandro','Speciale Laterale'),
 ('Single',308,'Siwei','Ale','Speciale Laterale');

insert into deaths values ('Single',308,'Leo','Mancato Recupero');


--Single-307
insert into kills values ('Single',307,'Leo','Siwei','Meteora'),
 ('Single',307,'Siwei','Leo','Smash Finale'),
 ('Single',307,'Siwei','Ale','Speciale in Su'),
 ('Single',307,'Sandro','Leo','Smash Finale'),
 ('Single',307,'Sandro','Siwei','Smash Finale'),
 ('Single',307,'Ale','Sandro','Speciale Laterale'),
 ('Single',307,'Ale','Siwei','Altro'),
 ('Single',307,'Sandro','Ale','Smash in Su'),
 ('Single',307,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',307,'Ale','Leo','Altro'),
 ('Single',307,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',307,'Siwei','Mancato Recupero'),
 ('Single',307,'Leo','Mancato Recupero');


--Single-306
insert into kills values ('Single',306,'Sandro','Leo','Smash in Su'),
 ('Single',306,'Leo','Sandro','Aereo in Su'),
 ('Single',306,'Ale','Siwei','Aereo Posteriore'),
 ('Single',306,'Sandro','Ale','Speciale Laterale'),
 ('Single',306,'Sandro','Ale','Smash Finale'),
 ('Single',306,'Siwei','Leo','Speciale in Su'),
 ('Single',306,'Leo','Siwei','Aereo in Su'),
 ('Single',306,'Siwei','Sandro','Speciale Laterale'),
 ('Single',306,'Sandro','Ale','Altro'),
 ('Single',306,'Siwei','Leo','Speciale in Su'),
 ('Single',306,'Sandro','Siwei','Altro');

insert into deaths values ('Single',306,'Ale','Mario Circuit'),
 ('Single',306,'Siwei','Mario Circuit');


--Single-305
insert into kills values ('Single',305,'Ale','Sandro','Altro'),
 ('Single',305,'Leo','Sandro','Smash Laterale'),
 ('Single',305,'Sandro','Siwei','Smash Laterale'),
 ('Single',305,'Siwei','Leo','Smash Laterale'),
 ('Single',305,'Sandro','Ale','Smash Finale'),
 ('Single',305,'Siwei','Leo','Speciale in Su'),
 ('Single',305,'Siwei','Ale','In Corsa'),
 ('Single',305,'Sandro','Siwei','Smash Laterale'),
 ('Single',305,'Ale','Leo','Altro'),
 ('Single',305,'Siwei','Sandro','Speciale in Su'),
 ('Single',305,'Ale','Siwei','Grab');

insert into deaths values ('Single',305,'Sandro','Mancato Recupero'),
 ('Single',305,'Leo','Mancato Recupero');


--Single-304
insert into kills values ('Single',304,'Ale','Sandro','Speciale Standard'),
 ('Single',304,'Sandro','Leo','Smash Laterale'),
 ('Single',304,'Sandro','Siwei','Smash Laterale'),
 ('Single',304,'Ale','Sandro','Altro'),
 ('Single',304,'Siwei','Ale','Smash Finale'),
 ('Single',304,'Leo','Siwei','Smash Finale'),
 ('Single',304,'Sandro','Leo','Speciale Standard'),
 ('Single',304,'Leo','Ale','Speciale in Giù'),
 ('Single',304,'Siwei','Sandro','Smash Laterale'),
 ('Single',304,'Siwei','Ale','Altro'),
 ('Single',304,'Leo','Siwei','Smash in Su');

insert into deaths values ('Single',304,'Sandro','Autodistruzione'),
 ('Single',304,'Ale','Autodistruzione');


--Single-303
insert into kills values ('Single',303,'Sandro','Leo','Aereo in Giù'),
 ('Single',303,'Siwei','Sandro','Aereo Frontale'),
 ('Single',303,'Sandro','Siwei','Aereo in Giù'),
 ('Single',303,'Sandro','Leo','Smash Finale'),
 ('Single',303,'Sandro','Ale','Smash Finale'),
 ('Single',303,'Siwei','Sandro','In Corsa'),
 ('Single',303,'Ale','Siwei','Aereo Frontale'),
 ('Single',303,'Leo','Ale','Altro'),
 ('Single',303,'Ale','Siwei','Smash Finale'),
 ('Single',303,'Ale','Sandro','Smash Finale'),
 ('Single',303,'Ale','Leo','Aereo Standard');

insert into deaths values ('Single',303,'Ale','Autodistruzione');


--Single-302
insert into kills values ('Single',302,'Ale','Sandro','Aereo Posteriore'),
 ('Single',302,'Ale','Leo','Speciale in Su'),
 ('Single',302,'Siwei','Ale','Speciale in Su'),
 ('Single',302,'Leo','Ale','Smash Finale'),
 ('Single',302,'Leo','Sandro','Smash Finale'),
 ('Single',302,'Leo','Siwei','Smash Finale'),
 ('Single',302,'Leo','Ale','Speciale in Su'),
 ('Single',302,'Sandro','Leo','Speciale in Su'),
 ('Single',302,'Leo','Siwei','Speciale in Su'),
 ('Single',302,'Leo','Sandro','Smash Finale'),
 ('Single',302,'Siwei','Leo','Smash Finale');


--Single-301
insert into kills values ('Single',301,'Leo','Siwei','Smash Laterale'),
 ('Single',301,'Ale','Sandro','Altro'),
 ('Single',301,'Sandro','Leo','Altro'),
 ('Single',301,'Siwei','Ale','Smash Finale'),
 ('Single',301,'Leo','Siwei','Altro'),
 ('Single',301,'Ale','Sandro','Smash Finale'),
 ('Single',301,'Ale','Leo','Altro'),
 ('Single',301,'Leo','Siwei','Aereo Frontale'),
 ('Single',301,'Sandro','Ale','Aereo in Giù'),
 ('Single',301,'Ale','Sandro','Smash in Su'),
 ('Single',301,'Ale','Leo','Altro');

insert into deaths values ('Single',301,'Sandro','Autodistruzione'),
 ('Single',301,'Siwei','Autodistruzione'),
 ('Single',301,'Leo','Autodistruzione');


--Single-300
insert into kills values ('Single',300,'Ale','Siwei','Aereo Posteriore'),
 ('Single',300,'Sandro','Leo','Smash Laterale'),
 ('Single',300,'Leo','Sandro','Smash Laterale'),
 ('Single',300,'Sandro','Siwei','Smash Laterale'),
 ('Single',300,'Sandro','Ale','Smash in Su'),
 ('Single',300,'Leo','Sandro','Smash Finale'),
 ('Single',300,'Sandro','Leo','Smash Laterale'),
 ('Single',300,'Sandro','Ale','Altro'),
 ('Single',300,'Sandro','Leo','Smash in Su'),
 ('Single',300,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',300,'Siwei','Sandro','Smash Finale');

insert into deaths values ('Single',300,'Ale','Autodistruzione');


--Single-299
insert into kills values ('Single',299,'Sandro','Ale','Altro'),
 ('Single',299,'Ale','Siwei','Speciale Laterale'),
 ('Single',299,'Siwei','Leo','Altro'),
 ('Single',299,'Ale','Sandro','Smash in Giù'),
 ('Single',299,'Siwei','Ale','Smash Finale'),
 ('Single',299,'Sandro','Siwei','Smash Finale'),
 ('Single',299,'Siwei','Sandro','Smash Laterale'),
 ('Single',299,'Siwei','Ale','Smash Laterale'),
 ('Single',299,'Sandro','Leo','Smash Laterale'),
 ('Single',299,'Leo','Sandro','Smash Finale'),
 ('Single',299,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Single',299,'Ale','Mancato Recupero');


--Single-298
insert into kills values ('Single',298,'Leo','Siwei','Speciale Laterale'),
 ('Single',298,'Sandro','Ale','Aereo in Giù'),
 ('Single',298,'Siwei','Leo','Speciale in Su'),
 ('Single',298,'Siwei','Sandro','Speciale in Su'),
 ('Single',298,'Ale','Sandro','Smash Finale'),
 ('Single',298,'Leo','Siwei','Smash Finale'),
 ('Single',298,'Leo','Siwei','Altro'),
 ('Single',298,'Ale','Sandro','Smash Laterale'),
 ('Single',298,'Ale','Leo','Aereo Posteriore'),
 ('Single',298,'Leo','Ale','Aereo in Giù'),
 ('Single',298,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',298,'Siwei','Autodistruzione');


--Single-297
insert into kills values ('Single',297,'Sandro','Ale','Smash Laterale'),
 ('Single',297,'Sandro','Siwei','Smash Laterale'),
 ('Single',297,'Siwei','Sandro','In Corsa'),
 ('Single',297,'Siwei','Leo','Smash Finale'),
 ('Single',297,'Leo','Siwei','Smash Laterale'),
 ('Single',297,'Leo','Ale','In Corsa'),
 ('Single',297,'Sandro','Siwei','Smash Finale'),
 ('Single',297,'Ale','Leo','Altro'),
 ('Single',297,'Leo','Sandro','Smash Laterale'),
 ('Single',297,'Sandro','Ale','Speciale in Giù'),
 ('Single',297,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',297,'Leo','Autodistruzione');

--ELGATO ^^^^
--Doubles-113
insert into kills values ('Doubles',113,'Leo','Siwei','Smash in Su'),
 ('Doubles',113,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',113,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',113,'Sandro','Siwei','Smash in Su'),
 ('Doubles',113,'Ale','Leo','Smash Laterale'),
 ('Doubles',113,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',113,'Leo','Ale','Smash Finale'),
 ('Doubles',113,'Ale','Sandro','Smash Laterale'),
 ('Doubles',113,'Ale','Sandro','Altro'),
 ('Doubles',113,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',113,'Ale','Fuoco Amico'),
 ('Doubles',113,'Sandro','Autodistruzione');


--Doubles-112
insert into kills values ('Doubles',112,'Siwei','Leo','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Doubles',112,'Leo','Siwei','Smash Laterale'),
 ('Doubles',112,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',112,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',112,'Leo','Siwei','Smash Laterale'),
 ('Doubles',112,'Sandro','Siwei','Smash Finale'),
 ('Doubles',112,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',112,'Leo','Ale','Aereo in Su'),
 ('Doubles',112,'Siwei','Sandro','Smash Finale'),
 ('Doubles',112,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Doubles',112,'Ale','Fuoco Amico'),
 ('Doubles',112,'Sandro','Fuoco Amico');


--Doubles-111
insert into kills values ('Doubles',111,'Leo','Siwei','Smash in Su'),
 ('Doubles',111,'Siwei','Sandro','Aereo in Su'),
 ('Doubles',111,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',111,'Sandro','Siwei','Aereo Frontale'),
 ('Doubles',111,'Leo','Ale','Smash Finale'),
 ('Doubles',111,'Siwei','Sandro','Smash Finale'),
 ('Doubles',111,'Leo','Siwei','Aereo in Su'),
 ('Doubles',111,'Leo','Ale','Smash Laterale'),
 ('Doubles',111,'Ale','Leo','Smash Laterale'),
 ('Doubles',111,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',111,'Ale','Leo','Aereo Frontale');

insert into deaths values ('Doubles',111,'Sandro','Fuoco Amico');


--Doubles-110
insert into kills values ('Doubles',110,'Sandro','Leo','Smash in Giù'),
 ('Doubles',110,'Ale','Siwei','Smash Laterale'),
 ('Doubles',110,'Leo','Sandro','Smash Finale'),
 ('Doubles',110,'Sandro','Ale','Aereo Frontale'),
 ('Doubles',110,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',110,'Ale','Sandro','Smash Finale'),
 ('Doubles',110,'Sandro','Leo','Smash Laterale'),
 ('Doubles',110,'Sandro','Ale','Smash in Giù'),
 ('Doubles',110,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',110,'Sandro','Ale','Smash Laterale'),
 ('Doubles',110,'Leo','Sandro','Smash Finale');


--Doubles-109
insert into kills values ('Doubles',109,'Sandro','Leo','Altro'),
 ('Doubles',109,'Leo','Siwei','Smash Laterale'),
 ('Doubles',109,'Leo','Siwei','Footstool'),
 ('Doubles',109,'Sandro','Ale','Smash Laterale'),
 ('Doubles',109,'Siwei','Leo','In Corsa'),
 ('Doubles',109,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',109,'Siwei','Ale','Altro'),
 ('Doubles',109,'Ale','Siwei','Smash Laterale'),
 ('Doubles',109,'Siwei','Leo','Speciale in Su'),
 ('Doubles',109,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Doubles',109,'Sandro','Fuoco Amico');


--Doubles-108
insert into kills values ('Doubles',108,'Leo','Ale','Altro'),
 ('Doubles',108,'Siwei','Leo','Speciale Standard'),
 ('Doubles',108,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',108,'Ale','Sandro','Smash Laterale'),
 ('Doubles',108,'Leo','Siwei','Smash Finale'),
 ('Doubles',108,'Ale','Leo','Smash Finale'),
 ('Doubles',108,'Sandro','Ale','In Corsa'),
 ('Doubles',108,'Sandro','Ale','Smash Finale'),
 ('Doubles',108,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',108,'Sandro','Siwei','Aereo in Giù');

insert into deaths values ('Doubles',108,'Leo','Fuoco Amico');


--Doubles-107
insert into kills values ('Doubles',107,'Sandro','Ale','Smash Laterale'),
 ('Doubles',107,'Leo','Siwei','Smash in Su'),
 ('Doubles',107,'Siwei','Sandro','Smash Finale'),
 ('Doubles',107,'Siwei','Leo','Smash Finale'),
 ('Doubles',107,'Sandro','Siwei','Smash in Su'),
 ('Doubles',107,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',107,'Leo','Ale','Speciale Standard'),
 ('Doubles',107,'Ale','Sandro','Smash Finale'),
 ('Doubles',107,'Leo','Siwei','Smash in Su'),
 ('Doubles',107,'Ale','Sandro','Altro'),
 ('Doubles',107,'Ale','Leo','Speciale in Giù');

insert into deaths values ('Doubles',107,'Sandro','Autodistruzione');


--Doubles-106
insert into kills values ('Doubles',106,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',106,'Leo','Sandro','Speciale in Su'),
 ('Doubles',106,'Sandro','Leo','Altro'),
 ('Doubles',106,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',106,'Ale','Siwei','Altro'),
 ('Doubles',106,'Sandro','Ale','Smash Finale'),
 ('Doubles',106,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',106,'Siwei','Ale','Aereo Frontale'),
 ('Doubles',106,'Sandro','Leo','Altro'),
 ('Doubles',106,'Ale','Sandro','Smash Laterale'),
 ('Doubles',106,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Doubles',106,'Leo','Mancato Recupero'),
 ('Doubles',106,'Siwei','Mancato Recupero'),
 ('Doubles',106,'Siwei','Fuoco Amico'),
 ('Doubles',106,'Leo','Mancato Recupero');


--Doubles-105
insert into kills values ('Doubles',105,'Sandro','Ale','Smash in Su'),
 ('Doubles',105,'Sandro','Leo','Speciale in Giù'),
 ('Doubles',105,'Leo','Sandro','Smash Laterale'),
 ('Doubles',105,'Leo','Siwei','Smash Laterale'),
 ('Doubles',105,'Ale','Siwei','Smash Finale'),
 ('Doubles',105,'Sandro','Leo','Smash Finale'),
 ('Doubles',105,'Ale','Siwei','Speciale Standard'),
 ('Doubles',105,'Siwei','Leo','Altro'),
 ('Doubles',105,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',105,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',105,'Leo','Mancato Recupero');


--Doubles-104
insert into kills values ('Doubles',104,'Leo','Siwei','Speciale Standard'),
 ('Doubles',104,'Sandro','Ale','Smash Laterale'),
 ('Doubles',104,'Siwei','Leo','Smash Laterale'),
 ('Doubles',104,'Ale','Sandro','Aereo Standard'),
 ('Doubles',104,'Ale','Siwei','Smash Finale'),
 ('Doubles',104,'Sandro','Ale','Smash Laterale'),
 ('Doubles',104,'Siwei','Leo','Altro'),
 ('Doubles',104,'Sandro','Leo','Smash Laterale'),
 ('Doubles',104,'Ale','Siwei','Altro'),
 ('Doubles',104,'Sandro','Ale','Altro');

insert into deaths values ('Doubles',104,'Leo','Autodistruzione'),
 ('Doubles',104,'Siwei','Mancato Recupero');


--Doubles-103
insert into kills values ('Doubles',103,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',103,'Sandro','Ale','Scudo Rotto'),
 ('Doubles',103,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',103,'Leo','Siwei','In Corsa'),
 ('Doubles',103,'Sandro','Ale','Smash Finale'),
 ('Doubles',103,'Siwei','Sandro','Smash Finale'),
 ('Doubles',103,'Leo','Ale','Smash in Su'),
 ('Doubles',103,'Siwei','Leo','Aereo Frontale'),
 ('Doubles',103,'Sandro','Siwei','Smash Finale'),
 ('Doubles',103,'Siwei','Sandro','Aereo Posteriore');

insert into deaths values ('Doubles',103,'Leo','Fuoco Amico'),
 ('Doubles',103,'Ale','Scudo Rotto'),
 ('Doubles',103,'Sandro','Fuoco Amico'),
 ('Doubles',103,'Sandro','Autodistruzione');


--Doubles-102
insert into kills values ('Doubles',102,'Siwei','Leo','Altro'),
 ('Doubles',102,'Leo','Ale','Smash Finale'),
 ('Doubles',102,'Sandro','Siwei','Smash Finale'),
 ('Doubles',102,'Ale','Leo','Smash Laterale'),
 ('Doubles',102,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',102,'Sandro','Siwei','Aereo Posteriore'),
 ('Doubles',102,'Siwei','Leo','Speciale in Giù'),
 ('Doubles',102,'Siwei','Sandro','Speciale in Giù'),
 ('Doubles',102,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Doubles',102,'Leo','Mancato Recupero'),
 ('Doubles',102,'Sandro','Fuoco Amico');


--Doubles-101
insert into kills values ('Doubles',101,'Ale','Sandro','Smash in Su'),
 ('Doubles',101,'Sandro','Leo','Altro'),
 ('Doubles',101,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',101,'Leo','Siwei','Smash in Su'),
 ('Doubles',101,'Sandro','Ale','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Doubles',101,'Siwei','Leo','Smash Finale'),
 ('Doubles',101,'Ale','Siwei','Smash Finale'),
 ('Doubles',101,'Leo','Sandro','Smash in Su'),
 ('Doubles',101,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',101,'Leo','Autodistruzione');


--Doubles-100
insert into kills values ('Doubles',100,'Leo','Sandro','Smash in Su'),
 ('Doubles',100,'Ale','Sandro','Altro'),
 ('Doubles',100,'Siwei','Ale','Altro'),
 ('Doubles',100,'Sandro','Leo','Altro'),
 ('Doubles',100,'Ale','Siwei','Smash Laterale'),
 ('Doubles',100,'Leo','Sandro','Smash in Su'),
 ('Doubles',100,'Siwei','Leo','Smash Finale'),
 ('Doubles',100,'Leo','Siwei','Smash Laterale'),
 ('Doubles',100,'Leo','Sandro','Smash in Su');

insert into deaths values ('Doubles',100,'Sandro','Autodistruzione'),
 ('Doubles',100,'Ale','Mancato Recupero'),
 ('Doubles',100,'Leo','Mancato Recupero');


--Doubles-99
insert into kills values ('Doubles',99,'Leo','Sandro','Smash Laterale'),
 ('Doubles',99,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',99,'Ale','Siwei','Altro'),
 ('Doubles',99,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',99,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',99,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',99,'Leo','Sandro','Smash in Giù'),
 ('Doubles',99,'Ale','Leo','Smash Finale'),
 ('Doubles',99,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',99,'Siwei','Autodistruzione'),
 ('Doubles',99,'Sandro','Autodistruzione'),
 ('Doubles',99,'Ale','Fuoco Amico');


--Doubles-98
insert into kills values ('Doubles',98,'Leo','Siwei','Altro'),
 ('Doubles',98,'Ale','Leo','Fuoco Amico'),
 ('Doubles',98,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',98,'Sandro','Ale','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Doubles',98,'Ale','Sandro','Smash Laterale'),
 ('Doubles',98,'Leo','Siwei','Smash Laterale'),
 ('Doubles',98,'Sandro','Leo','Smash Finale'),
 ('Doubles',98,'Ale','Sandro','Smash Finale'),
 ('Doubles',98,'Sandro','Leo','Altro'),
 ('Doubles',98,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',98,'Siwei','Autodistruzione'),
 ('Doubles',98,'Leo','Fuoco Amico'),
 ('Doubles',98,'Siwei','Fuoco Amico'),
 ('Doubles',98,'Leo','Balloon Fight'),
 ('Doubles',98,'Sandro','Balloon Fight');


--Doubles-97
insert into kills values ('Doubles',97,'Ale','Siwei','Grab'),
 ('Doubles',97,'Leo','Sandro','Peculiare'), --PECULIAR: NESS PK ROCKET
 ('Doubles',97,'Leo','Siwei','Smash Finale'),
 ('Doubles',97,'Siwei','Leo','In Corsa'),
 ('Doubles',97,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Doubles',97,'Ale','Leo','Fuoco Amico'),
 ('Doubles',97,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',97,'Leo','Sandro','Altro'),
 ('Doubles',97,'Sandro','Ale','Smash Finale'),
 ('Doubles',97,'Sandro','Leo','Smash Finale'),
 ('Doubles',97,'Leo','Sandro','Speciale in Su');

insert into deaths values ('Doubles',97,'Leo','Fuoco Amico'),
 ('Doubles',97,'Siwei','Fuoco Amico'),
 ('Doubles',97,'Sandro','Midgar');


--Doubles-96
insert into kills values ('Doubles',96,'Leo','Siwei','Smash in Su'),
 ('Doubles',96,'Siwei','Leo','Smash Finale'),
 ('Doubles',96,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',96,'Leo','Siwei','Smash in Su'),
 ('Doubles',96,'Siwei','Sandro','Speciale Standard'),
 ('Doubles',96,'Leo','Siwei','Smash in Su'),
 ('Doubles',96,'Sandro','Ale','Altro');

insert into deaths values ('Doubles',96,'Ale','Autodistruzione'),
 ('Doubles',96,'Ale','Autodistruzione');


--Doubles-95
insert into kills values ('Doubles',95,'Leo','Siwei','Smash Laterale'),
 ('Doubles',95,'Ale','Sandro','Aereo Standard'),
 ('Doubles',95,'Ale','Leo','Altro'),
 ('Doubles',95,'Sandro','Ale','Smash Finale'),
 ('Doubles',95,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',95,'Siwei','Sandro','Smash Finale'),
 ('Doubles',95,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',95,'Leo','Siwei','Smash Laterale'),
 ('Doubles',95,'Leo','Ale','Smash Laterale'),
 ('Doubles',95,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',95,'Ale','Leo','Altro');

insert into deaths values ('Doubles',95,'Leo','Mancato Recupero'),
 ('Doubles',95,'Sandro','Fuoco Amico'),
 ('Doubles',95,'Leo','Mancato Recupero');


--Doubles-94
insert into kills values ('Doubles',94,'Sandro','Ale','Speciale in Su'),
 ('Doubles',94,'Ale','Leo','Fuoco Amico'),
 ('Doubles',94,'Ale','Sandro','Smash Laterale'),
 ('Doubles',94,'Ale','Siwei','Smash Laterale'),
 ('Doubles',94,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',94,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',94,'Leo','Ale','Fuoco Amico'),
 ('Doubles',94,'Ale','Siwei','Altro'),
 ('Doubles',94,'Sandro','Leo','Altro'),
 ('Doubles',94,'Ale','Sandro','Aereo in Su'),
 ('Doubles',94,'Ale','Siwei','Altro');

insert into deaths values ('Doubles',94,'Leo','Fuoco Amico'),
 ('Doubles',94,'Sandro','Fuoco Amico'),
 ('Doubles',94,'Ale','Fuoco Amico'),
 ('Doubles',94,'Siwei','Mancato Recupero'),
 ('Doubles',94,'Leo','Autodistruzione'),
 ('Doubles',94,'Siwei','Autodistruzione');


--Single-296
insert into kills values ('Single',296,'Leo','Sandro','Altro'),
 ('Single',296,'Ale','Leo','Aereo Standard'),
 ('Single',296,'Leo','Ale','Smash in Su'),
 ('Single',296,'Leo','Siwei','Smash Laterale'),
 ('Single',296,'Ale','Siwei','Altro'),
 ('Single',296,'Siwei','Sandro','Altro'),
 ('Single',296,'Leo','Ale','Aereo in Giù'),
 ('Single',296,'Sandro','Leo','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',296,'Siwei','Ale','Smash Finale'),
 ('Single',296,'Sandro','Siwei','Speciale in Su'),
 ('Single',296,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',296,'Sandro','Autodistruzione'),
 ('Single',296,'Siwei','Mancato Recupero'),
 ('Single',296,'Sandro','Autodistruzione');


--Single-295
insert into kills values ('Single',295,'Ale','Sandro','Aereo Standard'),
 ('Single',295,'Leo','Siwei','Smash Laterale'),
 ('Single',295,'Siwei','Leo','Smash Finale'),
 ('Single',295,'Siwei','Ale','Smash Finale'),
 ('Single',295,'Ale','Siwei','Altro'),
 ('Single',295,'Sandro','Leo','Smash Finale'),
 ('Single',295,'Ale','Leo','Smash Finale'),
 ('Single',295,'Ale','Siwei','Smash Finale'),
 ('Single',295,'Ale','Sandro','Smash in Su'),
 ('Single',295,'Sandro','Ale','Aereo in Giù'),
 ('Single',295,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',295,'Siwei','Mancato Recupero');


--Single-294
insert into kills values ('Single',294,'Leo','Sandro','Smash Laterale'),
 ('Single',294,'Sandro','Siwei','Altro'),
 ('Single',294,'Ale','Sandro','Speciale in Giù'),
 ('Single',294,'Leo','Ale','Smash Laterale'),
 ('Single',294,'Ale','Leo','Smash Laterale'),
 ('Single',294,'Leo','Siwei','Altro'),
 ('Single',294,'Siwei','Sandro','Smash Finale'),
 ('Single',294,'Leo','Ale','Speciale in Giù'),
 ('Single',294,'Ale','Leo','Smash Laterale'),
 ('Single',294,'Leo','Siwei','Smash in Su'),
 ('Single',294,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',294,'Siwei','Wily Castle'),
 ('Single',294,'Siwei','Mancato Recupero');


--Single-293
insert into kills values ('Single',293,'Ale','Siwei','Aereo Posteriore'),
 ('Single',293,'Leo','Ale','Smash in Su'),
 ('Single',293,'Sandro','Leo','Aereo in Giù'),
 ('Single',293,'Siwei','Sandro','Aereo in Su'),
 ('Single',293,'Leo','Sandro','Smash Finale'),
 ('Single',293,'Ale','Leo','Smash Finale'),
 ('Single',293,'Ale','Siwei','Aereo Posteriore'),
 ('Single',293,'Sandro','Ale','Aereo in Giù'),
 ('Single',293,'Sandro','Leo','Smash in Su'),
 ('Single',293,'Sandro','Siwei','Smash Finale'),
 ('Single',293,'Sandro','Ale','Smash Laterale');


--Single-292
insert into kills values ('Single',292,'Siwei','Ale','Smash Laterale'),
 ('Single',292,'Leo','Sandro','Speciale in Su'),
 ('Single',292,'Sandro','Leo','Smash Laterale'),
 ('Single',292,'Sandro','Siwei','Aereo in Giù'),
 ('Single',292,'Sandro','Leo','Smash Finale'),
 ('Single',292,'Sandro','Ale','Smash Finale'),
 ('Single',292,'Siwei','Sandro','Smash Finale'),
 ('Single',292,'Ale','Siwei','Smash Finale'),
 ('Single',292,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',292,'Siwei','Leo','Smash Finale'),
 ('Single',292,'Siwei','Sandro','Aereo Frontale');


--Single-291
insert into kills values ('Single',291,'Ale','Leo','Smash Laterale'),
 ('Single',291,'Sandro','Siwei','Altro'),
 ('Single',291,'Leo','Sandro','Smash Laterale'),
 ('Single',291,'Siwei','Sandro','Smash Finale'),
 ('Single',291,'Ale','Siwei','Aereo in Giù'),
 ('Single',291,'Ale','Leo','Speciale in Giù'),
 ('Single',291,'Leo','Ale','Smash Laterale'),
 ('Single',291,'Ale','Siwei','Smash Finale'),
 ('Single',291,'Leo','Ale','Smash in Su'),
 ('Single',291,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',291,'Siwei','Autodistruzione'),
 ('Single',291,'Sandro','Autodistruzione');


--Single-290
insert into kills values ('Single',290,'Leo','Ale','Smash in Su'),
 ('Single',290,'Ale','Leo','Smash Laterale'),
 ('Single',290,'Siwei','Sandro','Altro'),
 ('Single',290,'Leo','Siwei','Smash Finale'),
 ('Single',290,'Sandro','Siwei','Smash Finale'),
 ('Single',290,'Sandro','Ale','Smash Finale'),
 ('Single',290,'Sandro','Leo','Smash in Su'),
 ('Single',290,'Sandro','Ale','Aereo in Giù'),
 ('Single',290,'Leo','Sandro','Smash in Su'),
 ('Single',290,'Siwei','Leo','Smash Finale'),
 ('Single',290,'Sandro','Siwei','Smash Finale');


--Single-289
insert into kills values ('Single',289,'Siwei','Leo','Speciale Standard'),
 ('Single',289,'Ale','Siwei','Aereo Posteriore'),
 ('Single',289,'Leo','Sandro','Smash Finale'),
 ('Single',289,'Sandro','Ale','Smash Finale'),
 ('Single',289,'Ale','Siwei','Aereo Standard'),
 ('Single',289,'Siwei','Leo','Smash Laterale'),
 ('Single',289,'Ale','Sandro','Smash Finale'),
 ('Single',289,'Leo','Ale','Smash in Su'),
 ('Single',289,'Siwei','Leo','Smash Finale'),
 ('Single',289,'Ale','Siwei','Smash Laterale'),
 ('Single',289,'Sandro','Ale','Smash Finale');


--Single-288
insert into kills values ('Single',288,'Ale','Leo','Aereo Frontale'),
 ('Single',288,'Ale','Sandro','In Corsa'),
 ('Single',288,'Sandro','Siwei','Smash Laterale'),
 ('Single',288,'Siwei','Leo','Smash Finale'),
 ('Single',288,'Siwei','Sandro','Grab'),
 ('Single',288,'Siwei','Ale','Grab'),
 ('Single',288,'Ale','Siwei','Smash Finale'),
 ('Single',288,'Siwei','Ale','Altro'),
 ('Single',288,'Ale','Leo','Aereo Posteriore'),
 ('Single',288,'Ale','Siwei','Speciale in Giù');

insert into deaths values ('Single',288,'Sandro','Autodistruzione');


--Single-287
insert into kills values ('Single',287,'Ale','Leo','Smash Laterale'),
 ('Single',287,'Ale','Sandro','Smash Laterale'),
 ('Single',287,'Leo','Siwei','Speciale Laterale'),
 ('Single',287,'Leo','Ale','Smash Finale'),
 ('Single',287,'Siwei','Ale','Smash Laterale'),
 ('Single',287,'Ale','Leo','Aereo Standard'),
 ('Single',287,'Sandro','Siwei','Altro'),
 ('Single',287,'Leo','Sandro','Smash Laterale'),
 ('Single',287,'Sandro','Leo','Smash Finale'),
 ('Single',287,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',287,'Siwei','Autodistruzione'),
 ('Single',287,'Siwei','Autodistruzione');


--Single-286
insert into kills values ('Single',286,'Leo','Sandro','Smash in Su'),
 ('Single',286,'Ale','Leo','Speciale in Giù'),
 ('Single',286,'Ale','Siwei','Aereo Posteriore'),
 ('Single',286,'Leo','Ale','Smash Finale'),
 ('Single',286,'Siwei','Leo','Speciale Laterale'),
 ('Single',286,'Sandro','Siwei','Aereo in Giù'),
 ('Single',286,'Ale','Sandro','Smash Finale'),
 ('Single',286,'Ale','Leo','Altro'),
 ('Single',286,'Ale','Siwei','Speciale in Giù'),
 ('Single',286,'Sandro','Ale','Smash Laterale'),
 ('Single',286,'Ale','Sandro','Aereo Posteriore');

insert into deaths values ('Single',286,'Leo','Mancato Recupero');


--Single-285
insert into kills values ('Single',285,'Leo','Ale','Smash in Su'),
 ('Single',285,'Leo','Sandro','Smash in Su'),
 ('Single',285,'Leo','Siwei','Smash Laterale'),
 ('Single',285,'Siwei','Leo','Altro'),
 ('Single',285,'Leo','Ale','Speciale Laterale'),
 ('Single',285,'Leo','Sandro','Altro'),
 ('Single',285,'Ale','Siwei','Smash Finale'),
 ('Single',285,'Ale','Sandro','Smash Finale'),
 ('Single',285,'Siwei','Leo','Speciale in Su'),
 ('Single',285,'Leo','Ale','Altro'),
 ('Single',285,'Leo','Siwei','Smash in Su');

insert into deaths values ('Single',285,'Leo','Autodistruzione'),
 ('Single',285,'Sandro','Mancato Recupero');


--Single-284
insert into kills values ('Single',284,'Ale','Leo','Altro'),
 ('Single',284,'Sandro','Leo','Smash Laterale'),
 ('Single',284,'Sandro','Siwei','Aereo Frontale'),
 ('Single',284,'Leo','Sandro','Altro'),
 ('Single',284,'Siwei','Sandro','Altro'),
 ('Single',284,'Leo','Ale','Smash Laterale'),
 ('Single',284,'Leo','Siwei','Smash Finale'),
 ('Single',284,'Sandro','Leo','Smash Finale'),
 ('Single',284,'Ale','Sandro','Altro'),
 ('Single',284,'Siwei','Ale','Smash Laterale'),
 ('Single',284,'Ale','Siwei','Altro');

insert into deaths values ('Single',284,'Leo','Autodistruzione'),
 ('Single',284,'Sandro','Norfair'),
 ('Single',284,'Sandro','Norfair'),
 ('Single',284,'Sandro','Norfair'),
 ('Single',284,'Siwei','Norfair');


--Single-283
insert into kills values ('Single',283,'Ale','Siwei','Speciale in Giù'),
 ('Single',283,'Siwei','Leo','Altro'),
 ('Single',283,'Leo','Ale','Speciale Standard'),
 ('Single',283,'Ale','Sandro','Aereo Standard'),
 ('Single',283,'Leo','Siwei','Smash Laterale'),
 ('Single',283,'Ale','Sandro','Smash Finale'),
 ('Single',283,'Siwei','Ale','Smash Finale'),
 ('Single',283,'Siwei','Sandro','Smash Finale'),
 ('Single',283,'Siwei','Leo','Altro'),
 ('Single',283,'Siwei','Leo','Speciale Standard'),
 ('Single',283,'Ale','Siwei','Speciale in Su');

insert into deaths values ('Single',283,'Leo','Mancato Recupero'),
 ('Single',283,'Leo','Mancato Recupero');


--Single-282
insert into kills values ('Single',282,'Ale','Sandro','Speciale in Giù'),
 ('Single',282,'Siwei','Leo','Aereo Frontale'),
 ('Single',282,'Ale','Siwei','Altro'),
 ('Single',282,'Siwei','Ale','Altro'),
 ('Single',282,'Siwei','Sandro','Smash Finale'),
 ('Single',282,'Ale','Siwei','Altro'),
 ('Single',282,'Ale','Leo','Speciale in Giù'),
 ('Single',282,'Ale','Sandro','Aereo Posteriore'),
 ('Single',282,'Ale','Leo','Altro'),
 ('Single',282,'Siwei','Ale','Speciale Standard'),
 ('Single',282,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',282,'Siwei','Green Greens'),
 ('Single',282,'Siwei','Mancato Recupero'),
 ('Single',282,'Leo','Mancato Recupero');


--Single-281
insert into kills values ('Single',281,'Leo','Siwei','Speciale Laterale'),
 ('Single',281,'Ale','Siwei','Altro'),
 ('Single',281,'Ale','Siwei','In Corsa'),
 ('Single',281,'Sandro','Leo','Speciale in Giù'),
 ('Single',281,'Ale','Sandro','Speciale in Giù'),
 ('Single',281,'Leo','Ale','Smash Laterale'),
 ('Single',281,'Leo','Sandro','Altro'),
 ('Single',281,'Ale','Leo','Speciale in Giù'),
 ('Single',281,'Leo','Sandro','Speciale Laterale'),
 ('Single',281,'Leo','Ale','Smash Finale'),
 ('Single',281,'Ale','Leo','Aereo Frontale');

insert into deaths values ('Single',281,'Siwei','Mushroomy Kingdom');


--Single-280
insert into kills values ('Single',280,'Leo','Ale','Smash Laterale'),
 ('Single',280,'Ale','Leo','Smash Laterale'),
 ('Single',280,'Leo','Siwei','Speciale Standard'),
 ('Single',280,'Siwei','Sandro','Speciale Laterale'),
 ('Single',280,'Siwei','Ale','Speciale Laterale'),
 ('Single',280,'Ale','Leo','Smash Laterale'),
 ('Single',280,'Ale','Siwei','Aereo Frontale'),
 ('Single',280,'Ale','Leo','Smash Finale'),
 ('Single',280,'Ale','Sandro','Speciale in Giù'),
 ('Single',280,'Siwei','Ale','Speciale in Su'),
 ('Single',280,'Siwei','Sandro','Aereo Frontale');


--Single-279
insert into kills values ('Single',279,'Sandro','Siwei','Speciale in Su'),
 ('Single',279,'Siwei','Leo','Smash Laterale'),
 ('Single',279,'Ale','Siwei','Aereo Frontale'),
 ('Single',279,'Sandro','Ale','Altro'),
 ('Single',279,'Ale','Sandro','Speciale in Giù'),
 ('Single',279,'Siwei','Sandro','Speciale in Su'),
 ('Single',279,'Siwei','Leo','Speciale in Giù'),
 ('Single',279,'Siwei','Ale','Speciale in Su'),
 ('Single',279,'Siwei','Ale','Aereo in Su'),
 ('Single',279,'Leo','Siwei','Altro');

insert into deaths values ('Single',279,'Sandro','Autodistruzione'),
 ('Single',279,'Ale','Autodistruzione'),
 ('Single',279,'Siwei','Saffron City');


--Single-278
insert into kills values ('Single',278,'Ale','Sandro','Aereo in Su'),
 ('Single',278,'Ale','Leo','Aereo Standard'),
 ('Single',278,'Sandro','Siwei','Speciale Laterale'),
 ('Single',278,'Ale','Leo','Aereo Standard'),
 ('Single',278,'Leo','Ale','Smash Laterale'),
 ('Single',278,'Leo','Siwei','Smash Finale'),
 ('Single',278,'Leo','Sandro','Smash Laterale'),
 ('Single',278,'Siwei','Leo','Speciale Laterale'),
 ('Single',278,'Ale','Siwei','Smash Laterale'),
 ('Single',278,'Sandro','Ale','Smash Finale'),
 ('Single',278,'Ale','Sandro','Speciale in Giù');


--Single-277
insert into kills values ('Single',277,'Sandro','Siwei','Speciale Standard'),
 ('Single',277,'Leo','Sandro','Aereo Standard'),
 ('Single',277,'Sandro','Siwei','Smash in Su'),
 ('Single',277,'Sandro','Leo','Smash Finale'),
 ('Single',277,'Leo','Sandro','Smash Laterale'),
 ('Single',277,'Leo','Ale','Speciale Laterale'),
 ('Single',277,'Sandro','Siwei','Altro'),
 ('Single',277,'Leo','Ale','Smash Finale'),
 ('Single',277,'Sandro','Leo','Smash Finale'),
 ('Single',277,'Sandro','Ale','Smash Laterale'),
 ('Single',277,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',277,'Siwei','Autodistruzione');


--Single-276
insert into kills values ('Single',276,'Leo','Siwei','Speciale Laterale'),
 ('Single',276,'Sandro','Leo','Speciale Laterale'),
 ('Single',276,'Leo','Ale','Smash Laterale'),
 ('Single',276,'Ale','Sandro','In Corsa'),
 ('Single',276,'Ale','Leo','Smash Finale'),
 ('Single',276,'Sandro','Ale','Smash Finale'),
 ('Single',276,'Sandro','Siwei','Smash Finale'),
 ('Single',276,'Ale','Siwei','Altro'),
 ('Single',276,'Ale','Leo','Altro'),
 ('Single',276,'Ale','Sandro','Grab'),
 ('Single',276,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Single',276,'Siwei','Autodistruzione'),
 ('Single',276,'Leo','Mancato Recupero');


--Single-275
insert into kills values ('Single',275,'Leo','Sandro','Smash Laterale'),
 ('Single',275,'Leo','Siwei','Speciale in Giù'),
 ('Single',275,'Sandro','Leo','Smash in Su'),
 ('Single',275,'Sandro','Ale','Smash Finale'),
 ('Single',275,'Ale','Sandro','Smash Laterale'),
 ('Single',275,'Siwei','Leo','Speciale Laterale'),
 ('Single',275,'Leo','Siwei','Smash in Su'),
 ('Single',275,'Leo','Siwei','Speciale Standard'),
 ('Single',275,'Leo','Ale','Smash Laterale'),
 ('Single',275,'Sandro','Leo','Smash Finale'),
 ('Single',275,'Ale','Sandro','Smash Laterale');


--Single-274
insert into kills values ('Single',274,'Sandro','Leo','Smash Laterale'),
 ('Single',274,'Ale','Siwei','Smash Laterale'),
 ('Single',274,'Siwei','Ale','Smash Laterale'),
 ('Single',274,'Ale','Sandro','Aereo Frontale'),
 ('Single',274,'Leo','Sandro','Smash Finale'),
 ('Single',274,'Siwei','Leo','Smash Finale'),
 ('Single',274,'Siwei','Sandro','Smash Laterale'),
 ('Single',274,'Siwei','Ale','Aereo Frontale'),
 ('Single',274,'Ale','Siwei','Altro'),
 ('Single',274,'Leo','Ale','Smash Finale'),
 ('Single',274,'Siwei','Leo','Smash Finale');

insert into deaths values ('Single',274,'Siwei','WarioWare Inc.');


--Single-273
insert into kills values ('Single',273,'Ale','Leo','Altro'),
 ('Single',273,'Leo','Ale','Smash Finale'),
 ('Single',273,'Ale','Siwei','Aereo Standard'),
 ('Single',273,'Leo','Sandro','Peculiare'), --PECULIAR: NESS PK ROCKET
 ('Single',273,'Ale','Leo','Aereo Posteriore'),
 ('Single',273,'Siwei','Sandro','Smash Finale'),
 ('Single',273,'Leo','Ale','Smash Finale'),
 ('Single',273,'Leo','Siwei','Smash Finale'),
 ('Single',273,'Sandro','Leo','Speciale in Giù'),
 ('Single',273,'Sandro','Siwei','Smash Finale'),
 ('Single',273,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',273,'Leo','Mancato Recupero');


--Single-272
insert into kills values ('Single',272,'Ale','Siwei','Altro'),
 ('Single',272,'Siwei','Leo','Altro'),
 ('Single',272,'Ale','Leo','Altro'),
 ('Single',272,'Leo','Sandro','Speciale Laterale'),
 ('Single',272,'Leo','Siwei','Altro'),
 ('Single',272,'Siwei','Ale','Smash Laterale'),
 ('Single',272,'Ale','Leo','Altro'),
 ('Single',272,'Ale','Siwei','Aereo Posteriore'),
 ('Single',272,'Sandro','Ale','Smash in Su'),
 ('Single',272,'Ale','Sandro','Smash Laterale'),
 ('Single',272,'Sandro','Ale','In Corsa');

insert into deaths values ('Single',272,'Siwei','Jungle Japes'),
 ('Single',272,'Leo','Jungle Japes'),
 ('Single',272,'Leo','Jungle Japes'),
 ('Single',272,'Siwei','Jungle Japes'),
 ('Single',272,'Leo','Jungle Japes');


--Single-271
insert into kills values ('Single',271,'Leo','Siwei','Smash Laterale'),
 ('Single',271,'Ale','Leo','Smash in Su'),
 ('Single',271,'Siwei','Ale','Aereo Frontale'),
 ('Single',271,'Leo','Sandro','Smash Finale'),
 ('Single',271,'Siwei','Sandro','Altro'),
 ('Single',271,'Ale','Siwei','Smash Finale'),
 ('Single',271,'Sandro','Siwei','Smash Finale'),
 ('Single',271,'Sandro','Leo','Smash Finale'),
 ('Single',271,'Sandro','Ale','Smash Finale'),
 ('Single',271,'Leo','Sandro','In Corsa'),
 ('Single',271,'Ale','Leo','Altro');


--Single-270
insert into kills values ('Single',270,'Sandro','Siwei','Meteora'),
 ('Single',270,'Ale','Sandro','Aereo in Su'),
 ('Single',270,'Ale','Leo','Smash Laterale'),
 ('Single',270,'Sandro','Ale','Smash in Su'),
 ('Single',270,'Leo','Ale','Aereo in Su'),
 ('Single',270,'Siwei','Sandro','Smash Laterale'),
 ('Single',270,'Leo','Siwei','Smash Laterale'),
 ('Single',270,'Leo','Ale','Altro'),
 ('Single',270,'Siwei','Leo','Smash Finale'),
 ('Single',270,'Sandro','Siwei','Aereo in Su'),
 ('Single',270,'Sandro','Leo','Aereo in Su');

insert into deaths values ('Single',270,'Ale','Mancato Recupero');


--Single-269
insert into kills values ('Single',269,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',269,'Ale','Sandro','Smash Laterale'),
 ('Single',269,'Ale','Siwei','Aereo Standard'),
 ('Single',269,'Ale','Leo','Altro'),
 ('Single',269,'Siwei','Sandro','Smash Finale'),
 ('Single',269,'Ale','Leo','Smash Finale'),
 ('Single',269,'Siwei','Ale','In Corsa'),
 ('Single',269,'Sandro','Leo','Smash Finale'),
 ('Single',269,'Sandro','Siwei','Smash Finale'),
 ('Single',269,'Siwei','Sandro','Smash Finale'),
 ('Single',269,'Siwei','Ale','Aereo in Su');

insert into deaths values ('Single',269,'Leo','Mancato Recupero');


--Single-268
insert into kills values ('Single',268,'Siwei','Sandro','Smash Laterale'),
 ('Single',268,'Ale','Siwei','Smash Laterale'),
 ('Single',268,'Ale','Leo','Speciale Laterale'),
 ('Single',268,'Siwei','Ale','Speciale Standard'),
 ('Single',268,'Leo','Siwei','Smash Finale'),
 ('Single',268,'Ale','Sandro','Smash Finale'),
 ('Single',268,'Ale','Siwei','Smash Laterale'),
 ('Single',268,'Leo','Ale','Speciale Standard'),
 ('Single',268,'Ale','Leo','Smash Laterale'),
 ('Single',268,'Ale','Sandro','Smash in Su'),
 ('Single',268,'Leo','Ale','Smash Finale');


--Doubles-93
insert into kills values ('Doubles',93,'Leo','Ale','Smash Laterale'),
 ('Doubles',93,'Sandro','Siwei','Smash in Su'),
 ('Doubles',93,'Ale','Leo','Meteora'),
 ('Doubles',93,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',93,'Sandro','Leo','Altro'),
 ('Doubles',93,'Leo','Ale','Altro'),
 ('Doubles',93,'Sandro','Siwei','Altro'),
 ('Doubles',93,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',93,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Doubles',93,'Leo','Mancato Recupero'),
 ('Doubles',93,'Leo','Fuoco Amico');


--Doubles-92
insert into kills values ('Doubles',92,'Ale','Sandro','Meteora'),
 ('Doubles',92,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',92,'Leo','Ale','Altro'),
 ('Doubles',92,'Siwei','Leo','Smash Finale'),
 ('Doubles',92,'Sandro','Ale','Altro'),
 ('Doubles',92,'Sandro','Siwei','Smash Finale'),
 ('Doubles',92,'Ale','Sandro','Smash Finale'),
 ('Doubles',92,'Ale','Leo','Smash Finale'),
 ('Doubles',92,'Leo','Siwei','Smash Finale'),
 ('Doubles',92,'Ale','Leo','Speciale Laterale'),
 ('Doubles',92,'Sandro','Ale','Smash Finale');

insert into deaths values ('Doubles',92,'Ale','Mancato Recupero');


--Doubles-91
insert into kills values ('Doubles',91,'Sandro','Siwei','Altro'),
 ('Doubles',91,'Sandro','Ale','Speciale Standard'),
 ('Doubles',91,'Leo','Siwei','Altro'),
 ('Doubles',91,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',91,'Sandro','Siwei','Altro'),
 ('Doubles',91,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',91,'Leo','Siwei','Altro'),
 ('Doubles',91,'Leo','Ale','Peculiare'); --PECULIAR: CHARIZARD FLARE BLITZ

insert into deaths values ('Doubles',91,'Siwei','Mancato Recupero'),
 ('Doubles',91,'Siwei','Autodistruzione'),
 ('Doubles',91,'Leo','Fuoco Amico'),
 ('Doubles',91,'Siwei','Mancato Recupero'),
 ('Doubles',91,'Siwei','Autodistruzione');


--Doubles-90
insert into kills values ('Doubles',90,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',90,'Siwei','Sandro','In Corsa'),
 ('Doubles',90,'Sandro','Leo','Aereo in Su'),
 ('Doubles',90,'Leo','Ale','Smash Finale'),
 ('Doubles',90,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',90,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',90,'Sandro','Leo','Smash Laterale'),
 ('Doubles',90,'Leo','Sandro','Aereo Posteriore'),
 ('Doubles',90,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',90,'Leo','Sandro','Smash Laterale'),
 ('Doubles',90,'Leo','Ale','Smash Laterale');

insert into deaths values ('Doubles',90,'Siwei','Fuoco Amico'),
 ('Doubles',90,'Ale','Fuoco Amico'),
 ('Doubles',90,'Siwei','Fuoco Amico');


--Doubles-89
insert into kills values ('Doubles',89,'Ale','Leo','Altro'),
 ('Doubles',89,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',89,'Leo','Ale','Speciale Laterale'),
 ('Doubles',89,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',89,'Ale','Leo','Smash Finale'),
 ('Doubles',89,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',89,'Siwei','Sandro','Speciale Laterale'),
 ('Doubles',89,'Leo','Siwei','Smash Finale'),
 ('Doubles',89,'Siwei','Leo','Smash Finale'),
 ('Doubles',89,'Sandro','Ale','Smash Laterale'),
 ('Doubles',89,'Sandro','Siwei','Aereo in Su');

insert into deaths values ('Doubles',89,'Leo','Mancato Recupero'),
 ('Doubles',89,'Siwei','Fuoco Amico');


--Doubles-88
insert into kills values ('Doubles',88,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',88,'Leo','Siwei','Smash Laterale'),
 ('Doubles',88,'Siwei','Leo','In Corsa'),
 ('Doubles',88,'Sandro','Ale','Smash Laterale'),
 ('Doubles',88,'Leo','Siwei','Smash Finale'),
 ('Doubles',88,'Ale','Siwei','Smash Finale'),
 ('Doubles',88,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',88,'Sandro','Ale','Smash Laterale'),
 ('Doubles',88,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',88,'Sandro','Fuoco Amico'),
 ('Doubles',88,'Sandro','Autodistruzione');


--Doubles-87
insert into kills values ('Doubles',87,'Leo','Sandro','Smash Laterale'),
 ('Doubles',87,'Leo','Sandro','Altro'),
 ('Doubles',87,'Siwei','Leo','Altro'),
 ('Doubles',87,'Leo','Siwei','Altro'),
 ('Doubles',87,'Siwei','Ale','Aereo Frontale'),
 ('Doubles',87,'Leo','Siwei','Altro'),
 ('Doubles',87,'Ale','Sandro','Altro');

insert into deaths values ('Doubles',87,'Sandro','Jungle Japes'),
 ('Doubles',87,'Leo','Jungle Japes'),
 ('Doubles',87,'Siwei','Jungle Japes'),
 ('Doubles',87,'Siwei','Jungle Japes'),
 ('Doubles',87,'Siwei','Autodistruzione'),
 ('Doubles',87,'Sandro','Jungle Japes');


--Doubles-86
insert into kills values ('Doubles',86,'Sandro','Leo','Aereo Posteriore'),
 ('Doubles',86,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',86,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',86,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',86,'Sandro','Leo','Smash Finale'),
 ('Doubles',86,'Leo','Sandro','Smash Finale'),
 ('Doubles',86,'Ale','Siwei','Smash Laterale'),
 ('Doubles',86,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',86,'Siwei','Ale','Smash Finale'),
 ('Doubles',86,'Sandro','Siwei','Aereo in Su');

insert into deaths values ('Doubles',86,'Siwei','Fuoco Amico'),
 ('Doubles',86,'Ale','Fuoco Amico');


--Doubles-85
insert into kills values ('Doubles',85,'Sandro','Ale','Altro'),
 ('Doubles',85,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',85,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',85,'Sandro','Leo','Smash in Su'),
 ('Doubles',85,'Leo','Siwei','Altro'),
 ('Doubles',85,'Leo','Siwei','Altro'),
 ('Doubles',85,'Sandro','Ale','Smash Finale'),
 ('Doubles',85,'Leo','Sandro','Smash in Su'),
 ('Doubles',85,'Siwei','Leo','Smash Finale'),
 ('Doubles',85,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Doubles',85,'Ale','Mancato Recupero'),
 ('Doubles',85,'Siwei','Fuoco Amico'),
 ('Doubles',85,'Sandro','Fuoco Amico'),
 ('Doubles',85,'Siwei','Autodistruzione'),
 ('Doubles',85,'Siwei','Autodistruzione');


--Doubles-84
insert into kills values ('Doubles',84,'Sandro','Siwei','Smash in Su'),
 ('Doubles',84,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',84,'Sandro','Leo','Aereo in Su'),
 ('Doubles',84,'Siwei','Ale','Speciale in Su'),
 ('Doubles',84,'Ale','Siwei','Smash Finale'),
 ('Doubles',84,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',84,'Siwei','Ale','Speciale in Su'),
 ('Doubles',84,'Sandro','Leo','Aereo in Su'),
 ('Doubles',84,'Leo','Sandro','Smash Finale'),
 ('Doubles',84,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',84,'Ale','Leo','Smash in Su');

insert into deaths values ('Doubles',84,'Siwei','Fuoco Amico');


--Single-267
insert into kills values ('Single',267,'Sandro','Siwei','Speciale Standard'),
 ('Single',267,'Ale','Leo','Smash Laterale'),
 ('Single',267,'Leo','Sandro','Meteora'),
 ('Single',267,'Ale','Leo','Aereo Posteriore'),
 ('Single',267,'Leo','Siwei','Smash Finale'),
 ('Single',267,'Ale','Sandro','Smash Finale'),
 ('Single',267,'Sandro','Ale','Smash Laterale'),
 ('Single',267,'Siwei','Leo','Smash Finale'),
 ('Single',267,'Siwei','Ale','Scudo Rotto'),
 ('Single',267,'Ale','Siwei','Aereo Posteriore'),
 ('Single',267,'Ale','Sandro','Smash Finale');
 
 insert into deaths values ('Single',267,'Ale','Scudo Rotto');


--Single-266
insert into kills values ('Single',266,'Siwei','Ale','Smash in Su'),
 ('Single',266,'Leo','Sandro','Aereo Standard'),
 ('Single',266,'Sandro','Leo','Aereo Frontale'),
 ('Single',266,'Leo','Siwei','Smash Finale'),
 ('Single',266,'Leo','Ale','Smash Finale'),
 ('Single',266,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',266,'Sandro','Leo','Speciale in Su'),
 ('Single',266,'Sandro','Siwei','Speciale Standard'),
 ('Single',266,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',266,'Ale','Siwei','Smash Finale'),
 ('Single',266,'Ale','Leo','Altro');

insert into deaths values ('Single',266,'Leo','Autodistruzione');


--Single-265
insert into kills values ('Single',265,'Sandro','Siwei','Altro'),
 ('Single',265,'Siwei','Leo','Altro'),
 ('Single',265,'Sandro','Siwei','Altro'),
 ('Single',265,'Siwei','Ale','Smash Finale'),
 ('Single',265,'Siwei','Leo','Speciale in Su'),
 ('Single',265,'Leo','Sandro','Smash Finale'),
 ('Single',265,'Leo','Siwei','Smash Finale'),
 ('Single',265,'Leo','Ale','Smash Laterale'),
 ('Single',265,'Ale','Sandro','Smash Finale'),
 ('Single',265,'Ale','Leo','Altro'),
 ('Single',265,'Sandro','Ale','Smash Finale');

insert into deaths values ('Single',265,'Siwei','Mancato Recupero'),
 ('Single',265,'Leo','Autodistruzione'),
 ('Single',265,'Siwei','Mancato Recupero'),
 ('Single',265,'Leo','Autodistruzione');


--Single-264
insert into kills values ('Single',264,'Siwei','Ale','Speciale Laterale'),
 ('Single',264,'Sandro','Siwei','Speciale Laterale'),
 ('Single',264,'Sandro','Leo','Speciale Laterale'),
 ('Single',264,'Leo','Ale','Smash Finale'),
 ('Single',264,'Leo','Sandro','Smash Finale'),
 ('Single',264,'Sandro','Leo','Smash Finale'),
 ('Single',264,'Siwei','Sandro','Smash Finale'),
 ('Single',264,'Sandro','Siwei','Speciale Laterale'),
 ('Single',264,'Siwei','Ale','Speciale Laterale'),
 ('Single',264,'Siwei','Sandro','Speciale in Su'),
 ('Single',264,'Leo','Siwei','Peculiare'); --PECULIAR: CHARIZARD FIRE BLITZ


--Single-263
insert into kills values ('Single',263,'Leo','Siwei','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',263,'Ale','Leo','Aereo Standard'),
 ('Single',263,'Siwei','Sandro','Speciale in Su'),
 ('Single',263,'Sandro','Ale','Aereo in Su'),
 ('Single',263,'Leo','Sandro','Smash Finale'),
 ('Single',263,'Ale','Leo','Speciale in Su'),
 ('Single',263,'Siwei','Leo','Speciale in Su'),
 ('Single',263,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',263,'Ale','Sandro','Speciale Laterale');

insert into deaths values ('Single',263,'Siwei','Autodistruzione');


--Single-262
insert into kills values ('Single',262,'Sandro','Siwei','Speciale in Giù'),
 ('Single',262,'Siwei','Sandro','Smash Laterale'),
 ('Single',262,'Ale','Leo','Altro'),
 ('Single',262,'Siwei','Sandro','Altro'),
 ('Single',262,'Ale','Siwei','Aereo Frontale'),
 ('Single',262,'Leo','Ale','Aereo in Su'),
 ('Single',262,'Sandro','Siwei','Altro'),
 ('Single',262,'Ale','Sandro','Altro'),
 ('Single',262,'Ale','Leo','Smash Finale'),
 ('Single',262,'Leo','Ale','Smash Finale'),
 ('Single',262,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',262,'Leo','Mancato Recupero'),
 ('Single',262,'Sandro','Mancato Recupero'),
 ('Single',262,'Siwei','Mancato Recupero'),
 ('Single',262,'Sandro','Autodistruzione');


--Single-261
insert into kills values ('Single',261,'Leo','Ale','Smash in Su'),
 ('Single',261,'Ale','Leo','Speciale in Su'),
 ('Single',261,'Ale','Sandro','Altro'),
 ('Single',261,'Ale','Leo','Smash Finale'),
 ('Single',261,'Sandro','Siwei','Aereo Frontale'),
 ('Single',261,'Siwei','Ale','Altro'),
 ('Single',261,'Leo','Siwei','Smash Finale'),
 ('Single',261,'Ale','Siwei','Altro'),
 ('Single',261,'Ale','Sandro','Altro'),
 ('Single',261,'Ale','Leo','Altro'),
 ('Single',261,'Sandro','Ale','Altro');

insert into deaths values ('Single',261,'Sandro','Norfair'),
 ('Single',261,'Sandro','Norfair'),
 ('Single',261,'Siwei','Norfair'),
 ('Single',261,'Leo','Norfair'),
 ('Single',261,'Ale','Norfair');


--Single-260
insert into kills values ('Single',260,'Siwei','Leo','Smash Laterale'),
 ('Single',260,'Siwei','Sandro','Altro'),
 ('Single',260,'Ale','Siwei','Altro'),
 ('Single',260,'Leo','Sandro','Smash Finale'),
 ('Single',260,'Sandro','Leo','Smash Finale'),
 ('Single',260,'Siwei','Ale','Altro'),
 ('Single',260,'Siwei','Sandro','Aereo in Su'),
 ('Single',260,'Leo','Siwei','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',260,'Ale','Leo','Speciale Laterale');

insert into deaths values ('Single',260,'Siwei','Autodistruzione'),
 ('Single',260,'Siwei','Autodistruzione'),
 ('Single',260,'Ale','Find Mii');


--Single-259
insert into kills values ('Single',259,'Siwei','Leo','Altro'),
 ('Single',259,'Sandro','Leo','Meteora'),
 ('Single',259,'Siwei','Sandro','Altro'),
 ('Single',259,'Sandro','Ale','Smash Laterale'),
 ('Single',259,'Ale','Siwei','Smash Laterale'),
 ('Single',259,'Siwei','Sandro','Smash Laterale'),
 ('Single',259,'Leo','Ale','Meteora'),
 ('Single',259,'Ale','Siwei','Speciale in Giù'),
 ('Single',259,'Sandro','Leo','Meteora'),
 ('Single',259,'Ale','Siwei','Speciale Laterale'),
 ('Single',259,'Ale','Sandro','In Corsa');

insert into deaths values ('Single',259,'Leo','Mancato Recupero'),
 ('Single',259,'Sandro','Autodistruzione');


--Single-258
insert into kills values ('Single',258,'Sandro','Leo','Aereo in Su'),
 ('Single',258,'Sandro','Siwei','Smash in Su'),
 ('Single',258,'Siwei','Sandro','Aereo Frontale'),
 ('Single',258,'Siwei','Ale','Altro'),
 ('Single',258,'Leo','Ale','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',258,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',258,'Ale','Siwei','In Corsa'),
 ('Single',258,'Siwei','Leo','Smash Laterale'),
 ('Single',258,'Sandro','Siwei','Smash Finale'),
 ('Single',258,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',258,'Leo','Ale','Aereo Posteriore');


--Single-257
insert into kills values ('Single',257,'Ale','Sandro','Aereo Posteriore'),
 ('Single',257,'Sandro','Siwei','Altro'),
 ('Single',257,'Sandro','Ale','Smash in Su'),
 ('Single',257,'Sandro','Leo','Smash Laterale'),
 ('Single',257,'Ale','Siwei','Altro'),
 ('Single',257,'Ale','Leo','In Corsa'),
 ('Single',257,'Siwei','Ale','Smash Finale'),
 ('Single',257,'Siwei','Sandro','Smash Finale'),
 ('Single',257,'Sandro','Siwei','Smash Finale'),
 ('Single',257,'Leo','Ale','Smash Finale'),
 ('Single',257,'Sandro','Leo','Altro');

insert into deaths values ('Single',257,'Siwei','Autodistruzione'),
 ('Single',257,'Siwei','Mancato Recupero'),
 ('Single',257,'Leo','Autodistruzione');


--Single-256
insert into kills values ('Single',256,'Ale','Leo','Speciale Laterale'),
 ('Single',256,'Sandro','Leo','Altro'),
 ('Single',256,'Sandro','Leo','Smash Finale'),
 ('Single',256,'Sandro','Siwei','Altro'),
 ('Single',256,'Ale','Sandro','Altro'),
 ('Single',256,'Siwei','Ale','Speciale Laterale'),
 ('Single',256,'Ale','Siwei','Smash Laterale'),
 ('Single',256,'Siwei','Ale','Speciale in Su'),
 ('Single',256,'Siwei','Sandro','Speciale in Su'),
 ('Single',256,'Ale','Sandro','Aereo Posteriore'),
 ('Single',256,'Ale','Siwei','In Corsa');

insert into deaths values ('Single',256,'Leo','Mancato Recupero'),
 ('Single',256,'Sandro','Autodistruzione');


--Single-255
insert into kills values ('Single',255,'Leo','Siwei','Aereo Frontale'),
 ('Single',255,'Ale','Leo','Speciale Laterale'),
 ('Single',255,'Siwei','Ale','Speciale in Giù'),
 ('Single',255,'Siwei','Sandro','Smash Finale'),
 ('Single',255,'Leo','Siwei','Aereo in Su'),
 ('Single',255,'Ale','Leo','Speciale in Su'),
 ('Single',255,'Ale','Sandro','Speciale in Giù'),
 ('Single',255,'Leo','Ale','Altro'),
 ('Single',255,'Siwei','Leo','Smash Finale'),
 ('Single',255,'Siwei','Ale','Smash Finale'),
 ('Single',255,'Siwei','Sandro','Aereo in Su');

insert into deaths values ('Single',255,'Ale','Mancato Recupero');


--Single-254
insert into kills values ('Single',254,'Ale','Sandro','Speciale in Giù'),
 ('Single',254,'Leo','Siwei','Smash Laterale'),
 ('Single',254,'Sandro','Ale','Smash Laterale'),
 ('Single',254,'Ale','Leo','Speciale in Giù'),
 ('Single',254,'Leo','Siwei','Smash Finale'),
 ('Single',254,'Sandro','Ale','Smash Finale'),
 ('Single',254,'Siwei','Sandro','Speciale in Su'),
 ('Single',254,'Ale','Leo','Speciale Laterale'),
 ('Single',254,'Siwei','Sandro','Speciale in Giù'),
 ('Single',254,'Leo','Siwei','Smash Laterale'),
 ('Single',254,'Ale','Leo','Aereo Posteriore');


--Single-253
insert into kills values ('Single',253,'Sandro','Leo','Speciale in Giù'),
 ('Single',253,'Leo','Sandro','Speciale Laterale'),
 ('Single',253,'Leo','Siwei','Aereo in Su'),
 ('Single',253,'Sandro','Leo','Smash in Giù'),
 ('Single',253,'Leo','Ale','Speciale Standard'),
 ('Single',253,'Sandro','Siwei','Smash Finale'),
 ('Single',253,'Leo','Sandro','Altro'),
 ('Single',253,'Ale','Siwei','Smash Finale'),
 ('Single',253,'Sandro','Ale','Smash Laterale'),
 ('Single',253,'Leo','Ale','Altro'),
 ('Single',253,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',253,'Sandro','Mancato Recupero'),
 ('Single',253,'Ale','Mancato Recupero');


--Single-252
insert into kills values ('Single',252,'Sandro','Leo','Altro'),
 ('Single',252,'Ale','Siwei','Smash in Su'),
 ('Single',252,'Siwei','Sandro','Smash Finale'),
 ('Single',252,'Leo','Sandro','Altro'),
 ('Single',252,'Sandro','Siwei','Smash Laterale'),
 ('Single',252,'Leo','Ale','Grab'),
 ('Single',252,'Leo','Sandro','Smash Finale'),
 ('Single',252,'Ale','Leo','Smash Finale'),
 ('Single',252,'Siwei','Ale','Smash Finale'),
 ('Single',252,'Ale','Siwei','Aereo Posteriore'),
 ('Single',252,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',252,'Leo','WarioWare Inc.'),
 ('Single',252,'Sandro','Mancato Recupero');


--Single-251
insert into kills values ('Single',251,'Sandro','Siwei','Smash Laterale'),
 ('Single',251,'Siwei','Ale','Altro'),
 ('Single',251,'Ale','Leo','Aereo Posteriore'),
 ('Single',251,'Siwei','Sandro','In Corsa'),
 ('Single',251,'Leo','Siwei','Smash Finale'),
 ('Single',251,'Leo','Ale','Smash Finale'),
 ('Single',251,'Siwei','Ale','Smash Finale'),
 ('Single',251,'Leo','Sandro','Smash Laterale'),
 ('Single',251,'Sandro','Siwei','Smash Laterale'),
 ('Single',251,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',251,'Ale','Mancato Recupero');


--Single-250
insert into kills values ('Single',250,'Ale','Siwei','Aereo Posteriore'),
 ('Single',250,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',250,'Sandro','Leo','Speciale Standard'),
 ('Single',250,'Siwei','Sandro','Aereo Frontale'),
 ('Single',250,'Ale','Siwei','Altro'),
 ('Single',250,'Sandro','Siwei','Smash Laterale'),
 ('Single',250,'Sandro','Ale','Smash Laterale'),
 ('Single',250,'Ale','Sandro','Smash Laterale'),
 ('Single',250,'Ale','Leo','Altro'),
 ('Single',250,'Sandro','Ale','Smash Finale'),
 ('Single',250,'Leo','Sandro','Smash in Giù');

insert into deaths values ('Single',250,'Siwei','Mancato Recupero'),
 ('Single',250,'Leo','Mancato Recupero');


--Single-249
insert into kills values ('Single',249,'Siwei','Sandro','Speciale in Su'),
 ('Single',249,'Leo','Siwei','Aereo in Su'),
 ('Single',249,'Siwei','Leo','Speciale in Su'),
 ('Single',249,'Siwei','Ale','Smash Finale'),
 ('Single',249,'Siwei','Leo','Altro'),
 ('Single',249,'Sandro','Siwei','Smash in Su'),
 ('Single',249,'Leo','Sandro','Aereo in Su'),
 ('Single',249,'Sandro','Ale','Altro'),
 ('Single',249,'Sandro','Leo','Smash Finale'),
 ('Single',249,'Sandro','Siwei','Smash Laterale'),
 ('Single',249,'Ale','Sandro','Meteora');

insert into deaths values ('Single',249,'Leo','Autodistruzione'),
 ('Single',249,'Ale','Mancato Recupero');


--Single-248
insert into kills values ('Single',248,'Siwei','Sandro','Speciale in Su'),
 ('Single',248,'Ale','Leo','Aereo Posteriore'),
 ('Single',248,'Sandro','Siwei','Smash in Su'),
 ('Single',248,'Leo','Ale','Smash Finale'),
 ('Single',248,'Leo','Sandro','Aereo in Su'),
 ('Single',248,'Ale','Siwei','Smash Finale'),
 ('Single',248,'Sandro','Leo','Smash in Su'),
 ('Single',248,'Siwei','Sandro','Smash Finale'),
 ('Single',248,'Leo','Siwei','Smash Finale'),
 ('Single',248,'Leo','Ale','Smash Finale'),
 ('Single',248,'Ale','Leo','Smash Finale');


--Single-247
insert into kills values ('Single',247,'Leo','Ale','Aereo in Su'),
 ('Single',247,'Sandro','Leo','Aereo Posteriore'),
 ('Single',247,'Ale','Siwei','Altro'),
 ('Single',247,'Leo','Sandro','Smash Finale'),
 ('Single',247,'Leo','Siwei','Meteora'),
 ('Single',247,'Sandro','Siwei','Altro'),
 ('Single',247,'Leo','Ale','Altro'),
 ('Single',247,'Ale','Leo','Altro'),
 ('Single',247,'Leo','Sandro','Smash Laterale'),
 ('Single',247,'Ale','Leo','Altro'),
 ('Single',247,'Sandro','Ale','Altro');

insert into deaths values ('Single',247,'Siwei','Autodistruzione'),
 ('Single',247,'Siwei','Mancato Recupero'),
 ('Single',247,'Ale','Mushroom Kingdom U'),
 ('Single',247,'Leo','Mushroom Kingdom U'),
 ('Single',247,'Leo','Mancato Recupero'),
 ('Single',247,'Ale','Mushroom Kingdom U');


--Single-246
insert into kills values ('Single',246,'Leo','Siwei','Altro'),
 ('Single',246,'Sandro','Siwei','Speciale in Giù'),
 ('Single',246,'Siwei','Sandro','Aereo Frontale'),
 ('Single',246,'Siwei','Leo','Altro'),
 ('Single',246,'Leo','Sandro','Altro'),
 ('Single',246,'Sandro','Siwei','Aereo in Giù'),
 ('Single',246,'Ale','Leo','Smash Laterale'),
 ('Single',246,'Ale','Sandro','Smash Finale'),
 ('Single',246,'Ale','Leo','Aereo in Giù');

insert into deaths values ('Single',246,'Siwei','Kalos Pokemon League'),
 ('Single',246,'Leo','Kalos Pokemon League'),
 ('Single',246,'Sandro','Kalos Pokemon League');


--Doubles-83
insert into kills values ('Doubles',83,'Leo','Siwei','Smash Laterale'),
 ('Doubles',83,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',83,'Ale','Leo','Grab'),
 ('Doubles',83,'Siwei','Sandro','Smash Finale'),
 ('Doubles',83,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',83,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',83,'Ale','Sandro','Smash Finale'),
 ('Doubles',83,'Leo','Ale','Smash in Su'),
 ('Doubles',83,'Siwei','Leo','Altro');

insert into deaths values ('Doubles',83,'Sandro','Fuoco Amico'),
 ('Doubles',83,'Leo','Fuoco Amico'),
 ('Doubles',83,'Leo','Mancato Recupero');


--Doubles-82
insert into kills values ('Doubles',82,'Leo','Sandro','Aereo in Su'),
 ('Doubles',82,'Sandro','Siwei','In Corsa'),
 ('Doubles',82,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',82,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Doubles',82,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',82,'Siwei','Sandro','Smash in Giù'),
 ('Doubles',82,'Leo','Ale','Smash Finale'),
 ('Doubles',82,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',82,'Leo','Sandro','Aereo Posteriore');

insert into deaths values ('Doubles',82,'Siwei','Fuoco Amico'),
 ('Doubles',82,'Leo','Fuoco Amico');


--Doubles-81
insert into kills values ('Doubles',81,'Leo','Siwei','Altro'),
 ('Doubles',81,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',81,'Sandro','Ale','Smash Laterale'),
 ('Doubles',81,'Siwei','Leo','Smash Finale'),
 ('Doubles',81,'Leo','Ale','Smash Finale'),
 ('Doubles',81,'Leo','Siwei','Altro'),
 ('Doubles',81,'Ale','Sandro','Aereo in Su'),
 ('Doubles',81,'Siwei','Leo','Smash Laterale'),
 ('Doubles',81,'Sandro','Ale','Smash Finale'),
 ('Doubles',81,'Sandro','Siwei','Altro');

insert into deaths values ('Doubles',81,'Siwei','Mancato Recupero'),
 ('Doubles',81,'Siwei','Mancato Recupero'),
 ('Doubles',81,'Siwei','Mancato Recupero');


--Doubles-80
insert into kills values ('Doubles',80,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',80,'Ale','Siwei','Smash Laterale'),
 ('Doubles',80,'Leo','Sandro','Smash Laterale'),
 ('Doubles',80,'Siwei','Ale','Smash Finale'),
 ('Doubles',80,'Sandro','Leo','Smash Finale'),
 ('Doubles',80,'Ale','Siwei','Smash Finale'),
 ('Doubles',80,'Leo','Ale','Aereo in Su'),
 ('Doubles',80,'Siwei','Sandro','In Corsa'),
 ('Doubles',80,'Ale','Leo','Smash Laterale'),
 ('Doubles',80,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',80,'Sandro','Fuoco Amico');


--Doubles-79
insert into kills values ('Doubles',79,'Leo','Siwei','Smash Laterale'),
 ('Doubles',79,'Sandro','Ale','Speciale Standard'),
 ('Doubles',79,'Sandro','Siwei','Speciale Standard'),
 ('Doubles',79,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',79,'Siwei','Sandro','Smash Finale'),
 ('Doubles',79,'Leo','Ale','Smash Laterale'),
 ('Doubles',79,'Sandro','Siwei','Speciale Standard'),
 ('Doubles',79,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',79,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Doubles',79,'Leo','Fuoco Amico');


--Doubles-78
insert into kills values ('Doubles',78,'Leo','Sandro','Speciale in Su'),
 ('Doubles',78,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',78,'Ale','Leo','Aereo Frontale'),
 ('Doubles',78,'Leo','Sandro','Altro'),
 ('Doubles',78,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',78,'Leo','Ale','Altro'),
 ('Doubles',78,'Siwei','Ale','Smash Finale'),
 ('Doubles',78,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',78,'Ale','Leo','Altro'),
 ('Doubles',78,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Doubles',78,'Sandro','Gamer'),
 ('Doubles',78,'Ale','Autodistruzione'),
 ('Doubles',78,'Leo','Fuoco Amico'),
 ('Doubles',78,'Leo','Autodistruzione');


--Doubles-77
insert into kills values ('Doubles',77,'Sandro','Siwei','In Corsa'),
 ('Doubles',77,'Sandro','Ale','Peculiare'), --PECULIAR: INCINEROAR REVENGE
 ('Doubles',77,'Ale','Sandro','Aereo in Su'),
 ('Doubles',77,'Sandro','Siwei','Smash Finale'),
 ('Doubles',77,'Siwei','Leo','Altro'),
 ('Doubles',77,'Sandro','Ale','Smash in Su'),
 ('Doubles',77,'Ale','Sandro','Altro'),
 ('Doubles',77,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',77,'Ale','Leo','Altro'),
 ('Doubles',77,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Doubles',77,'Leo','Autodistruzione'),
 ('Doubles',77,'Sandro','Autodistruzione'),
 ('Doubles',77,'Leo','Autodistruzione');


--Doubles-76
insert into kills values ('Doubles',76,'Siwei','Ale','Altro'),
 ('Doubles',76,'Ale','Leo','Altro'),
 ('Doubles',76,'Ale','Leo','Altro'),
 ('Doubles',76,'Leo','Ale','Smash Finale'),
 ('Doubles',76,'Leo','Sandro','Altro'),
 ('Doubles',76,'Leo','Sandro','Altro'),
 ('Doubles',76,'Ale','Siwei','Smash in Su'),
 ('Doubles',76,'Sandro','Leo','Smash in Su'),
 ('Doubles',76,'Ale','Siwei','Smash Finale'),
 ('Doubles',76,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',76,'Ale','Mancato Recupero'),
 ('Doubles',76,'Leo','Mancato Recupero'),
 ('Doubles',76,'Leo','Mancato Recupero'),
 ('Doubles',76,'Sandro','Mancato Recupero'),
 ('Doubles',76,'Sandro','Autodistruzione');


--Doubles-75
insert into kills values ('Doubles',75,'Leo','Siwei','Altro'),
 ('Doubles',75,'Leo','Sandro','Aereo in Giù'),
 ('Doubles',75,'Ale','Leo','Fuoco Amico'),
 ('Doubles',75,'Leo','Ale','Fuoco Amico'),
 ('Doubles',75,'Ale','Siwei','Smash Finale'),
 ('Doubles',75,'Leo','Sandro','Speciale in Giù'),
 ('Doubles',75,'Siwei','Leo','Smash Finale'),
 ('Doubles',75,'Leo','Ale','Fuoco Amico'),
 ('Doubles',75,'Leo','Sandro','Smash Laterale'),
 ('Doubles',75,'Siwei','Leo','In Corsa'),
 ('Doubles',75,'Ale','Siwei','Speciale in Giù');

insert into deaths values ('Doubles',75,'Siwei','Mancato Recupero'),
 ('Doubles',75,'Leo','Fuoco Amico'),
 ('Doubles',75,'Ale','Fuoco Amico'),
 ('Doubles',75,'Ale','Fuoco Amico');


--Doubles-74
insert into kills values ('Doubles',74,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',74,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',74,'Leo','Ale','Speciale Standard'),
 ('Doubles',74,'Leo','Sandro','Smash Laterale'),
 ('Doubles',74,'Sandro','Leo','Smash Finale'),
 ('Doubles',74,'Leo','Sandro','Speciale Standard'),
 ('Doubles',74,'Ale','Siwei','Smash Finale'),
 ('Doubles',74,'Leo','Sandro','Smash Finale'),
 ('Doubles',74,'Siwei','Ale','Smash in Su'),
 ('Doubles',74,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',74,'Ale','Leo','Smash Laterale');

insert into deaths values ('Doubles',74,'Leo','Fuoco Amico'),
 ('Doubles',74,'Siwei','Fuoco Amico');


--Doubles-73
insert into kills values ('Doubles',73,'Ale','Leo','Altro'),
 ('Doubles',73,'Sandro','Siwei','Altro'),
 ('Doubles',73,'Ale','Leo','Altro'),
 ('Doubles',73,'Sandro','Siwei','Smash Finale'),
 ('Doubles',73,'Leo','Ale','Altro'),
 ('Doubles',73,'Siwei','Sandro','Smash Finale'),
 ('Doubles',73,'Leo','Ale','Altro'),
 ('Doubles',73,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',73,'Sandro','Leo','Altro');

insert into deaths values ('Doubles',73,'Leo','Mario Bros.'),
 ('Doubles',73,'Siwei','Mario Bros.'),
 ('Doubles',73,'Leo','Mario Bros.'),
 ('Doubles',73,'Ale','Mario Bros.'),
 ('Doubles',73,'Ale','Mario Bros.'),
 ('Doubles',73,'Siwei','Fuoco Amico'),
 ('Doubles',73,'Leo','Mario Bros.');


--Doubles-72
insert into kills values ('Doubles',72,'Siwei','Sandro','In Corsa'),
 ('Doubles',72,'Sandro','Leo','Smash in Su'),
 ('Doubles',72,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',72,'Ale','Siwei','Smash Laterale'),
 ('Doubles',72,'Ale','Leo','Smash Finale'),
 ('Doubles',72,'Leo','Sandro','Aereo Frontale'),
 ('Doubles',72,'Siwei','Ale','Smash Finale'),
 ('Doubles',72,'Ale','Leo','Speciale Standard'),
 ('Doubles',72,'Sandro','Siwei','Altro'),
 ('Doubles',72,'Siwei','Sandro','Smash Finale'),
 ('Doubles',72,'Ale','Siwei','Grab');


--Doubles-71
insert into kills values ('Doubles',71,'Ale','Leo','Speciale in Giù'),
 ('Doubles',71,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',71,'Leo','Siwei','Smash Finale'),
 ('Doubles',71,'Leo','Ale','Smash Laterale'),
 ('Doubles',71,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',71,'Sandro','Ale','Smash Laterale'),
 ('Doubles',71,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',71,'Siwei','Sandro','Smash Finale'),
 ('Doubles',71,'Leo','Siwei','Smash Finale'),
 ('Doubles',71,'Ale','Leo','Speciale in Giù'),
 ('Doubles',71,'Ale','Leo','Smash Laterale');


--Doubles-70
insert into kills values ('Doubles',70,'Ale','Sandro','Altro'),
 ('Doubles',70,'Sandro','Leo','Aereo in Su'),
 ('Doubles',70,'Sandro','Ale','Smash Laterale'),
 ('Doubles',70,'Leo','Sandro','Smash Finale'),
 ('Doubles',70,'Ale','Siwei','Smash in Giù'),
 ('Doubles',70,'Ale','Siwei','Smash Finale'),
 ('Doubles',70,'Ale','Leo','Fuoco Amico'),
 ('Doubles',70,'Sandro','Ale','Altro'),
 ('Doubles',70,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',70,'Ale','Siwei','Smash in Giù');

insert into deaths values ('Doubles',70,'Sandro','Mancato Recupero'),
 ('Doubles',70,'Leo','Fuoco Amico'),
 ('Doubles',70,'Ale','Halberd'),
 ('Doubles',70,'Sandro','Fuoco Amico');


--Doubles-69
insert into kills values ('Doubles',69,'Siwei','Sandro','Smash Finale'),
 ('Doubles',69,'Sandro','Leo','Altro'),
 ('Doubles',69,'Ale','Siwei','Smash Laterale'),
 ('Doubles',69,'Siwei','Ale','Aereo in Su'),
 ('Doubles',69,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',69,'Ale','Siwei','Smash Finale'),
 ('Doubles',69,'Siwei','Ale','Smash Laterale'),
 ('Doubles',69,'Sandro','Leo','Aereo in Su'),
 ('Doubles',69,'Ale','Siwei','Smash in Su'),
 ('Doubles',69,'Leo','Ale','Aereo in Su'),
 ('Doubles',69,'Leo','Sandro','Smash Finale');

insert into deaths values ('Doubles',69,'Leo','Mancato Recupero'),
 ('Doubles',69,'Sandro','Fuoco Amico');


--Doubles-68
insert into kills values ('Doubles',68,'Leo','Siwei','Speciale in Su'),
 ('Doubles',68,'Sandro','Ale','Aereo in Su'),
 ('Doubles',68,'Ale','Sandro','Altro'),
 ('Doubles',68,'Siwei','Leo','Altro'),
 ('Doubles',68,'Leo','Ale','Altro'),
 ('Doubles',68,'Sandro','Ale','Smash in Su'),
 ('Doubles',68,'Sandro','Siwei','Aereo Posteriore');

insert into deaths values ('Doubles',68,'Siwei','Autodistruzione'),
 ('Doubles',68,'Sandro','Autodistruzione'),
 ('Doubles',68,'Leo','Mancato Recupero'),
 ('Doubles',68,'Ale','Big Blue');


--Doubles-67
insert into kills values ('Doubles',67,'Ale','Siwei','Altro'),
 ('Doubles',67,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',67,'Leo','Siwei','Altro'),
 ('Doubles',67,'Sandro','Leo','Altro'),
 ('Doubles',67,'Leo','Ale','Fuoco Amico'),
 ('Doubles',67,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',67,'Leo','Siwei','Meteora'),
 ('Doubles',67,'Leo','Ale','Fuoco Amico'),
 ('Doubles',67,'Leo','Sandro','Meteora');

insert into deaths values ('Doubles',67,'Siwei','Mancato Recupero'),
 ('Doubles',67,'Siwei','Autodistruzione'),
 ('Doubles',67,'Leo','Autodistruzione'),
 ('Doubles',67,'Ale','Fuoco Amico'),
 ('Doubles',67,'Sandro','Fuoco Amico'),
 ('Doubles',67,'Ale','Fuoco Amico');


--Doubles-66
insert into kills values ('Doubles',66,'Ale','Siwei','Meteora'),
 ('Doubles',66,'Sandro','Ale','Aereo in Su'),
 ('Doubles',66,'Ale','Sandro','Smash Laterale'),
 ('Doubles',66,'Leo','Siwei','Smash Finale'),
 ('Doubles',66,'Ale','Leo','Fuoco Amico'),
 ('Doubles',66,'Ale','Sandro','Smash Laterale'),
 ('Doubles',66,'Siwei','Ale','Altro'),
 ('Doubles',66,'Siwei','Leo','Aereo Frontale'),
 ('Doubles',66,'Leo','Siwei','Altro'),
 ('Doubles',66,'Sandro','Leo','Altro');

insert into deaths values ('Doubles',66,'Ale','Autodistruzione'),
 ('Doubles',66,'Leo','Fuoco Amico'),
 ('Doubles',66,'Ale','Autodistruzione'),
 ('Doubles',66,'Siwei','Autodistruzione'),
 ('Doubles',66,'Leo','Mancato Recupero');


--Doubles-65
insert into kills values ('Doubles',65,'Ale','Sandro','Smash Laterale'),
 ('Doubles',65,'Leo','Siwei','Smash Laterale'),
 ('Doubles',65,'Siwei','Leo','Speciale in Su'),
 ('Doubles',65,'Leo','Ale','Smash Laterale'),
 ('Doubles',65,'Ale','Sandro','Smash Finale'),
 ('Doubles',65,'Leo','Ale','Altro'),
 ('Doubles',65,'Siwei','Leo','Speciale Laterale'),
 ('Doubles',65,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',65,'Ale','Sandro','Aereo Standard'),
 ('Doubles',65,'Leo','Siwei','Altro'),
 ('Doubles',65,'Ale','Leo','Smash Laterale');

insert into deaths values ('Doubles',65,'Siwei','Fuoco Amico'),
 ('Doubles',65,'Siwei','Autodistruzione');


--Doubles-64
insert into kills values ('Doubles',64,'Sandro','Leo','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Doubles',64,'Ale','Sandro','Smash Laterale'),
 ('Doubles',64,'Ale','Siwei','Aereo in Su'),
 ('Doubles',64,'Sandro','Ale','Smash Finale'),
 ('Doubles',64,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',64,'Siwei','Leo','Smash Finale'),
 ('Doubles',64,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',64,'Ale','Siwei','Smash Laterale'),
 ('Doubles',64,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',64,'Siwei','Leo','Altro');

insert into deaths values ('Doubles',64,'Sandro','Fuoco Amico'),
 ('Doubles',64,'Sandro','Fuoco Amico'),
 ('Doubles',64,'Leo','Autodistruzione'),
 ('Doubles',64,'Ale','Autodistruzione');


--Doubles-63
insert into kills values ('Doubles',63,'Ale','Siwei','Aereo Frontale'),
 ('Doubles',63,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',63,'Ale','Siwei','Altro'),
 ('Doubles',63,'Ale','Leo','Speciale in Giù'),
 ('Doubles',63,'Siwei','Ale','Smash Laterale'),
 ('Doubles',63,'Leo','Sandro','Smash Laterale'),
 ('Doubles',63,'Ale','Siwei','Altro'),
 ('Doubles',63,'Leo','Ale','Altro'),
 ('Doubles',63,'Sandro','Leo','Smash Laterale'),
 ('Doubles',63,'Leo','Sandro','Altro'),
 ('Doubles',63,'Sandro','Leo','Speciale Laterale');

insert into deaths values ('Doubles',63,'Ale','Fuoco Amico'),
 ('Doubles',63,'Siwei','Mancato Recupero'),
 ('Doubles',63,'Ale','Mancato Recupero'),
 ('Doubles',63,'Sandro','Autodistruzione');


--Doubles-62
insert into kills values ('Doubles',62,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',62,'Sandro','Leo','Altro'),
 ('Doubles',62,'Leo','Siwei','Speciale Laterale'),
 ('Doubles',62,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',62,'Sandro','Leo','Smash Finale'),
 ('Doubles',62,'Siwei','Ale','Smash Finale'),
 ('Doubles',62,'Leo','Siwei','Altro'),
 ('Doubles',62,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',62,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',62,'Leo','Autodistruzione'),
 ('Doubles',62,'Leo','Autodistruzione'),
 ('Doubles',62,'Siwei','Autodistruzione'),
 ('Doubles',62,'Sandro','Fuoco Amico');


--Doubles-61
insert into kills values ('Doubles',61,'Siwei','Ale','Altro'),
 ('Doubles',61,'Ale','Siwei','Grab'),
 ('Doubles',61,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',61,'Ale','Leo','Speciale in Su'),
 ('Doubles',61,'Sandro','Siwei','Altro'),
 ('Doubles',61,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',61,'Sandro','Leo','Smash Finale'),
 ('Doubles',61,'Leo','Sandro','Altro'),
 ('Doubles',61,'Leo','Ale','Smash Laterale'),
 ('Doubles',61,'Sandro','Leo','Smash in Su');

insert into deaths values ('Doubles',61,'Ale','Spirit Train'),
 ('Doubles',61,'Siwei','Fuoco Amico'),
 ('Doubles',61,'Siwei','Spirit Train'),
 ('Doubles',61,'Ale','Fuoco Amico'),
 ('Doubles',61,'Sandro','Spirit Train');


--Doubles-60
insert into kills values ('Doubles',60,'Leo','Ale','Speciale Standard'),
 ('Doubles',60,'Leo','Sandro','Speciale Standard'),
 ('Doubles',60,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',60,'Ale','Leo','Altro'),
 ('Doubles',60,'Siwei','Ale','Smash Finale'),
 ('Doubles',60,'Siwei','Sandro','Aereo in Su'),
 ('Doubles',60,'Ale','Leo','Aereo Standard'),
 ('Doubles',60,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',60,'Sandro','Siwei','Smash Finale'),
 ('Doubles',60,'Leo','Sandro','Smash Finale');

insert into deaths values ('Doubles',60,'Leo','Autodistruzione'),
 ('Doubles',60,'Ale','Fuoco Amico');


--Doubles-59
insert into kills values ('Doubles',59,'Sandro','Siwei','Smash in Su'),
 ('Doubles',59,'Ale','Sandro','Smash Laterale'),
 ('Doubles',59,'Siwei','Leo','Smash Finale'),
 ('Doubles',59,'Sandro','Ale','Smash in Su'),
 ('Doubles',59,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',59,'Leo','Siwei','Smash Laterale'),
 ('Doubles',59,'Sandro','Ale','Smash Laterale'),
 ('Doubles',59,'Siwei','Sandro','Smash Finale'),
 ('Doubles',59,'Siwei','Leo','Smash Finale'),
 ('Doubles',59,'Sandro','Siwei','Smash Finale'),
 ('Doubles',59,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',59,'Leo','Fuoco Amico');


--Doubles-58
insert into kills values ('Doubles',58,'Leo','Sandro','Smash Laterale'),
 ('Doubles',58,'Sandro','Leo','Altro'),
 ('Doubles',58,'Ale','Siwei','Smash Laterale'),
 ('Doubles',58,'Leo','Ale','Smash Laterale'),
 ('Doubles',58,'Ale','Leo','Smash Laterale'),
 ('Doubles',58,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',58,'Siwei','Sandro','Altro'),
 ('Doubles',58,'Leo','Ale','Altro'),
 ('Doubles',58,'Sandro','Leo','Smash Finale'),
 ('Doubles',58,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Doubles',58,'Ale','Mancato Recupero');


--Doubles-57
insert into kills values ('Doubles',57,'Ale','Leo','Altro'),
 ('Doubles',57,'Siwei','Sandro','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Doubles',57,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',57,'Leo','Ale','Altro'),
 ('Doubles',57,'Sandro','Leo','Smash Finale'),
 ('Doubles',57,'Ale','Siwei','Altro'),
 ('Doubles',57,'Siwei','Ale','Altro'),
 ('Doubles',57,'Leo','Sandro','In Corsa'),
 ('Doubles',57,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',57,'Leo','Mancato Recupero'),
 ('Doubles',57,'Siwei','Fuoco Amico'),
 ('Doubles',57,'Ale','Mancato Recupero'),
 ('Doubles',57,'Siwei','Mancato Recupero'),
 ('Doubles',57,'Siwei','Autodistruzione'),
 ('Doubles',57,'Ale','Autodistruzione');


--Doubles-56
insert into kills values ('Doubles',56,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',56,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',56,'Sandro','Leo','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Doubles',56,'Siwei','Ale','Smash Laterale'),
 ('Doubles',56,'Leo','Sandro','Smash Finale'),
 ('Doubles',56,'Siwei','Sandro','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Doubles',56,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',56,'Ale','Siwei','Smash Finale'),
 ('Doubles',56,'Siwei','Ale','Altro'),
 ('Doubles',56,'Leo','Ale','Altro');

insert into deaths values ('Doubles',56,'Sandro','Fuoco Amico'),
 ('Doubles',56,'Leo','Fuoco Amico'),
 ('Doubles',56,'Ale','Port Town Aero Dive');


--Doubles-55
insert into kills values ('Doubles',55,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',55,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Doubles',55,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',55,'Leo','Siwei','Smash Finale'),
 ('Doubles',55,'Leo','Siwei','Speciale Standard'),
 ('Doubles',55,'Leo','Ale','Altro'),
 ('Doubles',55,'Ale','Leo','Altro'),
 ('Doubles',55,'Sandro','Ale','Smash in Su');

insert into deaths values ('Doubles',55,'Leo','Autodistruzione'),
 ('Doubles',55,'Ale','Fuoco Amico'),
 ('Doubles',55,'Sandro','Fuoco Amico'),
 ('Doubles',55,'Leo','Mancato Recupero');


--Doubles-54
insert into kills values ('Doubles',54,'Siwei','Sandro','Aereo in Su'),
 ('Doubles',54,'Siwei','Ale','Smash Laterale'),
 ('Doubles',54,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Doubles',54,'Leo','Ale','Meteora'),
 ('Doubles',54,'Sandro','Leo','Altro'),
 ('Doubles',54,'Sandro','Leo','Altro'),
 ('Doubles',54,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',54,'Ale','Siwei','Smash Laterale'),
 ('Doubles',54,'Siwei','Ale','Smash Laterale'),
 ('Doubles',54,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',54,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Doubles',54,'Leo','Autodistruzione'),
 ('Doubles',54,'Leo','Autodistruzione'),
 ('Doubles',54,'Leo','Fuoco Amico');


--Doubles-53
insert into kills values ('Doubles',53,'Sandro','Ale','Altro'),
 ('Doubles',53,'Leo','Siwei','Smash Laterale'),
 ('Doubles',53,'Siwei','Leo','Smash Finale'),
 ('Doubles',53,'Leo','Ale','Smash Finale'),
 ('Doubles',53,'Leo','Siwei','Smash Finale'),
 ('Doubles',53,'Sandro','Ale','Smash Finale'),
 ('Doubles',53,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',53,'Sandro','Siwei','Smash in Su');

insert into deaths values ('Doubles',53,'Ale','Mancato Recupero'),
 ('Doubles',53,'Leo','Fuoco Amico');


--Doubles-52
insert into kills values ('Doubles',52,'Leo','Siwei','Smash Laterale'),
 ('Doubles',52,'Siwei','Leo','Altro'),
 ('Doubles',52,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',52,'Leo','Siwei','Smash Finale'),
 ('Doubles',52,'Ale','Leo','Altro'),
 ('Doubles',52,'Sandro','Ale','Aereo in Giù'),
 ('Doubles',52,'Sandro','Siwei','Altro'),
 ('Doubles',52,'Ale','Sandro','Speciale Laterale'),
 ('Doubles',52,'Leo','Ale','Smash Finale'),
 ('Doubles',52,'Ale','Leo','Altro'),
 ('Doubles',52,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Doubles',52,'Leo','Garden of Hope'),
 ('Doubles',52,'Leo','Mancato Recupero'),
 ('Doubles',52,'Siwei','Autodistruzione'),
 ('Doubles',52,'Leo','Autodistruzione');


--Doubles-51
insert into kills values ('Doubles',51,'Leo','Ale','Altro'),
 ('Doubles',51,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',51,'Leo','Ale','Speciale Standard'),
 ('Doubles',51,'Sandro','Siwei','Speciale in Su'),
 ('Doubles',51,'Siwei','Leo','Altro'),
 ('Doubles',51,'Siwei','Sandro','Speciale in Su'),
 ('Doubles',51,'Sandro','Ale','Smash Laterale'),
 ('Doubles',51,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',51,'Sandro','Siwei','Aereo in Giù');

insert into deaths values ('Doubles',51,'Ale','Autodistruzione'),
 ('Doubles',51,'Siwei','Fuoco Amico'),
 ('Doubles',51,'Leo','Autodistruzione'),
 ('Doubles',51,'Leo','Fuoco Amico');


--Doubles-50
insert into kills values ('Doubles',50,'Sandro','Leo','Smash Laterale'),
 ('Doubles',50,'Ale','Siwei','Smash Laterale'),
 ('Doubles',50,'Leo','Sandro','Smash Finale'),
 ('Doubles',50,'Siwei','Ale','Smash Finale'),
 ('Doubles',50,'Sandro','Leo','Smash Laterale'),
 ('Doubles',50,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',50,'Ale','Leo','Smash Finale'),
 ('Doubles',50,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',50,'Sandro','Siwei','Altro');

insert into deaths values ('Doubles',50,'Siwei','Fuoco Amico'),
 ('Doubles',50,'Sandro','Fuoco Amico'),
 ('Doubles',50,'Siwei','Autodistruzione');


--Doubles-49
insert into kills values ('Doubles',49,'Siwei','Sandro','Smash Laterale'),
 ('Doubles',49,'Sandro','Ale','Smash Finale'),
 ('Doubles',49,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',49,'Ale','Leo','Smash Laterale'),
 ('Doubles',49,'Sandro','Siwei','Smash Finale'),
 ('Doubles',49,'Leo','Ale','Smash Finale'),
 ('Doubles',49,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',49,'Siwei','Leo','Aereo in Su'),
 ('Doubles',49,'Siwei','Sandro','In Corsa'),
 ('Doubles',49,'Ale','Leo','Aereo in Su');

insert into deaths values ('Doubles',49,'Sandro','Fuoco Amico');


--Single-245
insert into kills values ('Single',245,'Ale','Siwei','Smash Laterale'),
 ('Single',245,'Ale','Leo','Smash Laterale'),
 ('Single',245,'Sandro','Ale','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',245,'Siwei','Leo','Smash Finale'),
 ('Single',245,'Sandro','Siwei','Smash in Su'),
 ('Single',245,'Leo','Ale','Speciale in Giù'),
 ('Single',245,'Siwei','Sandro','Smash Laterale'),
 ('Single',245,'Leo','Sandro','Speciale Standard'),
 ('Single',245,'Ale','Leo','Altro'),
 ('Single',245,'Sandro','Siwei','Altro'),
 ('Single',245,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',245,'Siwei','Mancato Recupero');


--Single-244
insert into kills values ('Single',244,'Siwei','Sandro','Smash Laterale'),
 ('Single',244,'Ale','Siwei','Smash Laterale'),
 ('Single',244,'Sandro','Siwei','Smash Finale'),
 ('Single',244,'Ale','Sandro','Smash Finale'),
 ('Single',244,'Leo','Siwei','Altro'),
 ('Single',244,'Leo','Ale','Aereo Posteriore'),
 ('Single',244,'Ale','Leo','Smash Laterale'),
 ('Single',244,'Leo','Ale','Smash Laterale'),
 ('Single',244,'Sandro','Leo','Smash Finale'),
 ('Single',244,'Ale','Sandro','Speciale in Su'),
 ('Single',244,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',244,'Siwei','Mancato Recupero');


--Single-243
insert into kills values ('Single',243,'Ale','Leo','Speciale Standard'),
 ('Single',243,'Siwei','Sandro','Altro'),
 ('Single',243,'Ale','Siwei','Speciale Standard'),
 ('Single',243,'Ale','Leo','Speciale Standard'),
 ('Single',243,'Sandro','Siwei','Speciale Laterale'),
 ('Single',243,'Siwei','Ale','Smash Finale'),
 ('Single',243,'Ale','Sandro','Smash Finale'),
 ('Single',243,'Ale','Leo','Smash Finale'),
 ('Single',243,'Siwei','Ale','Altro'),
 ('Single',243,'Sandro','Siwei','Speciale Laterale'),
 ('Single',243,'Ale','Sandro','Speciale Laterale');


--Single-242
insert into kills values ('Single',242,'Sandro','Siwei','Smash Laterale'),
 ('Single',242,'Leo','Siwei','Altro'),
 ('Single',242,'Ale','Leo','Speciale Laterale'),
 ('Single',242,'Ale','Sandro','In Corsa'),
 ('Single',242,'Siwei','Ale','Smash Laterale'),
 ('Single',242,'Ale','Siwei','Smash Finale'),
 ('Single',242,'Leo','Sandro','Speciale in Giù'),
 ('Single',242,'Ale','Leo','Speciale Laterale'),
 ('Single',242,'Sandro','Ale','Altro'),
 ('Single',242,'Ale','Sandro','Smash Finale'),
 ('Single',242,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',242,'Siwei','Autodistruzione');


--Single-241
insert into kills values ('Single',241,'Leo','Sandro','Altro'),
 ('Single',241,'Siwei','Ale','Altro'),
 ('Single',241,'Ale','Leo','Smash Laterale'),
 ('Single',241,'Sandro','Siwei','Smash Finale'),
 ('Single',241,'Sandro','Siwei','Altro'),
 ('Single',241,'Ale','Siwei','Aereo in Giù'),
 ('Single',241,'Leo','Sandro','Smash Laterale'),
 ('Single',241,'Leo','Sandro','Altro'),
 ('Single',241,'Ale','Leo','Smash Laterale'),
 ('Single',241,'Leo','Ale','Aereo Posteriore'),
 ('Single',241,'Ale','Leo','Peculiare'); --PECULIAR: ABITANTE DOWN SPECIAL AXE

insert into deaths values ('Single',241,'Sandro','Autodistruzione'),
 ('Single',241,'Siwei','Mancato Recupero'),
 ('Single',241,'Sandro','Autodistruzione');


--Single-240
insert into kills values ('Single',240,'Ale','Leo','Aereo Posteriore'),
 ('Single',240,'Sandro','Siwei','Smash Laterale'),
 ('Single',240,'Siwei','Sandro','Aereo Frontale'),
 ('Single',240,'Leo','Ale','Aereo Frontale'),
 ('Single',240,'Ale','Sandro','Smash Finale'),
 ('Single',240,'Sandro','Siwei','Smash Finale'),
 ('Single',240,'Ale','Leo','Speciale Standard'),
 ('Single',240,'Leo','Sandro','Aereo Frontale'),
 ('Single',240,'Leo','Ale','In Corsa'),
 ('Single',240,'Siwei','Leo','Altro'),
 ('Single',240,'Siwei','Ale','Speciale in Su');


--Single-239
insert into kills values ('Single',239,'Sandro','Siwei','Smash Laterale'),
 ('Single',239,'Ale','Leo','Altro'),
 ('Single',239,'Siwei','Ale','Smash Laterale'),
 ('Single',239,'Sandro','Leo','Aereo Posteriore'),
 ('Single',239,'Siwei','Sandro','Smash Finale'),
 ('Single',239,'Ale','Siwei','Smash Finale'),
 ('Single',239,'Sandro','Leo','Speciale in Su'),
 ('Single',239,'Sandro','Ale','Smash Laterale'),
 ('Single',239,'Ale','Sandro','Smash Laterale'),
 ('Single',239,'Sandro','Siwei','Smash Laterale'),
 ('Single',239,'Ale','Sandro','Aereo Frontale');

insert into deaths values ('Single',239,'Leo','Autodistruzione');


--Single-238
insert into kills values ('Single',238,'Sandro','Siwei','Altro'),
 ('Single',238,'Ale','Leo','Smash Laterale'),
 ('Single',238,'Ale','Sandro','Smash Laterale'),
 ('Single',238,'Sandro','Siwei','Altro'),
 ('Single',238,'Siwei','Ale','Altro'),
 ('Single',238,'Ale','Siwei','Aereo Posteriore'),
 ('Single',238,'Sandro','Ale','Altro'),
 ('Single',238,'Sandro','Leo','Altro'),
 ('Single',238,'Leo','Sandro','Smash Laterale'),
 ('Single',238,'Sandro','Ale','Speciale Laterale'),
 ('Single',238,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',238,'Siwei','Autodistruzione'),
 ('Single',238,'Siwei','WarioWare Inc.'),
 ('Single',238,'Ale','WarioWare Inc.'),
 ('Single',238,'Leo','WarioWare Inc.');


--Single-237
insert into kills values ('Single',237,'Siwei','Sandro','Aereo in Su'),
 ('Single',237,'Leo','Siwei','Altro'),
 ('Single',237,'Sandro','Leo','Smash Finale'),
 ('Single',237,'Siwei','Ale','In Corsa'),
 ('Single',237,'Siwei','Sandro','Smash Laterale'),
 ('Single',237,'Ale','Siwei','Smash Finale'),
 ('Single',237,'Siwei','Sandro','Smash Finale'),
 ('Single',237,'Siwei','Ale','Aereo Frontale'),
 ('Single',237,'Ale','Leo','Smash Laterale'),
 ('Single',237,'Leo','Siwei','Smash Laterale'),
 ('Single',237,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',237,'Siwei','Mancato Recupero');


--Single-236
insert into kills values ('Single',236,'Sandro','Leo','Altro'),
 ('Single',236,'Sandro','Siwei','In Corsa'),
 ('Single',236,'Leo','Sandro','Speciale Laterale'),
 ('Single',236,'Sandro','Ale','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',236,'Leo','Sandro','Speciale Standard'),
 ('Single',236,'Sandro','Leo','Altro'),
 ('Single',236,'Ale','Siwei','Smash Laterale'),
 ('Single',236,'Leo','Sandro','Smash Finale'),
 ('Single',236,'Siwei','Leo','In Corsa'),
 ('Single',236,'Siwei','Ale','Speciale Laterale'),
 ('Single',236,'Ale','Siwei','Altro');

insert into deaths values ('Single',236,'Leo','Spear Pillar'),
 ('Single',236,'Siwei','Mancato Recupero');


--Single-235
insert into kills values ('Single',235,'Siwei','Leo','Altro'),
 ('Single',235,'Siwei','Leo','Altro'),
 ('Single',235,'Leo','Sandro','Smash Laterale'),
 ('Single',235,'Leo','Ale','Smash Laterale'),
 ('Single',235,'Leo','Siwei','Altro'),
 ('Single',235,'Sandro','Ale','Altro'),
 ('Single',235,'Sandro','Leo','Altro'),
 ('Single',235,'Siwei','Sandro','Smash Finale'),
 ('Single',235,'Siwei','Ale','Smash Finale'),
 ('Single',235,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',235,'Sandro','Siwei','Altro');

insert into deaths values ('Single',235,'Leo','Mancato Recupero'),
 ('Single',235,'Leo','Mancato Recupero'),
 ('Single',235,'Siwei','Mancato Recupero'),
 ('Single',235,'Ale','Mancato Recupero'),
 ('Single',235,'Leo','Autodistruzione'),
 ('Single',235,'Siwei','Autodistruzione');


--Single-234
insert into kills values ('Single',234,'Siwei','Leo','Speciale in Su'),
 ('Single',234,'Sandro','Siwei','Aereo in Su'),
 ('Single',234,'Siwei','Sandro','Smash in Su'),
 ('Single',234,'Leo','Siwei','Smash Finale'),
 ('Single',234,'Siwei','Ale','Aereo Frontale'),
 ('Single',234,'Ale','Leo','Smash Laterale'),
 ('Single',234,'Ale','Sandro','Smash Laterale'),
 ('Single',234,'Ale','Leo','Smash Laterale'),
 ('Single',234,'Sandro','Ale','Smash Finale'),
 ('Single',234,'Ale','Sandro','Smash in Su'),
 ('Single',234,'Ale','Siwei','Smash Laterale');


--Single-233
insert into kills values ('Single',233,'Leo','Siwei','Altro'),
 ('Single',233,'Sandro','Siwei','Smash Finale'),
 ('Single',233,'Ale','Sandro','Speciale in Su'),
 ('Single',233,'Siwei','Sandro','Altro'),
 ('Single',233,'Sandro','Ale','Aereo in Giù'),
 ('Single',233,'Leo','Sandro','Smash Finale'),
 ('Single',233,'Leo','Siwei','Smash Finale'),
 ('Single',233,'Ale','Leo','Smash Laterale'),
 ('Single',233,'Ale','Leo','Smash Finale'),
 ('Single',233,'Leo','Ale','Smash Laterale'),
 ('Single',233,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',233,'Siwei','Autodistruzione'),
 ('Single',233,'Sandro','Autodistruzione');


--Doubles-48
insert into kills values ('Doubles',48,'Ale','Siwei','Altro'),
 ('Doubles',48,'Sandro','Ale','Smash Laterale'),
 ('Doubles',48,'Ale','Sandro','Altro'),
 ('Doubles',48,'Ale','Leo','Fuoco Amico'),
 ('Doubles',48,'Ale','Siwei','Smash Finale'),
 ('Doubles',48,'Siwei','Ale','Smash Finale'),
 ('Doubles',48,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',48,'Leo','Siwei','Altro'),
 ('Doubles',48,'Sandro','Ale','Altro'),
 ('Doubles',48,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',48,'Siwei','Mancato Recupero'),
 ('Doubles',48,'Leo','Fuoco Amico'),
 ('Doubles',48,'Leo','Autodistruzione'),
 ('Doubles',48,'Sandro','Fuoco Amico'),
 ('Doubles',48,'Siwei','Mancato Recupero'),
 ('Doubles',48,'Ale','Mancato Recupero');


--Doubles-47
insert into kills values ('Doubles',47,'Sandro','Leo','Altro'),
 ('Doubles',47,'Leo','Siwei','Smash Laterale'),
 ('Doubles',47,'Ale','Sandro','Smash Laterale'),
 ('Doubles',47,'Sandro','Ale','Smash Laterale'),
 ('Doubles',47,'Leo','Siwei','Peculiare'), --PECULIAR: LUCAS PK ROCKET
 ('Doubles',47,'Sandro','Leo','Aereo Posteriore'),
 ('Doubles',47,'Ale','Sandro','Smash Laterale'),
 ('Doubles',47,'Leo','Siwei','Speciale Standard'),
 ('Doubles',47,'Leo','Ale','Fuoco Amico'),
 ('Doubles',47,'Leo','Sandro','Smash Finale');

insert into deaths values ('Doubles',47,'Leo','Mancato Recupero'),
 ('Doubles',47,'Ale','Fuoco Amico');


--Doubles-46
insert into kills values ('Doubles',46,'Leo','Sandro','Altro'),
 ('Doubles',46,'Sandro','Leo','Speciale in Giù'),
 ('Doubles',46,'Ale','Siwei','Altro'),
 ('Doubles',46,'Ale','Sandro','Altro'),
 ('Doubles',46,'Sandro','Ale','Smash Finale'),
 ('Doubles',46,'Siwei','Leo','Smash Finale'),
 ('Doubles',46,'Leo','Sandro','Speciale Standard'),
 ('Doubles',46,'Ale','Siwei','Smash in Su'),
 ('Doubles',46,'Siwei','Ale','Smash Laterale'),
 ('Doubles',46,'Leo','Siwei','Smash in Su');

insert into deaths values ('Doubles',46,'Sandro','Summit'),
 ('Doubles',46,'Sandro','Mancato Recupero'),
 ('Doubles',46,'Siwei','Mancato Recupero');


--Doubles-45
insert into kills values ('Doubles',45,'Ale','Sandro','In Corsa'),
 ('Doubles',45,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',45,'Ale','Leo','In Corsa'),
 ('Doubles',45,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',45,'Ale','Sandro','Smash in Su'),
 ('Doubles',45,'Siwei','Leo','Speciale in Su'),
 ('Doubles',45,'Ale','Leo','Smash Laterale'),
 ('Doubles',45,'Sandro','Ale','Smash Finale'),
 ('Doubles',45,'Sandro','Siwei','Smash Finale'),
 ('Doubles',45,'Siwei','Sandro','Speciale in Su');

insert into deaths values ('Doubles',45,'Ale','Fuoco Amico'),
 ('Doubles',45,'Siwei','Fuoco Amico');


--Doubles-44
insert into kills values ('Doubles',44,'Ale','Siwei','Altro'),
 ('Doubles',44,'Sandro','Siwei','Altro'),
 ('Doubles',44,'Siwei','Ale','Smash Laterale'),
 ('Doubles',44,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',44,'Leo','Sandro','Smash Laterale'),
 ('Doubles',44,'Sandro','Siwei','Smash in Su'),
 ('Doubles',44,'Leo','Ale','Smash Finale'),
 ('Doubles',44,'Leo','Sandro','Smash Laterale'),
 ('Doubles',44,'Sandro','Leo','Altro'),
 ('Doubles',44,'Leo','Sandro','Smash Finale'),
 ('Doubles',44,'Ale','Leo','Smash Laterale');

insert into deaths values ('Doubles',44,'Siwei','Mancato Recupero'),
 ('Doubles',44,'Siwei','Mancato Recupero'),
 ('Doubles',44,'Leo','Mancato Recupero');


--Doubles-43
insert into kills values ('Doubles',43,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',43,'Ale','Leo','Altro'),
 ('Doubles',43,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',43,'Leo','Sandro','Smash Finale'),
 ('Doubles',43,'Sandro','Leo','Altro'),
 ('Doubles',43,'Ale','Siwei','Aereo in Su'),
 ('Doubles',43,'Leo','Sandro','Smash Laterale'),
 ('Doubles',43,'Siwei','Ale','Smash Finale'),
 ('Doubles',43,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',43,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',43,'Leo','Siwei','Fuoco Amico');

insert into deaths values ('Doubles',43,'Ale','Fuoco Amico'),
 ('Doubles',43,'Leo','Mancato Recupero'),
 ('Doubles',43,'Siwei','Fuoco Amico'),
 ('Doubles',43,'Leo','Mancato Recupero'),
 ('Doubles',43,'Sandro','Fuoco Amico'),
 ('Doubles',43,'Siwei','Fuoco Amico');


--Doubles-42
insert into kills values ('Doubles',42,'Leo','Ale','Smash Laterale'),
 ('Doubles',42,'Ale','Sandro','Smash in Su'),
 ('Doubles',42,'Siwei','Leo','Speciale in Su'),
 ('Doubles',42,'Sandro','Ale','Altro'),
 ('Doubles',42,'Leo','Siwei','Smash Finale'),
 ('Doubles',42,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',42,'Ale','Sandro','Smash Laterale'),
 ('Doubles',42,'Sandro','Ale','Altro'),
 ('Doubles',42,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',42,'Siwei','Leo','Smash Finale'),
 ('Doubles',42,'Siwei','Sandro','Altro');

insert into deaths values ('Doubles',42,'Ale','Mancato Recupero'),
 ('Doubles',42,'Leo','Fuoco Amico'),
 ('Doubles',42,'Ale','Kongo Jungle'),
 ('Doubles',42,'Sandro','Kongo Jungle');


--Doubles-41
insert into kills values ('Doubles',41,'Leo','Sandro','Smash Laterale'),
 ('Doubles',41,'Leo','Siwei','Aereo Frontale'),
 ('Doubles',41,'Siwei','Ale','Smash Laterale'),
 ('Doubles',41,'Siwei','Leo','Altro'),
 ('Doubles',41,'Ale','Sandro','Smash in Su'),
 ('Doubles',41,'Siwei','Leo','Altro'),
 ('Doubles',41,'Leo','Siwei','Smash Laterale'),
 ('Doubles',41,'Leo','Ale','Fuoco Amico'),
 ('Doubles',41,'Leo','Siwei','Smash Finale'),
 ('Doubles',41,'Ale','Sandro','Smash in Su');

insert into deaths values ('Doubles',41,'Leo','Golden Plains'),
 ('Doubles',41,'Ale','Fuoco Amico');


--Doubles-40
insert into kills values ('Doubles',40,'Leo','Sandro','Altro'),
 ('Doubles',40,'Leo','Sandro','Altro'),
 ('Doubles',40,'Sandro','Leo','Smash Finale'),
 ('Doubles',40,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',40,'Leo','Sandro','Smash Laterale'),
 ('Doubles',40,'Ale','Siwei','Smash Finale'),
 ('Doubles',40,'Ale','Leo','Fuoco Amico');

insert into deaths values ('Doubles',40,'Sandro','Mancato Recupero'),
 ('Doubles',40,'Sandro','Autodistruzione'),
 ('Doubles',40,'Leo','Fuoco Amico'),
 ('Doubles',40,'Siwei','Autodistruzione');


--Doubles-39
insert into kills values ('Doubles',39,'Leo','Ale','In Corsa'),
 ('Doubles',39,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',39,'Ale','Sandro','Smash Finale'),
 ('Doubles',39,'Ale','Leo','Smash Finale'),
 ('Doubles',39,'Siwei','Sandro','Smash Finale'),
 ('Doubles',39,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',39,'Leo','Ale','Speciale Standard'),
 ('Doubles',39,'Leo','Siwei','Smash Laterale'),
 ('Doubles',39,'Ale','Sandro','Smash Finale'),
 ('Doubles',39,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',39,'Leo','Ale','Smash Laterale');


--Doubles-38
insert into kills values ('Doubles',38,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',38,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',38,'Ale','Siwei','Altro'),
 ('Doubles',38,'Siwei','Ale','Smash Laterale'),
 ('Doubles',38,'Sandro','Leo','Altro'),
 ('Doubles',38,'Ale','Siwei','Altro'),
 ('Doubles',38,'Ale','Sandro','Smash Laterale'),
 ('Doubles',38,'Ale','Sandro','Altro');

insert into deaths values ('Doubles',38,'Siwei','Fuoco Amico'),
 ('Doubles',38,'Siwei','Autodistruzione'),
 ('Doubles',38,'Leo','Autodistruzione'),
 ('Doubles',38,'Siwei','Autodistruzione'),
 ('Doubles',38,'Sandro','Bridge of Eldin');


--Doubles-37
insert into kills values ('Doubles',37,'Leo','Ale','Fuoco Amico'),
 ('Doubles',37,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',37,'Leo','Siwei','Altro'),
 ('Doubles',37,'Sandro','Ale','Altro'),
 ('Doubles',37,'Sandro','Leo','Smash Finale'),
 ('Doubles',37,'Leo','Sandro','Speciale Standard'),
 ('Doubles',37,'Leo','Siwei','Speciale Standard'),
 ('Doubles',37,'Siwei','Ale','In Corsa'),
 ('Doubles',37,'Leo','Sandro','Altro'),
 ('Doubles',37,'Siwei','Leo','Smash Finale'),
 ('Doubles',37,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',37,'Ale','Fuoco Amico'),
 ('Doubles',37,'Sandro','Fuoco Amico'),
 ('Doubles',37,'Siwei','Autodistruzione'),
 ('Doubles',37,'Ale','Mancato Recupero'),
 ('Doubles',37,'Sandro','Mancato Recupero');


--Doubles-36
insert into kills values ('Doubles',36,'Sandro','Siwei','Smash in Su'),
 ('Doubles',36,'Siwei','Sandro','Aereo Posteriore'),
 ('Doubles',36,'Sandro','Leo','Smash Laterale'),
 ('Doubles',36,'Sandro','Siwei','Smash Finale'),
 ('Doubles',36,'Leo','Ale','Smash Finale'),
 ('Doubles',36,'Leo','Sandro','Altro'),
 ('Doubles',36,'Sandro','Leo','Smash in Su'),
 ('Doubles',36,'Sandro','Siwei','Smash in Su'),
 ('Doubles',36,'Leo','Sandro','Smash Finale'),
 ('Doubles',36,'Leo','Ale','Smash Laterale'),
 ('Doubles',36,'Leo','Ale','Altro');

insert into deaths values ('Doubles',36,'Sandro','Mancato Recupero'),
 ('Doubles',36,'Ale','Autodistruzione');


--Doubles-35
insert into kills values ('Doubles',35,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',35,'Ale','Leo','Aereo Standard'),
 ('Doubles',35,'Siwei','Sandro','Altro'),
 ('Doubles',35,'Leo','Ale','In Corsa'),
 ('Doubles',35,'Leo','Siwei','Smash Finale'),
 ('Doubles',35,'Ale','Sandro','Altro'),
 ('Doubles',35,'Leo','Siwei','Smash in Su'),
 ('Doubles',35,'Leo','Ale','Smash Laterale'),
 ('Doubles',35,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',35,'Leo','Ale','Smash Finale');

insert into deaths values ('Doubles',35,'Sandro','Mancato Recupero'),
 ('Doubles',35,'Sandro','Autodistruzione'),
 ('Doubles',35,'Sandro','Fuoco Amico');


--Doubles-34
insert into kills values ('Doubles',34,'Leo','Ale','Smash Laterale'),
 ('Doubles',34,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',34,'Sandro','Leo','Smash Laterale'),
 ('Doubles',34,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',34,'Siwei','Ale','Speciale in Giù'),
 ('Doubles',34,'Siwei','Sandro','Smash Finale'),
 ('Doubles',34,'Sandro','Leo','Aereo Frontale'),
 ('Doubles',34,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',34,'Ale','Leo','Smash Finale'),
 ('Doubles',34,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Doubles',34,'Sandro','Fuoco Amico'),
 ('Doubles',34,'Siwei','Fuoco Amico');


--Doubles-33
insert into kills values ('Doubles',33,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',33,'Siwei','Ale','Smash Laterale'),
 ('Doubles',33,'Sandro','Leo','Smash Laterale'),
 ('Doubles',33,'Ale','Siwei','Aereo Standard'),
 ('Doubles',33,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',33,'Leo','Sandro','Smash Laterale'),
 ('Doubles',33,'Sandro','Leo','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Doubles',33,'Leo','Siwei','Speciale Standard'),
 ('Doubles',33,'Leo','Ale','Fuoco Amico'),
 ('Doubles',33,'Leo','Sandro','Aereo Frontale');

insert into deaths values ('Doubles',33,'Siwei','Fuoco Amico'),
 ('Doubles',33,'Ale','Fuoco Amico');


--Doubles-32
insert into kills values ('Doubles',32,'Ale','Siwei','Altro'),
 ('Doubles',32,'Sandro','Ale','Altro'),
 ('Doubles',32,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',32,'Ale','Siwei','Smash Finale'),
 ('Doubles',32,'Siwei','Leo','Smash Finale'),
 ('Doubles',32,'Siwei','Ale','Smash Laterale'),
 ('Doubles',32,'Leo','Sandro','Smash Laterale'),
 ('Doubles',32,'Ale','Siwei','Speciale in Giù'),
 ('Doubles',32,'Sandro','Leo','Altro'),
 ('Doubles',32,'Sandro','Ale','Smash Finale'),
 ('Doubles',32,'Sandro','Leo','Smash Finale');

insert into deaths values ('Doubles',32,'Siwei','Autodistruzione'),
 ('Doubles',32,'Ale','Gamer'),
 ('Doubles',32,'Leo','Gamer');


--Doubles-31
insert into kills values ('Doubles',31,'Ale','Leo','Altro'),
 ('Doubles',31,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',31,'Ale','Sandro','Smash Laterale'),
 ('Doubles',31,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',31,'Leo','Ale','Smash Finale'),
 ('Doubles',31,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',31,'Leo','Siwei','Smash Laterale'),
 ('Doubles',31,'Ale','Sandro','Speciale Standard'),
 ('Doubles',31,'Sandro','Ale','Altro'),
 ('Doubles',31,'Siwei','Leo','In Corsa'),
 ('Doubles',31,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',31,'Leo','Summit'),
 ('Doubles',31,'Siwei','Fuoco Amico'),
 ('Doubles',31,'Sandro','Fuoco Amico'),
 ('Doubles',31,'Ale','Summit');


--Doubles-30
insert into kills values ('Doubles',30,'Sandro','Ale','Speciale in Su'),
 ('Doubles',30,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',30,'Siwei','Leo','Aereo Frontale'),
 ('Doubles',30,'Leo','Siwei','Smash Laterale'),
 ('Doubles',30,'Leo','Sandro','Smash Laterale'),
 ('Doubles',30,'Leo','Siwei','Smash Finale'),
 ('Doubles',30,'Siwei','Ale','Altro'),
 ('Doubles',30,'Siwei','Leo','Speciale Standard'),
 ('Doubles',30,'Leo','Sandro','Altro'),
 ('Doubles',30,'Ale','Siwei','Speciale in Su');

insert into deaths values ('Doubles',30,'Sandro','Fuoco Amico'),
 ('Doubles',30,'Ale','Autodistruzione'),
 ('Doubles',30,'Sandro','Autodistruzione');


--Doubles-29
insert into kills values ('Doubles',29,'Ale','Leo','Altro'),
 ('Doubles',29,'Leo','Ale','Smash Laterale'),
 ('Doubles',29,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',29,'Sandro','Siwei','Aereo in Giù'),
 ('Doubles',29,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',29,'Siwei','Leo','Smash Finale'),
 ('Doubles',29,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',29,'Leo','Siwei','Smash Finale'),
 ('Doubles',29,'Leo','Ale','Aereo Posteriore'),
 ('Doubles',29,'Leo','Ale','Altro'),
 ('Doubles',29,'Leo','Siwei','Smash Finale');

insert into deaths values ('Doubles',29,'Leo','Mancato Recupero'),
 ('Doubles',29,'Sandro','Fuoco Amico'),
 ('Doubles',29,'Ale','Mancato Recupero');


--Doubles-28
insert into kills values ('Doubles',28,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',28,'Siwei','Ale','Smash Laterale'),
 ('Doubles',28,'Leo','Sandro','Smash Finale'),
 ('Doubles',28,'Sandro','Leo','Smash in Su'),
 ('Doubles',28,'Sandro','Siwei','Smash Finale'),
 ('Doubles',28,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',28,'Leo','Ale','Smash Laterale'),
 ('Doubles',28,'Leo','Sandro','Smash Laterale'),
 ('Doubles',28,'Sandro','Leo','Smash Finale'),
 ('Doubles',28,'Siwei','Sandro','Aereo in Su');

insert into deaths values ('Doubles',28,'Ale','Fuoco Amico');


--Doubles-27
insert into kills values ('Doubles',27,'Ale','Leo','Altro'),
 ('Doubles',27,'Leo','Ale','Speciale Laterale'),
 ('Doubles',27,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',27,'Sandro','Siwei','Altro'),
 ('Doubles',27,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',27,'Siwei','Ale','Smash Finale'),
 ('Doubles',27,'Siwei','Sandro','Altro'),
 ('Doubles',27,'Ale','Leo','Speciale in Giù'),
 ('Doubles',27,'Ale','Siwei','Smash Laterale'),
 ('Doubles',27,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',27,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Doubles',27,'Leo','Autodistruzione'),
 ('Doubles',27,'Sandro','Fuoco Amico'),
 ('Doubles',27,'Siwei','Autodistruzione'),
 ('Doubles',27,'Leo','Fuoco Amico'),
 ('Doubles',27,'Sandro','Mancato Recupero'),
 ('Doubles',27,'Ale','Fuoco Amico');


--Doubles-26
insert into kills values ('Doubles',26,'Leo','Ale','Altro'),
 ('Doubles',26,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',26,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',26,'Leo','Ale','Speciale Laterale'),
 ('Doubles',26,'Ale','Leo','Altro'),
 ('Doubles',26,'Siwei','Sandro','Smash Finale'),
 ('Doubles',26,'Leo','Ale','Smash Finale'),
 ('Doubles',26,'Leo','Siwei','Smash Laterale'),
 ('Doubles',26,'Siwei','Sandro','Altro'),
 ('Doubles',26,'Leo','Siwei','Altro');

insert into deaths values ('Doubles',26,'Ale','Mancato Recupero'),
 ('Doubles',26,'Sandro','Fuoco Amico'),
 ('Doubles',26,'Leo','Autodistruzione'),
 ('Doubles',26,'Sandro','Mancato Recupero'),
 ('Doubles',26,'Siwei','Green Greens');


--Doubles-25
insert into kills values ('Doubles',25,'Leo','Siwei','Smash Laterale'),
 ('Doubles',25,'Ale','Leo','Fuoco Amico'),
 ('Doubles',25,'Leo','Sandro','Speciale Standard'),
 ('Doubles',25,'Sandro','Leo','Smash Finale'),
 ('Doubles',25,'Sandro','Ale','Smash Laterale'),
 ('Doubles',25,'Siwei','Sandro','Fuoco Amico'),
 ('Doubles',25,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',25,'Sandro','Leo','Smash in Giù'),
 ('Doubles',25,'Siwei','Ale','Altro');

insert into deaths values ('Doubles',25,'Ale','Autodistruzione'),
 ('Doubles',25,'Leo','Fuoco Amico'),
 ('Doubles',25,'Sandro','Fuoco Amico'),
 ('Doubles',25,'Siwei','Fuoco Amico'),
 ('Doubles',25,'Ale','Mancato Recupero');


--Doubles-24
insert into kills values ('Doubles',24,'Leo','Siwei','Altro'),
 ('Doubles',24,'Ale','Sandro','Altro'),
 ('Doubles',24,'Sandro','Leo','Smash Laterale'),
 ('Doubles',24,'Sandro','Ale','Smash Finale'),
 ('Doubles',24,'Leo','Siwei','Smash Finale'),
 ('Doubles',24,'Ale','Sandro','Smash Laterale'),
 ('Doubles',24,'Sandro','Leo','Smash in Su'),
 ('Doubles',24,'Sandro','Ale','Smash Laterale'),
 ('Doubles',24,'Leo','Siwei','Altro'),
 ('Doubles',24,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',24,'Siwei','Mancato Recupero'),
 ('Doubles',24,'Sandro','Mancato Recupero'),
 ('Doubles',24,'Siwei','Mancato Recupero');


--Single-232
insert into kills values ('Single',232,'Leo','Sandro','Speciale Standard'),
 ('Single',232,'Leo','Sandro','Altro'),
 ('Single',232,'Siwei','Ale','Speciale Laterale'),
 ('Single',232,'Sandro','Leo','Smash Laterale'),
 ('Single',232,'Leo','Sandro','Speciale Standard'),
 ('Single',232,'Siwei','Ale','Altro'),
 ('Single',232,'Leo','Siwei','Smash Laterale'),
 ('Single',232,'Leo','Ale','Speciale Standard'),
 ('Single',232,'Siwei','Leo','Speciale Laterale'),
 ('Single',232,'Leo','Siwei','Smash Finale'),
 ('Single',232,'Leo','Siwei','Altro');

insert into deaths values ('Single',232,'Sandro','Autodistruzione'),
 ('Single',232,'Siwei','Autodistruzione');


--Single-231
insert into kills values ('Single',231,'Siwei','Ale','Speciale in Su'),
 ('Single',231,'Ale','Siwei','Aereo Posteriore'),
 ('Single',231,'Sandro','Leo','Aereo Frontale'),
 ('Single',231,'Siwei','Sandro','Smash Finale'),
 ('Single',231,'Leo','Siwei','Speciale Standard'),
 ('Single',231,'Sandro','Leo','Smash Laterale'),
 ('Single',231,'Siwei','Ale','Speciale Laterale'),
 ('Single',231,'Leo','Ale','Speciale Standard'),
 ('Single',231,'Siwei','Sandro','Speciale in Su'),
 ('Single',231,'Leo','Siwei','Smash Laterale'),
 ('Single',231,'Sandro','Leo','Smash Laterale');


--Single-230
insert into kills values ('Single',230,'Sandro','Siwei','Altro'),
 ('Single',230,'Leo','Siwei','Altro'),
 ('Single',230,'Ale','Sandro','Meteora'),
 ('Single',230,'Sandro','Siwei','Footstool'),
 ('Single',230,'Sandro','Leo','Smash Laterale'),
 ('Single',230,'Sandro','Ale','Smash Laterale'),
 ('Single',230,'Ale','Sandro','Meteora'),
 ('Single',230,'Leo','Ale','Altro'),
 ('Single',230,'Sandro','Leo','Smash Laterale'),
 ('Single',230,'Leo','Ale','Speciale Laterale'),
 ('Single',230,'Leo','Sandro','Speciale Laterale');

insert into deaths values ('Single',230,'Siwei','Mancato Recupero'),
 ('Single',230,'Siwei','Mancato Recupero'),
 ('Single',230,'Ale','Autodistruzione');


--Single-229
insert into kills values ('Single',229,'Siwei','Sandro','Altro'),
 ('Single',229,'Sandro','Siwei','Smash Laterale'),
 ('Single',229,'Sandro','Ale','Smash Laterale'),
 ('Single',229,'Siwei','Leo','Speciale Laterale'),
 ('Single',229,'Sandro','Siwei','Smash Finale'),
 ('Single',229,'Leo','Sandro','Smash Finale'),
 ('Single',229,'Siwei','Ale','Altro'),
 ('Single',229,'Leo','Siwei','Speciale Laterale'),
 ('Single',229,'Sandro','Ale','Smash Laterale'),
 ('Single',229,'Leo','Sandro','Speciale Laterale');

insert into deaths values ('Single',229,'Sandro','Autodistruzione'),
 ('Single',229,'Ale','Kongo Jungle');


--Single-228
insert into kills values ('Single',228,'Sandro','Siwei','Smash in Su'),
 ('Single',228,'Ale','Sandro','Speciale in Giù'),
 ('Single',228,'Sandro','Ale','Smash Laterale'),
 ('Single',228,'Sandro','Leo','Aereo in Su'),
 ('Single',228,'Siwei','Sandro','Smash Finale'),
 ('Single',228,'Siwei','Leo','Altro'),
 ('Single',228,'Leo','Sandro','Speciale Laterale'),
 ('Single',228,'Ale','Siwei','Meteora'),
 ('Single',228,'Leo','Ale','Scudo Rotto'),
 ('Single',228,'Siwei','Leo','Altro'),
 ('Single',228,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',228,'Ale','Scudo Rotto'),
 ('Single',228,'Leo','Mancato Recupero');


--Single-227
insert into kills values ('Single',227,'Sandro','Siwei','Aereo in Su'),
 ('Single',227,'Sandro','Siwei','Smash Laterale'),
 ('Single',227,'Sandro','Siwei','Altro'),
 ('Single',227,'Sandro','Leo','Speciale in Giù'),
 ('Single',227,'Sandro','Ale','Smash Laterale'),
 ('Single',227,'Ale','Sandro','Speciale in Giù'),
 ('Single',227,'Ale','Sandro','Speciale in Giù'),
 ('Single',227,'Sandro','Ale','Smash Laterale'),
 ('Single',227,'Ale','Leo','Smash Laterale'),
 ('Single',227,'Leo','Ale','Smash Laterale'),
 ('Single',227,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',227,'Siwei','Autodistruzione');


--Single-226
insert into kills values ('Single',226,'Sandro','Leo','Altro'),
 ('Single',226,'Sandro','Ale','Speciale in Su'),
 ('Single',226,'Leo','Sandro','Speciale in Su'),
 ('Single',226,'Sandro','Siwei','Aereo Frontale'),
 ('Single',226,'Sandro','Leo','Altro'),
 ('Single',226,'Ale','Siwei','Speciale in Giù'),
 ('Single',226,'Ale','Sandro','Altro'),
 ('Single',226,'Siwei','Ale','Speciale Laterale'),
 ('Single',226,'Sandro','Siwei','Altro'),
 ('Single',226,'Ale','Leo','Altro'),
 ('Single',226,'Ale','Sandro','Altro');

insert into deaths values ('Single',226,'Leo','Autodistruzione'),
 ('Single',226,'Leo','Norfair'),
 ('Single',226,'Sandro','Norfair'),
 ('Single',226,'Siwei','Autodistruzione'),
 ('Single',226,'Leo','Norfair'),
 ('Single',226,'Sandro','Mancato Recupero');


--Single-225
insert into kills values ('Single',225,'Ale','Siwei','Smash Laterale'),
 ('Single',225,'Siwei','Sandro','Altro'),
 ('Single',225,'Siwei','Ale','Smash Finale'),
 ('Single',225,'Siwei','Leo','Smash Finale'),
 ('Single',225,'Sandro','Siwei','Smash Finale'),
 ('Single',225,'Leo','Sandro','Smash Finale'),
 ('Single',225,'Leo','Siwei','Smash Finale'),
 ('Single',225,'Leo','Ale','Altro'),
 ('Single',225,'Sandro','Leo','Altro'),
 ('Single',225,'Sandro','Ale','Smash Finale'),
 ('Single',225,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',225,'Leo','Mancato Recupero');


--Single-224
insert into kills values ('Single',224,'Siwei','Sandro','Speciale Standard'),
 ('Single',224,'Sandro','Leo','Altro'),
 ('Single',224,'Sandro','Siwei','Smash Finale'),
 ('Single',224,'Sandro','Ale','Speciale in Giù'),
 ('Single',224,'Leo','Sandro','Smash Finale'),
 ('Single',224,'Sandro','Leo','Altro'),
 ('Single',224,'Ale','Siwei','In Corsa'),
 ('Single',224,'Sandro','Leo','Altro'),
 ('Single',224,'Sandro','Siwei','Aereo in Su'),
 ('Single',224,'Ale','Sandro','In Corsa');

insert into deaths values ('Single',224,'Leo','Mancato Recupero'),
 ('Single',224,'Leo','Mancato Recupero');


--Single-223
insert into kills values ('Single',223,'Leo','Siwei','Smash Laterale'),
 ('Single',223,'Ale','Siwei','Speciale Laterale'),
 ('Single',223,'Ale','Sandro','Speciale in Giù'),
 ('Single',223,'Sandro','Ale','Aereo Posteriore'),
 ('Single',223,'Sandro','Leo','Smash Laterale'),
 ('Single',223,'Sandro','Ale','Smash Finale'),
 ('Single',223,'Sandro','Siwei','Smash Finale'),
 ('Single',223,'Ale','Sandro','Smash Laterale'),
 ('Single',223,'Leo','Ale','Smash Finale'),
 ('Single',223,'Sandro','Leo','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',223,'Leo','Sandro','Speciale Standard');


--Single-222
insert into kills values ('Single',222,'Leo','Sandro','Smash Laterale'),
 ('Single',222,'Sandro','Leo','Aereo in Giù'),
 ('Single',222,'Ale','Siwei','Smash Laterale'),
 ('Single',222,'Ale','Leo','Altro'),
 ('Single',222,'Sandro','Siwei','Altro'),
 ('Single',222,'Leo','Siwei','Smash Finale'),
 ('Single',222,'Sandro','Ale','Smash in Su'),
 ('Single',222,'Sandro','Leo','Smash Finale'),
 ('Single',222,'Ale','Sandro','Speciale in Giù'),
 ('Single',222,'Sandro','Ale','Smash Laterale'),
 ('Single',222,'Ale','Sandro','Speciale Laterale');

insert into deaths values ('Single',222,'Leo','Autodistruzione'),
 ('Single',222,'Siwei','Mancato Recupero');


--Single-221
insert into kills values ('Single',221,'Leo','Ale','Altro'),
 ('Single',221,'Siwei','Sandro','Speciale in Giù'),
 ('Single',221,'Ale','Leo','Altro'),
 ('Single',221,'Ale','Siwei','Altro'),
 ('Single',221,'Siwei','Ale','Altro'),
 ('Single',221,'Leo','Siwei','Altro'),
 ('Single',221,'Leo','Sandro','Altro'),
 ('Single',221,'Siwei','Leo','Smash Finale'),
 ('Single',221,'Sandro','Leo','Smash Finale'),
 ('Single',221,'Sandro','Siwei','Smash Finale'),
 ('Single',221,'Sandro','Ale','Aereo in Giù');

insert into deaths values ('Single',221,'Ale','Mancato Recupero'),
 ('Single',221,'Leo','Norfair'),
 ('Single',221,'Siwei','Norfair'),
 ('Single',221,'Ale','Mancato Recupero'),
 ('Single',221,'Siwei','Norfair'),
 ('Single',221,'Sandro','Norfair');


--Single-220
insert into kills values ('Single',220,'Leo','Siwei','Scudo Rotto'),
 ('Single',220,'Siwei','Ale','In Corsa'),
 ('Single',220,'Ale','Leo','Smash Laterale'),
 ('Single',220,'Leo','Sandro','Speciale Standard'),
 ('Single',220,'Ale','Siwei','Smash Finale'),
 ('Single',220,'Ale','Sandro','Smash in Giù'),
 ('Single',220,'Leo','Ale','Smash Finale'),
 ('Single',220,'Sandro','Leo','Smash Finale'),
 ('Single',220,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',220,'Leo','Ale','In Corsa'),
 ('Single',220,'Leo','Siwei','Speciale Standard');
 
 insert into deaths values ('Single',220,'Siwei','Scudo Rotto');


--Single-219
insert into kills values ('Single',219,'Leo','Ale','Scudo Rotto'),
 ('Single',219,'Leo','Ale','Speciale Standard'),
 ('Single',219,'Sandro','Leo','Smash Laterale'),
 ('Single',219,'Leo','Siwei','Smash Laterale'),
 ('Single',219,'Leo','Sandro','Smash in Giù'),
 ('Single',219,'Leo','Siwei','Altro'),
 ('Single',219,'Leo','Sandro','Speciale Standard'),
 ('Single',219,'Sandro','Siwei','Altro'),
 ('Single',219,'Ale','Leo','Smash Finale'),
 ('Single',219,'Ale','Sandro','Altro'),
 ('Single',219,'Ale','Leo','Altro');

insert into deaths values ('Single',219,'Ale','Scudo Rotto'),
 ('Single',219,'Siwei','Mancato Recupero'),
 ('Single',219,'Sandro','Autodistruzione'),
 ('Single',219,'Sandro','Autodistruzione'),
 ('Single',219,'Leo','Mancato Recupero');


--Single-218
insert into kills values ('Single',218,'Sandro','Leo','Altro'),
 ('Single',218,'Leo','Sandro','Aereo Posteriore'),
 ('Single',218,'Siwei','Leo','Altro'),
 ('Single',218,'Leo','Sandro','Smash Finale'),
 ('Single',218,'Leo','Siwei','Smash Finale'),
 ('Single',218,'Sandro','Leo','Smash Finale'),
 ('Single',218,'Sandro','Ale','Aereo in Giù'),
 ('Single',218,'Siwei','Ale','Smash Finale'),
 ('Single',218,'Ale','Sandro','Speciale Laterale'),
 ('Single',218,'Ale','Siwei','Smash Laterale'),
 ('Single',218,'Ale','Siwei','Altro');

insert into deaths values ('Single',218,'Leo','Mancato Recupero'),
 ('Single',218,'Leo','Mancato Recupero'),
 ('Single',218,'Siwei','Mancato Recupero');


--Single-217
insert into kills values ('Single',217,'Sandro','Ale','Smash Laterale'),
 ('Single',217,'Sandro','Siwei','Aereo in Su'),
 ('Single',217,'Sandro','Leo','Smash Finale'),
 ('Single',217,'Siwei','Ale','In Corsa'),
 ('Single',217,'Sandro','Siwei','Smash in Giù'),
 ('Single',217,'Leo','Sandro','Aereo in Su'),
 ('Single',217,'Leo','Ale','Smash Finale'),
 ('Single',217,'Leo','Siwei','Smash Finale'),
 ('Single',217,'Sandro','Leo','Altro'),
 ('Single',217,'Leo','Sandro','Altro'),
 ('Single',217,'Sandro','Leo','Altro');

insert into deaths values ('Single',217,'Leo','Mancato Recupero'),
 ('Single',217,'Sandro','Mancato Recupero');


--Single-216
insert into kills values ('Single',216,'Siwei','Ale','Altro'),
 ('Single',216,'Leo','Sandro','Speciale Laterale'),
 ('Single',216,'Sandro','Siwei','Altro'),
 ('Single',216,'Sandro','Leo','Smash Finale'),
 ('Single',216,'Leo','Sandro','Smash Laterale'),
 ('Single',216,'Leo','Ale','Smash Finale'),
 ('Single',216,'Siwei','Leo','Speciale in Su'),
 ('Single',216,'Leo','Siwei','Smash Laterale'),
 ('Single',216,'Siwei','Ale','Speciale in Su'),
 ('Single',216,'Sandro','Siwei','Aereo in Su'),
 ('Single',216,'Sandro','Leo','Meteora');

insert into deaths values ('Single',216,'Ale','Mancato Recupero'),
 ('Single',216,'Siwei','Mancato Recupero');


--Single-215
insert into kills values ('Single',215,'Siwei','Sandro','Altro'),
 ('Single',215,'Leo','Ale','Smash Laterale'),
 ('Single',215,'Sandro','Siwei','Altro'),
 ('Single',215,'Sandro','Siwei','Smash Finale'),
 ('Single',215,'Ale','Leo','Smash Finale'),
 ('Single',215,'Leo','Ale','Smash Finale'),
 ('Single',215,'Ale','Sandro','Altro'),
 ('Single',215,'Sandro','Siwei','Speciale Laterale'),
 ('Single',215,'Leo','Ale','Altro'),
 ('Single',215,'Sandro','Leo','Altro'),
 ('Single',215,'Leo','Sandro','Aereo Posteriore');

insert into deaths values ('Single',215,'Sandro','New Pork City'),
 ('Single',215,'Siwei','Autodistruzione'),
 ('Single',215,'Sandro','New Pork City'),
 ('Single',215,'Ale','Mancato Recupero'),
 ('Single',215,'Leo','Mancato Recupero');


--Single-214
insert into kills values ('Single',214,'Leo','Sandro','Smash Laterale'),
 ('Single',214,'Sandro','Leo','Smash Laterale'),
 ('Single',214,'Sandro','Ale','Smash Laterale'),
 ('Single',214,'Sandro','Siwei','Smash Laterale'),
 ('Single',214,'Sandro','Leo','Smash Finale'),
 ('Single',214,'Ale','Sandro','Smash Finale'),
 ('Single',214,'Sandro','Ale','Smash in Su'),
 ('Single',214,'Ale','Siwei','Altro'),
 ('Single',214,'Sandro','Leo','Smash Finale'),
 ('Single',214,'Siwei','Sandro','Aereo Posteriore'),
 ('Single',214,'Ale','Siwei','Altro');

insert into deaths values ('Single',214,'Siwei','Mancato Recupero'),
 ('Single',214,'Siwei','Autodistruzione');


--Single-213
insert into kills values ('Single',213,'Leo','Sandro','Speciale Laterale'),
 ('Single',213,'Siwei','Sandro','Altro'),
 ('Single',213,'Ale','Leo','Aereo Posteriore'),
 ('Single',213,'Sandro','Siwei','Smash Finale'),
 ('Single',213,'Leo','Sandro','Altro'),
 ('Single',213,'Leo','Ale','Aereo Standard'),
 ('Single',213,'Siwei','Leo','Smash Finale'),
 ('Single',213,'Leo','Siwei','Altro'),
 ('Single',213,'Ale','Siwei','Altro'),
 ('Single',213,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',213,'Sandro','Mancato Recupero'),
 ('Single',213,'Sandro','Autodistruzione'),
 ('Single',213,'Siwei','Mancato Recupero'),
 ('Single',213,'Siwei','Mancato Recupero');


--Single-212
insert into kills values ('Single',212,'Leo','Ale','Smash Laterale'),
 ('Single',212,'Leo','Sandro','Smash Laterale'),
 ('Single',212,'Siwei','Leo','Altro'),
 ('Single',212,'Leo','Sandro','Smash Finale'),
 ('Single',212,'Ale','Leo','Smash Finale'),
 ('Single',212,'Sandro','Ale','Smash Finale'),
 ('Single',212,'Sandro','Siwei','Altro'),
 ('Single',212,'Siwei','Sandro','In Corsa'),
 ('Single',212,'Ale','Siwei','Aereo Posteriore'),
 ('Single',212,'Leo','Siwei','In Corsa'),
 ('Single',212,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',212,'Leo','Mancato Recupero'),
 ('Single',212,'Siwei','Autodistruzione');


--Single-211
insert into kills values ('Single',211,'Leo','Sandro','Smash Laterale'),
 ('Single',211,'Leo','Ale','Smash Laterale'),
 ('Single',211,'Ale','Leo','Smash Laterale'),
 ('Single',211,'Leo','Sandro','Speciale in Giù'),
 ('Single',211,'Sandro','Leo','Smash Finale'),
 ('Single',211,'Leo','Siwei','Speciale Standard'),
 ('Single',211,'Sandro','Siwei','Altro'),
 ('Single',211,'Sandro','Ale','Smash Laterale'),
 ('Single',211,'Ale','Sandro','Aereo Standard'),
 ('Single',211,'Siwei','Leo','Altro'),
 ('Single',211,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Single',211,'Siwei','Autodistruzione'),
 ('Single',211,'Leo','Autodistruzione');


--Single-210
insert into kills values ('Single',210,'Leo','Sandro','Altro'),
 ('Single',210,'Siwei','Ale','Speciale Standard'),
 ('Single',210,'Ale','Siwei','Aereo Standard'),
 ('Single',210,'Siwei','Leo','Speciale Standard'),
 ('Single',210,'Siwei','Sandro','Smash Finale'),
 ('Single',210,'Leo','Siwei','Smash Finale'),
 ('Single',210,'Sandro','Leo','Altro'),
 ('Single',210,'Sandro','Siwei','Altro'),
 ('Single',210,'Leo','Sandro','Aereo Frontale'),
 ('Single',210,'Leo','Ale','Smash Laterale'),
 ('Single',210,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',210,'Sandro','Mancato Recupero'),
 ('Single',210,'Leo','Mancato Recupero'),
 ('Single',210,'Siwei','Mancato Recupero');


--Single-209
insert into kills values ('Single',209,'Siwei','Sandro','Speciale Standard'),
 ('Single',209,'Ale','Siwei','Altro'),
 ('Single',209,'Siwei','Leo','Aereo in Giù'),
 ('Single',209,'Ale','Siwei','Smash in Su'),
 ('Single',209,'Siwei','Sandro','In Corsa'),
 ('Single',209,'Leo','Ale','Smash Finale'),
 ('Single',209,'Ale','Leo','Smash Finale'),
 ('Single',209,'Siwei','Ale','Speciale Standard'),
 ('Single',209,'Leo','Siwei','Smash Laterale'),
 ('Single',209,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',209,'Sandro','Autodistruzione'),
 ('Single',209,'Siwei','Mancato Recupero');


--Single-208
insert into kills values ('Single',208,'Ale','Sandro','Aereo Standard'),
 ('Single',208,'Siwei','Leo','Altro'),
 ('Single',208,'Ale','Siwei','Altro'),
 ('Single',208,'Sandro','Ale','Smash Laterale'),
 ('Single',208,'Siwei','Sandro','Speciale in Giù'),
 ('Single',208,'Siwei','Leo','Speciale Laterale'),
 ('Single',208,'Siwei','Sandro','Speciale Laterale'),
 ('Single',208,'Ale','Siwei','Aereo Standard'),
 ('Single',208,'Leo','Ale','Smash Laterale'),
 ('Single',208,'Ale','Leo','Speciale in Giù'),
 ('Single',208,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',208,'Leo','Princess Peach Castle'),
 ('Single',208,'Siwei','Princess Peach Castle');


--Single-207
insert into kills values ('Single',207,'Ale','Siwei','Aereo Standard'),
 ('Single',207,'Ale','Leo','Smash in Su'),
 ('Single',207,'Sandro','Ale','Aereo in Giù'),
 ('Single',207,'Ale','Sandro','Aereo Standard'),
 ('Single',207,'Sandro','Siwei','Smash Laterale'),
 ('Single',207,'Leo','Sandro','Smash Laterale'),
 ('Single',207,'Sandro','Ale','Smash Laterale'),
 ('Single',207,'Ale','Leo','Aereo Posteriore'),
 ('Single',207,'Ale','Leo','Aereo Standard'),
 ('Single',207,'Sandro','Ale','Smash in Su'),
 ('Single',207,'Sandro','Siwei','Smash Laterale');


--Single-206
insert into kills values ('Single',206,'Siwei','Sandro','Aereo Frontale'),
 ('Single',206,'Leo','Siwei','Speciale Laterale'),
 ('Single',206,'Sandro','Leo','Speciale in Su'),
 ('Single',206,'Siwei','Sandro','Speciale Standard'),
 ('Single',206,'Leo','Ale','Speciale Laterale'),
 ('Single',206,'Leo','Siwei','Smash Laterale'),
 ('Single',206,'Ale','Sandro','Smash in Giù'),
 ('Single',206,'Leo','Ale','Smash Finale'),
 ('Single',206,'Leo','Ale','Speciale Laterale'),
 ('Single',206,'Leo','Siwei','Speciale Laterale');


--Single-205
insert into kills values ('Single',205,'Ale','Sandro','Aereo Standard'),
 ('Single',205,'Sandro','Leo','Altro'),
 ('Single',205,'Ale','Siwei','Altro'),
 ('Single',205,'Sandro','Ale','Smash Finale'),
 ('Single',205,'Sandro','Siwei','Altro'),
 ('Single',205,'Ale','Sandro','Speciale in Giù'),
 ('Single',205,'Siwei','Ale','Speciale Standard'),
 ('Single',205,'Ale','Leo','Altro'),
 ('Single',205,'Sandro','Siwei','Altro'),
 ('Single',205,'Leo','Ale','Smash Laterale'),
 ('Single',205,'Sandro','Leo','Altro');

insert into deaths values ('Single',205,'Leo','Mancato Recupero'),
 ('Single',205,'Siwei','Mancato Recupero'),
 ('Single',205,'Siwei','Mancato Recupero'),
 ('Single',205,'Siwei','Mancato Recupero'),
 ('Single',205,'Leo','Mancato Recupero');


--Single-204
insert into kills values ('Single',204,'Ale','Siwei','Altro'),
 ('Single',204,'Ale','Sandro','Smash Laterale'),
 ('Single',204,'Leo','Ale','Speciale Laterale'),
 ('Single',204,'Ale','Leo','Smash Laterale'),
 ('Single',204,'Leo','Ale','Smash Finale'),
 ('Single',204,'Siwei','Sandro','Smash Finale'),
 ('Single',204,'Ale','Siwei','Aereo in Giù'),
 ('Single',204,'Sandro','Ale','Altro'),
 ('Single',204,'Siwei','Leo','Speciale Standard'),
 ('Single',204,'Sandro','Siwei','Altro'),
 ('Single',204,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',204,'Siwei','Mancato Recupero'),
 ('Single',204,'Ale','Mancato Recupero'),
 ('Single',204,'Siwei','Mancato Recupero');


--Single-203
insert into kills values ('Single',203,'Leo','Siwei','Altro'),
 ('Single',203,'Ale','Leo','Altro'),
 ('Single',203,'Ale','Siwei','Altro'),
 ('Single',203,'Leo','Sandro','Altro'),
 ('Single',203,'Sandro','Ale','Speciale in Giù'),
 ('Single',203,'Sandro','Ale','Smash Finale'),
 ('Single',203,'Sandro','Siwei','Smash in Su'),
 ('Single',203,'Leo','Ale','Smash Finale'),
 ('Single',203,'Leo','Sandro','Smash Finale'),
 ('Single',203,'Sandro','Leo','Speciale in Giù'),
 ('Single',203,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',203,'Siwei','Mute City SNES'),
 ('Single',203,'Leo','Mute City SNES'),
 ('Single',203,'Siwei','Mute City SNES');


--Single-202
insert into kills values ('Single',202,'Ale','Sandro','Aereo Posteriore'),
 ('Single',202,'Sandro','Ale','Smash in Su'),
 ('Single',202,'Ale','Siwei','Speciale in Giù'),
 ('Single',202,'Sandro','Leo','Smash Finale'),
 ('Single',202,'Leo','Sandro','Smash Finale'),
 ('Single',202,'Siwei','Sandro','Smash Laterale'),
 ('Single',202,'Siwei','Ale','Altro'),
 ('Single',202,'Siwei','Ale','Altro'),
 ('Single',202,'Siwei','Leo','Speciale in Su'),
 ('Single',202,'Ale','Siwei','Altro'),
 ('Single',202,'Leo','Siwei','Altro');

insert into deaths values ('Single',202,'Ale','Spirit Train'),
 ('Single',202,'Ale','Spirit Train'),
 ('Single',202,'Siwei','Spirit Train'),
 ('Single',202,'Siwei','Spirit Train');


--Single-201
insert into kills values ('Single',201,'Sandro','Siwei','Smash Laterale'),
 ('Single',201,'Siwei','Sandro','Altro'),
 ('Single',201,'Leo','Siwei','Altro'),
 ('Single',201,'Ale','Leo','Smash Laterale'),
 ('Single',201,'Leo','Ale','Speciale Standard'),
 ('Single',201,'Leo','Sandro','Speciale Standard'),
 ('Single',201,'Sandro','Ale','Altro'),
 ('Single',201,'Leo','Siwei','Altro'),
 ('Single',201,'Siwei','Leo','Altro'),
 ('Single',201,'Ale','Sandro','Aereo Posteriore');

insert into deaths values ('Single',201,'Sandro','3D Land'),
 ('Single',201,'Siwei','Autodistruzione'),
 ('Single',201,'Ale','Mancato Recupero'),
 ('Single',201,'Siwei','3D Land'),
 ('Single',201,'Leo','3D Land'),
 ('Single',201,'Leo','Autodistruzione');


--Single-200
insert into kills values ('Single',200,'Siwei','Sandro','Speciale in Su'),
 ('Single',200,'Sandro','Siwei','Altro'),
 ('Single',200,'Siwei','Sandro','Altro'),
 ('Single',200,'Sandro','Ale','Speciale in Giù'),
 ('Single',200,'Siwei','Leo','Speciale Laterale'),
 ('Single',200,'Sandro','Siwei','Smash Finale'),
 ('Single',200,'Leo','Sandro','Smash Finale'),
 ('Single',200,'Leo','Siwei','Altro'),
 ('Single',200,'Ale','Leo','Smash in Giù'),
 ('Single',200,'Leo','Ale','Speciale Laterale'),
 ('Single',200,'Leo','Ale','Aereo in Su');

insert into deaths values ('Single',200,'Siwei','Autodistruzione'),
 ('Single',200,'Sandro','Autodistruzione'),
 ('Single',200,'Siwei','Mancato Recupero');


--Doubles-23
insert into kills values ('Doubles',23,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',23,'Siwei','Ale','Altro'),
 ('Doubles',23,'Leo','Sandro','Speciale Standard'),
 ('Doubles',23,'Siwei','Ale','Altro'),
 ('Doubles',23,'Ale','Siwei','Smash Laterale'),
 ('Doubles',23,'Leo','Sandro','Smash Finale'),
 ('Doubles',23,'Ale','Leo','Aereo Standard'),
 ('Doubles',23,'Leo','Sandro','Speciale Standard'),
 ('Doubles',23,'Ale','Siwei','Altro'),
 ('Doubles',23,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',23,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Doubles',23,'Leo','Fuoco Amico'),
 ('Doubles',23,'Ale','Autodistruzione'),
 ('Doubles',23,'Siwei','Gerudo Valley'),
 ('Doubles',23,'Leo','Fuoco Amico');


--Doubles-22
insert into kills values ('Doubles',22,'Sandro','Ale','Altro'),
 ('Doubles',22,'Leo','Siwei','Altro'),
 ('Doubles',22,'Leo','Sandro','Altro'),
 ('Doubles',22,'Siwei','Leo','Altro'),
 ('Doubles',22,'Ale','Siwei','Altro'),
 ('Doubles',22,'Leo','Sandro','Altro'),
 ('Doubles',22,'Sandro','Ale','Altro'),
 ('Doubles',22,'Sandro','Leo','Altro');

insert into deaths values ('Doubles',22,'Ale','Jungle Japes'),
 ('Doubles',22,'Siwei','Jungle Japes'),
 ('Doubles',22,'Sandro','Jungle Japes'),
 ('Doubles',22,'Siwei','Jungle Japes'),
 ('Doubles',22,'Leo','Jungle Japes'),
 ('Doubles',22,'Siwei','Jungle Japes'),
 ('Doubles',22,'Sandro','Jungle Japes'),
 ('Doubles',22,'Leo','Jungle Japes'),
 ('Doubles',22,'Ale','Jungle Japes'),
 ('Doubles',22,'Ale','Jungle Japes'),
 ('Doubles',22,'Leo','Jungle Japes');


--Doubles-21
insert into kills values ('Doubles',21,'Siwei','Sandro','Altro'),
 ('Doubles',21,'Leo','Siwei','Smash Laterale'),
 ('Doubles',21,'Leo','Ale','Altro'),
 ('Doubles',21,'Ale','Leo','Altro'),
 ('Doubles',21,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',21,'Leo','Ale','Smash Finale'),
 ('Doubles',21,'Leo','Sandro','Fuoco Amico'),
 ('Doubles',21,'Ale','Leo','Altro'),
 ('Doubles',21,'Leo','Siwei','Smash Laterale'),
 ('Doubles',21,'Leo','Siwei','Speciale Standard');

insert into deaths values ('Doubles',21,'Sandro','Mancato Recupero'),
 ('Doubles',21,'Ale','Mancato Recupero'),
 ('Doubles',21,'Leo','Mancato Recupero'),
 ('Doubles',21,'Ale','Fuoco Amico'),
 ('Doubles',21,'Sandro','Fuoco Amico'),
 ('Doubles',21,'Leo','Autodistruzione');


--Doubles-20
insert into kills values ('Doubles',20,'Siwei','Ale','Fuoco Amico'),
 ('Doubles',20,'Siwei','Sandro','In Corsa'),
 ('Doubles',20,'Sandro','Ale','Smash Laterale'),
 ('Doubles',20,'Siwei','Leo','Smash Laterale'),
 ('Doubles',20,'Ale','Sandro','Smash Finale'),
 ('Doubles',20,'Leo','Siwei','Smash Finale'),
 ('Doubles',20,'Siwei','Sandro','Smash Finale'),
 ('Doubles',20,'Leo','Siwei','Smash Laterale'),
 ('Doubles',20,'Leo','Ale','Smash Laterale'),
 ('Doubles',20,'Siwei','Leo','Altro'),
 ('Doubles',20,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',20,'Ale','Fuoco Amico');


--Doubles-19
insert into kills values ('Doubles',19,'Sandro','Ale','Smash Laterale'),
 ('Doubles',19,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',19,'Leo','Siwei','Altro'),
 ('Doubles',19,'Ale','Sandro','Smash Finale'),
 ('Doubles',19,'Sandro','Leo','Smash Laterale'),
 ('Doubles',19,'Ale','Sandro','Smash in Su'),
 ('Doubles',19,'Leo','Siwei','Smash Finale'),
 ('Doubles',19,'Sandro','Ale','Smash Laterale'),
 ('Doubles',19,'Sandro','Leo','Smash Finale'),
 ('Doubles',19,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Doubles',19,'Siwei','Fuoco Amico'),
 ('Doubles',19,'Siwei','Mancato Recupero');


--Doubles-18
insert into kills values ('Doubles',18,'Leo','Sandro','Altro'),
 ('Doubles',18,'Siwei','Ale','Altro'),
 ('Doubles',18,'Ale','Leo','Fuoco Amico'),
 ('Doubles',18,'Leo','Siwei','Smash in Su'),
 ('Doubles',18,'Sandro','Ale','Smash Laterale'),
 ('Doubles',18,'Leo','Sandro','Smash Finale'),
 ('Doubles',18,'Sandro','Leo','Smash Laterale'),
 ('Doubles',18,'Ale','Siwei','Speciale in Su'),
 ('Doubles',18,'Sandro','Leo','Smash Finale'),
 ('Doubles',18,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Doubles',18,'Sandro','Halberd'),
 ('Doubles',18,'Ale','Mancato Recupero'),
 ('Doubles',18,'Leo','Fuoco Amico');


--Doubles-17
insert into kills values ('Doubles',17,'Siwei','Leo','Altro'),
 ('Doubles',17,'Siwei','Ale','Smash Laterale'),
 ('Doubles',17,'Ale','Sandro','Smash Finale'),
 ('Doubles',17,'Sandro','Ale','Smash in Su'),
 ('Doubles',17,'Leo','Siwei','Smash Laterale'),
 ('Doubles',17,'Siwei','Leo','Smash Finale'),
 ('Doubles',17,'Sandro','Ale','Altro'),
 ('Doubles',17,'Leo','Sandro','Smash Laterale'),
 ('Doubles',17,'Sandro','Leo','Altro');

insert into deaths values ('Doubles',17,'Leo','Autodistruzione'),
 ('Doubles',17,'Ale','Mancato Recupero'),
 ('Doubles',17,'Leo','Mancato Recupero');


--Doubles-16
insert into kills values ('Doubles',16,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',16,'Leo','Sandro','Altro'),
 ('Doubles',16,'Ale','Sandro','Altro'),
 ('Doubles',16,'Siwei','Leo','In Corsa'),
 ('Doubles',16,'Sandro','Ale','Altro'),
 ('Doubles',16,'Leo','Siwei','Altro'),
 ('Doubles',16,'Sandro','Leo','Aereo in Giù'),
 ('Doubles',16,'Ale','Sandro','Aereo in Su'),
 ('Doubles',16,'Leo','Siwei','Smash Laterale'),
 ('Doubles',16,'Ale','Leo','Fuoco Amico'),
 ('Doubles',16,'Siwei','Ale','Smash Laterale');

insert into deaths values ('Doubles',16,'Sandro','Autodistruzione'),
 ('Doubles',16,'Sandro','Autodistruzione'),
 ('Doubles',16,'Siwei','Mancato Recupero'),
 ('Doubles',16,'Leo','Fuoco Amico');


--Doubles-15
insert into kills values ('Doubles',15,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',15,'Ale','Sandro','Fuoco Amico'),
 ('Doubles',15,'Sandro','Leo','Altro'),
 ('Doubles',15,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',15,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',15,'Sandro','Leo','Aereo in Su'),
 ('Doubles',15,'Sandro','Siwei','Smash Laterale'),
 ('Doubles',15,'Sandro','Siwei','Smash Laterale');

insert into deaths values ('Doubles',15,'Leo','Fuoco Amico'),
 ('Doubles',15,'Sandro','Fuoco Amico'),
 ('Doubles',15,'Leo','Mancato Recupero'),
 ('Doubles',15,'Ale','Fuoco Amico');


--Doubles-14
insert into kills values ('Doubles',14,'Ale','Leo','Altro'),
 ('Doubles',14,'Siwei','Sandro','Altro'),
 ('Doubles',14,'Leo','Siwei','Speciale in Su'),
 ('Doubles',14,'Sandro','Ale','In Corsa'),
 ('Doubles',14,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',14,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',14,'Ale','Siwei','Fuoco Amico'),
 ('Doubles',14,'Siwei','Leo','Smash Laterale'),
 ('Doubles',14,'Siwei','Sandro','Peculiare'); --PECULIAR: KING K. ROOL SCHIAFFO

insert into deaths values ('Doubles',14,'Leo','Mancato Recupero'),
 ('Doubles',14,'Sandro','Mancato Recupero'),
 ('Doubles',14,'Leo','Fuoco Amico'),
 ('Doubles',14,'Siwei','Fuoco Amico');


--Doubles-13
insert into kills values ('Doubles',13,'Sandro','Leo','Aereo in Su'),
 ('Doubles',13,'Leo','Sandro','Smash Laterale'),
 ('Doubles',13,'Ale','Siwei','Speciale in Su'),
 ('Doubles',13,'Siwei','Sandro','Smash Finale'),
 ('Doubles',13,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',13,'Ale','Leo','Speciale in Su'),
 ('Doubles',13,'Sandro','Siwei','Altro'),
 ('Doubles',13,'Ale','Siwei','Smash Finale'),
 ('Doubles',13,'Ale','Leo','Smash Finale');

insert into deaths values ('Doubles',13,'Ale','Fuoco Amico'),
 ('Doubles',13,'Siwei','Mancato Recupero');


--Doubles-12
insert into kills values ('Doubles',12,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',12,'Ale','Sandro','Smash Finale'),
 ('Doubles',12,'Sandro','Ale','Altro'),
 ('Doubles',12,'Siwei','Leo','Smash Laterale'),
 ('Doubles',12,'Sandro','Siwei','Smash Finale'),
 ('Doubles',12,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',12,'Ale','Sandro','Altro'),
 ('Doubles',12,'Ale','Leo','Speciale in Giù'),
 ('Doubles',12,'Leo','Ale','Smash in Su'),
 ('Doubles',12,'Siwei','Leo','Smash Laterale');

insert into deaths values ('Doubles',12,'Sandro','Mancato Recupero');


--Doubles-11
insert into kills values ('Doubles',11,'Leo','Sandro','Smash Laterale'),
 ('Doubles',11,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',11,'Sandro','Siwei','Smash Finale'),
 ('Doubles',11,'Siwei','Ale','Speciale in Giù'),
 ('Doubles',11,'Leo','Sandro','Smash Laterale'),
 ('Doubles',11,'Leo','Siwei','Fuoco Amico'),
 ('Doubles',11,'Siwei','Leo','Fuoco Amico'),
 ('Doubles',11,'Sandro','Siwei','Smash Finale'),
 ('Doubles',11,'Siwei','Ale','Altro'),
 ('Doubles',11,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Doubles',11,'Leo','Fuoco Amico'),
 ('Doubles',11,'Ale','Garden of Hope'),
 ('Doubles',11,'Siwei','Fuoco Amico'),
 ('Doubles',11,'Leo','Fuoco Amico'),
 ('Doubles',11,'Ale','Garden of Hope');


--Doubles-10
insert into kills values ('Doubles',10,'Leo','Ale','Speciale in Giù'),
 ('Doubles',10,'Ale','Leo','Speciale in Giù'),
 ('Doubles',10,'Sandro','Siwei','Altro'),
 ('Doubles',10,'Ale','Leo','Aereo Posteriore'),
 ('Doubles',10,'Sandro','Ale','Fuoco Amico'),
 ('Doubles',10,'Leo','Sandro','Smash Finale'),
 ('Doubles',10,'Leo','Sandro','Speciale Laterale'),
 ('Doubles',10,'Sandro','Leo','Altro'),
 ('Doubles',10,'Ale','Siwei','Aereo Posteriore'),
 ('Doubles',10,'Sandro','Siwei','Smash Finale');

insert into deaths values ('Doubles',10,'Ale','Fuoco Amico'),
 ('Doubles',10,'Leo','Autodistruzione');


--Doubles-9
insert into kills values ('Doubles',9,'Ale','Siwei','Meteora'),
 ('Doubles',9,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',9,'Ale','Sandro','Aereo in Giù'),
 ('Doubles',9,'Leo','Sandro','Altro'),
 ('Doubles',9,'Ale','Siwei','Smash Finale'),
 ('Doubles',9,'Sandro','Leo','Altro'),
 ('Doubles',9,'Siwei','Ale','Speciale Laterale'),
 ('Doubles',9,'Sandro','Ale','Altro'),
 ('Doubles',9,'Leo','Sandro','Smash Laterale'),
 ('Doubles',9,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Doubles',9,'Sandro','Mancato Recupero'),
 ('Doubles',9,'Leo','Mancato Recupero'),
 ('Doubles',9,'Ale','Mancato Recupero');


--Doubles-8
insert into kills values ('Doubles',8,'Ale','Leo','In Corsa'),
 ('Doubles',8,'Sandro','Siwei','Speciale Laterale'),
 ('Doubles',8,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',8,'Leo','Ale','Altro'),
 ('Doubles',8,'Leo','Siwei','Altro'),
 ('Doubles',8,'Sandro','Leo','Fuoco Amico'),
 ('Doubles',8,'Ale','Leo','Aereo Frontale'),
 ('Doubles',8,'Siwei','Sandro','Altro'),
 ('Doubles',8,'Sandro','Ale','Smash Laterale'),
 ('Doubles',8,'Sandro','Siwei','Smash Finale'),
 ('Doubles',8,'Ale','Sandro','Smash Finale');

insert into deaths values ('Doubles',8,'Ale','Autodistruzione'),
 ('Doubles',8,'Siwei','Autodistruzione'),
 ('Doubles',8,'Leo','Fuoco Amico'),
 ('Doubles',8,'Sandro','Mancato Recupero');


--Doubles-7
insert into kills values ('Doubles',7,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',7,'Sandro','Leo','Smash Laterale'),
 ('Doubles',7,'Leo','Ale','Fuoco Amico'),
 ('Doubles',7,'Ale','Sandro','Aereo Frontale'),
 ('Doubles',7,'Siwei','Leo','Smash Finale'),
 ('Doubles',7,'Leo','Siwei','Speciale Standard'),
 ('Doubles',7,'Sandro','Ale','Speciale Laterale'),
 ('Doubles',7,'Ale','Siwei','Smash Finale'),
 ('Doubles',7,'Ale','Sandro','Aereo Posteriore'),
 ('Doubles',7,'Siwei','Ale','Smash Laterale'),
 ('Doubles',7,'Leo','Siwei','Speciale Standard');

insert into deaths values ('Doubles',7,'Siwei','Fuoco Amico'),
 ('Doubles',7,'Ale','Fuoco Amico');


--Doubles-6
insert into kills values ('Doubles',6,'Leo','Ale','Smash Laterale'),
 ('Doubles',6,'Leo','Sandro','Altro'),
 ('Doubles',6,'Sandro','Leo','Smash Laterale'),
 ('Doubles',6,'Sandro','Siwei','Smash Finale'),
 ('Doubles',6,'Leo','Sandro','Speciale Standard'),
 ('Doubles',6,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Doubles',6,'Sandro','Leo','Aereo in Su'),
 ('Doubles',6,'Siwei','Sandro','Altro'),
 ('Doubles',6,'Ale','Siwei','Speciale Laterale'),
 ('Doubles',6,'Ale','Siwei','Altro'),
 ('Doubles',6,'Leo','Ale','Meteora');

insert into deaths values ('Doubles',6,'Sandro','Autodistruzione'),
 ('Doubles',6,'Sandro','Autodistruzione'),
 ('Doubles',6,'Siwei','Mancato Recupero');


--Doubles-5
insert into kills values ('Doubles',5,'Ale','Sandro','Smash in Giù'),
 ('Doubles',5,'Siwei','Leo','Speciale Standard'),
 ('Doubles',5,'Sandro','Ale','Aereo in Su'),
 ('Doubles',5,'Leo','Siwei','Smash Laterale'),
 ('Doubles',5,'Sandro','Ale','Smash Finale'),
 ('Doubles',5,'Ale','Sandro','Altro'),
 ('Doubles',5,'Sandro','Leo','Smash Laterale'),
 ('Doubles',5,'Ale','Sandro','Smash in Su'),
 ('Doubles',5,'Leo','Siwei','Peculiare'), --PECULIAR: CLOUD LIMIT
 ('Doubles',5,'Leo','Siwei','Peculiare'); --PECULIAR: CLOUD LIMIT

insert into deaths values ('Doubles',5,'Sandro','Figure-8 Circuit');


--Doubles-4
insert into kills values ('Doubles',4,'Leo','Siwei','Smash Laterale'),
 ('Doubles',4,'Sandro','Ale','Smash Laterale'),
 ('Doubles',4,'Siwei','Leo','Smash Laterale'),
 ('Doubles',4,'Leo','Sandro','Altro'),
 ('Doubles',4,'Sandro','Leo','Altro'),
 ('Doubles',4,'Leo','Siwei','Smash Finale'),
 ('Doubles',4,'Sandro','Ale','Smash Finale'),
 ('Doubles',4,'Siwei','Leo','Smash Finale'),
 ('Doubles',4,'Sandro','Ale','Smash in Su');

insert into deaths values ('Doubles',4,'Sandro','Autodistruzione'),
 ('Doubles',4,'Leo','New Pork City'),
 ('Doubles',4,'Sandro','New Pork City');


--Doubles-3
insert into kills values ('Doubles',3,'Sandro','Siwei','Fuoco Amico'),
 ('Doubles',3,'Leo','Sandro','Smash Laterale'),
 ('Doubles',3,'Sandro','Ale','Smash Laterale'),
 ('Doubles',3,'Leo','Siwei','Aereo Posteriore'),
 ('Doubles',3,'Leo','Siwei','Smash Laterale'),
 ('Doubles',3,'Sandro','Leo','Smash Laterale'),
 ('Doubles',3,'Ale','Sandro','Altro'),
 ('Doubles',3,'Sandro','Ale','Speciale in Giù'),
 ('Doubles',3,'Leo','Sandro','Altro');

insert into deaths values ('Doubles',3,'Siwei','Fuoco Amico'),
 ('Doubles',3,'Sandro','Mute City SNES'),
 ('Doubles',3,'Sandro','Autodistruzione');


--Doubles-2
insert into kills values ('Doubles',2,'Sandro','Ale','Aereo in Su'),
 ('Doubles',2,'Leo','Sandro','Altro'),
 ('Doubles',2,'Sandro','Leo','Smash in Su'),
 ('Doubles',2,'Leo','Sandro','Speciale in Su'),
 ('Doubles',2,'Sandro','Ale','Smash Finale'),
 ('Doubles',2,'Leo','Siwei','Speciale in Su'),
 ('Doubles',2,'Siwei','Leo','Altro'),
 ('Doubles',2,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',2,'Leo','Siwei','Smash Laterale'),
 ('Doubles',2,'Leo','Siwei','Altro');

insert into deaths values ('Doubles',2,'Sandro','Mancato Recupero'),
 ('Doubles',2,'Leo','Mancato Recupero'),
 ('Doubles',2,'Siwei','Autodistruzione');


--Doubles-1
insert into kills values ('Doubles',1,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',1,'Siwei','Ale','Altro'),
 ('Doubles',1,'Sandro','Leo','Smash Laterale'),
 ('Doubles',1,'Leo','Siwei','Smash Laterale'),
 ('Doubles',1,'Ale','Sandro','Speciale in Giù'),
 ('Doubles',1,'Sandro','Leo','Speciale Laterale'),
 ('Doubles',1,'Ale','Sandro','Smash Finale'),
 ('Doubles',1,'Ale','Siwei','Smash in Giù'),
 ('Doubles',1,'Siwei','Ale','Altro'),
 ('Doubles',1,'Ale','Siwei','Altro');

insert into deaths values ('Doubles',1,'Sandro','Autodistruzione'),
 ('Doubles',1,'Siwei','Autodistruzione');


--Single-199
insert into kills values ('Single',199,'Siwei','Ale','Speciale Laterale'),
 ('Single',199,'Ale','Siwei','Smash in Giù'),
 ('Single',199,'Ale','Sandro','Smash in Giù'),
 ('Single',199,'Siwei','Sandro','Speciale Laterale'),
 ('Single',199,'Sandro','Siwei','Speciale Laterale'),
 ('Single',199,'Ale','Siwei','Altro'),
 ('Single',199,'Ale','Leo','Speciale in Giù'),
 ('Single',199,'Leo','Ale','Speciale in Su'),
 ('Single',199,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',199,'Sandro','Autodistruzione'),
 ('Single',199,'Siwei','Autodistruzione');


--Single-198
insert into kills values ('Single',198,'Ale','Sandro','Smash Laterale'),
 ('Single',198,'Sandro','Siwei','Smash Laterale'),
 ('Single',198,'Siwei','Ale','Speciale Laterale'),
 ('Single',198,'Siwei','Sandro','Smash Finale'),
 ('Single',198,'Ale','Leo','Aereo Frontale'),
 ('Single',198,'Sandro','Siwei','Smash Finale'),
 ('Single',198,'Siwei','Leo','Speciale Laterale'),
 ('Single',198,'Siwei','Ale','Speciale in Su'),
 ('Single',198,'Leo','Sandro','Smash Laterale'),
 ('Single',198,'Siwei','Leo','Speciale in Su'),
 ('Single',198,'Ale','Siwei','Smash Laterale');


--Single-197
insert into kills values ('Single',197,'Sandro','Siwei','Altro'),
 ('Single',197,'Sandro','Siwei','Altro'),
 ('Single',197,'Ale','Sandro','Smash in Giù'),
 ('Single',197,'Siwei','Ale','Altro'),
 ('Single',197,'Sandro','Siwei','Altro'),
 ('Single',197,'Ale','Leo','Smash in Giù'),
 ('Single',197,'Sandro','Leo','Smash in Giù'),
 ('Single',197,'Ale','Sandro','Speciale in Su'),
 ('Single',197,'Leo','Ale','Smash Finale'),
 ('Single',197,'Ale','Sandro','Aereo Standard'),
 ('Single',197,'Ale','Leo','Altro');

insert into deaths values ('Single',197,'Siwei','Mancato Recupero'),
 ('Single',197,'Siwei','Mancato Recupero'),
 ('Single',197,'Ale','Autodistruzione'),
 ('Single',197,'Siwei','Mancato Recupero');


--Single-196
insert into kills values ('Single',196,'Sandro','Leo','Speciale Laterale'),
 ('Single',196,'Leo','Ale','Altro'),
 ('Single',196,'Ale','Siwei','Speciale Laterale'),
 ('Single',196,'Ale','Leo','Altro'),
 ('Single',196,'Ale','Siwei','Aereo Posteriore'),
 ('Single',196,'Siwei','Ale','Speciale in Su'),
 ('Single',196,'Ale','Leo','Smash Finale'),
 ('Single',196,'Ale','Siwei','Speciale Laterale');

insert into deaths values ('Single',196,'Sandro','Autodistruzione'),
 ('Single',196,'Sandro','Autodistruzione'),
 ('Single',196,'Sandro','Autodistruzione'),
 ('Single',196,'Ale','Flat Zone X'),
 ('Single',196,'Leo','Autodistruzione');


--Single-195
insert into kills values ('Single',195,'Leo','Sandro','Altro'),
 ('Single',195,'Leo','Ale','Altro'),
 ('Single',195,'Leo','Siwei','Smash Laterale'),
 ('Single',195,'Siwei','Sandro','Smash Finale'),
 ('Single',195,'Ale','Leo','Speciale in Su'),
 ('Single',195,'Leo','Siwei','Smash Finale'),
 ('Single',195,'Ale','Leo','Altro'),
 ('Single',195,'Leo','Sandro','Smash Laterale'),
 ('Single',195,'Leo','Ale','Altro'),
 ('Single',195,'Siwei','Ale','Speciale Standard'),
 ('Single',195,'Leo','Siwei','Speciale in Giù');

insert into deaths values ('Single',195,'Sandro','Mancato Recupero'),
 ('Single',195,'Ale','Mancato Recupero'),
 ('Single',195,'Leo','Mancato Recupero');


--Single-194
insert into kills values ('Single',194,'Sandro','Siwei','Smash Laterale'),
 ('Single',194,'Ale','Leo','Speciale in Su'),
 ('Single',194,'Siwei','Sandro','Altro'),
 ('Single',194,'Sandro','Siwei','Smash Laterale'),
 ('Single',194,'Siwei','Ale','Smash Laterale'),
 ('Single',194,'Sandro','Leo','Smash Finale'),
 ('Single',194,'Sandro','Ale','Speciale in Giù'),
 ('Single',194,'Siwei','Sandro','Speciale Laterale'),
 ('Single',194,'Leo','Sandro','Smash Finale'),
 ('Single',194,'Ale','Siwei','Smash Finale'),
 ('Single',194,'Ale','Leo','Speciale in Su');

insert into deaths values ('Single',194,'Sandro','Autodistruzione');


--Single-193
insert into kills values ('Single',193,'Ale','Leo','Smash in Giù'),
 ('Single',193,'Ale','Siwei','Aereo Posteriore'),
 ('Single',193,'Ale','Sandro','Aereo Posteriore'),
 ('Single',193,'Leo','Ale','Speciale Laterale'),
 ('Single',193,'Leo','Ale','Speciale Laterale'),
 ('Single',193,'Siwei','Sandro','Speciale Laterale'),
 ('Single',193,'Leo','Siwei','Speciale Laterale'),
 ('Single',193,'Siwei','Leo','Speciale Laterale'),
 ('Single',193,'Ale','Sandro','Smash Finale'),
 ('Single',193,'Siwei','Ale','Speciale in Su'),
 ('Single',193,'Siwei','Leo','Speciale Laterale');


--Single-192
insert into kills values ('Single',192,'Leo','Siwei','Altro'),
 ('Single',192,'Siwei','Sandro','Speciale Standard'),
 ('Single',192,'Ale','Leo','Speciale in Giù'),
 ('Single',192,'Siwei','Sandro','Smash Finale'),
 ('Single',192,'Leo','Ale','Smash Finale'),
 ('Single',192,'Sandro','Siwei','Speciale Standard'),
 ('Single',192,'Leo','Siwei','Altro'),
 ('Single',192,'Siwei','Leo','Speciale Laterale'),
 ('Single',192,'Ale','Sandro','Smash Finale'),
 ('Single',192,'Ale','Leo','Aereo Standard');

insert into deaths values ('Single',192,'Siwei','Autodistruzione'),
 ('Single',192,'Siwei','Autodistruzione');


--Single-191
insert into kills values ('Single',191,'Leo','Siwei','Smash Laterale'),
 ('Single',191,'Sandro','Leo','Altro'),
 ('Single',191,'Sandro','Leo','Peculiare'), --PECULIAR: BOWSER JR HAMMER
 ('Single',191,'Siwei','Sandro','Smash Finale'),
 ('Single',191,'Siwei','Ale','Speciale Laterale'),
 ('Single',191,'Leo','Sandro','Smash Finale'),
 ('Single',191,'Leo','Siwei','Smash Finale'),
 ('Single',191,'Ale','Leo','Aereo Posteriore'),
 ('Single',191,'Siwei','Sandro','Altro'),
 ('Single',191,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Single',191,'Leo','Paper Mario'),
 ('Single',191,'Sandro','Autodistruzione');


--Single-190
insert into kills values ('Single',190,'Ale','Sandro','Smash Laterale'),
 ('Single',190,'Sandro','Ale','Speciale Laterale'),
 ('Single',190,'Leo','Siwei','Speciale Standard'),
 ('Single',190,'Siwei','Leo','Aereo Frontale'),
 ('Single',190,'Siwei','Ale','Smash Laterale'),
 ('Single',190,'Sandro','Siwei','Speciale Laterale'),
 ('Single',190,'Ale','Leo','Smash Laterale'),
 ('Single',190,'Siwei','Sandro','Altro'),
 ('Single',190,'Leo','Siwei','Altro'),
 ('Single',190,'Sandro','Leo','Altro'),
 ('Single',190,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',190,'Sandro','Hyrule Castle'),
 ('Single',190,'Siwei','Autodistruzione'),
 ('Single',190,'Leo','Mancato Recupero');


--Single-189
insert into kills values ('Single',189,'Ale','Siwei','Altro'),
 ('Single',189,'Leo','Ale','Altro'),
 ('Single',189,'Sandro','Leo','Smash Laterale'),
 ('Single',189,'Ale','Sandro','Smash Laterale'),
 ('Single',189,'Ale','Siwei','Altro'),
 ('Single',189,'Sandro','Leo','Smash Finale'),
 ('Single',189,'Sandro','Siwei','Altro'),
 ('Single',189,'Leo','Sandro','Altro'),
 ('Single',189,'Leo','Ale','Altro'),
 ('Single',189,'Ale','Sandro','Aereo Posteriore'),
 ('Single',189,'Leo','Ale','Altro');

insert into deaths values ('Single',189,'Siwei','Mancato Recupero'),
 ('Single',189,'Ale','Mancato Recupero'),
 ('Single',189,'Siwei','Autodistruzione'),
 ('Single',189,'Siwei','Autodistruzione'),
 ('Single',189,'Sandro','Mancato Recupero'),
 ('Single',189,'Ale','Mancato Recupero');


--Single-188
insert into kills values ('Single',188,'Ale','Siwei','Smash Laterale'),
 ('Single',188,'Siwei','Leo','Smash Finale'),
 ('Single',188,'Leo','Sandro','Smash Laterale'),
 ('Single',188,'Ale','Siwei','Altro'),
 ('Single',188,'Siwei','Ale','In Corsa'),
 ('Single',188,'Siwei','Leo','Altro'),
 ('Single',188,'Sandro','Ale','Altro'),
 ('Single',188,'Ale','Sandro','Aereo Standard'),
 ('Single',188,'Siwei','Ale','Speciale in Su'),
 ('Single',188,'Leo','Siwei','Altro'),
 ('Single',188,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',188,'Siwei','Mancato Recupero'),
 ('Single',188,'Leo','Autodistruzione'),
 ('Single',188,'Ale','Mancato Recupero'),
 ('Single',188,'Siwei','Autodistruzione');


--Single-187
insert into kills values ('Single',187,'Siwei','Sandro','Altro'),
 ('Single',187,'Sandro','Ale','Speciale Laterale'),
 ('Single',187,'Sandro','Siwei','Speciale Laterale'),
 ('Single',187,'Ale','Leo','Smash Laterale'),
 ('Single',187,'Siwei','Ale','Smash Finale'),
 ('Single',187,'Leo','Siwei','Altro'),
 ('Single',187,'Ale','Sandro','Smash Laterale'),
 ('Single',187,'Ale','Leo','Smash Finale'),
 ('Single',187,'Leo','Siwei','Altro'),
 ('Single',187,'Sandro','Ale','Smash in Su'),
 ('Single',187,'Sandro','Leo','Speciale Laterale');

insert into deaths values ('Single',187,'Sandro','Autodistruzione'),
 ('Single',187,'Siwei','Autodistruzione'),
 ('Single',187,'Siwei','Mancato Recupero');


--Single-186
insert into kills values ('Single',186,'Leo','Sandro','Altro'),
 ('Single',186,'Ale','Leo','Altro'),
 ('Single',186,'Ale','Sandro','Altro'),
 ('Single',186,'Sandro','Ale','Speciale Standard'),
 ('Single',186,'Ale','Siwei','Altro'),
 ('Single',186,'Leo','Sandro','Speciale Standard'),
 ('Single',186,'Ale','Siwei','Altro'),
 ('Single',186,'Siwei','Ale','Speciale in Su'),
 ('Single',186,'Leo','Siwei','Smash Finale'),
 ('Single',186,'Leo','Ale','Altro');

insert into deaths values ('Single',186,'Sandro','Mancato Recupero'),
 ('Single',186,'Leo','Mancato Recupero'),
 ('Single',186,'Sandro','Mancato Recupero'),
 ('Single',186,'Siwei','Mancato Recupero'),
 ('Single',186,'Siwei','Autodistruzione'),
 ('Single',186,'Ale','Autodistruzione');


--Single-185
insert into kills values ('Single',185,'Siwei','Sandro','Speciale Laterale'),
 ('Single',185,'Sandro','Leo','Speciale Laterale'),
 ('Single',185,'Sandro','Ale','Speciale Laterale'),
 ('Single',185,'Leo','Sandro','Smash Finale'),
 ('Single',185,'Leo','Siwei','Smash Finale'),
 ('Single',185,'Ale','Leo','Aereo Posteriore'),
 ('Single',185,'Siwei','Leo','Smash Finale'),
 ('Single',185,'Ale','Siwei','Altro'),
 ('Single',185,'Siwei','Ale','Speciale Laterale'),
 ('Single',185,'Siwei','Sandro','In Corsa'),
 ('Single',185,'Ale','Siwei','Altro');

insert into deaths values ('Single',185,'Siwei','Autodistruzione'),
 ('Single',185,'Siwei','Big Blue');


--Single-184
insert into kills values ('Single',184,'Sandro','Ale','Speciale Laterale'),
 ('Single',184,'Ale','Sandro','Altro'),
 ('Single',184,'Ale','Siwei','Smash in Giù'),
 ('Single',184,'Sandro','Leo','Speciale Laterale'),
 ('Single',184,'Ale','Sandro','Speciale Laterale'),
 ('Single',184,'Siwei','Leo','Speciale Standard'),
 ('Single',184,'Sandro','Siwei','Smash Finale'),
 ('Single',184,'Siwei','Ale','Speciale Standard'),
 ('Single',184,'Ale','Leo','Smash Finale'),
 ('Single',184,'Sandro','Siwei','Speciale Laterale'),
 ('Single',184,'Ale','Sandro','Aereo in Su');

insert into deaths values ('Single',184,'Sandro','Autodistruzione');


--Single-183
insert into kills values ('Single',183,'Leo','Siwei','Speciale in Giù'),
 ('Single',183,'Ale','Leo','Speciale in Giù'),
 ('Single',183,'Sandro','Ale','Peculiare'), --PECULIAR: GRENINJA UP SPECIAL
 ('Single',183,'Leo','Siwei','Altro'),
 ('Single',183,'Siwei','Sandro','Smash Finale'),
 ('Single',183,'Leo','Ale','Smash Finale'),
 ('Single',183,'Leo','Sandro','Smash in Su'),
 ('Single',183,'Ale','Leo','Speciale in Giù'),
 ('Single',183,'Ale','Siwei','Altro'),
 ('Single',183,'Ale','Sandro','Smash Finale'),
 ('Single',183,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',183,'Ale','Autodistruzione'),
 ('Single',183,'Siwei','Wily Castle'),
 ('Single',183,'Siwei','Mancato Recupero');


--Single-182
insert into kills values ('Single',182,'Ale','Sandro','Aereo in Su'),
 ('Single',182,'Siwei','Ale','Speciale Standard'),
 ('Single',182,'Sandro','Leo','Smash in Su'),
 ('Single',182,'Leo','Siwei','Speciale Standard'),
 ('Single',182,'Ale','Leo','Smash Finale'),
 ('Single',182,'Siwei','Sandro','Smash Laterale'),
 ('Single',182,'Leo','Siwei','Speciale Standard'),
 ('Single',182,'Siwei','Sandro','Speciale Standard'),
 ('Single',182,'Leo','Ale','Speciale in Giù'),
 ('Single',182,'Siwei','Leo','Speciale Standard'),
 ('Single',182,'Siwei','Ale','Speciale Standard');


--Single-181
insert into kills values ('Single',181,'Leo','Sandro','Altro'),
 ('Single',181,'Ale','Siwei','Altro'),
 ('Single',181,'Sandro','Leo','Altro'),
 ('Single',181,'Siwei','Ale','Smash Finale'),
 ('Single',181,'Ale','Siwei','Altro'),
 ('Single',181,'Siwei','Leo','Smash Finale'),
 ('Single',181,'Sandro','Siwei','Smash Laterale'),
 ('Single',181,'Leo','Sandro','Altro'),
 ('Single',181,'Sandro','Ale','Smash Laterale'),
 ('Single',181,'Sandro','Leo','Smash Finale'),
 ('Single',181,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',181,'Sandro','Mancato Recupero'),
 ('Single',181,'Siwei','Mancato Recupero'),
 ('Single',181,'Leo','Mancato Recupero'),
 ('Single',181,'Siwei','Mancato Recupero');


--Single-180
insert into kills values ('Single',180,'Ale','Sandro','Speciale Laterale'),
 ('Single',180,'Leo','Ale','Aereo Posteriore'),
 ('Single',180,'Leo','Siwei','Speciale in Giù'),
 ('Single',180,'Leo','Sandro','Smash Laterale'),
 ('Single',180,'Ale','Leo','Speciale Laterale'),
 ('Single',180,'Sandro','Ale','Smash Laterale'),
 ('Single',180,'Leo','Siwei','Smash Finale'),
 ('Single',180,'Ale','Leo','Altro'),
 ('Single',180,'Sandro','Ale','Speciale Standard'),
 ('Single',180,'Leo','Sandro','Smash in Giù');

insert into deaths values ('Single',180,'Siwei','Autodistruzione');


--Single-179
insert into kills values ('Single',179,'Sandro','Leo','Smash in Su'),
 ('Single',179,'Siwei','Ale','In Corsa'),
 ('Single',179,'Sandro','Siwei','Smash Laterale'),
 ('Single',179,'Leo','Sandro','Speciale in Su'),
 ('Single',179,'Sandro','Leo','Smash Finale'),
 ('Single',179,'Leo','Sandro','Speciale Standard'),
 ('Single',179,'Leo','Siwei','Speciale Standard'),
 ('Single',179,'Siwei','Ale','In Corsa'),
 ('Single',179,'Ale','Leo','Smash Laterale'),
 ('Single',179,'Ale','Siwei','Speciale Laterale'),
 ('Single',179,'Sandro','Ale','Smash Finale');


--Single-178
insert into kills values ('Single',178,'Siwei','Ale','Speciale in Su'),
 ('Single',178,'Leo','Ale','Smash Laterale'),
 ('Single',178,'Siwei','Leo','Speciale in Su'),
 ('Single',178,'Leo','Siwei','Smash Laterale'),
 ('Single',178,'Leo','Sandro','Speciale Standard'),
 ('Single',178,'Siwei','Leo','Speciale in Su'),
 ('Single',178,'Sandro','Siwei','Altro'),
 ('Single',178,'Ale','Sandro','Aereo Posteriore'),
 ('Single',178,'Siwei','Ale','Speciale in Su'),
 ('Single',178,'Sandro','Leo','Aereo in Giù'),
 ('Single',178,'Sandro','Siwei','Peculiare'); --PECULIAR: MR. GAME & WATCH CHAIR

insert into deaths values ('Single',178,'Siwei','Autodistruzione');


--Single-177
insert into kills values ('Single',177,'Sandro','Ale','Altro'),
 ('Single',177,'Sandro','Siwei','Smash Laterale'),
 ('Single',177,'Sandro','Leo','Smash Laterale'),
 ('Single',177,'Siwei','Sandro','Speciale in Su'),
 ('Single',177,'Sandro','Ale','Smash Laterale'),
 ('Single',177,'Sandro','Leo','Smash Finale'),
 ('Single',177,'Leo','Siwei','Smash Laterale'),
 ('Single',177,'Sandro','Ale','Smash Laterale'),
 ('Single',177,'Leo','Sandro','Altro'),
 ('Single',177,'Leo','Siwei','Smash Finale'),
 ('Single',177,'Sandro','Leo','Speciale in Giù');

insert into deaths values ('Single',177,'Ale','Autodistruzione');


--Single-176
insert into kills values ('Single',176,'Leo','Siwei','Smash Laterale'),
 ('Single',176,'Ale','Leo','Grab'),
 ('Single',176,'Leo','Sandro','Altro'),
 ('Single',176,'Sandro','Ale','Aereo in Giù'),
 ('Single',176,'Ale','Sandro','Aereo Posteriore'),
 ('Single',176,'Leo','Siwei','Speciale in Su'),
 ('Single',176,'Sandro','Leo','Speciale in Giù'),
 ('Single',176,'Ale','Siwei','Speciale in Giù'),
 ('Single',176,'Ale','Sandro','Speciale in Giù'),
 ('Single',176,'Ale','Leo','Aereo Frontale');

insert into deaths values ('Single',176,'Sandro','Golden Plains');


--Single-175
insert into kills values ('Single',175,'Sandro','Leo','Smash Laterale'),
 ('Single',175,'Ale','Sandro','Smash in Giù'),
 ('Single',175,'Sandro','Siwei','Altro'),
 ('Single',175,'Sandro','Ale','Smash Finale'),
 ('Single',175,'Siwei','Sandro','Speciale in Su'),
 ('Single',175,'Leo','Siwei','Smash Laterale'),
 ('Single',175,'Siwei','Leo','Speciale Standard'),
 ('Single',175,'Sandro','Ale','Smash Finale'),
 ('Single',175,'Leo','Sandro','Smash Finale'),
 ('Single',175,'Ale','Siwei','Smash in Giù'),
 ('Single',175,'Leo','Ale','Aereo in Su');

insert into deaths values ('Single',175,'Siwei','Autodistruzione');


--Single-174
insert into kills values ('Single',174,'Ale','Sandro','Smash Laterale'),
 ('Single',174,'Sandro','Ale','Smash Laterale'),
 ('Single',174,'Ale','Siwei','Smash in Giù'),
 ('Single',174,'Sandro','Siwei','Smash Finale'),
 ('Single',174,'Sandro','Leo','Smash Finale'),
 ('Single',174,'Leo','Sandro','Smash Laterale'),
 ('Single',174,'Sandro','Leo','Altro'),
 ('Single',174,'Leo','Sandro','Altro'),
 ('Single',174,'Siwei','Ale','Smash Finale'),
 ('Single',174,'Ale','Siwei','Smash Finale'),
 ('Single',174,'Ale','Leo','Aereo Posteriore');

insert into deaths values ('Single',174,'Leo','Jungle Japes'),
 ('Single',174,'Sandro','Jungle Japes');


--Single-173
insert into kills values ('Single',173,'Leo','Sandro','Speciale in Su'),
 ('Single',173,'Siwei','Ale','Speciale in Su'),
 ('Single',173,'Siwei','Sandro','Altro'),
 ('Single',173,'Sandro','Siwei','Altro'),
 ('Single',173,'Ale','Leo','Smash Finale'),
 ('Single',173,'Sandro','Siwei','Smash in Su'),
 ('Single',173,'Siwei','Leo','Smash Finale'),
 ('Single',173,'Siwei','Ale','Altro'),
 ('Single',173,'Sandro','Siwei','Smash in Su'),
 ('Single',173,'Sandro','Leo','Smash Finale'),
 ('Single',173,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',173,'Sandro','Norfair'),
 ('Single',173,'Siwei','Autodistruzione'),
 ('Single',173,'Ale','Norfair');


--Single-172
insert into kills values ('Single',172,'Leo','Siwei','Altro'),
 ('Single',172,'Siwei','Leo','Altro'),
 ('Single',172,'Ale','Siwei','Meteora'),
 ('Single',172,'Leo','Sandro','Smash Finale'),
 ('Single',172,'Sandro','Ale','Smash Finale'),
 ('Single',172,'Sandro','Siwei','Smash Finale'),
 ('Single',172,'Sandro','Leo','Aereo Posteriore'),
 ('Single',172,'Ale','Leo','Altro'),
 ('Single',172,'Ale','Sandro','Aereo Frontale'),
 ('Single',172,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',172,'Siwei','Autodistruzione'),
 ('Single',172,'Leo','Mancato Recupero'),
 ('Single',172,'Leo','Mancato Recupero');


--Single-171
insert into kills values ('Single',171,'Ale','Sandro','Speciale Laterale'),
 ('Single',171,'Ale','Siwei','Speciale Laterale'),
 ('Single',171,'Sandro','Ale','Smash Finale'),
 ('Single',171,'Siwei','Leo','Speciale in Su'),
 ('Single',171,'Leo','Ale','Smash Finale'),
 ('Single',171,'Ale','Sandro','Speciale Laterale'),
 ('Single',171,'Sandro','Siwei','Smash Laterale'),
 ('Single',171,'Sandro','Siwei','Smash Finale'),
 ('Single',171,'Leo','Sandro','Speciale in Su'),
 ('Single',171,'Leo','Ale','Smash Laterale');


--Single-170
insert into kills values ('Single',170,'Leo','Sandro','Smash in Su'),
 ('Single',170,'Ale','Siwei','Altro'),
 ('Single',170,'Sandro','Ale','Smash Finale'),
 ('Single',170,'Ale','Siwei','Altro'),
 ('Single',170,'Ale','Leo','Smash Finale'),
 ('Single',170,'Siwei','Sandro','Smash Finale'),
 ('Single',170,'Leo','Ale','Speciale Standard'),
 ('Single',170,'Ale','Siwei','Smash in Giù'),
 ('Single',170,'Sandro','Leo','Altro'),
 ('Single',170,'Leo','Ale','Smash Laterale'),
 ('Single',170,'Sandro','Leo','Speciale in Su');

insert into deaths values ('Single',170,'Siwei','Mancato Recupero'),
 ('Single',170,'Siwei','Mancato Recupero'),
 ('Single',170,'Leo','Mancato Recupero');


--Single-169
insert into kills values ('Single',169,'Siwei','Sandro','Altro'),
 ('Single',169,'Siwei','Leo','Speciale in Su'),
 ('Single',169,'Siwei','Ale','Speciale Standard'),
 ('Single',169,'Leo','Siwei','Smash Finale'),
 ('Single',169,'Sandro','Ale','Speciale in Giù'),
 ('Single',169,'Leo','Sandro','Speciale in Su'),
 ('Single',169,'Ale','Leo','Smash Finale'),
 ('Single',169,'Siwei','Sandro','Smash Finale'),
 ('Single',169,'Siwei','Ale','Speciale in Su'),
 ('Single',169,'Leo','Siwei','Altro'),
 ('Single',169,'Leo','Siwei','Altro');

insert into deaths values ('Single',169,'Sandro','Autodistruzione'),
 ('Single',169,'Leo','Autodistruzione'),
 ('Single',169,'Siwei','3D Land'),
 ('Single',169,'Siwei','Mancato Recupero');


--Single-168
insert into kills values ('Single',168,'Ale','Sandro','Altro'),
 ('Single',168,'Sandro','Leo','Speciale in Giù'),
 ('Single',168,'Leo','Ale','Speciale Laterale'),
 ('Single',168,'Sandro','Siwei','Speciale Laterale'),
 ('Single',168,'Leo','Sandro','Speciale in Su'),
 ('Single',168,'Sandro','Ale','Smash Finale'),
 ('Single',168,'Leo','Sandro','Smash Finale'),
 ('Single',168,'Leo','Siwei','Smash Finale'),
 ('Single',168,'Ale','Leo','Altro'),
 ('Single',168,'Siwei','Ale','Altro'),
 ('Single',168,'Leo','Siwei','Altro');

insert into deaths values ('Single',168,'Sandro','Mancato Recupero'),
 ('Single',168,'Leo','WarioWare Inc.'),
 ('Single',168,'Ale','WarioWare Inc.'),
 ('Single',168,'Siwei','Autodistruzione');


--Single-167
insert into kills values ('Single',167,'Sandro','Siwei','Altro'),
 ('Single',167,'Siwei','Ale','Altro'),
 ('Single',167,'Sandro','Leo','Altro'),
 ('Single',167,'Ale','Sandro','Aereo Frontale'),
 ('Single',167,'Sandro','Siwei','Altro'),
 ('Single',167,'Ale','Sandro','Altro'),
 ('Single',167,'Sandro','Ale','Speciale Laterale'),
 ('Single',167,'Ale','Leo','Aereo Posteriore'),
 ('Single',167,'Ale','Sandro','Smash Finale'),
 ('Single',167,'Ale','Leo','Smash in Giù');

insert into deaths values ('Single',167,'Siwei','Mancato Recupero'),
 ('Single',167,'Ale','Mancato Recupero'),
 ('Single',167,'Leo','Autodistruzione'),
 ('Single',167,'Siwei','Autodistruzione'),
 ('Single',167,'Siwei','Autodistruzione'),
 ('Single',167,'Sandro','Mancato Recupero');


--Single-166
insert into kills values ('Single',166,'Ale','Leo','Altro'),
 ('Single',166,'Leo','Siwei','Altro'),
 ('Single',166,'Ale','Sandro','Altro'),
 ('Single',166,'Ale','Siwei','Altro'),
 ('Single',166,'Leo','Ale','Altro'),
 ('Single',166,'Leo','Ale','Altro'),
 ('Single',166,'Siwei','Sandro','Smash Finale'),
 ('Single',166,'Ale','Leo','Smash Finale'),
 ('Single',166,'Leo','Siwei','Smash Finale'),
 ('Single',166,'Leo','Sandro','Altro'),
 ('Single',166,'Leo','Ale','Speciale in Giù');

insert into deaths values ('Single',166,'Leo','Mancato Recupero'),
 ('Single',166,'Siwei','Mancato Recupero'),
 ('Single',166,'Sandro','Autodistruzione'),
 ('Single',166,'Siwei','Mancato Recupero'),
 ('Single',166,'Ale','Mancato Recupero'),
 ('Single',166,'Sandro','Autodistruzione');


--Single-165
insert into kills values ('Single',165,'Ale','Sandro','Aereo Posteriore'),
 ('Single',165,'Leo','Siwei','Altro'),
 ('Single',165,'Leo','Ale','Speciale in Giù'),
 ('Single',165,'Sandro','Leo','Smash Laterale'),
 ('Single',165,'Ale','Sandro','Smash Finale'),
 ('Single',165,'Siwei','Ale','Smash Finale'),
 ('Single',165,'Leo','Siwei','Smash Laterale'),
 ('Single',165,'Leo','Sandro','Altro'),
 ('Single',165,'Siwei','Leo','Speciale Standard'),
 ('Single',165,'Leo','Ale','Smash Laterale'),
 ('Single',165,'Leo','Siwei','Altro');

insert into deaths values ('Single',165,'Siwei','Mancato Recupero'),
 ('Single',165,'Sandro','Mancato Recupero'),
 ('Single',165,'Siwei','Autodistruzione');


--Single-164
insert into kills values ('Single',164,'Ale','Sandro','Aereo Posteriore'),
 ('Single',164,'Leo','Siwei','Speciale in Giù'),
 ('Single',164,'Ale','Leo','Aereo Posteriore'),
 ('Single',164,'Sandro','Siwei','Smash Finale'),
 ('Single',164,'Sandro','Ale','Smash Finale'),
 ('Single',164,'Sandro','Leo','Speciale Laterale'),
 ('Single',164,'Siwei','Sandro','Speciale Standard'),
 ('Single',164,'Sandro','Ale','Smash Laterale'),
 ('Single',164,'Ale','Siwei','Smash in Su'),
 ('Single',164,'Ale','Leo','Smash Finale'),
 ('Single',164,'Ale','Sandro','Aereo Frontale');


--Single-163
insert into kills values ('Single',163,'Ale','Sandro','Smash in Su'),
 ('Single',163,'Sandro','Siwei','Speciale Laterale'),
 ('Single',163,'Sandro','Leo','Aereo in Giù'),
 ('Single',163,'Siwei','Sandro','Speciale Standard'),
 ('Single',163,'Siwei','Ale','Smash Finale'),
 ('Single',163,'Siwei','Leo','Smash Finale'),
 ('Single',163,'Leo','Siwei','Smash Finale'),
 ('Single',163,'Ale','Sandro','Smash Finale'),
 ('Single',163,'Leo','Ale','Smash Laterale'),
 ('Single',163,'Ale','Leo','Smash in Su'),
 ('Single',163,'Siwei','Ale','Speciale in Su');


--Single-162
insert into kills values ('Single',162,'Siwei','Ale','Altro'),
 ('Single',162,'Siwei','Leo','Speciale Standard'),
 ('Single',162,'Ale','Sandro','Aereo in Su'),
 ('Single',162,'Sandro','Siwei','Speciale in Su'),
 ('Single',162,'Ale','Siwei','Smash Finale'),
 ('Single',162,'Siwei','Ale','Speciale Standard'),
 ('Single',162,'Ale','Leo','Altro'),
 ('Single',162,'Sandro','Siwei','Smash Laterale'),
 ('Single',162,'Leo','Ale','Smash Laterale'),
 ('Single',162,'Leo','Sandro','Speciale in Giù'),
 ('Single',162,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',162,'Ale','Autodistruzione'),
 ('Single',162,'Leo','Autodistruzione');


--Single-161
insert into kills values ('Single',161,'Leo','Siwei','Altro'),
 ('Single',161,'Ale','Leo','Altro'),
 ('Single',161,'Ale','Sandro','Aereo Standard'),
 ('Single',161,'Leo','Ale','Smash Finale'),
 ('Single',161,'Leo','Siwei','Smash Finale'),
 ('Single',161,'Leo','Sandro','Altro'),
 ('Single',161,'Sandro','Leo','Altro'),
 ('Single',161,'Sandro','Siwei','Smash Finale'),
 ('Single',161,'Sandro','Ale','Speciale Laterale'),
 ('Single',161,'Ale','Leo','Smash in Giù'),
 ('Single',161,'Ale','Sandro','Altro');

insert into deaths values ('Single',161,'Siwei','Jungle Japes'),
 ('Single',161,'Leo','Jungle Japes'),
 ('Single',161,'Sandro','Jungle Japes'),
 ('Single',161,'Leo','Jungle Japes'),
 ('Single',161,'Sandro','Jungle Japes');


--Single-160
insert into kills values ('Single',160,'Siwei','Sandro','Altro'),
 ('Single',160,'Ale','Siwei','Altro'),
 ('Single',160,'Leo','Ale','Smash Laterale'),
 ('Single',160,'Sandro','Siwei','Smash Finale'),
 ('Single',160,'Sandro','Leo','Smash Finale'),
 ('Single',160,'Ale','Sandro','Aereo Posteriore'),
 ('Single',160,'Sandro','Siwei','Altro'),
 ('Single',160,'Leo','Ale','Smash in Su'),
 ('Single',160,'Ale','Sandro','Smash Finale'),
 ('Single',160,'Ale','Leo','Speciale in Giù'),
 ('Single',160,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',160,'Sandro','Mancato Recupero'),
 ('Single',160,'Siwei','Mancato Recupero'),
 ('Single',160,'Siwei','Mancato Recupero');


--Single-159
insert into kills values ('Single',159,'Leo','Siwei','Speciale Standard'),
 ('Single',159,'Leo','Ale','Smash Laterale'),
 ('Single',159,'Sandro','Leo','Speciale Standard'),
 ('Single',159,'Siwei','Sandro','In Corsa'),
 ('Single',159,'Leo','Siwei','Smash Finale'),
 ('Single',159,'Leo','Sandro','Smash Laterale'),
 ('Single',159,'Sandro','Siwei','Smash Laterale'),
 ('Single',159,'Leo','Ale','Speciale in Giù'),
 ('Single',159,'Ale','Leo','Smash Laterale'),
 ('Single',159,'Leo','Ale','Smash Laterale'),
 ('Single',159,'Sandro','Leo','In Corsa');


--Single-158
insert into kills values ('Single',158,'Siwei','Ale','Altro'),
 ('Single',158,'Ale','Siwei','Altro'),
 ('Single',158,'Ale','Sandro','Aereo in Giù'),
 ('Single',158,'Ale','Leo','Altro'),
 ('Single',158,'Leo','Sandro','Altro'),
 ('Single',158,'Sandro','Ale','Smash Laterale'),
 ('Single',158,'Siwei','Leo','Smash Finale'),
 ('Single',158,'Ale','Leo','Smash Finale'),
 ('Single',158,'Siwei','Ale','Altro'),
 ('Single',158,'Sandro','Siwei','Altro'),
 ('Single',158,'Siwei','Sandro','Altro');

insert into deaths values ('Single',158,'Ale','Autodistruzione'),
 ('Single',158,'Siwei','Mancato Recupero'),
 ('Single',158,'Leo','Autodistruzione'),
 ('Single',158,'Sandro','Mancato Recupero'),
 ('Single',158,'Ale','Autodistruzione'),
 ('Single',158,'Sandro','Autodistruzione');


--Single-157
insert into kills values ('Single',157,'Ale','Sandro','Speciale in Giù'),
 ('Single',157,'Ale','Leo','Speciale in Giù'),
 ('Single',157,'Sandro','Ale','Smash in Su'),
 ('Single',157,'Ale','Siwei','Smash in Su'),
 ('Single',157,'Leo','Siwei','Smash Finale'),
 ('Single',157,'Sandro','Ale','Altro'),
 ('Single',157,'Ale','Siwei','Altro'),
 ('Single',157,'Ale','Sandro','Smash in Su'),
 ('Single',157,'Sandro','Leo','Aereo in Su'),
 ('Single',157,'Sandro','Ale','Smash Finale'),
 ('Single',157,'Sandro','Leo','Speciale in Giù');

insert into deaths values ('Single',157,'Ale','Autodistruzione'),
 ('Single',157,'Siwei','Mancato Recupero');


--Single-156
insert into kills values ('Single',156,'Leo','Siwei','Speciale Standard'),
 ('Single',156,'Ale','Leo','Speciale Standard'),
 ('Single',156,'Leo','Sandro','Speciale Standard'),
 ('Single',156,'Leo','Siwei','Speciale Standard'),
 ('Single',156,'Ale','Sandro','Speciale Standard'),
 ('Single',156,'Siwei','Leo','Speciale in Su'),
 ('Single',156,'Siwei','Ale','Speciale in Su'),
 ('Single',156,'Leo','Siwei','Smash Finale'),
 ('Single',156,'Ale','Leo','Altro'),
 ('Single',156,'Sandro','Ale','Altro'),
 ('Single',156,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',156,'Leo','Mancato Recupero'),
 ('Single',156,'Ale','Dream Land GB');


--Single-155
insert into kills values ('Single',155,'Leo','Siwei','Altro'),
 ('Single',155,'Ale','Sandro','Altro'),
 ('Single',155,'Leo','Sandro','Altro'),
 ('Single',155,'Leo','Ale','Altro'),
 ('Single',155,'Ale','Leo','Smash in Su'),
 ('Single',155,'Leo','Siwei','Speciale Standard'),
 ('Single',155,'Leo','Siwei','Altro'),
 ('Single',155,'Ale','Leo','Smash Laterale'),
 ('Single',155,'Ale','Sandro','Smash Finale'),
 ('Single',155,'Leo','Ale','Smash Laterale'),
 ('Single',155,'Ale','Leo','Altro');

insert into deaths values ('Single',155,'Sandro','Autodistruzione'),
 ('Single',155,'Sandro','Mancato Recupero'),
 ('Single',155,'Siwei','Find Mii'),
 ('Single',155,'Leo','Mancato Recupero');


--Single-154
insert into kills values ('Single',154,'Sandro','Leo','Smash in Su'),
 ('Single',154,'Ale','Siwei','Smash Laterale'),
 ('Single',154,'Sandro','Siwei','Smash Finale'),
 ('Single',154,'Leo','Sandro','Smash Finale'),
 ('Single',154,'Leo','Ale','Altro'),
 ('Single',154,'Siwei','Leo','Smash Finale'),
 ('Single',154,'Ale','Sandro','Speciale in Giù'),
 ('Single',154,'Sandro','Siwei','Altro'),
 ('Single',154,'Ale','Sandro','Aereo Posteriore'),
 ('Single',154,'Leo','Ale','Smash Finale'),
 ('Single',154,'Leo','Ale','Speciale in Su');

insert into deaths values ('Single',154,'Ale','Autodistruzione'),
 ('Single',154,'Siwei','Mancato Recupero');


--Single-153
insert into kills values ('Single',153,'Ale','Leo','Altro'),
 ('Single',153,'Sandro','Siwei','Smash Laterale'),
 ('Single',153,'Leo','Ale','Smash Laterale'),
 ('Single',153,'Leo','Sandro','Altro'),
 ('Single',153,'Ale','Leo','Altro'),
 ('Single',153,'Sandro','Siwei','Altro'),
 ('Single',153,'Sandro','Ale','Aereo in Giù'),
 ('Single',153,'Ale','Sandro','Speciale in Giù'),
 ('Single',153,'Sandro','Siwei','Smash Finale'),
 ('Single',153,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Single',153,'Leo','Big Blue'),
 ('Single',153,'Leo','Autodistruzione'),
 ('Single',153,'Sandro','Autodistruzione'),
 ('Single',153,'Siwei','Mancato Recupero'),
 ('Single',153,'Leo','Mancato Recupero');


--Single-152
insert into kills values ('Single',152,'Siwei','Ale','Smash Laterale'),
 ('Single',152,'Siwei','Leo','Speciale Standard'),
 ('Single',152,'Siwei','Sandro','Speciale in Su'),
 ('Single',152,'Leo','Siwei','In Corsa'),
 ('Single',152,'Siwei','Sandro','Smash Finale'),
 ('Single',152,'Siwei','Leo','Speciale Standard'),
 ('Single',152,'Ale','Siwei','In Corsa'),
 ('Single',152,'Leo','Sandro','Smash Finale'),
 ('Single',152,'Ale','Siwei','Altro'),
 ('Single',152,'Leo','Ale','Aereo in Giù'),
 ('Single',152,'Ale','Leo','Smash in Su');

insert into deaths values ('Single',152,'Siwei','Find Mii');


--Single-151
insert into kills values ('Single',151,'Sandro','Siwei','Altro'),
 ('Single',151,'Leo','Ale','Smash Laterale'),
 ('Single',151,'Siwei','Leo','Altro'),
 ('Single',151,'Leo','Ale','Speciale Laterale'),
 ('Single',151,'Leo','Ale','Altro'),
 ('Single',151,'Ale','Leo','Speciale Standard'),
 ('Single',151,'Leo','Sandro','Altro'),
 ('Single',151,'Leo','Siwei','Smash Laterale'),
 ('Single',151,'Sandro','Leo','Smash Finale'),
 ('Single',151,'Siwei','Sandro','Speciale Laterale'),
 ('Single',151,'Sandro','Siwei','Speciale Laterale');

insert into deaths values ('Single',151,'Siwei','Green Greens'),
 ('Single',151,'Leo','Autodistruzione'),
 ('Single',151,'Ale','Autodistruzione'),
 ('Single',151,'Sandro','Green Greens');


--Single-150
insert into kills values ('Single',150,'Leo','Sandro','Altro'),
 ('Single',150,'Sandro','Ale','Smash in Su'),
 ('Single',150,'Sandro','Leo','Smash in Su'),
 ('Single',150,'Ale','Siwei','In Corsa'),
 ('Single',150,'Siwei','Sandro','Smash Finale'),
 ('Single',150,'Leo','Siwei','Smash Finale'),
 ('Single',150,'Leo','Sandro','Altro'),
 ('Single',150,'Leo','Siwei','Altro'),
 ('Single',150,'Leo','Ale','Altro'),
 ('Single',150,'Ale','Leo','Speciale in Giù'),
 ('Single',150,'Leo','Ale','Altro');

insert into deaths values ('Single',150,'Sandro','Spirit Train'),
 ('Single',150,'Sandro','Spirit Train'),
 ('Single',150,'Siwei','Spirit Train'),
 ('Single',150,'Ale','Spirit Train'),
 ('Single',150,'Ale','Spirit Train');


--Single-149
insert into kills values ('Single',149,'Leo','Sandro','Smash Laterale'),
 ('Single',149,'Leo','Siwei','Altro'),
 ('Single',149,'Ale','Leo','In Corsa'),
 ('Single',149,'Siwei','Ale','Smash Laterale'),
 ('Single',149,'Leo','Sandro','Smash Laterale'),
 ('Single',149,'Sandro','Siwei','Altro'),
 ('Single',149,'Ale','Sandro','Smash Finale'),
 ('Single',149,'Ale','Leo','Smash Finale'),
 ('Single',149,'Ale','Siwei','Altro'),
 ('Single',149,'Leo','Ale','Altro'),
 ('Single',149,'Ale','Leo','Altro');

insert into deaths values ('Single',149,'Siwei','Autodistruzione'),
 ('Single',149,'Siwei','Mancato Recupero'),
 ('Single',149,'Leo','Mancato Recupero');


--Single-148
insert into kills values ('Single',148,'Sandro','Leo','Smash in Su'),
 ('Single',148,'Ale','Siwei','Smash Finale'),
 ('Single',148,'Siwei','Sandro','In Corsa'),
 ('Single',148,'Leo','Ale','Aereo Frontale'),
 ('Single',148,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',148,'Sandro','Leo','Aereo in Giù'),
 ('Single',148,'Siwei','Sandro','Smash Laterale'),
 ('Single',148,'Ale','Siwei','Smash Laterale'),
 ('Single',148,'Leo','Ale','Smash Laterale'),
 ('Single',148,'Ale','Leo','Smash in Su'),
 ('Single',148,'Ale','Siwei','Speciale Standard');


--Single-147
insert into kills values ('Single',147,'Leo','Siwei','Altro'),
 ('Single',147,'Sandro','Ale','Smash Laterale'),
 ('Single',147,'Ale','Leo','Smash in Su'),
 ('Single',147,'Ale','Sandro','Speciale in Giù'),
 ('Single',147,'Sandro','Ale','Smash Finale'),
 ('Single',147,'Sandro','Siwei','Smash in Giù'),
 ('Single',147,'Sandro','Leo','Smash Laterale'),
 ('Single',147,'Siwei','Sandro','Speciale in Su'),
 ('Single',147,'Siwei','Leo','Speciale in Su'),
 ('Single',147,'Ale','Siwei','Speciale Standard'),
 ('Single',147,'Sandro','Ale','Smash in Su');

insert into deaths values ('Single',147,'Siwei','Garden of Hope');


--Single-146
insert into kills values ('Single',146,'Siwei','Leo','Speciale in Su'),
 ('Single',146,'Ale','Siwei','Aereo Frontale'),
 ('Single',146,'Leo','Siwei','Altro'),
 ('Single',146,'Ale','Sandro','Smash Finale'),
 ('Single',146,'Leo','Ale','Speciale Laterale'),
 ('Single',146,'Sandro','Leo','Aereo in Giù'),
 ('Single',146,'Leo','Siwei','Speciale in Su'),
 ('Single',146,'Sandro','Ale','Aereo in Giù'),
 ('Single',146,'Ale','Sandro','Smash Laterale'),
 ('Single',146,'Sandro','Ale','Smash Finale'),
 ('Single',146,'Sandro','Leo','Smash Finale');

insert into deaths values ('Single',146,'Siwei','Autodistruzione');


--Single-145
insert into kills values ('Single',145,'Ale','Sandro','Altro'),
 ('Single',145,'Sandro','Siwei','Altro'),
 ('Single',145,'Sandro','Leo','Smash Finale'),
 ('Single',145,'Sandro','Ale','Smash Laterale'),
 ('Single',145,'Leo','Siwei','Altro'),
 ('Single',145,'Siwei','Leo','Altro'),
 ('Single',145,'Ale','Sandro','Altro'),
 ('Single',145,'Leo','Siwei','Smash Finale'),
 ('Single',145,'Sandro','Leo','Altro'),
 ('Single',145,'Sandro','Ale','Altro'),
 ('Single',145,'Ale','Sandro','Smash in Giù');

insert into deaths values ('Single',145,'Sandro','Garden of Hope'),
 ('Single',145,'Siwei','Garden of Hope'),
 ('Single',145,'Leo','Mancato Recupero'),
 ('Single',145,'Siwei','Garden of Hope'),
 ('Single',145,'Sandro','Garden of Hope'),
 ('Single',145,'Leo','Garden of Hope'),
 ('Single',145,'Ale','Garden of Hope');


--Single-144
insert into kills values ('Single',144,'Leo','Ale','Speciale Laterale'),
 ('Single',144,'Siwei','Leo','Speciale in Su'),
 ('Single',144,'Leo','Siwei','Speciale Laterale'),
 ('Single',144,'Ale','Sandro','Smash Finale'),
 ('Single',144,'Leo','Ale','Speciale Laterale'),
 ('Single',144,'Siwei','Leo','Speciale in Su'),
 ('Single',144,'Sandro','Siwei','Smash Finale'),
 ('Single',144,'Siwei','Sandro','Speciale in Su'),
 ('Single',144,'Siwei','Leo','Speciale Standard'),
 ('Single',144,'Sandro','Ale','Aereo in Giù'),
 ('Single',144,'Siwei','Sandro','Altro');


--Single-143
insert into kills values ('Single',143,'Ale','Siwei','Altro'),
 ('Single',143,'Siwei','Leo','Altro'),
 ('Single',143,'Leo','Siwei','Altro'),
 ('Single',143,'Ale','Sandro','Smash Laterale'),
 ('Single',143,'Sandro','Ale','Smash Finale'),
 ('Single',143,'Siwei','Sandro','Speciale Standard'),
 ('Single',143,'Ale','Leo','Smash Finale'),
 ('Single',143,'Ale','Sandro','Speciale Laterale'),
 ('Single',143,'Ale','Leo','Speciale in Giù'),
 ('Single',143,'Ale','Siwei','Altro');

insert into deaths values ('Single',143,'Siwei','Mushroomy Kingdom'),
 ('Single',143,'Leo','Mushroomy Kingdom'),
 ('Single',143,'Siwei','Mushroomy Kingdom'),
 ('Single',143,'Siwei','Mushroomy Kingdom');


--Single-142
insert into kills values ('Single',142,'Ale','Siwei','Speciale in Giù'),
 ('Single',142,'Ale','Sandro','Speciale Laterale'),
 ('Single',142,'Siwei','Ale','Smash Finale'),
 ('Single',142,'Ale','Siwei','Speciale Laterale'),
 ('Single',142,'Leo','Sandro','Speciale in Su'),
 ('Single',142,'Siwei','Ale','Smash Finale'),
 ('Single',142,'Ale','Siwei','Speciale in Giù'),
 ('Single',142,'Sandro','Leo','Altro'),
 ('Single',142,'Leo','Ale','Smash Laterale'),
 ('Single',142,'Leo','Sandro','Speciale in Su');

insert into deaths values ('Single',142,'Leo','Autodistruzione');


--Single-141
insert into kills values ('Single',141,'Leo','Sandro','Aereo Frontale'),
 ('Single',141,'Leo','Siwei','Smash Laterale'),
 ('Single',141,'Sandro','Ale','Smash Laterale'),
 ('Single',141,'Sandro','Leo','Smash Finale'),
 ('Single',141,'Leo','Sandro','Smash Laterale'),
 ('Single',141,'Siwei','Sandro','Altro'),
 ('Single',141,'Siwei','Ale','Speciale Laterale'),
 ('Single',141,'Leo','Siwei','Speciale Standard'),
 ('Single',141,'Ale','Leo','Speciale Standard'),
 ('Single',141,'Leo','Siwei','Altro'),
 ('Single',141,'Leo','Ale','Altro');

insert into deaths values ('Single',141,'Sandro','Mancato Recupero'),
 ('Single',141,'Siwei','Autodistruzione'),
 ('Single',141,'Ale','Mancato Recupero');


--Single-140
insert into kills values ('Single',140,'Sandro','Leo','Altro'),
 ('Single',140,'Ale','Siwei','Speciale Standard'),
 ('Single',140,'Siwei','Sandro','Altro'),
 ('Single',140,'Leo','Siwei','Altro'),
 ('Single',140,'Siwei','Leo','Speciale Standard'),
 ('Single',140,'Ale','Sandro','Speciale Standard'),
 ('Single',140,'Sandro','Ale','Speciale Standard'),
 ('Single',140,'Ale','Siwei','Smash Finale'),
 ('Single',140,'Ale','Leo','Altro'),
 ('Single',140,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Single',140,'Leo','Mancato Recupero'),
 ('Single',140,'Sandro','Mancato Recupero'),
 ('Single',140,'Siwei','Autodistruzione'),
 ('Single',140,'Leo','Mancato Recupero');


--Single-139
insert into kills values ('Single',139,'Ale','Sandro','Smash in Su'),
 ('Single',139,'Leo','Siwei','Speciale Laterale'),
 ('Single',139,'Sandro','Ale','Speciale in Giù'),
 ('Single',139,'Sandro','Leo','Smash Finale'),
 ('Single',139,'Ale','Sandro','Smash Finale'),
 ('Single',139,'Leo','Siwei','Smash Finale'),
 ('Single',139,'Siwei','Ale','In Corsa'),
 ('Single',139,'Sandro','Leo','Smash Laterale'),
 ('Single',139,'Leo','Siwei','Speciale Laterale'),
 ('Single',139,'Sandro','Ale','Smash in Giù'),
 ('Single',139,'Leo','Sandro','Smash Finale');


--Single-138
insert into kills values ('Single',138,'Ale','Sandro','Smash in Su'),
 ('Single',138,'Ale','Siwei','Smash in Su'),
 ('Single',138,'Leo','Ale','Smash Laterale'),
 ('Single',138,'Ale','Siwei','Altro'),
 ('Single',138,'Ale','Leo','Smash Finale'),
 ('Single',138,'Ale','Sandro','Smash in Su'),
 ('Single',138,'Sandro','Leo','Speciale in Su'),
 ('Single',138,'Sandro','Ale','Smash Finale'),
 ('Single',138,'Sandro','Siwei','Aereo in Giù'),
 ('Single',138,'Ale','Sandro','Speciale Standard'),
 ('Single',138,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',138,'Siwei','Autodistruzione');


--Single-137
insert into kills values ('Single',137,'Siwei','Sandro','Speciale Standard'),
 ('Single',137,'Siwei','Ale','Speciale Standard'),
 ('Single',137,'Sandro','Leo','Smash Finale'),
 ('Single',137,'Ale','Siwei','Smash in Su'),
 ('Single',137,'Ale','Sandro','Speciale Standard'),
 ('Single',137,'Ale','Sandro','Smash Finale'),
 ('Single',137,'Leo','Siwei','Smash Finale'),
 ('Single',137,'Leo','Ale','Smash Laterale'),
 ('Single',137,'Ale','Leo','Smash in Su'),
 ('Single',137,'Ale','Siwei','Altro'),
 ('Single',137,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',137,'Siwei','Autodistruzione');


--Single-136
insert into kills values ('Single',136,'Leo','Ale','Altro'),
 ('Single',136,'Ale','Siwei','Speciale Standard'),
 ('Single',136,'Sandro','Leo','Speciale Laterale'),
 ('Single',136,'Ale','Sandro','In Corsa'),
 ('Single',136,'Ale','Siwei','Smash Finale'),
 ('Single',136,'Leo','Ale','Smash Laterale'),
 ('Single',136,'Ale','Leo','Smash in Su'),
 ('Single',136,'Leo','Siwei','Smash Laterale'),
 ('Single',136,'Ale','Sandro','Smash in Giù'),
 ('Single',136,'Sandro','Ale','Speciale Laterale'),
 ('Single',136,'Leo','Sandro','Speciale Laterale');

insert into deaths values ('Single',136,'Ale','Mancato Recupero');


--Single-135
insert into kills values ('Single',135,'Siwei','Ale','In Corsa'),
 ('Single',135,'Ale','Sandro','Smash Finale'),
 ('Single',135,'Siwei','Ale','Smash Laterale'),
 ('Single',135,'Sandro','Leo','Speciale Standard'),
 ('Single',135,'Sandro','Siwei','Altro'),
 ('Single',135,'Sandro','Ale','Altro'),
 ('Single',135,'Siwei','Leo','Smash Finale'),
 ('Single',135,'Siwei','Sandro','In Corsa'),
 ('Single',135,'Sandro','Siwei','Smash Finale'),
 ('Single',135,'Siwei','Sandro','In Corsa'),
 ('Single',135,'Siwei','Leo','Smash Finale');

insert into deaths values ('Single',135,'Ale','Mancato Recupero');


--Single-134
insert into kills values ('Single',134,'Ale','Leo','Smash in Su'),
 ('Single',134,'Leo','Ale','Smash Laterale'),
 ('Single',134,'Leo','Siwei','Smash Laterale'),
 ('Single',134,'Leo','Sandro','In Corsa'),
 ('Single',134,'Leo','Siwei','Smash Finale'),
 ('Single',134,'Ale','Leo','Speciale in Giù'),
 ('Single',134,'Siwei','Leo','Smash Finale'),
 ('Single',134,'Siwei','Ale','Smash Finale'),
 ('Single',134,'Sandro','Siwei','Speciale Laterale'),
 ('Single',134,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',134,'Sandro','Autodistruzione');


--Single-133
insert into kills values ('Single',133,'Leo','Sandro','Speciale Standard'),
 ('Single',133,'Sandro','Leo','Smash Laterale'),
 ('Single',133,'Leo','Sandro','Speciale Standard'),
 ('Single',133,'Ale','Siwei','Smash Laterale'),
 ('Single',133,'Siwei','Ale','Speciale in Su'),
 ('Single',133,'Leo','Siwei','Altro'),
 ('Single',133,'Leo','Sandro','Altro'),
 ('Single',133,'Leo','Ale','Smash Finale'),
 ('Single',133,'Ale','Leo','Smash Laterale'),
 ('Single',133,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',133,'Siwei','Autodistruzione'),
 ('Single',133,'Siwei','Mancato Recupero'),
 ('Single',133,'Sandro','Autodistruzione');


--Single-132
insert into kills values ('Single',132,'Ale','Siwei','Altro'),
 ('Single',132,'Leo','Siwei','Smash Laterale'),
 ('Single',132,'Siwei','Sandro','Altro'),
 ('Single',132,'Siwei','Sandro','Smash Finale'),
 ('Single',132,'Leo','Ale','Speciale in Giù'),
 ('Single',132,'Leo','Siwei','Speciale in Giù'),
 ('Single',132,'Ale','Leo','Smash Finale'),
 ('Single',132,'Sandro','Leo','Altro'),
 ('Single',132,'Leo','Ale','Smash Finale'),
 ('Single',132,'Leo','Sandro','Altro'),
 ('Single',132,'Leo','Ale','Altro');

insert into deaths values ('Single',132,'Siwei','Autodistruzione'),
 ('Single',132,'Sandro','Mancato Recupero'),
 ('Single',132,'Leo','Mancato Recupero'),
 ('Single',132,'Sandro','Mancato Recupero'),
 ('Single',132,'Ale','Mancato Recupero');


--Single-131
insert into kills values ('Single',131,'Leo','Ale','Peculiare'), --PECULIAR: DIDDY KONG MONKEY KICK
 ('Single',131,'Ale','Sandro','Aereo in Su'),
 ('Single',131,'Siwei','Leo','Altro'),
 ('Single',131,'Sandro','Siwei','Altro'),
 ('Single',131,'Ale','Sandro','Smash Finale'),
 ('Single',131,'Leo','Ale','Aereo Posteriore'),
 ('Single',131,'Siwei','Leo','Speciale in Su'),
 ('Single',131,'Siwei','Sandro','Speciale in Su'),
 ('Single',131,'Ale','Siwei','Smash in Su'),
 ('Single',131,'Siwei','Ale','Speciale in Su'),
 ('Single',131,'Siwei','Leo','Speciale Laterale');


--Single-130
insert into kills values ('Single',130,'Leo','Siwei','Smash Laterale'),
 ('Single',130,'Sandro','Leo','Speciale in Giù'),
 ('Single',130,'Ale','Sandro','Speciale in Giù'),
 ('Single',130,'Sandro','Ale','Smash in Su'),
 ('Single',130,'Sandro','Siwei','Smash Finale'),
 ('Single',130,'Leo','Sandro','Speciale in Su'),
 ('Single',130,'Ale','Leo','Altro'),
 ('Single',130,'Sandro','Ale','Speciale in Giù'),
 ('Single',130,'Sandro','Siwei','Smash Finale'),
 ('Single',130,'Leo','Sandro','Smash Finale'),
 ('Single',130,'Ale','Leo','Altro');

insert into deaths values ('Single',130,'Leo','Autodistruzione'),
 ('Single',130,'Leo','Autodistruzione');


--Single-129
insert into kills values ('Single',129,'Sandro','Siwei','Speciale Laterale'),
 ('Single',129,'Leo','Sandro','Smash Laterale'),
 ('Single',129,'Leo','Ale','Altro'),
 ('Single',129,'Sandro','Leo','Speciale Laterale'),
 ('Single',129,'Leo','Siwei','Speciale Laterale'),
 ('Single',129,'Ale','Sandro','Smash Finale'),
 ('Single',129,'Siwei','Leo','Speciale Standard'),
 ('Single',129,'Sandro','Siwei','Altro'),
 ('Single',129,'Sandro','Ale','Speciale Laterale'),
 ('Single',129,'Sandro','Ale','Smash Finale'),
 ('Single',129,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',129,'Siwei','Mancato Recupero');


--Single-128
insert into kills values ('Single',128,'Leo','Siwei','Speciale Standard'),
 ('Single',128,'Sandro','Ale','Smash Laterale'),
 ('Single',128,'Ale','Sandro','Speciale in Su'),
 ('Single',128,'Leo','Siwei','Smash Laterale'),
 ('Single',128,'Sandro','Leo','Altro'),
 ('Single',128,'Siwei','Sandro','Smash Finale'),
 ('Single',128,'Ale','Leo','Altro'),
 ('Single',128,'Leo','Siwei','Speciale Standard'),
 ('Single',128,'Sandro','Ale','Smash in Su'),
 ('Single',128,'Ale','Sandro','Speciale in Su'),
 ('Single',128,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',128,'Siwei','Mancato Recupero'),
 ('Single',128,'Leo','Autodistruzione'),
 ('Single',128,'Leo','Autodistruzione'),
 ('Single',128,'Siwei','Mancato Recupero');


--Single-127
insert into kills values ('Single',127,'Siwei','Ale','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',127,'Ale','Siwei','Altro'),
 ('Single',127,'Siwei','Sandro','Speciale in Su'),
 ('Single',127,'Sandro','Leo','Smash Finale'),
 ('Single',127,'Sandro','Siwei','Smash Finale'),
 ('Single',127,'Ale','Sandro','Smash Finale'),
 ('Single',127,'Siwei','Ale','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',127,'Sandro','Leo','Smash Finale'),
 ('Single',127,'Sandro','Siwei','Speciale in Giù'),
 ('Single',127,'Ale','Sandro','Speciale in Giù'),
 ('Single',127,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',127,'Siwei','Mancato Recupero');


--Single-126
insert into kills values ('Single',126,'Leo','Siwei','Speciale in Su'),
 ('Single',126,'Siwei','Ale','Altro'),
 ('Single',126,'Ale','Sandro','Smash Finale'),
 ('Single',126,'Siwei','Leo','Altro'),
 ('Single',126,'Leo','Siwei','Altro'),
 ('Single',126,'Leo','Ale','Smash Finale'),
 ('Single',126,'Siwei','Sandro','Smash Laterale'),
 ('Single',126,'Ale','Leo','Smash Finale'),
 ('Single',126,'Siwei','Ale','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',126,'Sandro','Siwei','Smash Finale'),
 ('Single',126,'Sandro','Leo','Altro');

insert into deaths values ('Single',126,'Leo','Mancato Recupero'),
 ('Single',126,'Siwei','Mancato Recupero'),
 ('Single',126,'Leo','Mancato Recupero');


--Single-125
insert into kills values ('Single',125,'Leo','Siwei','Altro'),
 ('Single',125,'Sandro','Ale','Speciale in Giù'),
 ('Single',125,'Sandro','Ale','Smash Laterale'),
 ('Single',125,'Ale','Siwei','Smash Laterale'),
 ('Single',125,'Sandro','Leo','Smash Finale'),
 ('Single',125,'Leo','Sandro','Speciale in Su'),
 ('Single',125,'Ale','Sandro','Smash Finale'),
 ('Single',125,'Sandro','Leo','Smash Finale'),
 ('Single',125,'Ale','Siwei','Altro'),
 ('Single',125,'Leo','Sandro','Peculiare'), --PECULIAR: GANONDORF UP TILT
 ('Single',125,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',125,'Siwei','Mancato Recupero'),
 ('Single',125,'Siwei','Mancato Recupero');


--Single-124
insert into kills values ('Single',124,'Siwei','Leo','Speciale in Su'),
 ('Single',124,'Siwei','Sandro','Smash Laterale'),
 ('Single',124,'Sandro','Ale','Altro'),
 ('Single',124,'Siwei','Leo','Altro'),
 ('Single',124,'Leo','Siwei','Smash Laterale'),
 ('Single',124,'Ale','Leo','Meteora'),
 ('Single',124,'Siwei','Ale','Speciale Laterale'),
 ('Single',124,'Sandro','Siwei','Smash Finale'),
 ('Single',124,'Ale','Sandro','Smash Finale'),
 ('Single',124,'Sandro','Siwei','Aereo in Giù'),
 ('Single',124,'Sandro','Ale','Aereo Frontale');

insert into deaths values ('Single',124,'Ale','Autodistruzione'),
 ('Single',124,'Leo','Mancato Recupero');


--Single-123
insert into kills values ('Single',123,'Siwei','Leo','Speciale Laterale'),
 ('Single',123,'Leo','Sandro','Smash Laterale'),
 ('Single',123,'Siwei','Ale','Altro'),
 ('Single',123,'Sandro','Siwei','Smash Laterale'),
 ('Single',123,'Leo','Siwei','Smash Finale'),
 ('Single',123,'Leo','Siwei','Altro'),
 ('Single',123,'Leo','Sandro','Smash Laterale'),
 ('Single',123,'Ale','Leo','Aereo in Giù'),
 ('Single',123,'Sandro','Ale','Altro'),
 ('Single',123,'Ale','Sandro','Meteora'),
 ('Single',123,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',123,'Ale','Mancato Recupero'),
 ('Single',123,'Siwei','Autodistruzione');


--Single-122
insert into kills values ('Single',122,'Ale','Leo','Speciale Laterale'),
 ('Single',122,'Sandro','Siwei','Aereo in Giù'),
 ('Single',122,'Leo','Ale','Speciale in Giù'),
 ('Single',122,'Ale','Siwei','Smash Finale'),
 ('Single',122,'Ale','Sandro','Aereo in Giù'),
 ('Single',122,'Sandro','Siwei','Smash in Su'),
 ('Single',122,'Sandro','Ale','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',122,'Ale','Leo','Smash Laterale'),
 ('Single',122,'Ale','Sandro','Smash in Giù'),
 ('Single',122,'Sandro','Ale','Smash Finale'),
 ('Single',122,'Sandro','Leo','Smash Finale');


--Single-121
insert into kills values ('Single',121,'Siwei','Sandro','Altro'),
 ('Single',121,'Siwei','Ale','Speciale in Su'),
 ('Single',121,'Ale','Siwei','Aereo Posteriore'),
 ('Single',121,'Leo','Sandro','Altro'),
 ('Single',121,'Ale','Leo','Altro'),
 ('Single',121,'Sandro','Leo','Altro'),
 ('Single',121,'Leo','Siwei','Altro'),
 ('Single',121,'Leo','Ale','Altro'),
 ('Single',121,'Sandro','Leo','Altro'),
 ('Single',121,'Siwei','Sandro','Smash Finale');

insert into deaths values ('Single',121,'Ale','Autodistruzione'),
 ('Single',121,'Sandro','Mancato Recupero'),
 ('Single',121,'Sandro','Autodistruzione'),
 ('Single',121,'Leo','Mancato Recupero'),
 ('Single',121,'Leo','Autodistruzione'),
 ('Single',121,'Siwei','Mancato Recupero'),
 ('Single',121,'Leo','Autodistruzione');


--Single-120
insert into kills values ('Single',120,'Sandro','Siwei','Smash Laterale'),
 ('Single',120,'Sandro','Siwei','Altro'),
 ('Single',120,'Sandro','Leo','Aereo in Su'),
 ('Single',120,'Leo','Ale','Smash Finale'),
 ('Single',120,'Leo','Sandro','Smash Finale'),
 ('Single',120,'Siwei','Sandro','Altro'),
 ('Single',120,'Ale','Siwei','Smash Finale'),
 ('Single',120,'Sandro','Leo','Aereo Frontale'),
 ('Single',120,'Leo','Sandro','Aereo Standard'),
 ('Single',120,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',120,'Siwei','Autodistruzione'),
 ('Single',120,'Sandro','Big Blue'),
 ('Single',120,'Ale','Autodistruzione');


--Single-119
insert into kills values ('Single',119,'Ale','Sandro','Aereo Posteriore'),
 ('Single',119,'Sandro','Siwei','Altro'),
 ('Single',119,'Sandro','Leo','Altro'),
 ('Single',119,'Sandro','Ale','Smash Finale'),
 ('Single',119,'Leo','Sandro','Altro'),
 ('Single',119,'Ale','Siwei','Speciale Laterale'),
 ('Single',119,'Sandro','Ale','Speciale in Giù'),
 ('Single',119,'Ale','Leo','Smash in Giù'),
 ('Single',119,'Ale','Siwei','Smash Finale'),
 ('Single',119,'Ale','Sandro','Smash Finale'),
 ('Single',119,'Ale','Leo','Smash in Giù');

insert into deaths values ('Single',119,'Leo','Bridge of Eldin'),
 ('Single',119,'Sandro','Bridge of Eldin');


--Single-118
insert into kills values ('Single',118,'Siwei','Sandro','Aereo Frontale'),
 ('Single',118,'Sandro','Siwei','Altro'),
 ('Single',118,'Siwei','Leo','Smash Finale'),
 ('Single',118,'Siwei','Ale','Speciale Standard'),
 ('Single',118,'Sandro','Siwei','Smash Finale'),
 ('Single',118,'Leo','Sandro','Smash Finale'),
 ('Single',118,'Siwei','Leo','Smash Laterale'),
 ('Single',118,'Siwei','Leo','Altro'),
 ('Single',118,'Sandro','Ale','Smash Finale'),
 ('Single',118,'Siwei','Sandro','Smash Finale'),
 ('Single',118,'Ale','Siwei','Smash in Su');

insert into deaths values ('Single',118,'Siwei','Mancato Recupero'),
 ('Single',118,'Leo','Mancato Recupero');


--Single-117
insert into kills values ('Single',117,'Leo','Sandro','Speciale in Su'),
 ('Single',117,'Sandro','Ale','Smash in Su'),
 ('Single',117,'Leo','Siwei','Speciale in Giù'),
 ('Single',117,'Siwei','Leo','Smash Finale'),
 ('Single',117,'Sandro','Ale','Smash Laterale'),
 ('Single',117,'Leo','Siwei','Altro'),
 ('Single',117,'Leo','Sandro','Smash Finale'),
 ('Single',117,'Siwei','Ale','Smash Laterale'),
 ('Single',117,'Sandro','Siwei','Smash Laterale'),
 ('Single',117,'Sandro','Leo','Smash Finale'),
 ('Single',117,'Leo','Sandro','Speciale in Su');

insert into deaths values ('Single',117,'Siwei','Autodistruzione');


--Single-116
insert into kills values ('Single',116,'Sandro','Siwei','Speciale in Giù'),
 ('Single',116,'Sandro','Ale','Altro'),
 ('Single',116,'Sandro','Leo','Smash Laterale'),
 ('Single',116,'Sandro','Siwei','Smash Finale'),
 ('Single',116,'Ale','Sandro','Smash Finale'),
 ('Single',116,'Sandro','Siwei','Aereo in Su'),
 ('Single',116,'Sandro','Ale','Smash Finale'),
 ('Single',116,'Ale','Sandro','Aereo Standard'),
 ('Single',116,'Sandro','Leo','Smash in Su'),
 ('Single',116,'Ale','Sandro','Smash Finale'),
 ('Single',116,'Leo','Ale','Altro');

insert into deaths values ('Single',116,'Ale','Mancato Recupero');


--Single-115
insert into kills values ('Single',115,'Siwei','Sandro','Altro'),
 ('Single',115,'Ale','Siwei','Speciale Laterale'),
 ('Single',115,'Siwei','Ale','Smash Laterale'),
 ('Single',115,'Sandro','Leo','Smash Finale'),
 ('Single',115,'Siwei','Sandro','Altro'),
 ('Single',115,'Ale','Siwei','Smash Finale'),
 ('Single',115,'Leo','Ale','Altro'),
 ('Single',115,'Sandro','Leo','Smash Finale'),
 ('Single',115,'Leo','Siwei','Altro'),
 ('Single',115,'Sandro','Ale','Scudo Rotto'),
 ('Single',115,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',115,'Sandro','Skyworld'),
 ('Single',115,'Sandro','Mancato Recupero'),
 ('Single',115,'Siwei','Mancato Recupero'),
 ('Single',115,'Ale','Scudo Rotto');


--Single-114
insert into kills values ('Single',114,'Siwei','Sandro','Speciale Standard'),
 ('Single',114,'Leo','Ale','Aereo Frontale'),
 ('Single',114,'Siwei','Leo','Altro'),
 ('Single',114,'Ale','Siwei','Smash Laterale'),
 ('Single',114,'Ale','Leo','Smash Finale'),
 ('Single',114,'Leo','Ale','Smash Laterale'),
 ('Single',114,'Leo','Siwei','Smash Finale'),
 ('Single',114,'Leo','Sandro','Smash Finale'),
 ('Single',114,'Sandro','Ale','Smash Finale'),
 ('Single',114,'Siwei','Leo','Speciale Standard'),
 ('Single',114,'Siwei','Sandro','Smash in Su');

insert into deaths values ('Single',114,'Leo','Autodistruzione');


--Single-113
insert into kills values ('Single',113,'Ale','Leo','Speciale in Giù'),
 ('Single',113,'Leo','Siwei','Smash in Su'),
 ('Single',113,'Sandro','Ale','Speciale in Giù'),
 ('Single',113,'Leo','Sandro','Speciale Laterale'),
 ('Single',113,'Siwei','Leo','Speciale Laterale'),
 ('Single',113,'Siwei','Sandro','Smash Finale'),
 ('Single',113,'Siwei','Ale','Speciale Laterale'),
 ('Single',113,'Sandro','Leo','Altro'),
 ('Single',113,'Ale','Sandro','Speciale in Giù'),
 ('Single',113,'Ale','Siwei','Speciale in Giù'),
 ('Single',113,'Ale','Siwei','Smash Finale');


--Single-112
insert into kills values ('Single',112,'Ale','Leo','Altro'),
 ('Single',112,'Leo','Siwei','Altro'),
 ('Single',112,'Sandro','Leo','Altro'),
 ('Single',112,'Ale','Sandro','Smash in Giù'),
 ('Single',112,'Ale','Siwei','Altro'),
 ('Single',112,'Siwei','Sandro','Altro'),
 ('Single',112,'Siwei','Ale','Speciale Laterale'),
 ('Single',112,'Ale','Sandro','Altro');

insert into deaths values ('Single',112,'Leo','Mancato Recupero'),
 ('Single',112,'Leo','Balloon Fight'),
 ('Single',112,'Siwei','Mancato Recupero'),
 ('Single',112,'Leo','Balloon Fight'),
 ('Single',112,'Siwei','Balloon Fight'),
 ('Single',112,'Sandro','Balloon Fight'),
 ('Single',112,'Siwei','Balloon Fight'),
 ('Single',112,'Sandro','Mancato Recupero');


--Single-111
insert into kills values ('Single',111,'Leo','Sandro','Aereo Frontale'),
 ('Single',111,'Sandro','Ale','Smash in Giù'),
 ('Single',111,'Siwei','Leo','Speciale Standard'),
 ('Single',111,'Sandro','Siwei','Smash in Su'),
 ('Single',111,'Siwei','Ale','Speciale in Su'),
 ('Single',111,'Sandro','Leo','Aereo in Su'),
 ('Single',111,'Leo','Sandro','Speciale Laterale'),
 ('Single',111,'Sandro','Leo','Smash Finale'),
 ('Single',111,'Sandro','Siwei','Smash Laterale'),
 ('Single',111,'Ale','Sandro','Aereo in Giù');

insert into deaths values ('Single',111,'Siwei','Autodistruzione');


--Single-110
insert into kills values ('Single',110,'Leo','Ale','Altro'),
 ('Single',110,'Sandro','Siwei','Smash Laterale'),
 ('Single',110,'Sandro','Leo','Smash in Su'),
 ('Single',110,'Siwei','Sandro','Smash Finale'),
 ('Single',110,'Siwei','Leo','Altro'),
 ('Single',110,'Sandro','Ale','Smash Finale'),
 ('Single',110,'Leo','Siwei','Smash Finale'),
 ('Single',110,'Siwei','Leo','Altro'),
 ('Single',110,'Ale','Sandro','Smash Finale'),
 ('Single',110,'Sandro','Ale','Peculiare'); --PECULIAR: MR. GAME & WATCH CHAIR

insert into deaths values ('Single',110,'Ale','Mancato Recupero'),
 ('Single',110,'Leo','Mancato Recupero'),
 ('Single',110,'Leo','Mancato Recupero'),
 ('Single',110,'Siwei','Autodistruzione');


--Single-109
insert into kills values ('Single',109,'Sandro','Ale','Speciale in Giù'),
 ('Single',109,'Sandro','Siwei','Speciale in Giù'),
 ('Single',109,'Siwei','Ale','Smash Finale'),
 ('Single',109,'Siwei','Sandro','Smash Finale'),
 ('Single',109,'Sandro','Leo','Smash in Su'),
 ('Single',109,'Sandro','Siwei','Altro'),
 ('Single',109,'Ale','Sandro','Smash Finale'),
 ('Single',109,'Sandro','Siwei','Smash Finale'),
 ('Single',109,'Sandro','Leo','Smash Finale'),
 ('Single',109,'Sandro','Ale','Speciale in Giù'),
 ('Single',109,'Leo','Sandro','Smash Finale');


--Single-108
insert into kills values ('Single',108,'Ale','Siwei','Smash in Giù'),
 ('Single',108,'Leo','Sandro','Altro'),
 ('Single',108,'Siwei','Ale','Smash Finale'),
 ('Single',108,'Sandro','Siwei','Smash Finale'),
 ('Single',108,'Leo','Sandro','Speciale Standard'),
 ('Single',108,'Sandro','Leo','Smash in Su'),
 ('Single',108,'Siwei','Ale','Speciale Laterale'),
 ('Single',108,'Sandro','Siwei','Smash Finale'),
 ('Single',108,'Ale','Leo','Meteora'),
 ('Single',108,'Leo','Ale','Altro'),
 ('Single',108,'Leo','Sandro','In Corsa');

insert into deaths values ('Single',108,'Ale','Autodistruzione');


--Single-107
insert into kills values ('Single',107,'Leo','Ale','Speciale Laterale'),
 ('Single',107,'Sandro','Siwei','Altro'),
 ('Single',107,'Siwei','Sandro','In Corsa'),
 ('Single',107,'Ale','Leo','Speciale Laterale'),
 ('Single',107,'Sandro','Leo','Smash Finale'),
 ('Single',107,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',107,'Leo','Ale','Altro'),
 ('Single',107,'Leo','Siwei','Smash Finale'),
 ('Single',107,'Ale','Leo','Speciale in Giù'),
 ('Single',107,'Ale','Sandro','Smash in Giù'),
 ('Single',107,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',107,'Siwei','Mancato Recupero');


--Single-106
insert into kills values ('Single',106,'Leo','Sandro','Smash in Su'),
 ('Single',106,'Leo','Ale','Speciale in Su'),
 ('Single',106,'Sandro','Siwei','Smash Laterale'),
 ('Single',106,'Sandro','Leo','Smash Finale'),
 ('Single',106,'Leo','Siwei','Smash Laterale'),
 ('Single',106,'Leo','Ale','Smash Laterale'),
 ('Single',106,'Siwei','Leo','Speciale Standard'),
 ('Single',106,'Leo','Siwei','Smash Finale'),
 ('Single',106,'Ale','Sandro','Speciale in Giù'),
 ('Single',106,'Sandro','Leo','Speciale in Su'),
 ('Single',106,'Sandro','Ale','Smash in Giù');


--Single-105
insert into kills values ('Single',105,'Sandro','Ale','Speciale in Giù'),
 ('Single',105,'Siwei','Sandro','Speciale in Giù'),
 ('Single',105,'Sandro','Siwei','Smash Finale'),
 ('Single',105,'Ale','Sandro','Smash in Giù'),
 ('Single',105,'Siwei','Leo','Speciale Laterale'),
 ('Single',105,'Sandro','Ale','Smash Finale'),
 ('Single',105,'Sandro','Siwei','Aereo in Giù'),
 ('Single',105,'Leo','Sandro','Smash Laterale'),
 ('Single',105,'Ale','Siwei','Aereo Standard'),
 ('Single',105,'Ale','Leo','Aereo Standard'),
 ('Single',105,'Leo','Ale','Smash Finale');


--Single-104
insert into kills values ('Single',104,'Ale','Sandro','Aereo Posteriore'),
 ('Single',104,'Leo','Siwei','Speciale Laterale'),
 ('Single',104,'Leo','Ale','Speciale Laterale'),
 ('Single',104,'Sandro','Leo','Smash in Su'),
 ('Single',104,'Sandro','Siwei','Smash Laterale'),
 ('Single',104,'Leo','Ale','Smash Finale'),
 ('Single',104,'Leo','Siwei','Speciale Laterale'),
 ('Single',104,'Leo','Sandro','Speciale Laterale'),
 ('Single',104,'Sandro','Leo','Aereo in Giù'),
 ('Single',104,'Leo','Ale','Altro'),
 ('Single',104,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',104,'Ale','Autodistruzione');


--Single-103
insert into kills values ('Single',103,'Sandro','Ale','Smash Laterale'),
 ('Single',103,'Ale','Sandro','Smash Finale'),
 ('Single',103,'Sandro','Siwei','Smash Finale'),
 ('Single',103,'Sandro','Ale','Smash Finale'),
 ('Single',103,'Siwei','Ale','Speciale in Su'),
 ('Single',103,'Leo','Sandro','Aereo Standard'),
 ('Single',103,'Sandro','Leo','Altro'),
 ('Single',103,'Leo','Siwei','Altro'),
 ('Single',103,'Leo','Sandro','Smash Finale'),
 ('Single',103,'Siwei','Leo','Smash Laterale'),
 ('Single',103,'Leo','Siwei','Smash Finale');

insert into deaths values ('Single',103,'Leo','Mancato Recupero'),
 ('Single',103,'Siwei','Autodistruzione');


--Single-102
insert into kills values ('Single',102,'Leo','Ale','Speciale Laterale'),
 ('Single',102,'Sandro','Siwei','Aereo in Giù'),
 ('Single',102,'Ale','Sandro','Smash in Giù'),
 ('Single',102,'Sandro','Leo','Aereo in Giù'),
 ('Single',102,'Ale','Siwei','Smash Finale'),
 ('Single',102,'Sandro','Ale','Aereo in Giù'),
 ('Single',102,'Leo','Sandro','Smash Finale'),
 ('Single',102,'Leo','Siwei','Speciale in Su'),
 ('Single',102,'Leo','Sandro','Speciale Laterale'),
 ('Single',102,'Leo','Ale','Smash Laterale');


--Single-101
insert into kills values ('Single',101,'Leo','Siwei','Smash Laterale'),
 ('Single',101,'Leo','Sandro','Smash Laterale'),
 ('Single',101,'Ale','Leo','Altro'),
 ('Single',101,'Sandro','Leo','Smash Finale'),
 ('Single',101,'Leo','Siwei','Smash Laterale'),
 ('Single',101,'Ale','Sandro','Smash in Su'),
 ('Single',101,'Sandro','Ale','Scudo Rotto'),
 ('Single',101,'Ale','Siwei','Smash Laterale'),
 ('Single',101,'Ale','Sandro','Speciale in Giù'),
 ('Single',101,'Ale','Leo','Altro');

insert into deaths values ('Single',101,'Leo','Yoshis Island'),
 ('Single',101,'Ale','Scudo Rotto'),
 ('Single',101,'Leo','Mancato Recupero');


--Single-100
insert into kills values ('Single',100,'Siwei','Sandro','Speciale Standard'),
 ('Single',100,'Siwei','Leo','Speciale in Su'),
 ('Single',100,'Leo','Ale','Smash Laterale'),
 ('Single',100,'Sandro','Siwei','Smash Finale'),
 ('Single',100,'Ale','Leo','Speciale in Giù'),
 ('Single',100,'Sandro','Ale','Smash in Su'),
 ('Single',100,'Leo','Sandro','Smash in Su'),
 ('Single',100,'Sandro','Siwei','Smash Finale'),
 ('Single',100,'Sandro','Leo','Altro'),
 ('Single',100,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Single',100,'Siwei','Autodistruzione'),
 ('Single',100,'Leo','Mancato Recupero');


--Single-99
insert into kills values ('Single',99,'Sandro','Siwei','Meteora'),
 ('Single',99,'Leo','Sandro','Speciale in Su'),
 ('Single',99,'Sandro','Leo','Altro'),
 ('Single',99,'Sandro','Ale','Aereo in Giù'),
 ('Single',99,'Siwei','Leo','Smash Finale'),
 ('Single',99,'Leo','Sandro','Aereo in Giù'),
 ('Single',99,'Ale','Siwei','Peculiare'), --PECULIAR: KIRBY STAR SPIT
 ('Single',99,'Leo','Ale','Smash Finale'),
 ('Single',99,'Ale','Siwei','Speciale Standard'),
 ('Single',99,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',99,'Sandro','Autodistruzione'),
 ('Single',99,'Leo','Mancato Recupero');


--Team-29
insert into kills values ('Team',29,'Leo','Siwei','Altro'),
 ('Team',29,'Siwei','Sandro','Speciale Laterale'),
 ('Team',29,'Ale','Leo','Altro'),
 ('Team',29,'Sandro','Ale','Smash Finale'),
 ('Team',29,'Ale','Sandro','Speciale in Giù'),
 ('Team',29,'Leo','Siwei','Altro'),
 ('Team',29,'Sandro','Ale','Smash Finale'),
 ('Team',29,'Ale','Leo','Smash in Su'),
 ('Team',29,'Sandro','Siwei','Altro'),
 ('Team',29,'Ale','Sandro','Altro'),
 ('Team',29,'Sandro','Ale','Speciale Laterale');

insert into deaths values ('Team',29,'Siwei','Autodistruzione'),
 ('Team',29,'Leo','Unova Pokemon League'),
 ('Team',29,'Sandro','Autodistruzione');


--Team-28
insert into kills values ('Team',28,'Ale','Sandro','Smash Laterale'),
 ('Team',28,'Sandro','Ale','Smash Laterale'),
 ('Team',28,'Sandro','Siwei','Smash Laterale'),
 ('Team',28,'Ale','Leo','Speciale in Giù'),
 ('Team',28,'Ale','Sandro','Aereo Frontale'),
 ('Team',28,'Sandro','Siwei','Altro'),
 ('Team',28,'Sandro','Ale','Smash Finale'),
 ('Team',28,'Leo','Ale','Smash Finale'),
 ('Team',28,'Siwei','Sandro','Speciale Laterale'),
 ('Team',28,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Team',28,'Siwei','Mancato Recupero');


--Team-27
insert into kills values ('Team',27,'Leo','Sandro','Altro'),
 ('Team',27,'Ale','Siwei','Smash in Giù'),
 ('Team',27,'Sandro','Leo','Aereo Frontale'),
 ('Team',27,'Sandro','Siwei','Smash Finale'),
 ('Team',27,'Leo','Sandro','Smash Finale'),
 ('Team',27,'Sandro','Leo','Aereo in Giù'),
 ('Team',27,'Siwei','Sandro','Smash Finale'),
 ('Team',27,'Ale','Siwei','Smash Finale'),
 ('Team',27,'Leo','Ale','Smash Laterale'),
 ('Team',27,'Ale','Leo','Altro');

insert into deaths values ('Team',27,'Sandro','Corneria'),
 ('Team',27,'Leo','Corneria');


--Team-26
insert into kills values ('Team',26,'Siwei','Leo','Altro'),
 ('Team',26,'Ale','Sandro','Speciale in Giù'),
 ('Team',26,'Sandro','Siwei','Smash Laterale'),
 ('Team',26,'Leo','Ale','Smash Laterale'),
 ('Team',26,'Siwei','Sandro','Smash Finale'),
 ('Team',26,'Ale','Sandro','Smash Finale'),
 ('Team',26,'Ale','Leo','Smash Finale'),
 ('Team',26,'Leo','Siwei','Smash Finale'),
 ('Team',26,'Leo','Ale','Aereo Posteriore'),
 ('Team',26,'Siwei','Leo','Speciale Standard');

insert into deaths values ('Team',26,'Leo','Autodistruzione');


--Team-25
insert into kills values ('Team',25,'Sandro','Leo','Smash Laterale'),
 ('Team',25,'Ale','Siwei','Altro'),
 ('Team',25,'Leo','Sandro','Smash Finale'),
 ('Team',25,'Siwei','Ale','Altro'),
 ('Team',25,'Sandro','Leo','Aereo Posteriore'),
 ('Team',25,'Ale','Leo','Smash Finale'),
 ('Team',25,'Sandro','Siwei','Altro'),
 ('Team',25,'Siwei','Ale','Altro'),
 ('Team',25,'Ale','Siwei','Speciale Standard');

insert into deaths values ('Team',25,'Siwei','Autodistruzione'),
 ('Team',25,'Siwei','Autodistruzione'),
 ('Team',25,'Ale','Autodistruzione');


--Team-24
insert into kills values ('Team',24,'Leo','Sandro','Altro'),
 ('Team',24,'Leo','Siwei','Smash Laterale'),
 ('Team',24,'Sandro','Leo','Smash Laterale'),
 ('Team',24,'Sandro','Ale','Smash Finale'),
 ('Team',24,'Sandro','Leo','Smash Laterale'),
 ('Team',24,'Ale','Sandro','Smash in Su'),
 ('Team',24,'Leo','Sandro','Smash Finale'),
 ('Team',24,'Ale','Siwei','Aereo Frontale'),
 ('Team',24,'Siwei','Ale','Speciale in Su'),
 ('Team',24,'Siwei','Leo','Altro'),
 ('Team',24,'Siwei','Ale','Speciale in Su');

insert into deaths values ('Team',24,'Sandro','Big Blue'),
 ('Team',24,'Leo','Mancato Recupero');


--Team-23
insert into kills values ('Team',23,'Sandro','Ale','Aereo in Giù'),
 ('Team',23,'Siwei','Leo','Speciale Standard'),
 ('Team',23,'Ale','Sandro','Aereo Standard'),
 ('Team',23,'Ale','Sandro','Smash Finale'),
 ('Team',23,'Leo','Siwei','Altro'),
 ('Team',23,'Sandro','Leo','Aereo Posteriore'),
 ('Team',23,'Sandro','Ale','Aereo in Su'),
 ('Team',23,'Sandro','Ale','Altro');

insert into deaths values ('Team',23,'Leo','Autodistruzione'),
 ('Team',23,'Ale','Autodistruzione');


--Team-22
insert into kills values ('Team',22,'Sandro','Leo','Altro'),
 ('Team',22,'Sandro','Ale','Aereo in Giù'),
 ('Team',22,'Leo','Sandro','Smash in Su'),
 ('Team',22,'Leo','Siwei','Smash Finale'),
 ('Team',22,'Ale','Sandro','Smash Finale'),
 ('Team',22,'Siwei','Leo','Smash Finale'),
 ('Team',22,'Ale','Siwei','Altro'),
 ('Team',22,'Ale','Sandro','Speciale in Su'),
 ('Team',22,'Leo','Siwei','Smash Finale');

insert into deaths values ('Team',22,'Leo','Mancato Recupero'),
 ('Team',22,'Siwei','Mancato Recupero');


--Team-21
insert into kills values ('Team',21,'Siwei','Leo','Speciale in Giù'),
 ('Team',21,'Leo','Ale','Smash in Su'),
 ('Team',21,'Sandro','Siwei','Smash Laterale'),
 ('Team',21,'Siwei','Leo','Altro'),
 ('Team',21,'Ale','Sandro','Altro'),
 ('Team',21,'Sandro','Siwei','Altro'),
 ('Team',21,'Sandro','Ale','Smash Finale'),
 ('Team',21,'Siwei','Leo','Smash Finale'),
 ('Team',21,'Ale','Sandro','Smash Laterale'),
 ('Team',21,'Sandro','Siwei','Smash Finale'),
 ('Team',21,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Team',21,'Leo','Autodistruzione'),
 ('Team',21,'Sandro','Mancato Recupero'),
 ('Team',21,'Siwei','Autodistruzione');


--Team-20
insert into kills values ('Team',20,'Ale','Sandro','Speciale in Giù'),
 ('Team',20,'Sandro','Ale','Smash Laterale'),
 ('Team',20,'Leo','Siwei','Altro'),
 ('Team',20,'Sandro','Siwei','Smash Finale'),
 ('Team',20,'Siwei','Leo','Altro'),
 ('Team',20,'Ale','Sandro','Smash Finale'),
 ('Team',20,'Ale','Leo','Speciale in Giù'),
 ('Team',20,'Sandro','Ale','Smash Laterale'),
 ('Team',20,'Sandro','Siwei','Smash Laterale'),
 ('Team',20,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Team',20,'Siwei','Autodistruzione'),
 ('Team',20,'Leo','Mancato Recupero');


--Team-19
insert into kills values ('Team',19,'Sandro','Leo','Altro'),
 ('Team',19,'Ale','Siwei','Speciale in Giù'),
 ('Team',19,'Leo','Ale','Altro'),
 ('Team',19,'Siwei','Sandro','Speciale Laterale'),
 ('Team',19,'Sandro','Leo','Smash Finale'),
 ('Team',19,'Sandro','Leo','Footstool'),
 ('Team',19,'Sandro','Siwei','Altro');

insert into deaths values ('Team',19,'Leo','Wuhu Island'),
 ('Team',19,'Siwei','Autodistruzione'),
 ('Team',19,'Siwei','Wuhu Island');


--Team-18
insert into kills values ('Team',18,'Leo','Siwei','Smash Laterale'),
 ('Team',18,'Leo','Sandro','Smash in Su'),
 ('Team',18,'Sandro','Ale','Speciale in Giù'),
 ('Team',18,'Sandro','Leo','Aereo Frontale'),
 ('Team',18,'Sandro','Ale','Smash Finale'),
 ('Team',18,'Leo','Siwei','Smash Finale'),
 ('Team',18,'Sandro','Leo','Aereo in Giù'),
 ('Team',18,'Siwei','Ale','Altro'),
 ('Team',18,'Ale','Sandro','Speciale in Giù'),
 ('Team',18,'Sandro','Leo','Smash Finale');

insert into deaths values ('Team',18,'Ale','Autodistruzione');


--Single-98
insert into kills values ('Single',98,'Leo','Ale','Aereo Posteriore'),
 ('Single',98,'Sandro','Leo','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',98,'Siwei','Sandro','Smash Laterale'),
 ('Single',98,'Ale','Siwei','Smash Finale'),
 ('Single',98,'Siwei','Sandro','Speciale Laterale'),
 ('Single',98,'Siwei','Leo','Speciale Laterale'),
 ('Single',98,'Siwei','Ale','Speciale in Su'),
 ('Single',98,'Sandro','Siwei','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',98,'Ale','Sandro','Smash Finale'),
 ('Single',98,'Siwei','Leo','Speciale Laterale'),
 ('Single',98,'Siwei','Ale','Speciale in Su');


--Single-97
insert into kills values ('Single',97,'Ale','Leo','Speciale in Su'),
 ('Single',97,'Leo','Ale','Aereo in Su'),
 ('Single',97,'Ale','Sandro','Speciale in Su'),
 ('Single',97,'Leo','Siwei','Speciale in Su'),
 ('Single',97,'Ale','Leo','Altro'),
 ('Single',97,'Siwei','Ale','Smash Finale'),
 ('Single',97,'Sandro','Siwei','Altro'),
 ('Single',97,'Ale','Siwei','Altro'),
 ('Single',97,'Leo','Sandro','Peculiare'), --PECULIAR: CHARIZARD FLARE BLITZ
 ('Single',97,'Leo','Ale','Smash Finale'),
 ('Single',97,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',97,'Leo','Mancato Recupero'),
 ('Single',97,'Siwei','Autodistruzione'),
 ('Single',97,'Siwei','Mancato Recupero');


--Single-96
insert into kills values ('Single',96,'Ale','Siwei','Speciale in Giù'),
 ('Single',96,'Sandro','Leo','Speciale in Giù'),
 ('Single',96,'Siwei','Sandro','Speciale Standard'),
 ('Single',96,'Siwei','Ale','Speciale in Su'),
 ('Single',96,'Ale','Sandro','Altro'),
 ('Single',96,'Siwei','Leo','Altro'),
 ('Single',96,'Sandro','Siwei','Speciale Laterale'),
 ('Single',96,'Leo','Ale','Smash Finale'),
 ('Single',96,'Sandro','Leo','Smash Finale'),
 ('Single',96,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',96,'Siwei','Autodistruzione'),
 ('Single',96,'Sandro','Autodistruzione'),
 ('Single',96,'Leo','Autodistruzione');


--Single-95
insert into kills values ('Single',95,'Siwei','Sandro','Smash Laterale'),
 ('Single',95,'Siwei','Ale','Smash Laterale'),
 ('Single',95,'Leo','Siwei','Smash Laterale'),
 ('Single',95,'Siwei','Leo','Speciale Laterale'),
 ('Single',95,'Leo','Sandro','Smash Laterale'),
 ('Single',95,'Leo','Siwei','Smash Finale'),
 ('Single',95,'Sandro','Siwei','Altro'),
 ('Single',95,'Ale','Leo','Smash in Giù'),
 ('Single',95,'Leo','Ale','Altro'),
 ('Single',95,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',95,'Siwei','Mancato Recupero'),
 ('Single',95,'Ale','Autodistruzione');


--Single-94
insert into kills values ('Single',94,'Siwei','Sandro','Speciale in Su'),
 ('Single',94,'Ale','Siwei','Speciale in Giù'),
 ('Single',94,'Sandro','Leo','Smash Finale'),
 ('Single',94,'Siwei','Sandro','Smash Finale'),
 ('Single',94,'Siwei','Ale','Smash Laterale'),
 ('Single',94,'Siwei','Sandro','Altro'),
 ('Single',94,'Ale','Siwei','Altro'),
 ('Single',94,'Siwei','Ale','Altro'),
 ('Single',94,'Ale','Leo','Aereo Standard'),
 ('Single',94,'Siwei','Ale','Smash Finale'),
 ('Single',94,'Leo','Siwei','Speciale Laterale');

insert into deaths values ('Single',94,'Sandro','Mancato Recupero'),
 ('Single',94,'Siwei','Autodistruzione');


--Single-93
insert into kills values ('Single',93,'Sandro','Leo','In Corsa'),
 ('Single',93,'Leo','Siwei','Altro'),
 ('Single',93,'Ale','Siwei','Smash in Giù'),
 ('Single',93,'Ale','Sandro','Smash in Su'),
 ('Single',93,'Siwei','Ale','Speciale in Su'),
 ('Single',93,'Leo','Siwei','Smash Finale'),
 ('Single',93,'Leo','Sandro','Smash Laterale'),
 ('Single',93,'Ale','Leo','Speciale in Giù'),
 ('Single',93,'Ale','Leo','Altro'),
 ('Single',93,'Sandro','Ale','Smash in Su'),
 ('Single',93,'Ale','Sandro','Smash in Su');

insert into deaths values ('Single',93,'Siwei','Mushroomy Kingdom'),
 ('Single',93,'Leo','Mushroomy Kingdom');


--Single-92
insert into kills values ('Single',92,'Ale','Siwei','Speciale in Giù'),
 ('Single',92,'Ale','Sandro','Smash in Giù'),
 ('Single',92,'Siwei','Ale','Aereo Frontale'),
 ('Single',92,'Siwei','Sandro','Altro'),
 ('Single',92,'Siwei','Sandro','Altro'),
 ('Single',92,'Ale','Leo','Aereo Posteriore'),
 ('Single',92,'Ale','Siwei','Altro'),
 ('Single',92,'Siwei','Ale','Speciale in Su'),
 ('Single',92,'Ale','Leo','Aereo Frontale'),
 ('Single',92,'Leo','Siwei','Altro'),
 ('Single',92,'Leo','Ale','Peculiare'); --PECULIAR: NESS PK ROCKET

insert into deaths values ('Single',92,'Sandro','Dream Land GB'),
 ('Single',92,'Sandro','Mancato Recupero'),
 ('Single',92,'Siwei','Mancato Recupero'),
 ('Single',92,'Siwei','Autodistruzione');


--Single-91
insert into kills values ('Single',91,'Leo','Sandro','Smash Laterale'),
 ('Single',91,'Leo','Siwei','Smash Laterale'),
 ('Single',91,'Sandro','Ale','Smash Laterale'),
 ('Single',91,'Sandro','Leo','Aereo in Su'),
 ('Single',91,'Ale','Leo','Footstool'),
 ('Single',91,'Ale','Sandro','Smash Finale'),
 ('Single',91,'Siwei','Ale','Speciale Laterale'),
 ('Single',91,'Siwei','Sandro','Speciale in Giù'),
 ('Single',91,'Ale','Leo','Speciale in Giù'),
 ('Single',91,'Siwei','Ale','Speciale Laterale');


--Single-90
insert into kills values ('Single',90,'Ale','Sandro','Speciale Standard'),
 ('Single',90,'Sandro','Ale','Speciale in Su'),
 ('Single',90,'Ale','Leo','Smash in Giù'),
 ('Single',90,'Sandro','Siwei','Smash Finale'),
 ('Single',90,'Ale','Sandro','Smash Finale'),
 ('Single',90,'Siwei','Leo','Smash Finale'),
 ('Single',90,'Leo','Siwei','Altro'),
 ('Single',90,'Leo','Ale','Speciale in Su'),
 ('Single',90,'Ale','Sandro','Aereo Standard'),
 ('Single',90,'Siwei','Leo','Altro'),
 ('Single',90,'Ale','Siwei','Aereo Posteriore');

insert into deaths values ('Single',90,'Siwei','Mancato Recupero');


--Single-89
insert into kills values ('Single',89,'Leo','Ale','Peculiare'), --PECULIAR: LITTLE MAC KO
 ('Single',89,'Siwei','Leo','Speciale Laterale'),
 ('Single',89,'Leo','Siwei','Speciale Laterale'),
 ('Single',89,'Siwei','Sandro','Speciale Laterale'),
 ('Single',89,'Siwei','Ale','Speciale Laterale'),
 ('Single',89,'Ale','Leo','Altro'),
 ('Single',89,'Sandro','Ale','Smash Finale'),
 ('Single',89,'Siwei','Sandro','In Corsa'),
 ('Single',89,'Sandro','Siwei','Smash Laterale'),
 ('Single',89,'Siwei','Sandro','Aereo in Su');

insert into deaths values ('Single',89,'Leo','Autodistruzione'),
 ('Single',89,'Leo','Mancato Recupero');


--Single-88
insert into kills values ('Single',88,'Leo','Siwei','Altro'),
 ('Single',88,'Ale','Leo','Smash in Giù'),
 ('Single',88,'Ale','Sandro','Smash in Giù'),
 ('Single',88,'Siwei','Ale','Speciale Standard'),
 ('Single',88,'Siwei','Leo','Altro'),
 ('Single',88,'Ale','Siwei','Smash Finale'),
 ('Single',88,'Sandro','Ale','Smash Finale'),
 ('Single',88,'Siwei','Ale','Altro'),
 ('Single',88,'Siwei','Sandro','Aereo Frontale'),
 ('Single',88,'Sandro','Siwei','In Corsa');

insert into deaths values ('Single',88,'Leo','Mancato Recupero'),
 ('Single',88,'Leo','Autodistruzione'),
 ('Single',88,'Ale','Mancato Recupero');


--Single-87
insert into kills values ('Single',87,'Sandro','Leo','Peculiare'), --PECULIAR: MR. GAME & WATCH CHAIR
 ('Single',87,'Ale','Siwei','Smash in Giù'),
 ('Single',87,'Sandro','Ale','Altro'),
 ('Single',87,'Leo','Sandro','Speciale Laterale'),
 ('Single',87,'Sandro','Siwei','Altro'),
 ('Single',87,'Sandro','Leo','Smash Finale'),
 ('Single',87,'Sandro','Ale','Smash Laterale'),
 ('Single',87,'Ale','Siwei','Smash in Giù'),
 ('Single',87,'Leo','Sandro','Speciale Laterale'),
 ('Single',87,'Ale','Leo','Altro'),
 ('Single',87,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',87,'Ale','Port Town Aero Dive'),
 ('Single',87,'Siwei','Port Town Aero Dive'),
 ('Single',87,'Leo','Port Town Aero Dive');


--Single-86
insert into kills values ('Single',86,'Siwei','Leo','Speciale Standard'),
 ('Single',86,'Leo','Ale','Speciale Laterale'),
 ('Single',86,'Ale','Sandro','Smash in Giù'),
 ('Single',86,'Ale','Leo','Smash Finale'),
 ('Single',86,'Ale','Sandro','Smash Finale'),
 ('Single',86,'Leo','Siwei','Altro'),
 ('Single',86,'Sandro','Ale','Speciale Standard'),
 ('Single',86,'Leo','Ale','Smash Laterale'),
 ('Single',86,'Sandro','Siwei','Smash Laterale'),
 ('Single',86,'Sandro','Leo','Speciale Standard'),
 ('Single',86,'Siwei','Sandro','Smash Finale');

insert into deaths values ('Single',86,'Siwei','Mancato Recupero');


--Single-85
insert into kills values ('Single',85,'Ale','Sandro','Speciale Standard'),
 ('Single',85,'Ale','Siwei','Smash in Giù'),
 ('Single',85,'Leo','Sandro','Smash Finale'),
 ('Single',85,'Siwei','Leo','Speciale Laterale'),
 ('Single',85,'Sandro','Ale','Smash Laterale'),
 ('Single',85,'Siwei','Leo','Smash Finale'),
 ('Single',85,'Ale','Leo','Smash Finale'),
 ('Single',85,'Siwei','Sandro','Smash Laterale'),
 ('Single',85,'Siwei','Ale','Altro'),
 ('Single',85,'Ale','Siwei','Aereo Posteriore'),
 ('Single',85,'Siwei','Ale','Altro');

insert into deaths values ('Single',85,'Ale','Mancato Recupero'),
 ('Single',85,'Ale','Windy Hill Zone');


--Single-84
insert into kills values ('Single',84,'Siwei','Leo','Speciale Standard'),
 ('Single',84,'Sandro','Ale','Smash Laterale'),
 ('Single',84,'Siwei','Sandro','Aereo Frontale'),
 ('Single',84,'Ale','Sandro','Smash in Giù'),
 ('Single',84,'Sandro','Siwei','Smash Finale'),
 ('Single',84,'Siwei','Leo','Speciale Standard'),
 ('Single',84,'Sandro','Ale','Speciale Laterale'),
 ('Single',84,'Sandro','Siwei','Smash Finale'),
 ('Single',84,'Ale','Sandro','Smash Finale'),
 ('Single',84,'Leo','Ale','Speciale Laterale');


--Random Single-18
insert into kills values ('Random Single',18,'Leo','Sandro','Smash Laterale'),
 ('Random Single',18,'Ale','Siwei','Speciale in Su'),
 ('Random Single',18,'Ale','Leo','Smash in Giù'),
 ('Random Single',18,'Leo','Ale','Speciale Laterale'),
 ('Random Single',18,'Sandro','Siwei','Smash Finale'),
 ('Random Single',18,'Leo','Ale','Smash Finale'),
 ('Random Single',18,'Ale','Leo','Smash in Giù'),
 ('Random Single',18,'Ale','Sandro','In Corsa'),
 ('Random Single',18,'Ale','Sandro','Altro'),
 ('Random Single',18,'Leo','Siwei','Altro'),
 ('Random Single',18,'Leo','Ale','Speciale Laterale');

insert into deaths values ('Random Single',18,'Sandro','Pirate Ship');


--Random Single-17
insert into kills values ('Random Single',17,'Siwei','Leo','Smash in Su'),
 ('Random Single',17,'Ale','Sandro','Smash in Su'),
 ('Random Single',17,'Leo','Siwei','Smash Laterale'),
 ('Random Single',17,'Sandro','Ale','Smash Finale'),
 ('Random Single',17,'Ale','Leo','Smash Finale'),
 ('Random Single',17,'Ale','Sandro','Smash Finale'),
 ('Random Single',17,'Siwei','Ale','Smash Laterale'),
 ('Random Single',17,'Siwei','Leo','Smash Laterale'),
 ('Random Single',17,'Ale','Siwei','Smash Finale'),
 ('Random Single',17,'Siwei','Sandro','Altro'),
 ('Random Single',17,'Siwei','Ale','Aereo Posteriore');

insert into deaths values ('Random Single',17,'Sandro','Mancato Recupero');


--Random Single-16
insert into kills values ('Random Single',16,'Siwei','Sandro','Smash in Su'),
 ('Random Single',16,'Ale','Siwei','Smash in Su'),
 ('Random Single',16,'Leo','Sandro','Aereo Posteriore'),
 ('Random Single',16,'Sandro','Ale','Smash Laterale'),
 ('Random Single',16,'Ale','Leo','Speciale Laterale'),
 ('Random Single',16,'Ale','Siwei','Smash in Su'),
 ('Random Single',16,'Leo','Sandro','Smash Finale'),
 ('Random Single',16,'Leo','Ale','Smash Finale'),
 ('Random Single',16,'Ale','Leo','Smash in Giù'),
 ('Random Single',16,'Ale','Siwei','Altro'),
 ('Random Single',16,'Leo','Ale','Smash Finale');

insert into deaths values ('Random Single',16,'Siwei','Autodistruzione');


--Random Single-15
insert into kills values ('Random Single',15,'Leo','Ale','Speciale in Giù'),
 ('Random Single',15,'Leo','Sandro','Speciale in Giù'),
 ('Random Single',15,'Siwei','Leo','Speciale in Su'),
 ('Random Single',15,'Ale','Siwei','Aereo in Su'),
 ('Random Single',15,'Sandro','Ale','Altro'),
 ('Random Single',15,'Leo','Sandro','Altro'),
 ('Random Single',15,'Ale','Siwei','Smash Finale'),
 ('Random Single',15,'Ale','Leo','Altro'),
 ('Random Single',15,'Sandro','Leo','Smash Finale'),
 ('Random Single',15,'Siwei','Sandro','Altro'),
 ('Random Single',15,'Siwei','Ale','Altro');

insert into deaths values ('Random Single',15,'Ale','Norfair'),
 ('Random Single',15,'Sandro','Norfair'),
 ('Random Single',15,'Leo','Autodistruzione'),
 ('Random Single',15,'Ale','Norfair'),
 ('Random Single',15,'Sandro','Norfair');


--Random Single-14
insert into kills values ('Random Single',14,'Sandro','Leo','Smash Laterale'),
 ('Random Single',14,'Leo','Sandro','Smash Laterale'),
 ('Random Single',14,'Sandro','Ale','Smash in Giù'),
 ('Random Single',14,'Sandro','Siwei','Smash Laterale'),
 ('Random Single',14,'Sandro','Leo','Smash Finale'),
 ('Random Single',14,'Leo','Sandro','Smash Laterale'),
 ('Random Single',14,'Siwei','Ale','Smash Laterale'),
 ('Random Single',14,'Ale','Siwei','Smash in Giù'),
 ('Random Single',14,'Ale','Sandro','Smash in Giù'),
 ('Random Single',14,'Siwei','Ale','Altro'),
 ('Random Single',14,'Siwei','Leo','Smash Finale');

insert into deaths values ('Random Single',14,'Ale','WarioWare Inc.');


--Random Single-13
insert into kills values ('Random Single',13,'Leo','Ale','Smash Laterale'),
 ('Random Single',13,'Ale','Leo','Aereo Posteriore'),
 ('Random Single',13,'Siwei','Sandro','Speciale Laterale'),
 ('Random Single',13,'Leo','Ale','Smash Finale'),
 ('Random Single',13,'Ale','Siwei','Smash in Su'),
 ('Random Single',13,'Ale','Sandro','Smash in Giù'),
 ('Random Single',13,'Siwei','Leo','Speciale Laterale'),
 ('Random Single',13,'Leo','Siwei','Smash Finale'),
 ('Random Single',13,'Sandro','Ale','Smash Finale'),
 ('Random Single',13,'Sandro','Siwei','Aereo in Giù'),
 ('Random Single',13,'Leo','Sandro','Speciale Laterale');


--Single-83
insert into kills values ('Single',83,'Sandro','Siwei','Aereo in Su'),
 ('Single',83,'Leo','Sandro','Speciale Laterale'),
 ('Single',83,'Ale','Leo','Altro'),
 ('Single',83,'Leo','Ale','Speciale Laterale'),
 ('Single',83,'Leo','Siwei','Speciale Laterale'),
 ('Single',83,'Ale','Sandro','Aereo in Su'),
 ('Single',83,'Sandro','Ale','Smash Laterale'),
 ('Single',83,'Sandro','Leo','Altro'),
 ('Single',83,'Siwei','Sandro','Smash Laterale'),
 ('Single',83,'Siwei','Ale','Smash Finale'),
 ('Single',83,'Leo','Siwei','Altro');

insert into deaths values ('Single',83,'Leo','Autodistruzione'),
 ('Single',83,'Leo','Autodistruzione'),
 ('Single',83,'Siwei','Mancato Recupero');


--Single-82
insert into kills values ('Single',82,'Leo','Siwei','Altro'),
 ('Single',82,'Leo','Ale','Altro'),
 ('Single',82,'Ale','Leo','Altro'),
 ('Single',82,'Siwei','Sandro','Altro'),
 ('Single',82,'Leo','Siwei','In Corsa'),
 ('Single',82,'Leo','Sandro','Altro'),
 ('Single',82,'Siwei','Leo','Smash Finale'),
 ('Single',82,'Leo','Ale','Altro'),
 ('Single',82,'Leo','Siwei','Altro'),
 ('Single',82,'Leo','Sandro','Altro'),
 ('Single',82,'Leo','Ale','Altro');

insert into deaths values ('Single',82,'Siwei','Mario Bros.'),
 ('Single',82,'Ale','Mario Bros.'),
 ('Single',82,'Leo','Mario Bros.'),
 ('Single',82,'Sandro','Mario Bros.'),
 ('Single',82,'Ale','Mario Bros.'),
 ('Single',82,'Siwei','Mario Bros.'),
 ('Single',82,'Sandro','Mario Bros.'),
 ('Single',82,'Ale','Mario Bros.');


--Single-81
insert into kills values ('Single',81,'Sandro','Siwei','Altro'),
 ('Single',81,'Ale','Leo','Aereo Posteriore'),
 ('Single',81,'Siwei','Sandro','Smash Laterale'),
 ('Single',81,'Leo','Ale','Speciale in Su'),
 ('Single',81,'Siwei','Sandro','Smash Finale'),
 ('Single',81,'Ale','Siwei','Smash Finale'),
 ('Single',81,'Leo','Ale','Smash Finale'),
 ('Single',81,'Leo','Sandro','Smash Finale'),
 ('Single',81,'Ale','Leo','Altro'),
 ('Single',81,'Leo','Siwei','Smash Laterale'),
 ('Single',81,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',81,'Leo','Prism Tower');


--Single-80
insert into kills values ('Single',80,'Leo','Ale','Aereo in Su'),
 ('Single',80,'Ale','Siwei','Smash in Su'),
 ('Single',80,'Siwei','Sandro','Aereo in Su'),
 ('Single',80,'Ale','Leo','Smash Laterale'),
 ('Single',80,'Ale','Sandro','Altro'),
 ('Single',80,'Sandro','Ale','Smash Finale'),
 ('Single',80,'Ale','Leo','Speciale in Giù'),
 ('Single',80,'Sandro','Siwei','Speciale in Giù'),
 ('Single',80,'Sandro','Leo','Smash Finale'),
 ('Single',80,'Ale','Sandro','Speciale in Giù'),
 ('Single',80,'Siwei','Ale','Altro');

insert into deaths values ('Single',80,'Ale','Autodistruzione'),
 ('Single',80,'Sandro','Autodistruzione');


--Single-79
insert into kills values ('Single',79,'Sandro','Siwei','Speciale Laterale'),
 ('Single',79,'Siwei','Sandro','Altro'),
 ('Single',79,'Sandro','Leo','Speciale Laterale'),
 ('Single',79,'Sandro','Ale','Speciale Laterale'),
 ('Single',79,'Ale','Sandro','Altro'),
 ('Single',79,'Ale','Siwei','Smash in Su'),
 ('Single',79,'Sandro','Ale','Smash Finale'),
 ('Single',79,'Siwei','Leo','Speciale in Su'),
 ('Single',79,'Ale','Siwei','Smash Laterale'),
 ('Single',79,'Ale','Sandro','Smash Finale'),
 ('Single',79,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',79,'Sandro','Autodistruzione'),
 ('Single',79,'Sandro','Autodistruzione');


--Single-78
insert into kills values ('Single',78,'Ale','Sandro','Aereo in Giù'),
 ('Single',78,'Ale','Sandro','Smash in Giù'),
 ('Single',78,'Siwei','Leo','Speciale in Su'),
 ('Single',78,'Leo','Ale','Smash in Su'),
 ('Single',78,'Sandro','Siwei','Altro'),
 ('Single',78,'Leo','Ale','Altro'),
 ('Single',78,'Leo','Siwei','Smash in Su'),
 ('Single',78,'Leo','Ale','Altro'),
 ('Single',78,'Sandro','Siwei','Altro'),
 ('Single',78,'Leo','Sandro','Aereo Frontale');

insert into deaths values ('Single',78,'Siwei','Mancato Recupero'),
 ('Single',78,'Ale','Mancato Recupero'),
 ('Single',78,'Ale','Mancato Recupero'),
 ('Single',78,'Siwei','Mancato Recupero');


--Single-77
insert into kills values ('Single',77,'Ale','Sandro','Altro'),
 ('Single',77,'Ale','Siwei','Aereo Posteriore'),
 ('Single',77,'Leo','Siwei','Altro'),
 ('Single',77,'Siwei','Leo','Speciale in Su'),
 ('Single',77,'Sandro','Siwei','Smash Finale'),
 ('Single',77,'Sandro','Ale','Smash Finale'),
 ('Single',77,'Leo','Sandro','Speciale in Giù'),
 ('Single',77,'Sandro','Leo','Altro'),
 ('Single',77,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',77,'Ale','Autodistruzione'),
 ('Single',77,'Siwei','Autodistruzione'),
 ('Single',77,'Leo','Distant Planet'),
 ('Single',77,'Leo','Distant Planet');


--Single-76
insert into kills values ('Single',76,'Ale','Sandro','Speciale in Giù'),
 ('Single',76,'Sandro','Ale','Smash Laterale'),
 ('Single',76,'Sandro','Leo','Smash Finale'),
 ('Single',76,'Sandro','Ale','Altro'),
 ('Single',76,'Ale','Sandro','Altro'),
 ('Single',76,'Leo','Siwei','Aereo Frontale'),
 ('Single',76,'Ale','Sandro','Smash Finale'),
 ('Single',76,'Ale','Leo','Altro'),
 ('Single',76,'Leo','Siwei','Altro'),
 ('Single',76,'Ale','Siwei','Altro');

insert into deaths values ('Single',76,'Sandro','Spear Pillar'),
 ('Single',76,'Ale','Spear Pillar'),
 ('Single',76,'Leo','Autodistruzione'),
 ('Single',76,'Leo','Spear Pillar'),
 ('Single',76,'Siwei','Spear Pillar'),
 ('Single',76,'Siwei','Mancato Recupero');


--Single-75
insert into kills values ('Single',75,'Sandro','Siwei','Smash Laterale'),
 ('Single',75,'Ale','Sandro','Aereo in Giù'),
 ('Single',75,'Ale','Leo','Speciale in Giù'),
 ('Single',75,'Sandro','Ale','Speciale Laterale'),
 ('Single',75,'Ale','Siwei','Altro'),
 ('Single',75,'Siwei','Sandro','Smash Finale'),
 ('Single',75,'Sandro','Ale','Smash Laterale'),
 ('Single',75,'Leo','Siwei','Smash Finale'),
 ('Single',75,'Sandro','Leo','Speciale Laterale'),
 ('Single',75,'Ale','Sandro','Smash Finale'),
 ('Single',75,'Leo','Ale','Altro');

insert into deaths values ('Single',75,'Siwei','Autodistruzione'),
 ('Single',75,'Ale','Autodistruzione');


--Single-74
insert into kills values ('Single',74,'Ale','Leo','Speciale Standard'),
 ('Single',74,'Sandro','Ale','Speciale in Giù'),
 ('Single',74,'Siwei','Sandro','Speciale in Su'),
 ('Single',74,'Ale','Siwei','Speciale in Su'),
 ('Single',74,'Sandro','Siwei','Altro'),
 ('Single',74,'Siwei','Leo','Speciale in Su'),
 ('Single',74,'Sandro','Ale','Speciale Laterale'),
 ('Single',74,'Leo','Sandro','Smash Laterale'),
 ('Single',74,'Sandro','Siwei','Smash Finale'),
 ('Single',74,'Ale','Leo','Smash Finale'),
 ('Single',74,'Ale','Sandro','Speciale Standard');

insert into deaths values ('Single',74,'Siwei','Mancato Recupero');


--Single-73
insert into kills values ('Single',73,'Ale','Sandro','Altro'),
 ('Single',73,'Leo','Ale','Altro'),
 ('Single',73,'Leo','Sandro','Altro'),
 ('Single',73,'Leo','Siwei','Speciale in Su'),
 ('Single',73,'Siwei','Leo','Smash Finale'),
 ('Single',73,'Siwei','Ale','Smash Finale'),
 ('Single',73,'Leo','Siwei','Smash Laterale'),
 ('Single',73,'Leo','Siwei','Speciale Laterale'),
 ('Single',73,'Leo','Sandro','Aereo Frontale'),
 ('Single',73,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',73,'Sandro','Gerudo Valley');


--Single-72
insert into kills values ('Single',72,'Ale','Leo','Altro'),
 ('Single',72,'Leo','Siwei','Speciale in Su'),
 ('Single',72,'Ale','Sandro','Meteora'),
 ('Single',72,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',72,'Sandro','Leo','Altro'),
 ('Single',72,'Leo','Siwei','Smash Finale'),
 ('Single',72,'Siwei','Ale','Altro'),
 ('Single',72,'Ale','Siwei','Smash Finale'),
 ('Single',72,'Ale','Leo','Altro'),
 ('Single',72,'Sandro','Ale','Altro');

insert into deaths values ('Single',72,'Leo','Mancato Recupero'),
 ('Single',72,'Ale','Norfair'),
 ('Single',72,'Ale','Norfair');


--Single-71
insert into kills values ('Single',71,'Sandro','Siwei','Altro'),
 ('Single',71,'Siwei','Sandro','Altro'),
 ('Single',71,'Sandro','Leo','Smash Finale'),
 ('Single',71,'Siwei','Sandro','Smash Finale'),
 ('Single',71,'Leo','Ale','Smash Finale'),
 ('Single',71,'Leo','Siwei','Smash Finale'),
 ('Single',71,'Siwei','Leo','Altro'),
 ('Single',71,'Leo','Sandro','Speciale in Su'),
 ('Single',71,'Ale','Siwei','Aereo Frontale'),
 ('Single',71,'Ale','Leo','Aereo in Giù');

insert into deaths values ('Single',71,'Siwei','Mancato Recupero'),
 ('Single',71,'Leo','Autodistruzione');


--Random Team-28
insert into kills values ('Random Team',28,'Sandro','Ale','Speciale in Su'),
 ('Random Team',28,'Sandro','Leo','Speciale Laterale'),
 ('Random Team',28,'Leo','Sandro','Speciale in Su'),
 ('Random Team',28,'Leo','Siwei','Speciale in Su'),
 ('Random Team',28,'Leo','Sandro','Altro'),
 ('Random Team',28,'Sandro','Ale','Smash in Su'),
 ('Random Team',28,'Ale','Sandro','Altro' ),
 ('Random Team',28,'Sandro','Leo','Altro'),
 ('Random Team',28,'Ale','Siwei','Altro'),
 ('Random Team',28,'Siwei','Ale','Altro'),
 ('Random Team',28,'Siwei','Leo','Altro');

insert into deaths values ('Random Team',28,'Sandro','Mancato Recupero'),
 ('Random Team',28,'Sandro','Autodistruzione'),
 ('Random Team',28,'Leo','Norfair'),
 ('Random Team',28,'Siwei','Norfair'),
 ('Random Team',28,'Ale','Autodistruzione'),
 ('Random Team',28,'Leo','Autodistruzione');


--Random Team-27
insert into kills values ('Random Team',27,'Leo','Ale','Speciale Standard'),
 ('Random Team',27,'Siwei','Sandro','Altro'),
 ('Random Team',27,'Sandro','Leo','Aereo Frontale'),
 ('Random Team',27,'Siwei','Sandro','Altro'),
 ('Random Team',27,'Siwei','Ale','Smash Laterale'),
 ('Random Team',27,'Ale','Siwei','Smash in Su'),
 ('Random Team',27,'Ale','Leo','Smash Finale'),
 ('Random Team',27,'Ale','Siwei','Aereo Posteriore'),
 ('Random Team',27,'Siwei','Ale','Smash Finale');

insert into deaths values ('Random Team',27,'Leo','Autodistruzione'),
 ('Random Team',27,'Sandro','Mancato Recupero'),
 ('Random Team',27,'Sandro','Mancato Recupero'),
 ('Random Team',27,'Sandro','Autodistruzione');


--Random Team-26
insert into kills values ('Random Team',26,'Siwei','Leo','Altro'),
 ('Random Team',26,'Leo','Siwei','Altro'),
 ('Random Team',26,'Ale','Sandro','Smash Laterale'),
 ('Random Team',26,'Sandro','Ale','Smash Laterale'),
 ('Random Team',26,'Sandro','Ale','Smash Finale'),
 ('Random Team',26,'Leo','Siwei','Smash Laterale'),
 ('Random Team',26,'Ale','Leo','Smash Finale'),
 ('Random Team',26,'Ale','Sandro','Smash Finale'),
 ('Random Team',26,'Sandro','Ale','Smash Laterale'),
 ('Random Team',26,'Sandro','Siwei','Speciale Laterale'),
 ('Random Team',26,'Siwei','Sandro','Altro');

insert into deaths values ('Random Team',26,'Leo','Mancato Recupero'),
 ('Random Team',26,'Siwei','Mancato Recupero'),
 ('Random Team',26,'Sandro','Mancato Recupero'),
 ('Random Team',26,'Sandro','Autodistruzione');


--Random Team-25
insert into kills values ('Random Team',25,'Sandro','Ale','Altro'),
 ('Random Team',25,'Ale','Siwei','Altro'),
 ('Random Team',25,'Ale','Sandro','Smash in Giù'),
 ('Random Team',25,'Ale','Siwei','Smash Finale'),
 ('Random Team',25,'Sandro','Ale','Speciale in Su'),
 ('Random Team',25,'Sandro','Leo','Smash Finale'),
 ('Random Team',25,'Sandro','Ale','Altro'),
 ('Random Team',25,'Leo','Sandro','Smash Laterale'),
 ('Random Team',25,'Leo','Sandro','Altro');

insert into deaths values ('Random Team',25,'Ale','Mancato Recupero'),
 ('Random Team',25,'Siwei','Mancato Recupero'),
 ('Random Team',25,'Siwei','Autodistruzione'),
 ('Random Team',25,'Ale','Autodistruzione'),
 ('Random Team',25,'Sandro','Autodistruzione');


--Random Team-24
insert into kills values ('Random Team',24,'Ale','Leo','Altro'),
 ('Random Team',24,'Siwei','Sandro','Smash Laterale'),
 ('Random Team',24,'Leo','Siwei','Smash Finale'),
 ('Random Team',24,'Leo','Ale','Altro'),
 ('Random Team',24,'Ale','Sandro','Altro'),
 ('Random Team',24,'Siwei','Leo','Smash Finale'),
 ('Random Team',24,'Leo','Siwei','Smash in Su'),
 ('Random Team',24,'Ale','Leo','Smash Finale'),
 ('Random Team',24,'Ale','Sandro','Smash Finale');

insert into deaths values ('Random Team',24,'Leo','Mancato Recupero'),
 ('Random Team',24,'Ale','Autodistruzione'),
 ('Random Team',24,'Sandro','Autodistruzione');


--Random Team-23
insert into kills values ('Random Team',23,'Ale','Sandro','Speciale Standard'),
 ('Random Team',23,'Siwei','Leo','Altro'),
 ('Random Team',23,'Sandro','Ale','Smash Finale'),
 ('Random Team',23,'Sandro','Siwei','Smash Finale'),
 ('Random Team',23,'Leo','Siwei','Smash Laterale'),
 ('Random Team',23,'Siwei','Sandro','Smash Finale'),
 ('Random Team',23,'Leo','Siwei','Smash Finale'),
 ('Random Team',23,'Leo','Ale','Altro'),
 ('Random Team',23,'Ale','Sandro','Smash in Su'),
 ('Random Team',23,'Ale','Leo','Smash in Su'),
 ('Random Team',23,'Ale','Leo','Grab');

insert into deaths values ('Random Team',23,'Ale','Gerudo Valley');


--Random Team-22
insert into kills values ('Random Team',22,'Sandro','Siwei','Smash Laterale'),
 ('Random Team',22,'Sandro','Ale','Smash Laterale'),
 ('Random Team',22,'Ale','Leo','Altro'),
 ('Random Team',22,'Ale','Leo','Smash in Giù'),
 ('Random Team',22,'Ale','Sandro','Smash in Giù'),
 ('Random Team',22,'Siwei','Sandro','Altro'),
 ('Random Team',22,'Ale','Leo','Smash Finale'),
 ('Random Team',22,'Ale','Sandro','Altro');

insert into deaths values ('Random Team',22,'Leo','Mancato Recupero'),
 ('Random Team',22,'Sandro','Mancato Recupero'),
 ('Random Team',22,'Sandro','Mancato Recupero');


--Random Team-21
insert into kills values ('Random Team',21,'Leo','Siwei','Speciale in Su'),
 ('Random Team',21,'Sandro','Ale','Smash in Su'),
 ('Random Team',21,'Leo','Siwei','Speciale in Su'),
 ('Random Team',21,'Ale','Sandro','Altro'),
 ('Random Team',21,'Leo','Ale','Speciale in Su'),
 ('Random Team',21,'Siwei','Leo','Speciale Standard'),
 ('Random Team',21,'Ale','Sandro','Smash Laterale'),
 ('Random Team',21,'Leo','Ale','Speciale in Su'),
 ('Random Team',21,'Leo','Siwei','Speciale in Su');

insert into deaths values ('Random Team',21,'Sandro','Mancato Recupero');


--Random Team-20
insert into kills values ('Random Team',20,'Leo','Sandro','Smash Laterale'),
 ('Random Team',20,'Siwei','Ale','Altro'),
 ('Random Team',20,'Sandro','Leo','Smash in Su'),
 ('Random Team',20,'Sandro','Siwei','Altro'),
 ('Random Team',20,'Siwei','Ale','Altro'),
 ('Random Team',20,'Leo','Sandro','Altro'),
 ('Random Team',20,'Siwei','Sandro','Smash Laterale'),
 ('Random Team',20,'Ale','Siwei','Smash Finale'),
 ('Random Team',20,'Siwei','Ale','Peculiare'); --PECULIAR: CLOUD LIMIT

insert into deaths values ('Random Team',20,'Siwei','Autodistruzione'),
 ('Random Team',20,'Ale','Autodistruzione'),
 ('Random Team',20,'Sandro','Mancato Recupero');


--Random Team-19
insert into kills values ('Random Team',19,'Leo','Sandro','Speciale in Su'),
 ('Random Team',19,'Ale','Siwei','Aereo Standard'),
 ('Random Team',19,'Siwei','Ale','Altro'),
 ('Random Team',19,'Sandro','Leo','Smash Finale'),
 ('Random Team',19,'Ale','Siwei','Smash Finale'),
 ('Random Team',19,'Ale','Sandro','Smash Finale'),
 ('Random Team',19,'Leo','Siwei','Smash Finale'),
 ('Random Team',19,'Leo','Sandro','Speciale in Su');


--Single-70
insert into kills values ('Single',70,'Sandro','Leo','Aereo Posteriore'),
 ('Single',70,'Siwei','Ale','Aereo in Giù'),
 ('Single',70,'Ale','Siwei','Speciale in Su'),
 ('Single',70,'Leo','Siwei','Smash Finale'),
 ('Single',70,'Leo','Ale','Peculiare'), --PECULIAR: CLOUD LIMIT
 ('Single',70,'Leo','Sandro','Peculiare'), --PECULIAR: CLOUD LIMIT
 ('Single',70,'Sandro','Leo','Smash Finale'),
 ('Single',70,'Ale','Siwei','Speciale Laterale'),
 ('Single',70,'Leo','Ale','Altro'),
 ('Single',70,'Sandro','Leo','Smash in Su');

insert into deaths values ('Single',70,'Ale','BUG');


--Single-69
insert into kills values ('Single',69,'Sandro','Ale','Altro'),
 ('Single',69,'Leo','Ale','Altro'),
 ('Single',69,'Siwei','Sandro','Speciale Standard'),
 ('Single',69,'Ale','Siwei','Smash in Su'),
 ('Single',69,'Sandro','Ale','Smash Finale'),
 ('Single',69,'Sandro','Leo','Speciale in Su'),
 ('Single',69,'Siwei','Leo','Altro'),
 ('Single',69,'Sandro','Siwei','Aereo in Giù'),
 ('Single',69,'Siwei','Sandro','Altro'),
 ('Single',69,'Sandro','Siwei','Altro');

insert into deaths values ('Single',69,'Ale','Autodistruzione'),
 ('Single',69,'Ale','Mancato Recupero'),
 ('Single',69,'Leo','Mancato Recupero'),
 ('Single',69,'Leo','Autodistruzione'),
 ('Single',69,'Siwei','Autodistruzione');


--Single-68
insert into kills values ('Single',68,'Ale','Leo','Altro'),
 ('Single',68,'Leo','Sandro','Altro'),
 ('Single',68,'Ale','Siwei','Smash in Su'),
 ('Single',68,'Sandro','Siwei','Altro'),
 ('Single',68,'Sandro','Ale','Smash in Su'),
 ('Single',68,'Leo','Siwei','Altro'),
 ('Single',68,'Sandro','Leo','Smash Laterale'),
 ('Single',68,'Ale','Sandro','Altro'),
 ('Single',68,'Sandro','Ale','Speciale in Giù'),
 ('Single',68,'Sandro','Leo','Smash Finale'),
 ('Single',68,'Ale','Sandro','Smash in Giù');

insert into deaths values ('Single',68,'Leo','Mancato Recupero'),
 ('Single',68,'Sandro','Mancato Recupero'),
 ('Single',68,'Siwei','Autodistruzione'),
 ('Single',68,'Siwei','Super Happy Tree'),
 ('Single',68,'Sandro','Autodistruzione');


--Single-67
insert into kills values ('Single',67,'Sandro','Leo','Peculiare'), --PECULIAR: BOWSER JR HAMMER
 ('Single',67,'Ale','Siwei','Smash in Giù'),
 ('Single',67,'Siwei','Sandro','Altro'),
 ('Single',67,'Siwei','Ale','Smash Finale'),
 ('Single',67,'Sandro','Leo','Aereo in Su'),
 ('Single',67,'Siwei','Sandro','Speciale Laterale'),
 ('Single',67,'Siwei','Ale','Altro'),
 ('Single',67,'Sandro','Siwei','Altro'),
 ('Single',67,'Siwei','Leo','Smash Finale'),
 ('Single',67,'Siwei','Ale','Speciale Laterale'),
 ('Single',67,'Sandro','Siwei','Speciale Standard');

insert into deaths values ('Single',67,'Sandro','Autodistruzione'),
 ('Single',67,'Ale','Autodistruzione');


--Single-66
insert into kills values ('Single',66,'Leo','Siwei','Altro'),
 ('Single',66,'Ale','Sandro','Speciale Standard'),
 ('Single',66,'Siwei','Leo','In Corsa'),
 ('Single',66,'Sandro','Ale','Smash Finale'),
 ('Single',66,'Leo','Siwei','Smash Finale'),
 ('Single',66,'Ale','Leo','Smash in Su'),
 ('Single',66,'Siwei','Sandro','Aereo in Su'),
 ('Single',66,'Leo','Ale','Speciale in Su'),
 ('Single',66,'Ale','Leo','Smash Finale'),
 ('Single',66,'Sandro','Siwei','Smash Finale'),
 ('Single',66,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Single',66,'Siwei','Mancato Recupero');


--Single-65
insert into kills values ('Single',65,'Ale','Sandro','Smash Laterale'),
 ('Single',65,'Siwei','Ale','Peculiare'), --PECULIAR: CORRIN DRAGON FANG SHOT
 ('Single',65,'Ale','Siwei','Smash Finale'),
 ('Single',65,'Ale','Sandro','Smash Finale'),
 ('Single',65,'Siwei','Ale','Altro'),
 ('Single',65,'Sandro','Leo','Smash Laterale'),
 ('Single',65,'Sandro','Siwei','Smash in Su'),
 ('Single',65,'Sandro','Leo','Aereo Posteriore'),
 ('Single',65,'Ale','Siwei','Smash Finale'),
 ('Single',65,'Ale','Sandro','Smash Finale'),
 ('Single',65,'Leo','Ale','Aereo Frontale');

insert into deaths values ('Single',65,'Ale','Autodistruzione');


--Single-64
insert into kills values ('Single',64,'Leo','Ale','Altro'),
 ('Single',64,'Siwei','Leo','Speciale in Su'),
 ('Single',64,'Ale','Sandro','Smash in Giù'),
 ('Single',64,'Sandro','Siwei','Altro'),
 ('Single',64,'Leo','Siwei','Smash Finale'),
 ('Single',64,'Leo','Sandro','Peculiare'), --PECULIAR: LITTLE MAX KO
 ('Single',64,'Ale','Leo','Smash Finale'),
 ('Single',64,'Siwei','Ale','Smash Finale'),
 ('Single',64,'Siwei','Sandro','Smash Finale'),
 ('Single',64,'Siwei','Leo','Speciale in Su'),
 ('Single',64,'Ale','Siwei','Altro');

insert into deaths values ('Single',64,'Ale','Autodistruzione'),
 ('Single',64,'Siwei','Autodistruzione'),
 ('Single',64,'Siwei','Autodistruzione');


--Single-63
insert into kills values ('Single',63,'Ale','Sandro','Speciale Standard'),
 ('Single',63,'Ale','Leo','Speciale Standard'),
 ('Single',63,'Ale','Sandro','Speciale Standard'),
 ('Single',63,'Siwei','Leo','Altro'),
 ('Single',63,'Sandro','Ale','Smash Finale'),
 ('Single',63,'Siwei','Sandro','Smash Finale'),
 ('Single',63,'Ale','Siwei','Altro'),
 ('Single',63,'Siwei','Ale','Speciale Standard'),
 ('Single',63,'Siwei','Leo','Speciale Standard'),
 ('Single',63,'Ale','Siwei','Smash Finale'),
 ('Single',63,'Siwei','Ale','Speciale Standard');

insert into deaths values ('Single',63,'Leo','Autodistruzione');


--Single-62
insert into kills values ('Single',62,'Siwei','Sandro','Altro'),
 ('Single',62,'Ale','Leo','Smash Laterale'),
 ('Single',62,'Sandro','Siwei','Speciale in Giù'),
 ('Single',62,'Sandro','Ale','In Corsa'),
 ('Single',62,'Ale','Leo','Smash Finale'),
 ('Single',62,'Sandro','Siwei','Smash Finale'),
 ('Single',62,'Leo','Siwei','Altro'),
 ('Single',62,'Ale','Sandro','Smash Laterale'),
 ('Single',62,'Sandro','Ale','Altro'),
 ('Single',62,'Leo','Sandro','Altro'),
 ('Single',62,'Leo','Ale','Speciale Laterale');

insert into deaths values ('Single',62,'Sandro','Mancato Recupero'),
 ('Single',62,'Siwei','Autodistruzione'),
 ('Single',62,'Sandro','Autodistruzione');


--Single-61
insert into kills values ('Single',61,'Sandro','Siwei','Smash Laterale'),
 ('Single',61,'Ale','Leo','Smash Laterale'),
 ('Single',61,'Siwei','Ale','Smash Finale'),
 ('Single',61,'Ale','Siwei','Altro'),
 ('Single',61,'Leo','Sandro','Smash Finale'),
 ('Single',61,'Leo','Siwei','Altro'),
 ('Single',61,'Ale','Sandro','Smash Laterale'),
 ('Single',61,'Sandro','Ale','Speciale Laterale'),
 ('Single',61,'Sandro','Ale','Smash Finale'),
 ('Single',61,'Sandro','Leo','Smash in Su'),
 ('Single',61,'Leo','Sandro','Speciale Laterale');

insert into deaths values ('Single',61,'Siwei','Mancato Recupero'),
 ('Single',61,'Siwei','Mancato Recupero');


--Single-60
insert into kills values ('Single',60,'Sandro','Siwei','Altro'),
 ('Single',60,'Siwei','Ale','Altro'),
 ('Single',60,'Siwei','Leo','Altro'),
 ('Single',60,'Siwei','Ale','Smash Finale'),
 ('Single',60,'Siwei','Sandro','Smash Finale'),
 ('Single',60,'Ale','Siwei','Smash Finale'),
 ('Single',60,'Sandro','Leo','Smash Finale'),
 ('Single',60,'Leo','Sandro','Speciale Laterale'),
 ('Single',60,'Leo','Ale','Smash Laterale'),
 ('Single',60,'Siwei','Leo','Smash Finale'),
 ('Single',60,'Siwei','Sandro','Smash Finale');

insert into deaths values ('Single',60,'Siwei','Jungle Japes'),
 ('Single',60,'Ale','Jungle Japes'),
 ('Single',60,'Leo','Jungle Japes');


--Single-59
insert into kills values ('Single',59,'Leo','Siwei','Speciale Laterale'),
 ('Single',59,'Siwei','Leo','Speciale Standard'),
 ('Single',59,'Leo','Ale','Speciale Standard'),
 ('Single',59,'Leo','Siwei','Speciale Laterale'),
 ('Single',59,'Leo','Sandro','Speciale Laterale'),
 ('Single',59,'Leo','Siwei','Speciale Laterale'),
 ('Single',59,'Sandro','Leo','In Corsa'),
 ('Single',59,'Leo','Sandro','Speciale Laterale'),
 ('Single',59,'Leo','Ale','Speciale Laterale'),
 ('Single',59,'Leo','Sandro','Speciale Laterale'),
 ('Single',59,'Ale','Leo','Altro');

insert into deaths values ('Single',59,'Leo','Gaur Plain');


--Single-58
insert into kills values ('Single',58,'Siwei','Sandro','Smash Laterale'),
 ('Single',58,'Sandro','Leo','Altro'),
 ('Single',58,'Sandro','Ale','Speciale in Su'),
 ('Single',58,'Ale','Siwei','Altro'),
 ('Single',58,'Sandro','Ale','Smash Finale'),
 ('Single',58,'Siwei','Sandro','Smash Finale'),
 ('Single',58,'Sandro','Leo','Speciale in Su'),
 ('Single',58,'Ale','Leo','Smash Finale'),
 ('Single',58,'Ale','Siwei','Smash Finale'),
 ('Single',58,'Ale','Sandro','Aereo Frontale'),
 ('Single',58,'Siwei','Ale','Smash Finale');


--Single-57
insert into kills values ('Single',57,'Ale','Sandro','Altro'),
 ('Single',57,'Ale','Leo','Smash Laterale'),
 ('Single',57,'Leo','Siwei','Smash Laterale'),
 ('Single',57,'Ale','Siwei','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',57,'Ale','Sandro','Peculiare'), --PECULIAR: CHARIZARD FIRE BLITZ
 ('Single',57,'Sandro','Ale','Aereo in Su'),
 ('Single',57,'Leo','Siwei','Smash Finale'),
 ('Single',57,'Ale','Leo','Aereo in Su'),
 ('Single',57,'Sandro','Ale','Speciale in Su'),
 ('Single',57,'Sandro','Ale','Meteora'),
 ('Single',57,'Leo','Sandro','Altro');

insert into deaths values ('Single',57,'Sandro','Autodistruzione'),
 ('Single',57,'Sandro','Autodistruzione');


--Single-56
insert into kills values ('Single',56,'Ale','Sandro','Smash Laterale'),
 ('Single',56,'Sandro','Leo','Smash Laterale'),
 ('Single',56,'Leo','Siwei','Speciale in Su'),
 ('Single',56,'Siwei','Sandro','Smash Finale'),
 ('Single',56,'Sandro','Siwei','Smash Laterale'),
 ('Single',56,'Leo','Ale','Smash Finale'),
 ('Single',56,'Ale','Siwei','Smash Laterale'),
 ('Single',56,'Siwei','Sandro','Altro'),
 ('Single',56,'Ale','Leo','Altro'),
 ('Single',56,'Ale','Leo','Peculiare'); --PECULIAR: CHARIZARD FIRE BLITZ

insert into deaths values ('Single',56,'Sandro','Mancato Recupero'),
 ('Single',56,'Leo','Mancato Recupero');


--Random Single-12
insert into kills values ('Random Single',12,'Leo','Siwei','Altro'),
 ('Random Single',12,'Sandro','Ale','Speciale in Su'),
 ('Random Single',12,'Siwei','Ale','Smash Finale'),
 ('Random Single',12,'Siwei','Leo','Smash Finale'),
 ('Random Single',12,'Siwei','Sandro','Smash Finale'),
 ('Random Single',12,'Ale','Sandro','Smash Finale'),
 ('Random Single',12,'Sandro','Siwei','Smash Finale'),
 ('Random Single',12,'Sandro','Siwei','Altro'),
 ('Random Single',12,'Ale','Sandro','Smash Laterale'),
 ('Random Single',12,'Ale','Leo','Smash Laterale'),
 ('Random Single',12,'Leo','Ale','Smash Laterale');

insert into deaths values ('Random Single',12,'Siwei','Living Room');


--Random Single-11
insert into kills values ('Random Single',11,'Leo','Ale','Speciale Laterale'),
 ('Random Single',11,'Leo','Sandro','Speciale Laterale'),
 ('Random Single',11,'Ale','Siwei','Aereo Frontale'),
 ('Random Single',11,'Siwei','Leo','Speciale in Giù'),
 ('Random Single',11,'Sandro','Siwei','Altro'),
 ('Random Single',11,'Siwei','Sandro','Smash Finale'),
 ('Random Single',11,'Leo','Siwei','Altro'),
 ('Random Single',11,'Leo','Ale','Altro'),
 ('Random Single',11,'Leo','Sandro','Altro');

insert into deaths values ('Random Single',11,'Ale','Autodistruzione'),
 ('Random Single',11,'Siwei','Dream Land GB'),
 ('Random Single',11,'Sandro','Mancato Recupero');


--Random Single-10
insert into kills values ('Random Single',10,'Leo','Siwei','Speciale Standard'),
 ('Random Single',10,'Leo','Ale','Speciale Standard'),
 ('Random Single',10,'Ale','Leo','Smash in Su'),
 ('Random Single',10,'Ale','Sandro','Smash in Su'),
 ('Random Single',10,'Ale','Sandro','Altro'),
 ('Random Single',10,'Siwei','Sandro','Smash Finale'),
 ('Random Single',10,'Siwei','Leo','Altro'),
 ('Random Single',10,'Ale','Siwei','Altro'),
 ('Random Single',10,'Leo','Ale','Altro'),
 ('Random Single',10,'Ale','Siwei','Smash Finale'),
 ('Random Single',10,'Leo','Ale','Speciale Standard');

insert into deaths values ('Random Single',10,'Sandro','Mancato Recupero'),
 ('Random Single',10,'Siwei','Mancato Recupero'),
 ('Random Single',10,'Ale','Mancato Recupero');


--Random Single-9
insert into kills values ('Random Single',9,'Leo','Siwei','Smash in Su'),
 ('Random Single',9,'Ale','Sandro','Smash in Su'),
 ('Random Single',9,'Leo','Ale','Speciale in Giù'),
 ('Random Single',9,'Sandro','Leo','Altro'),
 ('Random Single',9,'Sandro','Leo','Smash Finale'),
 ('Random Single',9,'Siwei','Sandro','Smash Finale'),
 ('Random Single',9,'Leo','Ale','Smash Finale'),
 ('Random Single',9,'Sandro','Siwei','Aereo in Su'),
 ('Random Single',9,'Leo','Sandro','Speciale in Giù'),
 ('Random Single',9,'Leo','Siwei','Speciale in Giù');

insert into deaths values ('Random Single',9,'Ale','Autodistruzione'),
 ('Random Single',9,'Leo','Autodistruzione');


--Random Single-8
insert into kills values ('Random Single',8,'Ale','Siwei','Altro'),
 ('Random Single',8,'Siwei','Sandro','Altro'),
 ('Random Single',8,'Leo','Ale','Smash Laterale'),
 ('Random Single',8,'Ale','Leo','Aereo in Su'),
 ('Random Single',8,'Leo','Siwei','Altro'),
 ('Random Single',8,'Ale','Sandro','Smash Finale'),
 ('Random Single',8,'Sandro','Ale','Smash Laterale'),
 ('Random Single',8,'Leo','Siwei','Speciale Laterale'),
 ('Random Single',8,'Ale','Sandro','Smash Laterale'),
 ('Random Single',8,'Sandro','Leo','Altro'),
 ('Random Single',8,'Ale','Leo','Smash Laterale');

insert into deaths values ('Random Single',8,'Sandro','Mancato Recupero'),
 ('Random Single',8,'Siwei','Autodistruzione'),
 ('Random Single',8,'Siwei','Autodistruzione'),
 ('Random Single',8,'Leo','Autodistruzione');


--Random Single-7
insert into kills values ('Random Single',7,'Ale','Sandro','Altro'),
 ('Random Single',7,'Sandro','Ale','In Corsa'),
 ('Random Single',7,'Siwei','Ale','Smash Laterale'),
 ('Random Single',7,'Ale','Leo','Smash Laterale'),
 ('Random Single',7,'Sandro','Leo','Speciale Standard'),
 ('Random Single',7,'Ale','Siwei','Speciale Standard'),
 ('Random Single',7,'Leo','Sandro','Altro'),
 ('Random Single',7,'Siwei','Ale','Smash Finale'),
 ('Random Single',7,'Siwei','Leo','Smash Finale'),
 ('Random Single',7,'Sandro','Siwei','Smash Finale'),
 ('Random Single',7,'Siwei','Sandro','Smash Laterale');

insert into deaths values ('Random Single',7,'Sandro','Find Mii'),
 ('Random Single',7,'Sandro','Mancato Recupero');


--Random Single-6
insert into kills values ('Random Single',6,'Ale','Leo','Altro'),
 ('Random Single',6,'Ale','Siwei','Altro'),
 ('Random Single',6,'Leo','Sandro','Altro'),
 ('Random Single',6,'Ale','Siwei','Speciale in Giù'),
 ('Random Single',6,'Ale','Sandro','Altro'),
 ('Random Single',6,'Leo','Ale','Speciale in Su'),
 ('Random Single',6,'Ale','Leo','Smash Finale'),
 ('Random Single',6,'Sandro','Ale','Altro'),
 ('Random Single',6,'Ale','Siwei','Altro'),
 ('Random Single',6,'Leo','Ale','Smash Finale'),
 ('Random Single',6,'Sandro','Leo','Altro');

insert into deaths values ('Random Single',6,'Leo','Autodistruzione'),
 ('Random Single',6,'Siwei','Norfair'),
 ('Random Single',6,'Sandro','Norfair'),
 ('Random Single',6,'Sandro','Norfair'),
 ('Random Single',6,'Ale','Norfair'),
 ('Random Single',6,'Siwei','Norfair'),
 ('Random Single',6,'Leo','Autodistruzione');


--Random Single-5
insert into kills values ('Random Single',5,'Ale','Leo','Aereo Standard'),
 ('Random Single',5,'Ale','Sandro','Smash Laterale'),
 ('Random Single',5,'Leo','Ale','Speciale in Giù'),
 ('Random Single',5,'Siwei','Leo','Speciale Laterale'),
 ('Random Single',5,'Ale','Siwei','Smash in Giù'),
 ('Random Single',5,'Ale','Sandro','Smash Finale'),
 ('Random Single',5,'Leo','Ale','Speciale Standard'),
 ('Random Single',5,'Siwei','Leo','Speciale Laterale'),
 ('Random Single',5,'Sandro','Siwei','Smash Laterale'),
 ('Random Single',5,'Ale','Sandro','Altro'),
 ('Random Single',5,'Ale','Siwei','In Corsa');

insert into deaths values ('Random Single',5,'Sandro','Mancato Recupero');


--Random Single-4
insert into kills values ('Random Single',4,'Siwei','Sandro','Altro'),
 ('Random Single',4,'Sandro','Leo','Aereo Posteriore'),
 ('Random Single',4,'Sandro','Leo','Altro'),
 ('Random Single',4,'Leo','Sandro','Smash Finale'),
 ('Random Single',4,'Ale','Siwei','Speciale Laterale'),
 ('Random Single',4,'Sandro','Siwei','Altro'),
 ('Random Single',4,'Siwei','Sandro','Altro'),
 ('Random Single',4,'Leo','Ale','Speciale Standard'),
 ('Random Single',4,'Ale','Siwei','Altro'),
 ('Random Single',4,'Ale','Leo','Altro');

insert into deaths values ('Random Single',4,'Sandro','Mancato Recupero'),
 ('Random Single',4,'Leo','Mancato Recupero'),
 ('Random Single',4,'Siwei','Mancato Recupero'),
 ('Random Single',4,'Sandro','Mancato Recupero'),
 ('Random Single',4,'Siwei','Autodistruzione'),
 ('Random Single',4,'Leo','Mancato Recupero');


--Random Single-3
insert into kills values ('Random Single',3,'Leo','Sandro','Speciale Standard'),
 ('Random Single',3,'Sandro','Siwei','Speciale in Su'),
 ('Random Single',3,'Siwei','Leo','Speciale in Su'),
 ('Random Single',3,'Siwei','Ale','Smash Laterale'),
 ('Random Single',3,'Leo','Siwei','Smash Finale'),
 ('Random Single',3,'Leo','Sandro','Smash Finale'),
 ('Random Single',3,'Ale','Leo','Smash Finale'),
 ('Random Single',3,'Ale','Sandro','Smash Finale'),
 ('Random Single',3,'Leo','Siwei','Speciale Standard'),
 ('Random Single',3,'Leo','Ale','Smash Laterale'),
 ('Random Single',3,'Ale','Leo','Smash in Giù');


--Random Single-2
insert into kills values ('Random Single',2,'Leo','Siwei','Speciale Laterale'),
 ('Random Single',2,'Leo','Sandro','Aereo Frontale'),
 ('Random Single',2,'Sandro','Ale','In Corsa'),
 ('Random Single',2,'Ale','Leo','Smash Finale'),
 ('Random Single',2,'Sandro','Siwei','Speciale Standard'),
 ('Random Single',2,'Sandro','Ale','Altro'),
 ('Random Single',2,'Leo','Siwei','Altro'),
 ('Random Single',2,'Ale','Sandro','Altro'),
 ('Random Single',2,'Sandro','Leo','Smash Laterale'),
 ('Random Single',2,'Leo','Ale','Aereo in Su'),
 ('Random Single',2,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Random Single',2,'Ale','Autodistruzione'),
 ('Random Single',2,'Siwei','Autodistruzione'),
 ('Random Single',2,'Sandro','Mancato Recupero');


--Random Single-1
insert into kills values ('Random Single',1,'Leo','Siwei','Altro'),
 ('Random Single',1,'Siwei','Leo','Altro'),
 ('Random Single',1,'Siwei','Sandro','Peculiare'), --PECULIAR: BOWSER JR. HAMMER
 ('Random Single',1,'Sandro','Siwei','Smash Finale'),
 ('Random Single',1,'Leo','Ale','Smash Finale'),
 ('Random Single',1,'Siwei','Sandro','Smash Finale'),
 ('Random Single',1,'Siwei','Leo','Smash Finale'),
 ('Random Single',1,'Ale','Siwei','Smash Finale'),
 ('Random Single',1,'Ale','Leo','Speciale Standard'),
 ('Random Single',1,'Ale','Sandro','Smash Laterale');

insert into deaths values ('Random Single',1,'Siwei','Autodistruzione'),
 ('Random Single',1,'Leo','Mancato Recupero'),
 ('Random Single',1,'Leo','Mancato Recupero');


--Single-55
insert into kills values ('Single',55,'Leo','Siwei','Altro'),
 ('Single',55,'Sandro','Ale','Altro'),
 ('Single',55,'Leo','Siwei','Altro'),
 ('Single',55,'Sandro','Leo','Smash Finale'),
 ('Single',55,'Ale','Sandro','Altro'),
 ('Single',55,'Ale','Sandro','Altro'),
 ('Single',55,'Ale','Leo','Smash Finale'),
 ('Single',55,'Sandro','Siwei','Speciale Standard'),
 ('Single',55,'Sandro','Ale','Speciale Standard'),
 ('Single',55,'Leo','Ale','Smash Finale'),
 ('Single',55,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Single',55,'Siwei','Hyrule Castle'),
 ('Single',55,'Ale','Mancato Recupero'),
 ('Single',55,'Siwei','Autodistruzione'),
 ('Single',55,'Sandro','Hyrule Castle'),
 ('Single',55,'Sandro','Mancato Recupero');


--Single-54
insert into kills values ('Single',54,'Ale','Leo','Smash Laterale'),
 ('Single',54,'Leo','Sandro','Speciale in Giù'),
 ('Single',54,'Leo','Siwei','Smash Finale'),
 ('Single',54,'Leo','Ale','Smash Finale'),
 ('Single',54,'Siwei','Leo','Speciale Laterale'),
 ('Single',54,'Sandro','Siwei','Smash Finale'),
 ('Single',54,'Ale','Sandro','Smash in Giù'),
 ('Single',54,'Sandro','Ale','Speciale Standard'),
 ('Single',54,'Siwei','Leo','Speciale in Su'),
 ('Single',54,'Ale','Siwei','Smash Laterale'),
 ('Single',54,'Sandro','Ale','Speciale Standard');


--Single-53
insert into kills values ('Single',53,'Leo','Siwei','Speciale in Su'),
 ('Single',53,'Ale','Leo','Smash in Giù'),
 ('Single',53,'Siwei','Ale','Aereo Frontale'),
 ('Single',53,'Ale','Sandro','Smash in Giù'),
 ('Single',53,'Leo','Siwei','Altro'),
 ('Single',53,'Ale','Siwei','Smash in Giù'),
 ('Single',53,'Ale','Sandro','Smash in Giù'),
 ('Single',53,'Ale','Leo','Altro'),
 ('Single',53,'Sandro','Ale','Smash Finale'),
 ('Single',53,'Ale','Sandro','Smash Finale'),
 ('Single',53,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',53,'Siwei','Autodistruzione'),
 ('Single',53,'Leo','Mushroomy Kingdom');


--Single-52
insert into kills values ('Single',52,'Ale','Siwei','Smash in Giù'),
 ('Single',52,'Ale','Sandro','Speciale in Giù'),
 ('Single',52,'Sandro','Ale','Smash Laterale'),
 ('Single',52,'Sandro','Siwei','Altro'),
 ('Single',52,'Sandro','Leo','Smash Finale'),
 ('Single',52,'Siwei','Ale','Smash Finale'),
 ('Single',52,'Siwei','Sandro','Altro'),
 ('Single',52,'Leo','Sandro','Aereo Frontale'),
 ('Single',52,'Leo','Ale','Altro'),
 ('Single',52,'Leo','Siwei','Altro');

insert into deaths values ('Single',52,'Siwei','Mancato Recupero'),
 ('Single',52,'Ale','Mancato Recupero');


--Single-51
insert into kills values ('Single',51,'Ale','Leo','Altro'),
 ('Single',51,'Sandro','Ale','Speciale in Su'),
 ('Single',51,'Leo','Siwei','Speciale in Giù'),
 ('Single',51,'Sandro','Ale','Smash Laterale'),
 ('Single',51,'Sandro','Siwei','Smash Finale'),
 ('Single',51,'Leo','Ale','Smash Finale'),
 ('Single',51,'Leo','Sandro','Speciale in Su'),
 ('Single',51,'Siwei','Leo','Speciale Laterale'),
 ('Single',51,'Sandro','Siwei','Smash Finale'),
 ('Single',51,'Siwei','Sandro','Altro'),
 ('Single',51,'Leo','Sandro','Smash Finale');

insert into deaths values ('Single',51,'Leo','Mancato Recupero'),
 ('Single',51,'Sandro','Autodistruzione');


--Single-50
insert into kills values ('Single',50,'Ale','Leo','Speciale in Su'),
 ('Single',50,'Sandro','Siwei','Speciale Standard'),
 ('Single',50,'Leo','Ale','Speciale Standard'),
 ('Single',50,'Leo','Siwei','Speciale in Giù'),
 ('Single',50,'Sandro','Leo','Speciale Standard'),
 ('Single',50,'Ale','Sandro','Smash Finale'),
 ('Single',50,'Siwei','Ale','Smash Finale'),
 ('Single',50,'Ale','Siwei','Speciale in Su'),
 ('Single',50,'Sandro','Leo','Smash Laterale'),
 ('Single',50,'Sandro','Ale','Speciale Standard');


--Single-49
insert into kills values ('Single',49,'Leo','Sandro','Altro'),
 ('Single',49,'Ale','Siwei','Speciale in Su'),
 ('Single',49,'Leo','Ale','Speciale in Giù'),
 ('Single',49,'Siwei','Leo','Smash Finale'),
 ('Single',49,'Leo','Siwei','Speciale Standard'),
 ('Single',49,'Leo','Sandro','Smash Finale'),
 ('Single',49,'Sandro','Leo','Smash Finale'),
 ('Single',49,'Siwei','Ale','Smash Laterale'),
 ('Single',49,'Siwei','Sandro','Smash Finale'),
 ('Single',49,'Leo','Siwei','Altro'),
 ('Single',49,'Leo','Ale','Speciale Standard');

insert into deaths values ('Single',49,'Sandro','Mancato Recupero');


--Single-48
insert into kills values ('Single',48,'Ale','Siwei','Speciale Standard'),
 ('Single',48,'Siwei','Sandro','In Corsa'),
 ('Single',48,'Leo','Ale','Speciale in Giù'),
 ('Single',48,'Sandro','Leo','Smash Laterale'),
 ('Single',48,'Sandro','Siwei','Speciale in Su'),
 ('Single',48,'Ale','Sandro','Smash Finale'),
 ('Single',48,'Ale','Siwei','Speciale in Giù'),
 ('Single',48,'Leo','Ale','Smash Finale'),
 ('Single',48,'Ale','Leo','Speciale in Giù'),
 ('Single',48,'Leo','Ale','Smash Finale'),
 ('Single',48,'Sandro','Leo','Speciale Standard');


--Single-47
insert into kills values ('Single',47,'Siwei','Leo','Altro'),
 ('Single',47,'Siwei','Sandro','Speciale Standard'),
 ('Single',47,'Sandro','Siwei','Speciale Standard'),
 ('Single',47,'Leo','Ale','Smash Finale'),
 ('Single',47,'Leo','Sandro','Smash Finale'),
 ('Single',47,'Ale','Leo','Speciale in Giù'),
 ('Single',47,'Sandro','Leo','Altro'),
 ('Single',47,'Ale','Siwei','Altro'),
 ('Single',47,'Ale','Sandro','Smash Finale'),
 ('Single',47,'Siwei','Ale','Speciale Standard'),
 ('Single',47,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',47,'Leo','Mancato Recupero'),
 ('Single',47,'Leo','Mancato Recupero'),
 ('Single',47,'Siwei','Autodistruzione');


--Single-46
insert into kills values ('Single',46,'Siwei','Leo','Speciale Laterale'),
 ('Single',46,'Leo','Siwei','Altro'),
 ('Single',46,'Ale','Sandro','Speciale in Giù'),
 ('Single',46,'Leo','Sandro','Altro'),
 ('Single',46,'Sandro','Ale','Smash Finale'),
 ('Single',46,'Sandro','Siwei','Smash Finale'),
 ('Single',46,'Leo','Sandro','Altro'),
 ('Single',46,'Ale','Siwei','Speciale in Giù'),
 ('Single',46,'Ale','Leo','Speciale in Giù'),
 ('Single',46,'Ale','Leo','Altro');

insert into deaths values ('Single',46,'Siwei','Wily Castle'),
 ('Single',46,'Sandro','Autodistruzione'),
 ('Single',46,'Sandro','Mancato Recupero'),
 ('Single',46,'Leo','Autodistruzione');


--Single-45
insert into kills values ('Single',45,'Sandro','Siwei','Speciale Standard'),
 ('Single',45,'Ale','Siwei','Smash Finale'),
 ('Single',45,'Siwei','Sandro','Smash Laterale'),
 ('Single',45,'Leo','Ale','Speciale in Su'),
 ('Single',45,'Siwei','Leo','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',45,'Siwei','Ale','Aereo Posteriore'),
 ('Single',45,'Sandro','Leo','Smash Finale'),
 ('Single',45,'Leo','Siwei','Smash Finale'),
 ('Single',45,'Leo','Sandro','Smash Laterale'),
 ('Single',45,'Sandro','Ale','Smash Finale'),
 ('Single',45,'Sandro','Leo','Smash in Su');


--Single-44
insert into kills values ('Single',44,'Leo','Ale','Speciale in Su'),
 ('Single',44,'Ale','Siwei','Speciale in Giù'),
 ('Single',44,'Siwei','Leo','Speciale Laterale'),
 ('Single',44,'Ale','Siwei','Smash Finale'),
 ('Single',44,'Ale','Sandro','Smash Laterale'),
 ('Single',44,'Leo','Ale','Speciale in Giù'),
 ('Single',44,'Ale','Leo','Speciale in Giù'),
 ('Single',44,'Siwei','Sandro','Speciale Laterale'),
 ('Single',44,'Sandro','Siwei','Altro'),
 ('Single',44,'Sandro','Ale','Speciale in Su'),
 ('Single',44,'Sandro','Leo','Speciale Standard');

insert into deaths values ('Single',44,'Siwei','Autodistruzione');


--Single-43
insert into kills values ('Single',43,'Sandro','Leo','Speciale Standard'),
 ('Single',43,'Siwei','Ale','Aereo in Su'),
 ('Single',43,'Sandro','Leo','Smash Finale'),
 ('Single',43,'Sandro','Siwei','Smash Finale'),
 ('Single',43,'Ale','Sandro','Smash in Giù'),
 ('Single',43,'Ale','Siwei','Smash Finale'),
 ('Single',43,'Siwei','Ale','Smash Finale'),
 ('Single',43,'Ale','Sandro','Speciale in Giù'),
 ('Single',43,'Sandro','Siwei','Smash Finale'),
 ('Single',43,'Sandro','Leo','In Corsa'),
 ('Single',43,'Ale','Sandro','Smash in Giù');


--Single-42
insert into kills values ('Single',42,'Sandro','Ale','Altro'),
 ('Single',42,'Ale','Siwei','Smash Laterale'),
 ('Single',42,'Siwei','Leo','Smash Finale'),
 ('Single',42,'Sandro','Ale','Altro'),
 ('Single',42,'Ale','Siwei','Smash Finale'),
 ('Single',42,'Leo','Sandro','Altro'),
 ('Single',42,'Leo','Siwei','Speciale Standard'),
 ('Single',42,'Sandro','Ale','Aereo in Giù'),
 ('Single',42,'Sandro','Leo','Smash Finale'),
 ('Single',42,'Leo','Sandro','Aereo Frontale'),
 ('Single',42,'Sandro','Leo','Peculiare'); --PECULIAR BOWSER JR. HAMMER

insert into deaths values ('Single',42,'Sandro','Windy Hill Zone');


--Single-41
insert into kills values ('Single',41,'Ale','Siwei','Meteora'),
 ('Single',41,'Siwei','Leo','Aereo Frontale'),
 ('Single',41,'Siwei','Ale','Speciale in Su'),
 ('Single',41,'Siwei','Sandro','Smash Finale'),
 ('Single',41,'Sandro','Leo','Smash Finale'),
 ('Single',41,'Sandro','Siwei','Smash Finale'),
 ('Single',41,'Leo','Sandro','Speciale Standard'),
 ('Single',41,'Leo','Siwei','Speciale Standard'),
 ('Single',41,'Sandro','Ale','Speciale in Su'),
 ('Single',41,'Leo','Sandro','Altro');

insert into deaths values ('Single',41,'Leo','Mancato Recupero'),
 ('Single',41,'Ale','Autodistruzione'),
 ('Single',41,'Sandro','Mancato Recupero');


--Single-40
insert into kills values ('Single',40,'Ale','Sandro','Aereo Frontale'),
 ('Single',40,'Siwei','Leo','Altro'),
 ('Single',40,'Ale','Siwei','Speciale Standard'),
 ('Single',40,'Siwei','Sandro','Smash Finale'),
 ('Single',40,'Leo','Ale','Speciale in Su'),
 ('Single',40,'Sandro','Leo','Smash Finale'),
 ('Single',40,'Ale','Siwei','Smash in Su'),
 ('Single',40,'Sandro','Ale','Speciale Standard'),
 ('Single',40,'Siwei','Sandro','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',40,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',40,'Leo','Mancato Recupero'),
 ('Single',40,'Leo','Autodistruzione');


--Single-39
insert into kills values ('Single',39,'Ale','Sandro','Smash in Giù'),
 ('Single',39,'Ale','Leo','Smash in Su'),
 ('Single',39,'Sandro','Siwei','Speciale Standard'),
 ('Single',39,'Leo','Siwei','Smash Finale'),
 ('Single',39,'Leo','Ale','Smash Finale'),
 ('Single',39,'Ale','Sandro','Speciale in Giù'),
 ('Single',39,'Siwei','Leo','Aereo in Su'),
 ('Single',39,'Leo','Siwei','In Corsa'),
 ('Single',39,'Leo','Ale','Smash Finale'),
 ('Single',39,'Leo','Sandro','Smash Finale'),
 ('Single',39,'Ale','Leo','Smash in Su');


--Single-38
insert into kills values ('Single',38,'Siwei','Leo','Altro'),
 ('Single',38,'Ale','Siwei','Smash Laterale'),
 ('Single',38,'Leo','Ale','Smash Laterale'),
 ('Single',38,'Ale','Leo','Smash Finale'),
 ('Single',38,'Ale','Sandro','Smash Finale'),
 ('Single',38,'Siwei','Ale','Smash Laterale'),
 ('Single',38,'Sandro','Siwei','Altro'),
 ('Single',38,'Siwei','Sandro','Altro'),
 ('Single',38,'Ale','Sandro','Altro'),
 ('Single',38,'Siwei','Leo','Altro'),
 ('Single',38,'Ale','Siwei','Speciale in Giù');

insert into deaths values ('Single',38,'Leo','Autodistruzione'),
 ('Single',38,'Siwei','Autodistruzione'),
 ('Single',38,'Sandro','Autodistruzione'),
 ('Single',38,'Sandro','Mancato Recupero'),
 ('Single',38,'Leo','Autodistruzione');


--Random Team-18
insert into kills values ('Random Team',18,'Ale','Siwei','Smash Laterale'),
 ('Random Team',18,'Leo','Ale','Altro'),
 ('Random Team',18,'Leo','Sandro','Altro'),
 ('Random Team',18,'Leo','Ale','Smash Laterale'),
 ('Random Team',18,'Ale','Leo','Smash Laterale'),
 ('Random Team',18,'Sandro','Siwei','Smash Finale'),
 ('Random Team',18,'Leo','Sandro','Smash Finale'),
 ('Random Team',18,'Siwei','Ale','Smash Laterale'),
 ('Random Team',18,'Siwei','Sandro','Smash Finale');

insert into deaths values ('Random Team',18,'Ale','Mancato Recupero');


--Random Team-17
insert into kills values ('Random Team',17,'Siwei','Sandro','Altro'),
 ('Random Team',17,'Leo','Ale','Speciale Standard'),
 ('Random Team',17,'Sandro','Siwei','Smash Finale'),
 ('Random Team',17,'Ale','Leo','Smash Laterale'),
 ('Random Team',17,'Ale','Sandro','Smash Finale'),
 ('Random Team',17,'Siwei','Leo','Smash Finale'),
 ('Random Team',17,'Siwei','Sandro','Smash Finale'),
 ('Random Team',17,'Ale','Leo','Smash Laterale');

insert into deaths values ('Random Team',17,'Sandro','Autodistruzione');


--Random Team-16
insert into kills values ('Random Team',16,'Siwei','Ale','Altro'),
 ('Random Team',16,'Ale','Leo','Speciale in Su'),
 ('Random Team',16,'Siwei','Sandro','Smash Laterale'),
 ('Random Team',16,'Sandro','Siwei','Altro'),
 ('Random Team',16,'Leo','Ale','Smash Laterale'),
 ('Random Team',16,'Sandro','Siwei','Altro'),
 ('Random Team',16,'Leo','Sandro','Altro'),
 ('Random Team',16,'Ale','Leo','Speciale in Su'),
 ('Random Team',16,'Siwei','Sandro','Altro'),
 ('Random Team',16,'Ale','Siwei','Altro'),
 ('Random Team',16,'Leo','Ale','In Corsa');

insert into deaths values ('Random Team',16,'Ale','New Pork City'),
 ('Random Team',16,'Siwei','New Pork City'),
 ('Random Team',16,'Siwei','New Pork City'),
 ('Random Team',16,'Sandro','New Pork City'),
 ('Random Team',16,'Sandro','Autodistruzione'),
 ('Random Team',16,'Siwei','Autodistruzione');


--Random Team-15
insert into kills values ('Random Team',15,'Ale','Sandro','Altro'),
 ('Random Team',15,'Sandro','Ale','Altro'),
 ('Random Team',15,'Ale','Leo','Smash Laterale'),
 ('Random Team',15,'Sandro','Siwei','Smash Laterale'),
 ('Random Team',15,'Siwei','Sandro','Altro'),
 ('Random Team',15,'Leo','Ale','Smash Finale'),
 ('Random Team',15,'Leo','Siwei','Smash Finale'),
 ('Random Team',15,'Ale','Leo','Speciale in Giù'),
 ('Random Team',15,'Leo','Siwei','Speciale Standard'),
 ('Random Team',15,'Ale','Sandro','Smash Laterale'),
 ('Random Team',15,'Leo','Ale','Speciale in Su');

insert into deaths values ('Random Team',15,'Sandro','Mancato Recupero'),
 ('Random Team',15,'Ale','Mancato Recupero'),
 ('Random Team',15,'Sandro','Autodistruzione');


--Random Team-14
insert into kills values ('Random Team',14,'Ale','Sandro','Altro'),
 ('Random Team',14,'Ale','Sandro','Altro'),
 ('Random Team',14,'Leo','Siwei','Smash Laterale'),
 ('Random Team',14,'Ale','Leo','Altro'),
 ('Random Team',14,'Leo','Ale','Smash Laterale'),
 ('Random Team',14,'Ale','Leo','Altro'),
 ('Random Team',14,'Leo','Ale','Smash Finale'),
 ('Random Team',14,'Leo','Siwei','Smash Finale'),
 ('Random Team',14,'Siwei','Leo','Speciale Laterale');

insert into deaths values ('Random Team',14,'Sandro','Mancato Recupero'),
 ('Random Team',14,'Sandro','Mancato Recupero'),
 ('Random Team',14,'Sandro','Autodistruzione'),
 ('Random Team',14,'Leo','Mancato Recupero'),
 ('Random Team',14,'Leo','Mancato Recupero');


--Random Team-13
insert into kills values ('Random Team',13,'Siwei','Leo','Altro'),
 ('Random Team',13,'Sandro','Ale','Smash Laterale'),
 ('Random Team',13,'Leo','Siwei','Smash Laterale'),
 ('Random Team',13,'Leo','Sandro','Smash Laterale'),
 ('Random Team',13,'Sandro','Leo','Altro'),
 ('Random Team',13,'Leo','Sandro','Smash Finale'),
 ('Random Team',13,'Leo','Siwei','Smash Finale'),
 ('Random Team',13,'Siwei','Ale','In Corsa'),
 ('Random Team',13,'Sandro','Ale','Speciale in Giù'),
 ('Random Team',13,'Leo','Sandro','Smash Laterale'),
 ('Random Team',13,'Leo','Siwei','Smash Laterale');

insert into deaths values ('Random Team',13,'Leo','Autodistruzione'),
 ('Random Team',13,'Leo','Mancato Recupero');


--Random Team-12
insert into kills values ('Random Team',12,'Ale','Sandro','Aereo in Su'),
 ('Random Team',12,'Sandro','Ale','Aereo Posteriore'),
 ('Random Team',12,'Siwei','Leo','Aereo Frontale'),
 ('Random Team',12,'Ale','Sandro','Smash Finale'),
 ('Random Team',12,'Ale','Siwei','Smash Finale'),
 ('Random Team',12,'Sandro','Leo','Aereo in Su'),
 ('Random Team',12,'Leo','Sandro','Speciale in Su'),
 ('Random Team',12,'Leo','Siwei','Speciale in Su'),
 ('Random Team',12,'Siwei','Ale','Speciale in Su'),
 ('Random Team',12,'Leo','Siwei','Speciale in Su');


--Random Team-11
insert into kills values ('Random Team',11,'Siwei','Sandro','Speciale Laterale'),
 ('Random Team',11,'Sandro','Siwei','Speciale Laterale'),
 ('Random Team',11,'Sandro','Ale','Speciale Laterale'),
 ('Random Team',11,'Siwei','Leo','Altro'),
 ('Random Team',11,'Sandro','Ale','Smash Finale'),
 ('Random Team',11,'Ale','Sandro','Smash Laterale'),
 ('Random Team',11,'Ale','Leo','Altro'),
 ('Random Team',11,'Leo','Siwei','Smash Laterale'),
 ('Random Team',11,'Ale','Sandro','Altro'),
 ('Random Team',11,'Ale','Leo','Smash Finale');

insert into deaths values ('Random Team',11,'Leo','Mancato Recupero'),
 ('Random Team',11,'Leo','Autodistruzione'),
 ('Random Team',11,'Sandro','Autodistruzione');


--Random Team-10
insert into kills values ('Random Team',10,'Siwei','Sandro','Altro'),
 ('Random Team',10,'Sandro','Siwei','Altro'),
 ('Random Team',10,'Siwei','Ale','Smash Finale'),
 ('Random Team',10,'Sandro','Siwei','Smash Finale'),
 ('Random Team',10,'Ale','Leo','Smash Laterale'),
 ('Random Team',10,'Leo','Sandro','Smash Finale'),
 ('Random Team',10,'Leo','Sandro','Altro'),
 ('Random Team',10,'Sandro','Leo','Speciale Laterale'),
 ('Random Team',10,'Leo','Ale','Speciale Laterale'),
 ('Random Team',10,'Ale','Leo','Smash Finale');

insert into deaths values ('Random Team',10,'Siwei','Autodistruzione'),
 ('Random Team',10,'Sandro','Mancato Recupero'),
 ('Random Team',10,'Siwei','Autodistruzione'),
 ('Random Team',10,'Sandro','Autodistruzione');


--Random Team-9
insert into kills values ('Random Team',9,'Sandro','Siwei','Speciale in Su'),
 ('Random Team',9,'Sandro','Ale','Speciale in Giù'),
 ('Random Team',9,'Ale','Leo','Altro'),
 ('Random Team',9,'Siwei','Sandro','Speciale Laterale'),
 ('Random Team',9,'Leo','Ale','Altro'),
 ('Random Team',9,'Siwei','Sandro','Altro'),
 ('Random Team',9,'Sandro','Siwei','Speciale in Giù'),
 ('Random Team',9,'Sandro','Ale','Smash Finale'),
 ('Random Team',9,'Ale','Leo','Altro'),
 ('Random Team',9,'Leo','Siwei','Speciale Standard');

insert into deaths values ('Random Team',9,'Leo','Autodistruzione'),
 ('Random Team',9,'Ale','Autodistruzione'),
 ('Random Team',9,'Sandro','Autodistruzione'),
 ('Random Team',9,'Leo','Autodistruzione');


--Random Team-8
insert into kills values ('Random Team',8,'Leo','Ale','Altro'),
 ('Random Team',8,'Leo','Siwei','Altro'),
 ('Random Team',8,'Ale','Sandro','Smash in Giù'),
 ('Random Team',8,'Leo','Ale','Smash Laterale'),
 ('Random Team',8,'Ale','Leo','Smash Laterale'),
 ('Random Team',8,'Sandro','Siwei','Altro'),
 ('Random Team',8,'Ale','Sandro','Smash Finale'),
 ('Random Team',8,'Leo','Ale','Aereo Frontale'),
 ('Random Team',8,'Sandro','Siwei','Altro');

insert into deaths values ('Random Team',8,'Ale','Autodistruzione'),
 ('Random Team',8,'Siwei','Mancato Recupero'),
 ('Random Team',8,'Siwei','Mancato Recupero');


--Random Team-7
insert into kills values ('Random Team',7,'Siwei','Ale','Altro'),
 ('Random Team',7,'Leo','Siwei','Smash Laterale'),
 ('Random Team',7,'Leo','Sandro','Smash Laterale'),
 ('Random Team',7,'Siwei','Leo','Altro'),
 ('Random Team',7,'Ale','Siwei','Altro'),
 ('Random Team',7,'Ale','Sandro','Altro'),
 ('Random Team',7,'Leo','Siwei','Altro'),
 ('Random Team',7,'Sandro','Ale','Altro'),
 ('Random Team',7,'Sandro','Leo','Altro'),
 ('Random Team',7,'Leo','Sandro','Smash Laterale');

insert into deaths values ('Random Team',7,'Ale','Summit'),
 ('Random Team',7,'Leo','Summit'),
 ('Random Team',7,'Siwei','Mancato Recupero'),
 ('Random Team',7,'Sandro','Mancato Recupero'),
 ('Random Team',7,'Siwei','Autodistruzione'),
 ('Random Team',7,'Ale','Mancato Recupero'),
 ('Random Team',7,'Leo','Autodistruzione');


--Random Team-6
insert into kills values ('Random Team',6,'Leo','Ale','Altro'),
 ('Random Team',6,'Sandro','Siwei','Speciale in Su'),
 ('Random Team',6,'Ale','Leo','Smash Laterale'),
 ('Random Team',6,'Leo','Sandro','Smash Laterale'),
 ('Random Team',6,'Leo','Sandro','Smash Finale'),
 ('Random Team',6,'Leo','Ale','Smash Finale'),
 ('Random Team',6,'Ale','Siwei','Smash Laterale'),
 ('Random Team',6,'Sandro','Siwei','Smash Finale'),
 ('Random Team',6,'Ale','Leo','Smash Laterale'),
 ('Random Team',6,'Leo','Sandro','Altro'),
 ('Random Team',6,'Ale','Leo','Smash Laterale');

insert into deaths values ('Random Team',6,'Ale','Mancato Recupero'),
 ('Random Team',6,'Sandro','Mancato Recupero');


--Random Team-5
insert into kills values ('Random Team',5,'Siwei','Ale','Smash Laterale'),
 ('Random Team',5,'Ale','Siwei','Smash Laterale'),
 ('Random Team',5,'Siwei','Ale','Smash Finale'),
 ('Random Team',5,'Siwei','Sandro','Smash Finale'),
 ('Random Team',5,'Sandro','Leo','Aereo Frontale'),
 ('Random Team',5,'Sandro','Siwei','Altro'),
 ('Random Team',5,'Sandro','Siwei','Altro'),
 ('Random Team',5,'Leo','Sandro','Aereo Posteriore'),
 ('Random Team',5,'Leo','Ale','Altro'),
 ('Random Team',5,'Sandro','Leo','Smash Laterale'),
 ('Random Team',5,'Leo','Sandro','Smash in Su');

insert into deaths values ('Random Team',5,'Siwei','Autodistruzione'),
 ('Random Team',5,'Siwei','Autodistruzione'),
 ('Random Team',5,'Ale','Mancato Recupero');


--Random Team-4
insert into kills values ('Random Team',4,'Leo','Siwei','Altro'),
 ('Random Team',4,'Siwei','Leo','Speciale Standard'),
 ('Random Team',4,'Siwei','Ale','Speciale Standard'),
 ('Random Team',4,'Leo','Sandro','Speciale Standard'),
 ('Random Team',4,'Ale','Siwei','Smash in Giù'),
 ('Random Team',4,'Siwei','Leo','Altro'),
 ('Random Team',4,'Siwei','Ale','Smash Laterale'),
 ('Random Team',4,'Siwei','Leo','Smash Finale'),
 ('Random Team',4,'Sandro','Ale','Smash Laterale');

insert into deaths values ('Random Team',4,'Siwei','Mancato Recupero'),
 ('Random Team',4,'Leo','Autodistruzione');


--Random Team-3
insert into kills values ('Random Team',3,'Leo','Ale','In Corsa'),
 ('Random Team',3,'Leo','Siwei','Smash Laterale'),
 ('Random Team',3,'Ale','Sandro','Smash Laterale'),
 ('Random Team',3,'Sandro','Ale','Altro'),
 ('Random Team',3,'Siwei','Leo','Smash Finale'),
 ('Random Team',3,'Sandro','Siwei','Smash Finale'),
 ('Random Team',3,'Leo','Ale','Smash Laterale'),
 ('Random Team',3,'Ale','Sandro','Altro'),
 ('Random Team',3,'Leo','Siwei','Altro');

insert into deaths values ('Random Team',3,'Ale','Mancato Recupero'),
 ('Random Team',3,'Sandro','Autodistruzione');


--Random Team-2
insert into kills values ('Random Team',2,'Leo','Siwei','Altro'),
 ('Random Team',2,'Ale','Sandro','In Corsa'),
 ('Random Team',2,'Siwei','Ale','Speciale in Su'),
 ('Random Team',2,'Ale','Siwei','Altro'),
 ('Random Team',2,'Leo','Sandro','Smash Finale'),
 ('Random Team',2,'Siwei','Leo','Altro'),
 ('Random Team',2,'Leo','Siwei','Altro'),
 ('Random Team',2,'Sandro','Leo','Footstool'),
 ('Random Team',2,'Sandro','Leo','Smash Finale'),
 ('Random Team',2,'Ale','Sandro','Smash in Giù');

insert into deaths values ('Random Team',2,'Siwei','New Pork City'),
 ('Random Team',2,'Siwei','New Pork City'),
 ('Random Team',2,'Leo','Autodistruzione');


--Random Team-1
insert into kills values ('Random Team',1,'Sandro','Ale','Speciale in Giù'),
 ('Random Team',1,'Sandro','Siwei','Speciale in Giù'),
 ('Random Team',1,'Ale','Sandro','Aereo Frontale'),
 ('Random Team',1,'Ale','Leo','Aereo Frontale'),
 ('Random Team',1,'Sandro','Siwei','Speciale in Giù'),
 ('Random Team',1,'Ale','Sandro','Aereo Frontale'),
 ('Random Team',1,'Sandro','Ale','Speciale in Giù'),
 ('Random Team',1,'Siwei','Sandro','Altro'),
 ('Random Team',1,'Leo','Siwei','Smash Finale'),
 ('Random Team',1,'Ale','Leo','Aereo Frontale'),
 ('Random Team',1,'Leo','Ale','Smash Laterale');

insert into deaths values ('Random Team',1,'Sandro','Autodistruzione');


--Single-37
insert into kills values ('Single',37,'Leo','Ale','Altro'),
 ('Single',37,'Leo','Siwei','Aereo Frontale'),
 ('Single',37,'Ale','Leo','Aereo in Giù'),
 ('Single',37,'Sandro','Ale','Smash Laterale'),
 ('Single',37,'Ale','Sandro','Smash in Giù'),
 ('Single',37,'Sandro','Ale','Smash Finale'),
 ('Single',37,'Sandro','Siwei','Smash Finale'),
 ('Single',37,'Sandro','Leo','Smash Finale'),
 ('Single',37,'Leo','Sandro','Aereo Frontale'),
 ('Single',37,'Sandro','Leo','Altro');

insert into deaths values ('Single',37,'Ale','75m'),
 ('Single',37,'Siwei','Autodistruzione'),
 ('Single',37,'Leo','75m');


--Single-36
insert into kills values ('Single',36,'Leo','Ale','Aereo in Giù'),
 ('Single',36,'Ale','Leo','Altro'),
 ('Single',36,'Sandro','Siwei','Altro'),
 ('Single',36,'Siwei','Sandro','Smash Finale'),
 ('Single',36,'Leo','Siwei','Altro'),
 ('Single',36,'Leo','Ale','Smash Finale'),
 ('Single',36,'Sandro','Leo','Aereo Frontale'),
 ('Single',36,'Ale','Sandro','Smash Finale'),
 ('Single',36,'Ale','Siwei','Smash Finale'),
 ('Single',36,'Ale','Sandro','Altro'),
 ('Single',36,'Ale','Leo','Smash in Giù');

insert into deaths values ('Single',36,'Leo','Autodistruzione'),
 ('Single',36,'Siwei','Autodistruzione'),
 ('Single',36,'Siwei','Mancato Recupero'),
 ('Single',36,'Sandro','Mancato Recupero');


--Single-35
insert into kills values ('Single',35,'Leo','Siwei','Speciale in Su'),
 ('Single',35,'Ale','Sandro','Smash in Giù'),
 ('Single',35,'Sandro','Ale','Smash Finale'),
 ('Single',35,'Sandro','Siwei','Smash Finale'),
 ('Single',35,'Siwei','Sandro','Smash Laterale'),
 ('Single',35,'Siwei','Leo','In Corsa'),
 ('Single',35,'Leo','Ale','Smash Finale'),
 ('Single',35,'Sandro','Leo','Aereo Frontale'),
 ('Single',35,'Ale','Siwei','Smash Finale'),
 ('Single',35,'Ale','Sandro','Smash Finale'),
 ('Single',35,'Leo','Ale','Smash Laterale');


--Single-34
insert into kills values ('Single',34,'Ale','Sandro','Smash in Giù'),
 ('Single',34,'Ale','Leo','Aereo in Giù'),
 ('Single',34,'Sandro','Siwei','Smash Finale'),
 ('Single',34,'Sandro','Ale','In Corsa'),
 ('Single',34,'Ale','Leo','Meteora'),
 ('Single',34,'Sandro','Siwei','Altro'),
 ('Single',34,'Leo','Ale','Altro'),
 ('Single',34,'Sandro','Siwei','Meteora'),
 ('Single',34,'Ale','Sandro','Altro'),
 ('Single',34,'Sandro','Leo','Aereo Frontale'),
 ('Single',34,'Ale','Sandro','Smash Finale');

insert into deaths values ('Single',34,'Ale','Mancato Recupero'),
 ('Single',34,'Sandro','Autodistruzione');


--Single-33
insert into kills values ('Single',33,'Siwei','Ale','Altro'),
 ('Single',33,'Leo','Siwei','Altro'),
 ('Single',33,'Siwei','Sandro','Speciale Standard'),
 ('Single',33,'Ale','Leo','Smash Laterale'),
 ('Single',33,'Leo','Ale','Altro'),
 ('Single',33,'Siwei','Leo','Altro'),
 ('Single',33,'Ale','Siwei','Smash in Giù'),
 ('Single',33,'Sandro','Ale','Smash Laterale'),
 ('Single',33,'Leo','Siwei','Smash Finale'),
 ('Single',33,'Leo','Sandro','Smash Finale'),
 ('Single',33,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',33,'Ale','Mancato Recupero'),
 ('Single',33,'Siwei','Mancato Recupero'),
 ('Single',33,'Ale','Mancato Recupero'),
 ('Single',33,'Leo','Mancato Recupero');


--Single-32
insert into kills values ('Single',32,'Sandro','Ale','Speciale in Su'),
 ('Single',32,'Ale','Sandro','Smash in Su'),
 ('Single',32,'Sandro','Leo','Altro'),
 ('Single',32,'Sandro','Siwei','Aereo in Su'),
 ('Single',32,'Sandro','Ale','Smash Finale'),
 ('Single',32,'Ale','Sandro','Smash Finale'),
 ('Single',32,'Siwei','Leo','Altro'),
 ('Single',32,'Siwei','Ale','Altro'),
 ('Single',32,'Leo','Siwei','Altro'),
 ('Single',32,'Siwei','Leo','Speciale Laterale');

insert into deaths values ('Single',32,'Leo','Mancato Recupero'),
 ('Single',32,'Sandro','Autodistruzione'),
 ('Single',32,'Ale','Garden of Hope'),
 ('Single',32,'Siwei','Garden of Hope');


--Single-31
insert into kills values ('Single',31,'Ale','Siwei','Aereo in Su'),
 ('Single',31,'Siwei','Sandro','Smash Finale'),
 ('Single',31,'Ale','Leo','Smash Laterale'),
 ('Single',31,'Leo','Sandro','Aereo Frontale'),
 ('Single',31,'Siwei','Leo','Altro'),
 ('Single',31,'Ale','Siwei','Speciale in Giù'),
 ('Single',31,'Leo','Ale','In Corsa'),
 ('Single',31,'Ale','Leo','Altro'),
 ('Single',31,'Ale','Siwei','Smash Laterale');

insert into deaths values ('Single',31,'Sandro','Autodistruzione'),
 ('Single',31,'Leo','Mancato Recupero'),
 ('Single',31,'Leo','Mancato Recupero');


--Single-30
insert into kills values ('Single',30,'Ale','Sandro','In Corsa'),
 ('Single',30,'Siwei','Ale','In Corsa'),
 ('Single',30,'Sandro','Siwei','Altro'),
 ('Single',30,'Ale','Leo','Altro'),
 ('Single',30,'Sandro','Ale','Smash Finale'),
 ('Single',30,'Sandro','Leo','Altro'),
 ('Single',30,'Siwei','Sandro','Altro'),
 ('Single',30,'Ale','Leo','Smash Finale'),
 ('Single',30,'Ale','Siwei','In Corsa'),
 ('Single',30,'Sandro','Siwei','Smash Finale'),
 ('Single',30,'Ale','Sandro','Speciale in Giù');

insert into deaths values ('Single',30,'Leo','Bridge of Eldin'),
 ('Single',30,'Leo','Mancato Recupero');


--Single-29
insert into kills values ('Single',29,'Leo','Siwei','Altro'),
 ('Single',29,'Siwei','Ale','Smash Finale'),
 ('Single',29,'Leo','Siwei','Smash Laterale'),
 ('Single',29,'Ale','Sandro','Altro'),
 ('Single',29,'Ale','Leo','Smash in Su'),
 ('Single',29,'Sandro','Ale','Speciale in Su'),
 ('Single',29,'Sandro','Leo','Altro'),
 ('Single',29,'Leo','Ale','Smash Laterale'),
 ('Single',29,'Leo','Sandro','Smash Finale'),
 ('Single',29,'Sandro','Leo','Smash Laterale');

insert into deaths values ('Single',29,'Siwei','Mancato Recupero'),
 ('Single',29,'Sandro','Mancato Recupero'),
 ('Single',29,'Siwei','Super Happy Tree'),
 ('Single',29,'Leo','Mancato Recupero');


--Single-28
insert into kills values ('Single',28,'Sandro','Ale','Speciale Standard'),
 ('Single',28,'Ale','Sandro','In Corsa'),
 ('Single',28,'Leo','Siwei','Altro'),
 ('Single',28,'Sandro','Ale','Smash Finale'),
 ('Single',28,'Sandro','Leo','Altro'),
 ('Single',28,'Siwei','Sandro','Smash Finale'),
 ('Single',28,'Sandro','Siwei','Altro'),
 ('Single',28,'Ale','Sandro','Smash Finale'),
 ('Single',28,'Leo','Siwei','Smash Laterale'),
 ('Single',28,'Leo','Ale','Speciale in Su');

insert into deaths values ('Single',28,'Siwei','Mancato Recupero'),
 ('Single',28,'Siwei','Mancato Recupero');


--Single-27
insert into kills values ('Single',27,'Ale','Sandro','Smash Laterale'),
 ('Single',27,'Sandro','Siwei','Aereo in Su'),
 ('Single',27,'Sandro','Leo','Aereo Frontale'),
 ('Single',27,'Siwei','Ale','Altro'),
 ('Single',27,'Ale','Sandro','Altro'),
 ('Single',27,'Leo','Siwei','Aereo Posteriore'),
 ('Single',27,'Ale','Leo','Speciale in Giù'),
 ('Single',27,'Siwei','Sandro','Altro'),
 ('Single',27,'Leo','Siwei','Altro'),
 ('Single',27,'Leo','Ale','Altro'),
 ('Single',27,'Leo','Ale','Smash Finale');

insert into deaths values ('Single',27,'Ale','Autodistruzione'),
 ('Single',27,'Sandro','Gamer'),
 ('Single',27,'Sandro','Autodistruzione'),
 ('Single',27,'Siwei','Autodistruzione'),
 ('Single',27,'Ale','Autodistruzione');


--Single-26
insert into kills values ('Single',26,'Leo','Siwei','Speciale Standard'),
 ('Single',26,'Sandro','Leo','Altro'),
 ('Single',26,'Siwei','Ale','Speciale Laterale'),
 ('Single',26,'Ale','Siwei','Smash in Giù'),
 ('Single',26,'Ale','Sandro','Altro'),
 ('Single',26,'Leo','Ale','Smash Finale'),
 ('Single',26,'Siwei','Ale','Altro'),
 ('Single',26,'Sandro','Leo','Aereo Frontale'),
 ('Single',26,'Leo','Sandro','Speciale Standard'),
 ('Single',26,'Sandro','Siwei','Altro'),
 ('Single',26,'Sandro','Leo','In Corsa');

insert into deaths values ('Single',26,'Ale','Autodistruzione');


--Single-25
insert into kills values ('Single',25,'Ale','Siwei','Speciale in Giù'),
 ('Single',25,'Siwei','Sandro','In Corsa'),
 ('Single',25,'Leo','Ale','Aereo Frontale'),
 ('Single',25,'Ale','Leo','Smash Laterale'),
 ('Single',25,'Ale','Siwei','Smash Laterale'),
 ('Single',25,'Siwei','Ale','Smash Finale'),
 ('Single',25,'Siwei','Sandro','Smash Finale'),
 ('Single',25,'Ale','Sandro','Smash Finale'),
 ('Single',25,'Leo','Ale','Smash Finale'),
 ('Single',25,'Leo','Siwei','Speciale Standard');


--Single-24
insert into kills values ('Single',24,'Sandro','Siwei','Altro'),
 ('Single',24,'Sandro','Leo','Speciale Laterale'),
 ('Single',24,'Siwei','Sandro','Smash Finale'),
 ('Single',24,'Siwei','Ale','Peculiare'), --PECULIAR: KING K. ROOL SCHIAFFO
 ('Single',24,'Ale','Siwei','Meteora'),
 ('Single',24,'Ale','Sandro','Altro'),
 ('Single',24,'Sandro','Siwei','Altro'),
 ('Single',24,'Sandro','Ale','Smash Finale'),
 ('Single',24,'Ale','Leo','Altro'),
 ('Single',24,'Leo','Sandro','Aereo in Su'),
 ('Single',24,'Ale','Leo','Smash Finale');

insert into deaths values ('Single',24,'Siwei','Hyrule Castle'),
 ('Single',24,'Sandro','Autodistruzione'),
 ('Single',24,'Siwei','Hyrule Castle'),
 ('Single',24,'Leo','Hyrule Castle');


--Single-23
insert into kills values ('Single',23,'Leo','Sandro','Smash Laterale'),
 ('Single',23,'Sandro','Ale','Smash Laterale'),
 ('Single',23,'Ale','Siwei','Smash Laterale'),
 ('Single',23,'Leo','Sandro','Altro'),
 ('Single',23,'Siwei','Leo','Smash Finale'),
 ('Single',23,'Leo','Siwei','Smash Laterale'),
 ('Single',23,'Ale','Sandro','Smash Laterale'),
 ('Single',23,'Ale','Siwei','Smash Finale'),
 ('Single',23,'Leo','Ale','Speciale in Giù'),
 ('Single',23,'Ale','Leo','Smash Laterale'),
 ('Single',23,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',23,'Sandro','Autodistruzione');


--Single-22
insert into kills values ('Single',22,'Ale','Siwei','Meteora'),
 ('Single',22,'Siwei','Leo','Speciale Laterale'),
 ('Single',22,'Siwei','Sandro','Smash Finale'),
 ('Single',22,'Sandro','Leo','Altro'),
 ('Single',22,'Sandro','Siwei','Smash Finale'),
 ('Single',22,'Sandro','Ale','Smash Finale'),
 ('Single',22,'Ale','Sandro','Smash Laterale'),
 ('Single',22,'Ale','Siwei','Smash Laterale'),
 ('Single',22,'Sandro','Ale','Altro'),
 ('Single',22,'Sandro','Ale','Altro'),
 ('Single',22,'Sandro','Leo','Speciale Standard');

insert into deaths values ('Single',22,'Leo','Autodistruzione'),
 ('Single',22,'Ale','Autodistruzione');


--Single-21
insert into kills values ('Single',21,'Leo','Sandro','Speciale in Su'),
 ('Single',21,'Sandro','Leo','Altro'),
 ('Single',21,'Sandro','Siwei','Smash Laterale'),
 ('Single',21,'Siwei','Ale','Altro'),
 ('Single',21,'Ale','Leo','Meteora'),
 ('Single',21,'Ale','Sandro','Smash Finale'),
 ('Single',21,'Sandro','Siwei','Speciale in Su'),
 ('Single',21,'Sandro','Ale','Aereo Frontale'),
 ('Single',21,'Sandro','Leo','Smash Finale'),
 ('Single',21,'Ale','Siwei','Smash Laterale'),
 ('Single',21,'Sandro','Ale','Speciale in Su');


--Single-20
insert into kills values ('Single',20,'Ale','Siwei','Smash in Giù'),
 ('Single',20,'Leo','Sandro','Smash Laterale'),
 ('Single',20,'Siwei','Leo','Smash in Su'),
 ('Single',20,'Leo','Ale','Speciale Standard'),
 ('Single',20,'Leo','Sandro','Smash Finale'),
 ('Single',20,'Ale','Siwei','Smash Finale'),
 ('Single',20,'Sandro','Leo','Aereo Posteriore'),
 ('Single',20,'Ale','Siwei','Altro'),
 ('Single',20,'Leo','Sandro','Smash Finale'),
 ('Single',20,'Leo','Ale','Speciale Standard'),
 ('Single',20,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',20,'Siwei','Autodistruzione');


--Single-19
insert into kills values ('Single',19,'Ale','Siwei','Altro'),
 ('Single',19,'Ale','Siwei','Altro'),
 ('Single',19,'Ale','Sandro','Smash Laterale'),
 ('Single',19,'Ale','Siwei','Speciale in Giù'),
 ('Single',19,'Leo','Sandro','Altro'),
 ('Single',19,'Ale','Leo','Smash Laterale'),
 ('Single',19,'Leo','Ale','Smash Finale'),
 ('Single',19,'Leo','Sandro','Altro'),
 ('Single',19,'Ale','Leo','Smash Laterale'),
 ('Single',19,'Leo','Ale','Smash Laterale'),
 ('Single',19,'Ale','Leo','Altro');

insert into deaths values ('Single',19,'Siwei','Mancato Recupero'),
 ('Single',19,'Siwei','Mancato Recupero'),
 ('Single',19,'Sandro','Mancato Recupero'),
 ('Single',19,'Sandro','Mancato Recupero'),
 ('Single',19,'Leo','Mancato Recupero');


--Single-18
insert into kills values ('Single',18,'Leo','Sandro','Speciale Laterale'),
 ('Single',18,'Ale','Leo','Smash Laterale'),
 ('Single',18,'Ale','Siwei','In Corsa'),
 ('Single',18,'Siwei','Ale','Altro'),
 ('Single',18,'Siwei','Leo','Smash Finale'),
 ('Single',18,'Ale','Sandro','Smash in Su'),
 ('Single',18,'Ale','Sandro','Smash Finale'),
 ('Single',18,'Ale','Siwei','Smash Finale'),
 ('Single',18,'Leo','Ale','Smash Finale'),
 ('Single',18,'Leo','Siwei','Speciale Laterale');

insert into deaths values ('Single',18,'Ale','Autodistruzione');


--Single-17
insert into kills values ('Single',17,'Siwei','Sandro','Speciale in Su'),
 ('Single',17,'Sandro','Ale','Aereo Frontale'),
 ('Single',17,'Ale','Siwei','Smash in Su'),
 ('Single',17,'Ale','Leo','Aereo Posteriore'),
 ('Single',17,'Ale','Sandro','Speciale in Giù'),
 ('Single',17,'Leo','Ale','Smash Finale'),
 ('Single',17,'Leo','Sandro','Altro'),
 ('Single',17,'Siwei','Leo','Smash Finale'),
 ('Single',17,'Ale','Siwei','Altro'),
 ('Single',17,'Siwei','Ale','Smash Finale');

insert into deaths values ('Single',17,'Sandro','Spirit Train'),
 ('Single',17,'Leo','Spirit Train'),
 ('Single',17,'Siwei','Spirit Train');


--Single-16
insert into kills values ('Single',16,'Siwei','Leo','Altro'),
 ('Single',16,'Leo','Ale','Altro'),
 ('Single',16,'Ale','Siwei','Speciale in Giù'),
 ('Single',16,'Sandro','Siwei','Altro'),
 ('Single',16,'Leo','Ale','Aereo in Su'),
 ('Single',16,'Leo','Sandro','Smash Finale'),
 ('Single',16,'Sandro','Leo','Smash in Su'),
 ('Single',16,'Leo','Sandro','Smash Laterale'),
 ('Single',16,'Ale','Sandro','Altro'),
 ('Single',16,'Leo','Ale','Smash Laterale');

insert into deaths values ('Single',16,'Leo','Mancato Recupero'),
 ('Single',16,'Ale','Mancato Recupero'),
 ('Single',16,'Siwei','Autodistruzione'),
 ('Single',16,'Siwei','Autodistruzione'),
 ('Single',16,'Sandro','Mancato Recupero');


--Team-17
insert into kills values ('Team',17,'Ale','Sandro','Smash Laterale'),
 ('Team',17,'Siwei','Leo','Speciale Laterale'),
 ('Team',17,'Ale','Sandro','Speciale in Giù'),
 ('Team',17,'Leo','Siwei','Smash Finale'),
 ('Team',17,'Siwei','Leo','Speciale Laterale'),
 ('Team',17,'Leo','Ale','Speciale Standard'),
 ('Team',17,'Sandro','Siwei','Speciale Laterale'),
 ('Team',17,'Siwei','Sandro','Speciale Laterale'),
 ('Team',17,'Siwei','Leo','Speciale Laterale');


--Team-16
insert into kills values ('Team',16,'Siwei','Sandro','Speciale Laterale'),
 ('Team',16,'Leo','Ale','Smash Laterale'),
 ('Team',16,'Sandro','Siwei','Aereo in Su'),
 ('Team',16,'Sandro','Siwei','Smash Finale'),
 ('Team',16,'Leo','Sandro','Peculiare'), --PECULIAR: MR. GAME & WATCH
 ('Team',16,'Ale','Leo','Smash Finale'),
 ('Team',16,'Siwei','Ale','Speciale Laterale'),
 ('Team',16,'Siwei','Ale','Speciale Laterale');

insert into deaths values ('Team',16,'Sandro','3D Land');


--Team-15
insert into kills values ('Team',15,'Ale','Leo','Altro'),
 ('Team',15,'Leo','Sandro','Altro'),
 ('Team',15,'Ale','Siwei','Altro'),
 ('Team',15,'Siwei','Sandro','Meteora'),
 ('Team',15,'Ale','Siwei','Altro'),
 ('Team',15,'Ale','Leo','Smash in Su'),
 ('Team',15,'Leo','Ale','In Corsa'),
 ('Team',15,'Ale','Leo','Smash Laterale');

insert into deaths values ('Team',15,'Siwei','Autodistruzione'),
 ('Team',15,'Leo','Autodistruzione'),
 ('Team',15,'Sandro','Autodistruzione'),
 ('Team',15,'Sandro','Autodistruzione'),
 ('Team',15,'Siwei','Autodistruzione'),
 ('Team',15,'Siwei','Autodistruzione');


--Team-14
insert into kills values ('Team',14,'Leo','Ale','Fuoco Amico'),
 ('Team',14,'Ale','Siwei','Altro'),
 ('Team',14,'Siwei','Leo','Altro'),
 ('Team',14,'Ale','Sandro','Smash Finale'),
 ('Team',14,'Sandro','Ale','Altro'),
 ('Team',14,'Ale','Siwei','Speciale in Su'),
 ('Team',14,'Sandro','Leo','Smash Finale'),
 ('Team',14,'Sandro','Ale','Speciale in Su'),
 ('Team',14,'Leo','Siwei','Smash Laterale'),
 ('Team',14,'Sandro','Leo','Speciale in Giù');

insert into deaths values ('Team',14,'Ale','Fuoco Amico'),
 ('Team',14,'Siwei','Autodistruzione'),
 ('Team',14,'Leo','Norfair'),
 ('Team',14,'Ale','Norfair');


--Team-13
insert into kills values ('Team',13,'Siwei','Sandro','Speciale Laterale'),
 ('Team',13,'Ale','Leo','Speciale Laterale'),
 ('Team',13,'Siwei','Ale','Speciale Laterale'),
 ('Team',13,'Ale','Siwei','Altro'),
 ('Team',13,'Ale','Siwei','Altro'),
 ('Team',13,'Sandro','Leo','Smash Finale'),
 ('Team',13,'Leo','Sandro','Speciale in Giù'),
 ('Team',13,'Ale','Siwei','Smash in Giù'),
 ('Team',13,'Ale','Leo','Smash Laterale');

insert into deaths values ('Team',13,'Siwei','Mancato Recupero'),
 ('Team',13,'Siwei','Mancato Recupero');


--Team-12
insert into kills values ('Team',12,'Sandro','Siwei','Speciale Laterale'),
 ('Team',12,'Ale','Leo','Aereo Standard'),
 ('Team',12,'Sandro','Siwei','Altro'),
 ('Team',12,'Siwei','Sandro','Smash Laterale'),
 ('Team',12,'Siwei','Sandro','Smash Finale'),
 ('Team',12,'Sandro','Siwei','Speciale Laterale'),
 ('Team',12,'Sandro','Leo','Speciale Laterale'),
 ('Team',12,'Leo','Ale','Speciale Standard'),
 ('Team',12,'Ale','Leo','Aereo Standard');

insert into deaths values ('Team',12,'Siwei','Mancato Recupero'),
 ('Team',12,'Siwei','Mancato Recupero');


--Team-11
insert into kills values ('Team',11,'Ale','Sandro','Aereo Standard'),
 ('Team',11,'Sandro','Leo','Speciale Laterale'),
 ('Team',11,'Sandro','Ale','Speciale Laterale'),
 ('Team',11,'Leo','Siwei','Speciale Laterale'),
 ('Team',11,'Leo','Sandro','Smash Finale'),
 ('Team',11,'Ale','Siwei','Altro'),
 ('Team',11,'Siwei','Leo','Smash Finale'),
 ('Team',11,'Leo','Sandro','Smash Finale'),
 ('Team',11,'Leo','Siwei','Altro');

insert into deaths values ('Team',11,'Siwei','Mancato Recupero'),
 ('Team',11,'Siwei','Mancato Recupero');


--Team-10
insert into kills values ('Team',10,'Siwei','Sandro','Speciale Laterale'),
 ('Team',10,'Sandro','Siwei','Speciale Laterale'),
 ('Team',10,'Siwei','Ale','Speciale Laterale'),
 ('Team',10,'Ale','Leo','Speciale in Su'),
 ('Team',10,'Siwei','Sandro','Altro'),
 ('Team',10,'Sandro','Siwei','Aereo in Su'),
 ('Team',10,'Leo','Ale','Speciale Standard'),
 ('Team',10,'Ale','Leo','Speciale in Su'),
 ('Team',10,'Ale','Leo','Altro'),
 ('Team',10,'Siwei','Sandro','Altro'),
 ('Team',10,'Ale','Siwei','Speciale in Su');

insert into deaths values ('Team',10,'Sandro','Autodistruzione'),
 ('Team',10,'Leo','Mancato Recupero'),
 ('Team',10,'Sandro','Saffron City');


--Team-9
insert into kills values ('Team',9,'Ale','Leo','Speciale in Giù'),
 ('Team',9,'Leo','Ale','Speciale Standard'),
 ('Team',9,'Leo','Sandro','Smash Finale'),
 ('Team',9,'Leo','Ale','Smash Finale'),
 ('Team',9,'Sandro','Siwei','Speciale Laterale'),
 ('Team',9,'Sandro','Leo','Speciale Laterale'),
 ('Team',9,'Ale','Siwei','Smash Finale'),
 ('Team',9,'Leo','Ale','Speciale Standard'),
 ('Team',9,'Leo','Sandro','Speciale Standard'),
 ('Team',9,'Siwei','Sandro','Speciale Standard');


--Team-8
insert into kills values ('Team',8,'Leo','Ale','Speciale Standard'),
 ('Team',8,'Siwei','Leo','Speciale Standard'),
 ('Team',8,'Siwei','Sandro','Speciale Standard'),
 ('Team',8,'Sandro','Siwei','Speciale Laterale'),
 ('Team',8,'Sandro','Ale','Speciale Laterale'),
 ('Team',8,'Sandro','Siwei','Speciale Laterale'),
 ('Team',8,'Siwei','Sandro','Altro'),
 ('Team',8,'Ale','Leo','Smash Finale'),
 ('Team',8,'Leo','Siwei','Altro'),
 ('Team',8,'Leo','Ale','Aereo Standard');

insert into deaths values ('Team',8,'Sandro','Autodistruzione'),
 ('Team',8,'Siwei','Autodistruzione');


--Team-7
insert into kills values ('Team',7,'Ale','Sandro','Altro'),
 ('Team',7,'Siwei','Ale','Speciale Standard'),
 ('Team',7,'Sandro','Leo','Smash Finale'),
 ('Team',7,'Leo','Siwei','Smash Laterale'),
 ('Team',7,'Ale','Sandro','Smash Laterale'),
 ('Team',7,'Sandro','Leo','Smash Finale'),
 ('Team',7,'Sandro','Leo','Speciale Laterale'),
 ('Team',7,'Leo','Sandro','Altro'),
 ('Team',7,'Ale','Siwei','Altro'),
 ('Team',7,'Siwei','Ale','Smash Finale'),
 ('Team',7,'Ale','Siwei','Smash Finale');

insert into deaths values ('Team',7,'Sandro','Hyrule Castle'),
 ('Team',7,'Sandro','Autodistruzione'),
 ('Team',7,'Siwei','Mancato Recupero');


--Team-6
insert into kills values ('Team',6,'Sandro','Ale','Speciale Laterale'),
 ('Team',6,'Siwei','Leo','In Corsa'),
 ('Team',6,'Ale','Sandro','Smash Laterale'),
 ('Team',6,'Sandro','Leo','Smash Finale'),
 ('Team',6,'Sandro','Ale','Speciale Laterale'),
 ('Team',6,'Ale','Siwei','Smash Laterale'),
 ('Team',6,'Ale','Sandro','Smash Laterale'),
 ('Team',6,'Sandro','Ale','Speciale Laterale'),
 ('Team',6,'Sandro','Leo','Smash Finale');


--Team-5
insert into kills values ('Team',5,'Leo','Ale','Smash Laterale'),
 ('Team',5,'Sandro','Ale','Altro'),
 ('Team',5,'Ale','Sandro','Altro'),
 ('Team',5,'Sandro','Siwei','Altro'),
 ('Team',5,'Ale','Leo','Smash in Giù'),
 ('Team',5,'Sandro','Siwei','Speciale in Su'),
 ('Team',5,'Siwei','Leo','Smash Finale'),
 ('Team',5,'Leo','Ale','Smash Laterale'),
 ('Team',5,'Siwei','Sandro','Speciale Laterale'),
 ('Team',5,'Leo','Siwei','Altro');

insert into deaths values ('Team',5,'Ale','Mancato Recupero'),
 ('Team',5,'Sandro','Autodistruzione'),
 ('Team',5,'Siwei','Mancato Recupero');


--Team-4
insert into kills values ('Team',4,'Siwei','Ale','Speciale Standard'),
 ('Team',4,'Siwei','Sandro','Speciale Standard'),
 ('Team',4,'Sandro','Siwei','Speciale Laterale'),
 ('Team',4,'Ale','Leo','Aereo Posteriore'),
 ('Team',4,'Leo','Sandro','Speciale Standard'),
 ('Team',4,'Ale','Leo','Altro'),
 ('Team',4,'Ale','Siwei','Smash Laterale'),
 ('Team',4,'Siwei','Ale','Speciale Standard');

insert into deaths values ('Team',4,'Ale','Autodistruzione'),
 ('Team',4,'Sandro','Golden Plains'),
 ('Team',4,'Leo','Golden Plains');


--Team-3
insert into kills values ('Team',3,'Siwei','Sandro','Speciale Standard'),
 ('Team',3,'Sandro','Siwei','Speciale Laterale'),
 ('Team',3,'Siwei','Leo','Altro'),
 ('Team',3,'Leo','Siwei','Smash Finale'),
 ('Team',3,'Sandro','Ale','Smash Finale'),
 ('Team',3,'Sandro','Siwei','Speciale Laterale'),
 ('Team',3,'Leo','Ale','Aereo Frontale'),
 ('Team',3,'Leo','Ale','Smash Laterale');

insert into deaths values ('Team',3,'Siwei','Mancato Recupero');


--Team-2
insert into kills values ('Team',2,'Siwei','Leo','Altro'),
 ('Team',2,'Sandro','Ale','Speciale Laterale'),
 ('Team',2,'Leo','Siwei','Speciale in Giù'),
 ('Team',2,'Sandro','Leo','Smash Finale'),
 ('Team',2,'Leo','Siwei','Speciale Laterale'),
 ('Team',2,'Ale','Sandro','Smash Finale'),
 ('Team',2,'Sandro','Leo','Speciale Laterale'),
 ('Team',2,'Sandro','Ale','Aereo in Giù'),
 ('Team',2,'Leo','Siwei','Smash Finale'),
 ('Team',2,'Sandro','Leo','Altro');

insert into deaths values ('Team',2,'Leo','Mancato Recupero'),
 ('Team',2,'Siwei','Mancato Recupero'),
 ('Team',2,'Leo','Mancato Recupero'),
 ('Team',2,'Leo','Autodistruzione');


--Team-1
insert into kills values ('Team',1,'Ale','Sandro','Smash Laterale'),
 ('Team',1,'Leo','Siwei','Smash Laterale'),
 ('Team',1,'Siwei','Ale','Speciale Laterale'),
 ('Team',1,'Sandro','Leo','Speciale Laterale'),
 ('Team',1,'Ale','Sandro','Altro'),
 ('Team',1,'Leo','Siwei','Smash Finale'),
 ('Team',1,'Sandro','Leo','Speciale in Su'),
 ('Team',1,'Siwei','Ale','Altro'),
 ('Team',1,'Ale','Sandro','Smash Laterale'),
 ('Team',1,'Siwei','Leo','In Corsa'),
 ('Team',1,'Ale','Siwei','Aereo in Giù');


--Single-15
insert into kills values ('Single',15,'Siwei','Sandro','Altro'),
 ('Single',15,'Leo','Ale','Altro'),
 ('Single',15,'Leo','Sandro','Altro'),
 ('Single',15,'Ale','Siwei','Smash Laterale'),
 ('Single',15,'Ale','Leo','Altro'),
 ('Single',15,'Leo','Sandro','Altro'),
 ('Single',15,'Ale','Siwei','Smash Laterale'),
 ('Single',15,'Ale','Leo','Smash Finale'),
 ('Single',15,'Leo','Ale','Altro'),
 ('Single',15,'Ale','Siwei','Speciale in Giù'),
 ('Single',15,'Ale','Leo','Smash Laterale');

insert into deaths values ('Single',15,'Sandro','Autodistruzione'),
 ('Single',15,'Ale','Mancato Recupero'),
 ('Single',15,'Sandro','Autodistruzione'),
 ('Single',15,'Leo','Mancato Recupero'),
 ('Single',15,'Sandro','Mancato Recupero'),
 ('Single',15,'Leo','Mancato Recupero');


--Single-14
insert into kills values ('Single',14,'Sandro','Leo','Speciale in Su'),
 ('Single',14,'Sandro','Ale','Speciale in Su'),
 ('Single',14,'Ale','Sandro','Speciale in Giù'),
 ('Single',14,'Leo','Siwei','Smash Finale'),
 ('Single',14,'Siwei','Leo','Smash in Su'),
 ('Single',14,'Sandro','Ale','Speciale in Su'),
 ('Single',14,'Siwei','Sandro','Speciale Laterale'),
 ('Single',14,'Leo','Siwei','Speciale Standard'),
 ('Single',14,'Leo','Ale','Smash Finale'),
 ('Single',14,'Sandro','Leo','Altro');


--Single-13
insert into kills values ('Single',13,'Ale','Sandro','Speciale in Giù'),
 ('Single',13,'Siwei','Leo','In Corsa'),
 ('Single',13,'Siwei','Sandro','Speciale Laterale'),
 ('Single',13,'Sandro','Siwei','Aereo Posteriore'),
 ('Single',13,'Leo','Ale','Speciale Standard'),
 ('Single',13,'Siwei','Sandro','Speciale Laterale'),
 ('Single',13,'Leo','Siwei','Speciale Standard'),
 ('Single',13,'Ale','Leo','Smash Finale'),
 ('Single',13,'Siwei','Ale','Altro'),
 ('Single',13,'Siwei','Leo','Smash Finale'),
 ('Single',13,'Ale','Siwei','Speciale in Giù');

insert into deaths values ('Single',13,'Ale','Mancato Recupero');


--Single-12
insert into kills values ('Single',12,'Siwei','Sandro','Altro'),
 ('Single',12,'Sandro','Leo','Aereo Frontale'),
 ('Single',12,'Ale','Siwei','Smash in Su'),
 ('Single',12,'Siwei','Ale','Speciale Laterale'),
 ('Single',12,'Siwei','Leo','Smash Finale'),
 ('Single',12,'Siwei','Sandro','Smash Finale'),
 ('Single',12,'Leo','Ale','Smash Finale'),
 ('Single',12,'Sandro','Siwei','Altro'),
 ('Single',12,'Leo','Sandro','Footstool'),
 ('Single',12,'Ale','Siwei','Altro'),
 ('Single',12,'Ale','Leo','Speciale Standard');

insert into deaths values ('Single',12,'Sandro','Garden of Hope'),
 ('Single',12,'Siwei','Autodistruzione');


--Single-11
insert into kills values ('Single',11,'Ale','Sandro','Altro'),
 ('Single',11,'Ale','Siwei','Altro'),
 ('Single',11,'Leo','Ale','Smash Laterale'),
 ('Single',11,'Sandro','Leo','Altro'),
 ('Single',11,'Siwei','Sandro','Smash Finale'),
 ('Single',11,'Leo','Siwei','Smash Laterale'),
 ('Single',11,'Sandro','Ale','Speciale Standard'),
 ('Single',11,'Leo','Siwei','Smash Finale'),
 ('Single',11,'Siwei','Leo','Altro'),
 ('Single',11,'Sandro','Ale','Altro');

insert into deaths values ('Single',11,'Sandro','Jungle Japes'),
 ('Single',11,'Siwei','Jungle Japes'),
 ('Single',11,'Leo','Jungle Japes'),
 ('Single',11,'Leo','Jungle Japes'),
 ('Single',11,'Leo','Jungle Japes'),
 ('Single',11,'Ale','Jungle Japes');


--Single-10
insert into kills values ('Single',10,'Siwei','Ale','Speciale Laterale'),
 ('Single',10,'Ale','Siwei','Smash Laterale'),
 ('Single',10,'Siwei','Sandro','Smash Finale'),
 ('Single',10,'Siwei','Ale','Altro'),
 ('Single',10,'Sandro','Leo','Peculiare'), --PECULIAR: CLOUD LIMIT
 ('Single',10,'Leo','Ale','Speciale Laterale'),
 ('Single',10,'Leo','Siwei','Speciale Laterale'),
 ('Single',10,'Siwei','Sandro','Speciale Laterale'),
 ('Single',10,'Sandro','Leo','Smash Laterale'),
 ('Single',10,'Sandro','Siwei','Smash Laterale'),
 ('Single',10,'Leo','Sandro','Peculiare'); --PECULIAR: ? GRENINJA UP B PREVENTS

insert into deaths values ('Single',10,'Ale','Autodistruzione');


--Single-9
insert into kills values ('Single',9,'Leo','Ale','Smash Laterale'),
 ('Single',9,'Ale','Sandro','Speciale in Giù'),
 ('Single',9,'Leo','Siwei','Speciale Laterale'),
 ('Single',9,'Ale','Sandro','Smash Finale'),
 ('Single',9,'Sandro','Ale','Speciale Laterale'),
 ('Single',9,'Leo','Siwei','Smash Finale'),
 ('Single',9,'Sandro','Leo','Aereo in Su'),
 ('Single',9,'Ale','Sandro','Speciale in Giù'),
 ('Single',9,'Siwei','Leo','Altro'),
 ('Single',9,'Siwei','Ale','Altro'),
 ('Single',9,'Siwei','Leo','Speciale in Su');

insert into deaths values ('Single',9,'Leo','Mancato Recupero');


--Single-8
insert into kills values ('Single',8,'Ale','Leo','Speciale in Giù'),
 ('Single',8,'Siwei','Sandro','Speciale Standard'),
 ('Single',8,'Leo','Siwei','Speciale Standard'),
 ('Single',8,'Siwei','Leo','Speciale Standard'),
 ('Single',8,'Siwei','Leo','Smash Finale'),
 ('Single',8,'Sandro','Siwei','Smash Finale'),
 ('Single',8,'Sandro','Ale','Altro'),
 ('Single',8,'Ale','Sandro','Smash in Giù'),
 ('Single',8,'Siwei','Ale','Smash Laterale'),
 ('Single',8,'Ale','Sandro','Smash Laterale'),
 ('Single',8,'Ale','Siwei','Altro');

insert into deaths values ('Single',8,'Siwei','WarioWare Inc.');


--Single-7
insert into kills values ('Single',7,'Ale','Leo','Altro'),
 ('Single',7,'Siwei','Sandro','Altro'),
 ('Single',7,'Sandro','Ale','Speciale in Su'),
 ('Single',7,'Sandro','Siwei','Speciale in Su'),
 ('Single',7,'Siwei','Ale','Smash Finale'),
 ('Single',7,'Siwei','Leo','Smash Finale'),
 ('Single',7,'Sandro','Siwei','Smash Finale'),
 ('Single',7,'Leo','Siwei','Smash Finale'),
 ('Single',7,'Leo','Ale','Altro'),
 ('Single',7,'Leo','Sandro','Smash Laterale'),
 ('Single',7,'Sandro','Leo','Speciale in Su');

insert into deaths values ('Single',7,'Leo','Autodistruzione'),
 ('Single',7,'Sandro','Autodistruzione');


--Single-6
insert into kills values ('Single',6,'Ale','Siwei','Smash Laterale'),
 ('Single',6,'Ale','Sandro','Smash Laterale'),
 ('Single',6,'Ale','Sandro','Smash Laterale'),
 ('Single',6,'Siwei','Ale','Altro'),
 ('Single',6,'Ale','Leo','Smash in Giù'),
 ('Single',6,'Ale','Siwei','Smash Laterale'),
 ('Single',6,'Leo','Ale','Peculiare'), --PECULIAR: LUCAS PK ROCKET
 ('Single',6,'Siwei','Leo','Smash Finale'),
 ('Single',6,'Leo','Ale','Smash Laterale'),
 ('Single',6,'Leo','Siwei','Altro');

insert into deaths values ('Single',6,'Sandro','Autodistruzione'),
 ('Single',6,'Sandro','Autodistruzione'),
 ('Single',6,'Siwei','Autodistruzione');


--Single-5
insert into kills values ('Single',5,'Ale','Siwei','Altro'),
 ('Single',5,'Leo','Siwei','Altro'),
 ('Single',5,'Sandro','Ale','Altro'),
 ('Single',5,'Sandro','Ale','Speciale in Giù'),
 ('Single',5,'Sandro','Siwei','Speciale Laterale'),
 ('Single',5,'Ale','Sandro','Aereo Standard'),
 ('Single',5,'Sandro','Ale','Smash Laterale'),
 ('Single',5,'Sandro','Leo','Speciale in Giù'),
 ('Single',5,'Leo','Sandro','Smash Laterale'), 
 ('Single',5,'Sandro','Leo','Smash Finale'),
 ('Single',5,'Leo','Sandro','In Corsa');

insert into deaths values ('Single',5,'Siwei','Autodistruzione'),
 ('Single',5,'Siwei','New Pork City'),
 ('Single',5,'Ale','Autodistruzione');


--Single-4
insert into kills values ('Single',4,'Ale','Leo','Speciale in Giù'),
 ('Single',4,'Sandro','Siwei','Aereo Frontale'),
 ('Single',4,'Ale','Sandro','Aereo Posteriore'),
 ('Single',4,'Sandro','Siwei','Smash Finale'),
 ('Single',4,'Sandro','Ale','Speciale in Su'),
 ('Single',4,'Siwei','Sandro','Smash Finale'),
 ('Single',4,'Ale','Leo','Smash Finale'),
 ('Single',4,'Ale','Sandro','Smash Finale'),
 ('Single',4,'Ale','Siwei','In Corsa'),
 ('Single',4,'Ale','Leo','Speciale in Giù');


--Single-3
insert into kills values ('Single',3,'Ale','Siwei','In Corsa'),
 ('Single',3,'Siwei','Sandro','In Corsa'),
 ('Single',3,'Ale','Leo','Smash Laterale'),
 ('Single',3,'Sandro','Leo','Speciale Laterale'),
 ('Single',3,'Siwei','Ale','Smash Laterale'),
 ('Single',3,'Ale','Siwei','Smash Laterale'),
 ('Single',3,'Ale','Leo','Smash Finale'),
 ('Single',3,'Ale','Sandro','Smash Finale'),
 ('Single',3,'Ale','Sandro','Speciale in Giù'),
 ('Single',3,'Siwei','Ale','Altro'),
 ('Single',3,'Ale','Siwei','Smash Laterale');


--Single-2
insert into kills values ('Single',2,'Siwei','Ale','Speciale in Giù'),
 ('Single',2,'Siwei','Sandro','Speciale Standard'),
 ('Single',2,'Ale','Siwei','Smash Laterale'),
 ('Single',2,'Siwei','Sandro','Speciale Standard'),
 ('Single',2,'Sandro','Leo','Altro'),
 ('Single',2,'Sandro','Siwei','Speciale Laterale'),
 ('Single',2,'Siwei','Ale','Speciale Standard'),
 ('Single',2,'Leo','Sandro','Smash Laterale'),
 ('Single',2,'Leo','Siwei','Smash Laterale'),
 ('Single',2,'Ale','Leo','Smash Finale'),
 ('Single',2,'Leo','Ale','Smash Laterale');


--Single-1
insert into kills values ('Single',1,'Sandro','Siwei','Meteora'),
 ('Single',1,'Leo','Sandro','Altro'),
 ('Single',1,'Leo','Ale','Smash Laterale'),
 ('Single',1,'Ale','Siwei','Altro'),
 ('Single',1,'Ale','Sandro','Smash Finale'),
 ('Single',1,'Siwei','Ale','Speciale Standard'),
 ('Single',1,'Sandro','Siwei','Smash Finale'),
 ('Single',1,'Sandro','Leo','Speciale Laterale'),
 ('Single',1,'Ale','Leo','Smash Finale'),
 ('Single',1,'Sandro','Ale','Altro'),
 ('Single',1,'Leo','Sandro','Smash Laterale');

insert into deaths values('Single',1,'Sandro','Autodistruzione');

