--delete from smash;
/*
update smash
set tipo = 'Single'
where tipo = 'SIngle' 
*/
--Single,332,eroe,baie,tery,byth,Leo
--Doubles,134,pit,roy,ken,shlk,Leo,Siwei
/*
begin;
commit;
*/

begin;
insert into smash values('Single',955,'Kirby','Terry','Bowser','Diddy Kong','Ale');
insert into smash values('Single',954,'Terry','Ike','Bowser','Diddy Kong','Ale');
insert into smash values('Single',953,'Jigglypuff','Trainer di Wii Fit','Eroe','Min Min','Ale');
insert into smash values('Single',952,'Jigglypuff','Incineroar','Eroe','Spadaccino Mii','Ale');
insert into smash values('Single',951,'Jigglypuff','Incineroar','Eroe','Pit','Ale');
insert into smash values('Single',950,'Pokemon Trainer','Link Cartone','Eroe','Ganondorf','Leo');
insert into smash values('Single',949,'Fuffi','Steve','Sonic','Little Mac','Ale');
insert into smash values('Single',948,'Fuffi','Abitante','Sonic','Banjo e Kazooie','Siwei');
insert into smash values('Single',947,'Kirby','Rosalinda e Sfavillotto','Link Bambino','Eroe','Ale');
insert into smash values('Single',946,'Sheik','Mewtwo','Greninja','Eroe','Sandro');
insert into smash values('Single',945,'Pichu','Captain Falcon','Sephiroth','Eroe','Siwei');
insert into smash values('Single',944,'Pichu','Luigi','Samus','Eroe','Leo');
insert into smash values('Single',943,'Pichu','Ness','Bowser','Eroe','Siwei');
insert into smash values('Single',942,'Min Min','Snake','Bowser','Incineroar','Leo');
insert into smash values('Single',941,'Min Min','Steve','Bowser','Lottatore Mii','Sandro');
insert into smash values('Single',940,'Min Min','Steve','Bowser','King K. Rool','Ale');
insert into smash values('Single',939,'Kazuya','Pit Oscuro','Bowser','King K. Rool','Sandro');
insert into smash values('Single',938,'Kazuya','Mega Man','Sephiroth','Ganondorf','Leo');
insert into smash values('Single',937,'Kazuya','Snake','Little Mac','Cloud','Ale');
insert into smash values('Single',936,'Kazuya','Terry','Mr. Game & Watch','Byleth','Leo');
insert into smash values('Single',935,'Kazuya','Ken','Richter','Ganondorf','Ale');
insert into smash values('Single',934,'Simon','Wolf','Roy','Bowser Junior','Leo');
insert into smash values('Single',933,'Sonic','Mega Man','Lucario','Corrin','Ale');
insert into smash values('Single',932,'Fox','Bayonetta','Little Mac','Ridley','Ale');
insert into smash values('Single',931,'Ice Climbers','Daraen','Sora','Ken','Leo');
insert into smash values('Single',930,'Kirby','Ike','Link Cartone','Wario','Ale');
insert into smash values('Single',929,'Kirby','Zelda','Samus','Chrom','Sandro');
insert into smash values('Single',928,'Kirby','Fuffi','Pianta Piranha','Link','Ale');
insert into smash values('Single',927,'Kirby','Donkey Kong','Mr. Game & Watch','Terry','Sandro');
insert into smash values('Single',926,'Pac-Man','Snake','Mr. Game & Watch','Pichu','Leo');
insert into smash values('Single',925,'Pac-Man','Palutena','Mr. Game & Watch','Incineroar','Ale');
insert into smash values('Single',924,'Ryu','Richter','Mr. Game & Watch','Pit Oscuro','Sandro');
insert into smash values('Single',923,'Dr. Mario','Steve','Sephiroth','King K. Rool','Leo');
insert into smash values('Single',922,'Pokemon Trainer','Ganondorf','Bowser','Spadaccino Mii','Siwei');
insert into smash values('Single',921,'Sheik','Pikachu','Bowser','Marth','Ale');
insert into smash values('Single',920,'Kazuya','Steve','Yoshi','Banjo e Kazooie','Siwei');
insert into smash values('Single',919,'Kazuya','Steve','Bowser','Ragazza Inkling','Leo');
insert into smash values('Single',918,'Min Min','Kazuya','Bowser','Spadaccino Mii','Siwei');
insert into smash values('Single',917,'Min Min','Abitante','Bowser','Cloud','Leo');
insert into smash values('Single',916,'Kazuya','Terry','Greninja','Cloud','Leo');
commit;

/*--Highlights-29
insert into smash values('Doubles',407,'Chrom','Jigglypuff','Pyra & Mythra','Bowser','Ale','Leo');
insert into smash values('Doubles',406,'Roy','Incineroar','Steve','Pichu','Leo','Sandro');
insert into smash values('Doubles',405,'Ken','Ragazza Inkling','Luigi','Ryu','Leo','Sandro');
insert into smash values('Doubles',404,'Palutena','Wario','Bowser','Joker','Ale','Sandro');
insert into smash values('Doubles',403,'Mario','Olimar','Wolf','Greninja','Ale','Siwei');
insert into smash values('Doubles',402,'Lucina','Ike','Pit','Rosalinda e Sfavillotto','Sandro','Siwei');
insert into smash values('Doubles',401,'Lucas','Mr. Game & Watch','Pit Oscuro','Captain Falcon','Ale','Leo');
insert into smash values('Doubles',400,'Meta Knight','Fox','Pac-Man','Daisy','Ale','Siwei');
insert into smash values('Doubles',399,'Fuffi','King K. Rool','Mewtwo','Ridley','Ale','Sandro');
insert into smash values('Doubles',398,'Min Min','Ganondorf','Peach','Banjo e Kazooie','Leo','Siwei');
insert into smash values('Doubles',397,'Diddy Kong','Marth','Duo Duck Hunt','Sora','Sandro','Siwei');
insert into smash values('Doubles',396,'Samus','Eroe','Ice Climbers','Snake','Ale','Leo');
insert into smash values('Doubles',395,'Samus Oscura','Daraen','Sheik','Byleth','Leo','Siwei');
insert into smash values('Doubles',394,'Link Cartone','Lucario','Richter','Kazuya','Ale','Leo');
insert into smash values('Doubles',393,'Dr. Mario','Zelda','R.O.B.','Link Cartone','Leo','Siwei');
insert into smash values('Doubles',392,'Bayonetta','Yoshi','Donkey Kong','Pianta Piranha','Leo','Sandro');
insert into smash values('Doubles',391,'Mega Man','Trainer di Wii Fit','King Dedede','Kirby','Leo','Siwei');
insert into smash values('Single',915,'Duo Duck Hunt','Pokemon Trainer','Greninja','Abitante','Sandro');
insert into smash values('Single',914,'Wolf','Banjo e Kazooie','Sephiroth','Link Cartone','Leo');
insert into smash values('Single',913,'Mewtwo','Pianta Piranha','Samus Tuta Zero','Diddy Kong','Siwei');
insert into smash values('Single',912,'Mr. Game & Watch','Terry','Peach','Wario','Sandro');
insert into smash values('Single',911,'Olimar','Daisy','Eroe','Min Min','Leo');
insert into smash values('Single',910,'Corrin','Ryu','King Dedede','Zelda','Siwei');
insert into smash values('Single',909,'Lucina','Shulk','Pit','R.O.B.','Sandro');
insert into smash values('Single',908,'Jigglypuff','Cloud','Pikachu','Roy','Siwei');
insert into smash values('Single',907,'Pit Oscuro','Pyra & Mythra','Fuffi','Rosalinda e Sfavillotto','Sandro');
insert into smash values('Single',906,'Bowser Junior','Steve','Simon','Little Mac','Ale');
insert into smash values('Single',905,'Kirby','Ike','Meta Knight','Little Mac','Ale');
insert into smash values('Single',904,'Kirby','Ridley','Palutena','Little Mac','Leo');
insert into smash values('Single',903,'Kirby','Ridley','Sonic','Little Mac','Ale');
insert into smash values('Single',902,'Fox','Ridley','Yoshi','Bayonetta','Leo');
insert into smash values('Single',901,'Pac-Man','Ridley','Samus','Bayonetta','Sandro');
insert into smash values('Single',900,'Pac-Man','Mega Man','Falco','Bayonetta','Leo');
insert into smash values('Single',899,'Mega Man','Snake','King K. Rool','Bayonetta','Leo');
insert into smash values('Single',898,'Mario','Incineroar','Fox','Bayonetta','Leo');
insert into smash values('Single',897,'Pac-Man','Incineroar','Link Bambino','Bayonetta','Sandro');
insert into smash values('Single',896,'Pac-Man','Luigi','Lucario','Ganondorf','Leo');
insert into smash values('Single',895,'Pac-Man','Ridley','Sora','Samus Tuta Zero','Ale');
insert into smash values('Single',894,'Pac-Man','Byleth','Shulk','Pit','Ale');
insert into smash values('Single',893,'Pac-Man','Byleth','Samus','Pit','Siwei');
insert into smash values('Single',892,'Pac-Man','Palutena','Greninja','Cloud','Siwei');
insert into smash values('Single',891,'Kirby','Ness','Sephiroth','King K. Rool','Ale');
insert into smash values('Single',890,'Kirby','Ness','Sephiroth','Pit Oscuro','Ale');
insert into smash values('Single',889,'Min Min','Trainer di Wii Fit','Greninja','Spadaccino Mii','Leo');
insert into smash values('Single',888,'Min Min','Richter','Greninja','Byleth','Sandro');
insert into smash values('Single',887,'Min Min','Ganondorf','Bowser','Cloud','Leo');
insert into smash values('Single',886,'Min Min','Ganondorf','Bowser','Corrin','Ale');
insert into smash values('Single',885,'Min Min','Joker','Greninja','Incineroar','Ale');
insert into smash values('Single',884,'Min Min','Pokemon Trainer','Greninja','Little Mac','Sandro');
insert into smash values('Single',883,'Abitante','Pokemon Trainer','Greninja','Eroe','Ale');
insert into smash values('Single',882,'Abitante','Steve','Greninja','Lottatore Mii','Sandro');
insert into smash values('Single',881,'Ness','Steve','Mr. Game & Watch','Ganondorf','Leo');
insert into smash values('Single',880,'Kirby','Captain Falcon','Sephiroth','Bayonetta','Leo');
insert into smash values('Single',879,'Kirby','Mega Man','Sephiroth','Banjo e Kazooie','Leo');
insert into smash values('Single',878,'Kirby','Link Cartone','Sephiroth','Ike','Ale');
insert into smash values('Single',877,'Wario','Ganondorf','Sephiroth','Spadaccino Mii','Siwei');
insert into smash values('Single',876,'Sheik','Snake','Bowser','Corrin','Siwei');
insert into smash values('Single',875,'Sonic','Snake','Bowser','King K. Rool','Ale');
insert into smash values('Single',874,'Pyra & Mythra','Rosalinda e Sfavillotto','Bowser','Roy','Ale');
insert into smash values('Single',873,'Pyra & Mythra','Little Mac','Bowser','Banjo e Kazooie','Leo');
insert into smash values('Single',872,'Meta Knight','Steve','Greninja','Spadaccino Mii','Ale');
insert into smash values('Single',871,'Fox','Steve','Greninja','Cloud','Sandro');
insert into smash values('Single',870,'Fox','Steve','Samus','Cloud','Ale');
insert into smash values('Single',869,'Pichu','Steve','Byleth','Ridley','Ale');
commit;
*/
/*--Highlights-28
insert into smash values('Doubles',390,'Ice Climbers','Sonic','Joker','Roy','Ale','Sandro');
insert into smash values('Doubles',389,'Falco','Bowser Junior','Abitante','Daisy','Sandro','Siwei');
insert into smash values('Doubles',388,'Dr. Mario','Byleth','Zelda','Ryu','Ale','Sandro');
insert into smash values('Doubles',387,'Kirby','Incineroar','Lucina','Bowser','Ale','Leo');
insert into smash values('Doubles',386,'Mewtwo','Luigi','Greninja','Terry','Ale','Leo');
insert into smash values('Doubles',385,'Dr. Mario','Olimar','Samus Tuta Zero','Banjo e Kazooie','Ale','Sandro');
insert into smash values('Doubles',384,'Pac-Man','Mario','Richter','Duo Duck Hunt','Ale','Sandro');
insert into smash values('Doubles',383,'Lucas','Corrin','Sonic','Peach','Ale','Sandro');
insert into smash values('Doubles',382,'Kirby','Bowser Junior','Daraen','Pyra & Mythra','Ale','Leo');
insert into smash values('Doubles',381,'Kirby','Samus Oscura','Ragazza Inkling','Bayonetta','Sandro','Siwei');
insert into smash values('Doubles',380,'Kirby','Wario','Link','Mewtwo','Leo','Sandro');
insert into smash values('Doubles',379,'Kirby','Falco','Link Bambino','Shulk','Ale','Sandro');
insert into smash values('Doubles',378,'Kirby','Steve','Incineroar','Diddy Kong','Ale','Leo');
insert into smash values('Doubles',377,'Daisy','Steve','Sora','Pit Oscuro','Leo','Sandro');
insert into smash values('Doubles',376,'Kirby','Steve','Bowser','Banjo e Kazooie','Ale','Leo');
insert into smash values('Doubles',375,'Meta Knight','Link Cartone','Bowser','Ike','Ale','Sandro');
insert into smash values('Doubles',374,'Meta Knight','Ganondorf','Bowser','Captain Falcon','Leo','Sandro');
insert into smash values('Doubles',373,'Kirby','Luigi','Bowser','Eroe','Ale','Siwei');
insert into smash values('Doubles',372,'Kirby','Snake','Sephiroth','Eroe','Ale','Leo');
insert into smash values('Doubles',371,'Kirby','Snake','Mr. Game & Watch','Byleth','Leo','Sandro');
insert into smash values('Doubles',370,'Kirby','Mega Man','Bowser','Banjo e Kazooie','Sandro','Siwei');
insert into smash values('Doubles',369,'Kirby','Ness','Incineroar','Incineroar','Ale','Siwei');
insert into smash values('Doubles',368,'Kirby','Roy','Incineroar','Ganondorf','Leo','Siwei');
insert into smash values('Doubles',367,'Fox','Roy','Greninja','Ganondorf','Leo','Siwei');
insert into smash values('Doubles',366,'Kirby','Donkey Kong','Bowser','Eroe','Sandro','Siwei');
insert into smash values('Doubles',365,'Fox','Sephiroth','Bowser','Wolf','Leo','Sandro');
insert into smash values('Doubles',364,'Pichu','Ice Climbers','King Dedede','Cloud','Ale','Siwei');
insert into smash values('Doubles',363,'Pichu','Snake','Sora','King K. Rool','Leo','Sandro');
insert into smash values('Doubles',362,'Pichu','Trainer di Wii Fit','Trainer di Wii Fit','Marth','Ale','Siwei');
insert into smash values('Doubles',361,'Pichu','Trainer di Wii Fit','Trainer di Wii Fit','Ridley','Ale','Siwei');
insert into smash values('Doubles',360,'Mega Man','Mega Man','Samus','R.O.B.','Leo','Sandro');
insert into smash values('Doubles',359,'Min Min','Ken','Incineroar','Little Mac','Ale','Siwei');
insert into smash values('Doubles',358,'Ken','Kazuya','Incineroar','Ryu','Leo','Sandro');
insert into smash values('Doubles',357,'Ken','Rosalinda e Sfavillotto','Terry','Min Min','Ale','Leo');
insert into smash values('Doubles',356,'Abitante','Kirby','Pianta Piranha','Min Min','Ale','Leo');
insert into smash values('Doubles',355,'Jigglypuff','Kazuya','Sephiroth','Eroe','Ale','Siwei');
insert into smash values('Doubles',354,'Daisy','Lucina','Ridley','Eroe','Ale','Leo');
insert into smash values('Doubles',353,'Daisy','Lucina','R.O.B.','Banjo e Kazooie','Ale','Leo');
insert into smash values('Doubles',352,'Kirby','Captain Falcon','Mr. Game & Watch','Marth','Ale','Leo');
insert into smash values('Doubles',351,'Pichu','Link Cartone','Mr. Game & Watch','Chrom','Ale','Sandro');
insert into smash values('Doubles',350,'Pichu','Joker','Mr. Game & Watch','Ike','Sandro','Siwei');
insert into smash values('Doubles',349,'Pichu','Joker','Bowser','Ike','Ale','Sandro');
insert into smash values('Doubles',348,'Fox','Lucario','Bowser','Wolf','Leo','Sandro');
insert into smash values('Doubles',347,'Fox','Palutena','Bowser','Wolf','Ale','Leo');
insert into smash values('Doubles',346,'Cloud','Zelda','Bowser','Cloud','Leo','Sandro');
insert into smash values('Doubles',345,'Ness','Ness','Bowser','Banjo e Kazooie','Ale','Leo');
insert into smash values('Doubles',344,'Ganondorf','King K. Rool','Bowser','Ganondorf','Leo','Sandro');
insert into smash values('Doubles',343,'Incineroar','Steve','Steve','Ridley','Ale','Siwei');
insert into smash values('Doubles',342,'Joker','Joker','Eroe','Eroe','Sandro','Siwei');
insert into smash values('Doubles',341,'Spadaccino Mii','Fuffi','Yoshi','Spadaccino Mii','Ale','Siwei');
insert into smash values('Doubles',340,'Eroe','Ike','Eroe','Pit','Ale','Sandro');
insert into smash values('Doubles',339,'Sheik','Link Cartone','Pianta Piranha','Banjo e Kazooie','Ale','Leo');
insert into smash values('Doubles',338,'Byleth','Pikachu','Greninja','Byleth','Ale','Siwei');
insert into smash values('Doubles',337,'Bowser','Ganondorf','Bowser','King K. Rool','Ale','Sandro');
insert into smash values('Doubles',336,'Cloud','Incineroar','Bowser','Cloud','Leo','Sandro');
insert into smash values('Doubles',335,'Pokemon Trainer','Pokemon Trainer','Bowser','Lottatore Mii','Sandro','Siwei');
insert into smash values('Doubles',334,'Terry','Little Mac','Terry','Lottatore Mii','Leo','Siwei');
insert into smash values('Single',868,'Pichu','Steve','Eroe','Simon','Ale');
insert into smash values('Single',867,'Lucas','Mewtwo','King K. Rool','Eroe','Ale');
insert into smash values('Single',866,'Richter','Pikachu','Terry','Jigglypuff','Sandro');
insert into smash values('Single',865,'Mewtwo','Captain Falcon','Mario','Incineroar','Leo');
insert into smash values('Single',864,'Dr. Mario','Pit','Ryu','Chrom','Sandro');
insert into smash values('Single',863,'Link Bambino','Daraen','Wario','Simon','Leo');
insert into smash values('Single',862,'Daisy','Peach','Marth','Bowser Junior','Ale');
insert into smash values('Single',861,'Pichu','Yoshi','Eroe','Bayonetta','Ale');
insert into smash values('Single',860,'Falco','Link','Eroe','Ken','Ale');
insert into smash values('Single',859,'Kirby','Sephiroth','Eroe','Falco','Ale');
insert into smash values('Single',858,'Fox','Mega Man','Eroe','Ike','Siwei');
insert into smash values('Single',857,'Kirby','Mega Man','Eroe','King K. Rool','Ale');
insert into smash values('Single',856,'Fox','Ganondorf','Eroe','King K. Rool','Leo');
insert into smash values('Single',855,'King Dedede','Jigglypuff','Eroe','Roy','Ale');
insert into smash values('Single',854,'Sonic','Luigi','Eroe','Samus Tuta Zero','Ale');
insert into smash values('Single',853,'Ness','Lucas','Eroe','R.O.B.','Ale');
insert into smash values('Single',852,'Abitante','Ness','Eroe','Lottatore Mii','Leo');
insert into smash values('Single',851,'Diddy Kong','Olimar','Eroe','Lottatore Mii','Ale');
insert into smash values('Single',850,'Fox','Rosalinda e Sfavillotto','Eroe','Little Mac','Ale');
insert into smash values('Single',849,'Fox','Rosalinda e Sfavillotto','Eroe','Banjo e Kazooie','Ale');
insert into smash values('Single',848,'Meta Knight','Donkey Kong','Eroe','Ridley','Leo');
insert into smash values('Single',847,'Kirby','Donkey Kong','Eroe','Lottatore Mii','Leo');
insert into smash values('Single',846,'Fox','Donkey Kong','Eroe','Lottatore Mii','Leo');
insert into smash values('Single',845,'Fox','Fuffi','Eroe','Lottatore Mii','Siwei');
insert into smash values('Single',844,'Fox','Lucina','Eroe','Lottatore Mii','Ale');
insert into smash values('Single',843,'Fox','Steve','Eroe','Lottatore Mii','Ale');
insert into smash values('Single',842,'Fox','Steve','Eroe','Sephiroth','Ale');
insert into smash values('Single',841,'Fox','Steve','Eroe','Corrin','Leo');
insert into smash values('Single',840,'Kirby','Steve','Eroe','Cloud','Ale');
insert into smash values('Single',839,'Kirby','Link Cartone','Eroe','Cloud','Sandro');
insert into smash values('Single',838,'Fox','Captain Falcon','Eroe','Wolf','Sandro');
insert into smash values('Single',837,'Pikachu','Captain Falcon','Eroe','Wolf','Siwei');
insert into smash values('Single',836,'Pikachu','King K. Rool','Bowser','Ridley','Ale');
insert into smash values('Single',835,'Incineroar','King K. Rool','Bowser','Ridley','Sandro');
insert into smash values('Single',834,'Incineroar','King K. Rool','Bowser','Ganondorf','Ale');
insert into smash values('Single',833,'Diddy Kong','Steve','Mr. Game & Watch','Banjo e Kazooie','Leo');
insert into smash values('Single',832,'Diddy Kong','Ragazza Inkling','Eroe','Byleth','Ale');
insert into smash values('Single',831,'Pokemon Trainer','Ragazza Inkling','Eroe','Duo Duck Hunt','Sandro');
insert into smash values('Single',830,'Greninja','Joker','Eroe','Richter','Leo');
insert into smash values('Single',829,'Kirby','Joker','Eroe','Byleth','Ale');
insert into smash values('Single',828,'Fox','Roy','Eroe','Banjo e Kazooie','Leo');
insert into smash values('Single',827,'Fox','Pit Oscuro','Eroe','R.O.B.','Siwei');
insert into smash values('Single',826,'Fox','Joker','Samus','Eroe','Sandro');
insert into smash values('Single',825,'Fox','Trainer di Wii Fit','Bowser','Spadaccino Mii','Leo');
insert into smash values('Single',824,'Fox','Trainer di Wii Fit','Bowser','Samus Tuta Zero','Sandro');
insert into smash values('Single',823,'Fox','Link Cartone','Bowser','Mario','Ale');
insert into smash values('Single',822,'Fox','Joker','Bowser','King K. Rool','Sandro');
insert into smash values('Single',821,'Kirby','Steve','Bowser','Cloud','Sandro');
insert into smash values('Single',820,'Kirby','Steve','Samus','Cloud','Siwei');
insert into smash values('Single',819,'Meta Knight','Samus Tuta Zero','Byleth','Pit Oscuro','Ale');
insert into smash values('Single',818,'Rosalinda e Sfavillotto','Palutena','Byleth','Ganondorf','Siwei');
insert into smash values('Single',817,'Sheik','Pac-Man','Sephiroth','Cloud','Ale');
insert into smash values('Single',816,'Sonic','Link Cartone','Bowser','Byleth','Leo');
insert into smash values('Single',815,'Sonic','Ice Climbers','Bowser','Byleth','Sandro');
insert into smash values('Single',814,'Lucas','Ness','Mr. Game & Watch','Spadaccino Mii','Leo');
insert into smash values('Single',813,'Eroe','Joker','Samus','Corrin','Sandro');
insert into smash values('Single',812,'Jigglypuff','Snake','Samus Oscura','Banjo e Kazooie','Siwei');
insert into smash values('Single',811,'Jigglypuff','Corrin','Zelda','Banjo e Kazooie','Sandro');
insert into smash values('Single',810,'King K. Rool','Sora','Greninja','Banjo e Kazooie','Siwei');
insert into smash values('Single',809,'Kirby','Incineroar','Bowser','Spadaccino Mii','Ale');
insert into smash values('Single',808,'Abitante','Rosalinda e Sfavillotto','Lucario','Ganondorf','Leo');
insert into smash values('Single',807,'Pikachu','Ganondorf','Greninja','Cloud','Sandro');
insert into smash values('Single',806,'Terry','Kazuya','R.O.B.','Cloud','Ale');
insert into smash values('Single',805,'Min Min','Rosalinda e Sfavillotto','Steve','Little Mac','Leo');
insert into smash values('Single',804,'Shulk','Pokemon Trainer','Sephiroth','Little Mac','Sandro');
insert into smash values('Single',803,'Pyra & Mythra','Steve','Pianta Piranha','Ridley','Sandro');
*/
/*--Highlights-27
insert into smash values('Doubles',333,'Pichu','Marth','Chrom','Bowser Junior','Leo','Sandro');
insert into smash values('Doubles',332,'Kirby','Pit Oscuro','Pit','Banjo e Kazooie','Ale','Leo');
insert into smash values('Doubles',331,'Kirby','Joker','Sora','Ridley','Ale','Siwei');
insert into smash values('Doubles',330,'Fox','Samus Tuta Zero','Yoshi','Dr. Mario','Ale','Leo');
insert into smash values('Doubles',329,'Kirby','Donkey Kong','Donkey Kong','King K. Rool','Ale','Leo');
insert into smash values('Doubles',328,'Sheik','Ness','Bowser','King K. Rool','Leo','Sandro');
insert into smash values('Doubles',327,'Sheik','Link Cartone','Yoshi','Little Mac','Ale','Sandro');
insert into smash values('Doubles',326,'Mario','Luigi','Yoshi','Little Mac','Ale','Leo');
insert into smash values('Doubles',325,'Lucas','Ness','Samus Oscura','Pit Oscuro','Leo','Siwei');
insert into smash values('Doubles',324,'Kirby','Joker','Samus Oscura','King K. Rool','Leo','Sandro');
insert into smash values('Doubles',323,'Wolf','Pac-Man','Samus','Ganondorf','Ale','Leo');
insert into smash values('Doubles',322,'Mega Man','Ragazza Inkling','Pianta Piranha','Spadaccino Mii','Leo','Sandro');
insert into smash values('Doubles',321,'Mega Man','Snake','Greninja','Byleth','Ale','Leo');
insert into smash values('Doubles',320,'Rosalinda e Sfavillotto','Ice Climbers','Pianta Piranha','Eroe','Ale','Sandro');
insert into smash values('Doubles',319,'Rosalinda e Sfavillotto','Olimar','Olimar','Eroe','Ale','Leo');
insert into smash values('Doubles',318,'Rosalinda e Sfavillotto','Byleth','Steve','Banjo e Kazooie','Leo','Sandro');
insert into smash values('Doubles',317,'Rosalinda e Sfavillotto','Ganondorf','R.O.B.','King K. Rool','Leo','Sandro');
insert into smash values('Doubles',316,'Abitante','Little Mac','Mr. Game & Watch','Spadaccino Mii','Leo','Sandro');
insert into smash values('Doubles',315,'Abitante','Fuffi','Bowser','Cloud','Ale','Leo');
insert into smash values('Doubles',314,'Pokemon Trainer','Link Cartone','Bowser','Samus Tuta Zero','Ale','Leo');
insert into smash values('Doubles',313,'King Dedede','Fuffi','Bowser','Spadaccino Mii','Ale','Siwei');
insert into smash values('Doubles',312,'Incineroar','Ganondorf','Bowser','Spadaccino Mii','Sandro','Siwei');
insert into smash values('Doubles',311,'Incineroar','Ganondorf','Bowser','Spadaccino Mii','Ale','Sandro');
insert into smash values('Doubles',310,'Palutena','Sora','Pianta Piranha','Corrin','Ale','Siwei');
insert into smash values('Doubles',309,'Eroe','Little Mac','Bowser','Duo Duck Hunt','Leo','Sandro');
insert into smash values('Doubles',308,'Sheik','Joker','Greninja','Banjo e Kazooie','Ale','Leo');
insert into smash values('Doubles',307,'Sonic','Sephiroth','Yoshi','Min Min','Leo','Sandro');
insert into smash values('Doubles',306,'Kirby','Trainer di Wii Fit','Bowser','Kazuya','Leo','Sandro');
insert into smash values('Doubles',305,'Pikachu','Ganondorf','Pianta Piranha','Sephiroth','Ale','Leo');
insert into smash values('Doubles',304,'Ness','Link Cartone','Yoshi','Cloud','Ale','Sandro');
insert into smash values('Doubles',303,'Jigglypuff','Pokemon Trainer','Pianta Piranha','Samus Tuta Zero','Leo','Sandro');
insert into smash values('Doubles',302,'Ness','Ganondorf','Pianta Piranha','Samus Tuta Zero','Ale','Leo');
insert into smash values('Doubles',301,'Ness','Steve','Mr. Game & Watch','Spadaccino Mii','Leo','Sandro');
insert into smash values('Doubles',300,'Ness','Roy','Mr. Game & Watch','Spadaccino Mii','Sandro','Siwei');
insert into smash values('Doubles',299,'Meta Knight','Byleth','Yoshi','Sephiroth','Ale','Sandro');
insert into smash values('Doubles',298,'Eroe','Link Cartone','Bowser','Cloud','Sandro','Siwei');
insert into smash values('Doubles',297,'Meta Knight','Lucina','Steve','Cloud','Ale','Leo');
insert into smash values('Doubles',296,'Meta Knight','Pokemon Trainer','Pianta Piranha','Cloud','Ale','Siwei');
insert into smash values('Doubles',295,'Shulk','Steve','Bowser','Banjo e Kazooie','Sandro','Siwei');
insert into smash values('Doubles',294,'Greninja','Rosalinda e Sfavillotto','Sora','Samus Tuta Zero','Ale','Siwei');
insert into smash values('Doubles',293,'Sonic','Richter','Greninja','King K. Rool','Ale','Sandro');
insert into smash values('Doubles',292,'Kirby','Luigi','Bowser Junior','Byleth','Ale','Siwei');
insert into smash values('Doubles',291,'Sheik','Joker','Sephiroth','Spadaccino Mii','Ale','Leo');
insert into smash values('Doubles',290,'Fox','Ganondorf','Mr. Game & Watch','Spadaccino Mii','Ale','Sandro');
insert into smash values('Doubles',289,'Pichu','King K. Rool','Bowser','Ganondorf','Ale','Sandro');
insert into smash values('Doubles',288,'Pichu','Captain Falcon','Yoshi','Duo Duck Hunt','Leo','Sandro');
insert into smash values('Doubles',287,'Bayonetta','Pac-Man','Samus','Ridley','Sandro','Siwei');
insert into smash values('Doubles',286,'Lottatore Mii','Eroe','Pianta Piranha','Mewtwo','Leo','Sandro');
insert into smash values('Doubles',285,'Kazuya','Fuciliere Mii','Steve','Pit Oscuro','Leo','Sandro');
*/
/*--Highlights-26
insert into smash values('Single',802,'Fox','Marth','Ryu','Snake','Ale');
insert into smash values('Single',801,'Sheik','Min Min','Sora','Sephiroth','Ale');
insert into smash values('Single',800,'Kirby','Olimar','Mr. Game & Watch','Sephiroth','Ale');
insert into smash values('Single',799,'Kirby','Daraen','Mr. Game & Watch','Sephiroth','Ale');
insert into smash values('Single',798,'Pichu','Zelda','Mr. Game & Watch','Dr. Mario','Sandro');
insert into smash values('Single',797,'Pichu','Falco','Mr. Game & Watch','Terry','Leo');
insert into smash values('Single',796,'Sheik','Rosalinda e Sfavillotto','Mr. Game & Watch','Lucas','Sandro');
insert into smash values('Single',795,'Sheik','Meta Knight','Mr. Game & Watch','Byleth','Sandro');
insert into smash values('Single',794,'Sheik','Donkey Kong','Mr. Game & Watch','Ganondorf','Sandro');
insert into smash values('Single',793,'Palutena','Donkey Kong','Bowser','Ganondorf','Leo');
insert into smash values('Single',792,'Wolf','Pit Oscuro','Mr. Game & Watch','Captain Falcon','Leo');
insert into smash values('Single',791,'King Dedede','Ness','Mr. Game & Watch','Wolf','Leo');
insert into smash values('Single',790,'Kirby','Ike','Mr. Game & Watch','Mewtwo','Ale');
insert into smash values('Single',789,'Kirby','Joker','Steve','Spadaccino Mii','Sandro');
insert into smash values('Single',788,'Abitante','Trainer di Wii Fit','Mega Man','Eroe','Siwei');
insert into smash values('Single',787,'Jigglypuff','Kirby','Pichu','King K. Rool','Leo');
insert into smash values('Single',786,'Joker','Kirby','Pianta Piranha','Banjo e Kazooie','Siwei');
insert into smash values('Single',785,'Lottatore Mii','Ganondorf','Wario','Corrin','Leo');
insert into smash values('Single',784,'Lottatore Mii','Ganondorf','Sora','Mario','Ale');
insert into smash values('Single',783,'Lottatore Mii','Ganondorf','Sephiroth','Spadaccino Mii','Siwei');
insert into smash values('Single',782,'Sonic','Ice Climbers','Ice Climbers','Little Mac','Ale');
insert into smash values('Single',781,'Sonic','Link Cartone','King Dedede','Cloud','Ale');
insert into smash values('Single',780,'Incineroar','Pikachu','Sonic','Cloud','Siwei');
insert into smash values('Single',779,'Incineroar','Pikachu','Greninja','Mewtwo','Sandro');
insert into smash values('Single',778,'Greninja','Incineroar','Lucario','Samus Tuta Zero','Ale');
insert into smash values('Single',777,'Greninja','Incineroar','Pyra & Mythra','Duo Duck Hunt','Ale');
insert into smash values('Single',776,'Shulk','Pit Oscuro','Pianta Piranha','Ganondorf','Sandro');
insert into smash values('Single',775,'Shulk','Mega Man','Pianta Piranha','Ganondorf','Ale');
insert into smash values('Single',774,'Sheik','Mega Man','Pianta Piranha','Corrin','Ale');
insert into smash values('Single',773,'Sheik','Ganondorf','Pianta Piranha','Cloud','Sandro');
insert into smash values('Single',772,'Sheik','Palutena','Kazuya','Pit Oscuro','Ale');
insert into smash values('Single',771,'Sheik','Richter','Sora','Roy','Leo');
insert into smash values('Single',770,'Sheik','King K. Rool','Sora','Roy','Sandro');
insert into smash values('Single',769,'Pokemon Trainer','Little Mac','Bowser Junior','Pit','Ale');
insert into smash values('Single',768,'Pokemon Trainer','Ganondorf','Mr. Game & Watch','Bowser Junior','Leo');
insert into smash values('Single',767,'Pokemon Trainer','Ganondorf','Bowser','Ridley','Ale');
insert into smash values('Single',766,'Incineroar','Ganondorf','Yoshi','Ridley','Siwei');
insert into smash values('Single',765,'Eroe','Steve','Sephiroth','Incineroar','Leo');
insert into smash values('Single',764,'Joker','Steve','Captain Falcon','Cloud','Ale');
insert into smash values('Single',763,'Joker','Steve','Pianta Piranha','Sephiroth','Sandro');
insert into smash values('Single',762,'Sheik','Steve','Pianta Piranha','Wolf','Leo');
insert into smash values('Single',761,'Lottatore Mii','Sora','Pianta Piranha','Byleth','Siwei');
insert into smash values('Single',760,'Sora','Fuciliere Mii','Kazuya','Mewtwo','Leo');
*/
/*--Highlights-25
insert into smash values('Single',759,'Abitante','Bowser','Sephiroth','Ridley','Ale');
insert into smash values('Single',758,'Abitante','Richter','Sephiroth','Ridley','Sandro');
insert into smash values('Single',757,'Abitante','Richter','Sephiroth','Duo Duck Hunt','Leo');
insert into smash values('Single',756,'Abitante','Little Mac','Sephiroth','Duo Duck Hunt','Siwei');
insert into smash values('Single',755,'Abitante','Sora','Sephiroth','Banjo e Kazooie','Ale');
insert into smash values('Single',754,'Min Min','Byleth','Sephiroth','R.O.B.','Sandro');
insert into smash values('Single',753,'Min Min','Byleth','Sephiroth','R.O.B.','Sandro');
insert into smash values('Single',752,'Incineroar','Bowser','Shulk','Sephiroth','Leo');
insert into smash values('Single',751,'Incineroar','Ganondorf','Yoshi','Sephiroth','Leo');
insert into smash values('Single',750,'Incineroar','Ganondorf','Bowser','Sephiroth','Ale');
insert into smash values('Single',749,'Incineroar','Ganondorf','Kazuya','Sephiroth','Siwei');
insert into smash values('Single',748,'Incineroar','Ganondorf','Pianta Piranha','Sephiroth','Leo');
insert into smash values('Single',747,'Incineroar','Ganondorf','Pianta Piranha','Spadaccino Mii','Ale');
insert into smash values('Single',746,'Incineroar','Bowser','Pianta Piranha','Spadaccino Mii','Sandro');
insert into smash values('Single',745,'Incineroar','Ganondorf','Pianta Piranha','Spadaccino Mii','Sandro');
insert into smash values('Single',744,'Ganondorf','Bowser','Pianta Piranha','Banjo e Kazooie','Sandro');
insert into smash values('Single',743,'Ganondorf','Bowser','Pianta Piranha','Banjo e Kazooie','Leo');
insert into smash values('Single',742,'Sonic','Bowser','Pianta Piranha','Sephiroth','Sandro');
insert into smash values('Single',741,'Mr. Game & Watch','Bowser','Pianta Piranha','Kazuya','Sandro');
insert into smash values('Single',740,'Sheik','Luigi','Bayonetta','Mario','Leo');
insert into smash values('Single',739,'Sheik','Captain Falcon','Olimar','Mario','Siwei');
insert into smash values('Single',738,'Sheik','Captain Falcon','Fox','Mario','Siwei');
insert into smash values('Single',737,'Incineroar','Captain Falcon','Ness','Bowser','Ale');
insert into smash values('Single',736,'Olimar','Meta Knight','Pianta Piranha','Bowser','Sandro');
insert into smash values('Single',735,'Fuciliere Mii','Pokemon Trainer','Pianta Piranha','Bowser','Leo');
insert into smash values('Single',734,'Fuciliere Mii','Pokemon Trainer','Pianta Piranha','Samus Tuta Zero','Ale');
insert into smash values('Single',733,'Terry','Lucario','Pianta Piranha','Samus Tuta Zero','Sandro');
insert into smash values('Single',732,'Eroe','Ganondorf','Pianta Piranha','Byleth','Leo');
insert into smash values('Single',731,'Eroe','Ganondorf','Pianta Piranha','Byleth','Sandro');
insert into smash values('Single',730,'Incineroar','Daraen','Pianta Piranha','King Dedede','Sandro');
insert into smash values('Single',729,'Kirby','Link Cartone','Sora','Ganondorf','Leo');
insert into smash values('Single',728,'Kirby','Trainer di Wii Fit','Steve','Ganondorf','Leo');
insert into smash values('Single',727,'Kirby','Trainer di Wii Fit','Steve','Ganondorf','Ale');
insert into smash values('Single',726,'Kirby','Steve','Greninja','Little Mac','Ale');
insert into smash values('Single',725,'Kirby','Steve','Lottatore Mii','Cloud','Ale');
insert into smash values('Single',724,'Sheik','Steve','Sora','Cloud','Sandro');
insert into smash values('Single',723,'Sheik','Steve','Pyra & Mythra','Cloud','Leo');
insert into smash values('Single',722,'Sheik','Joker','Kazuya','Cloud','Leo');
insert into smash values('Single',721,'Pichu','Link Cartone','Sephiroth','Cloud','Siwei');
insert into smash values('Single',720,'Pichu','Link Cartone','Sephiroth','Cloud','Ale');
insert into smash values('Single',719,'Pichu','Link Cartone','Mr. Game & Watch','Duo Duck Hunt','Siwei');
insert into smash values('Single',718,'Pichu','Link Cartone','Mr. Game & Watch','Duo Duck Hunt','Sandro');
insert into smash values('Single',717,'Incineroar','Ganondorf','Bowser','King K. Rool','Leo');
insert into smash values('Single',716,'Incineroar','Ganondorf','Bowser','King K. Rool','Sandro');
insert into smash values('Single',715,'Incineroar','Ganondorf','Bowser','King K. Rool','Ale');
insert into smash values('Single',714,'Incineroar','Ganondorf','Bowser','King K. Rool','Leo');
insert into smash values('Single',713,'Incineroar','Ganondorf','Bowser','King K. Rool','Ale');
insert into smash values('Single',712,'Incineroar','Ganondorf','Bowser','King K. Rool','Leo');
insert into smash values('Single',711,'Incineroar','Ganondorf','Bowser','King K. Rool','Ale');
insert into smash values('Single',710,'Incineroar','Ganondorf','Bowser','Spadaccino Mii','Sandro');
insert into smash values('Single',709,'Min Min','Pit Oscuro','Yoshi','Pianta Piranha','Ale');
insert into smash values('Single',708,'Pichu','Snake','Min Min','Pianta Piranha','Ale');
insert into smash values('Single',707,'Incineroar','Kirby','Pianta Piranha','Pianta Piranha','Siwei');
insert into smash values('Single',706,'Incineroar','Kirby','Donkey Kong','Pianta Piranha','Leo');
insert into smash values('Single',705,'Sheik','Kirby','Meta Knight','Pianta Piranha','Sandro');
insert into smash values('Single',704,'Sheik','Pit Oscuro','Bayonetta','Joker','Ale');
insert into smash values('Single',703,'Sheik','Eroe','Mega Man','Sephiroth','Ale');
insert into smash values('Single',702,'Sheik','King K. Rool','Sonic','Sephiroth','Ale');
insert into smash values('Single',701,'Sheik','King K. Rool','Ragazza Inkling','Sephiroth','Sandro');
insert into smash values('Single',700,'Sheik','King K. Rool','Pianta Piranha','Dr. Mario','Sandro');
insert into smash values('Single',699,'Sheik','Pikachu','Olimar','Bowser Junior','Sandro');
insert into smash values('Single',698,'Sheik','Wolf','R.O.B.','Bowser Junior','Sandro');
insert into smash values('Single',697,'Sheik','Ken','Mr. Game & Watch','Zelda','Sandro');
insert into smash values('Single',696,'Sheik','Bowser','Steve','Zelda','Leo');
insert into smash values('Single',695,'Sheik','Sora','Yoshi','Zelda','Leo');
insert into smash values('Single',694,'Sheik','Steve','Lucas','Zelda','Leo');
*/
/*--Highlights-24
insert into smash values('Single',693,'Kirby','Link','Mr. Game & Watch','Bowser','Sandro');
insert into smash values('Single',692,'King K. Rool','Kirby','Link Cartone','Kazuya','Siwei');
insert into smash values('Single',691,'Greninja','Kirby','Pianta Piranha','Kazuya','Sandro');
insert into smash values('Single',690,'Spadaccino Mii','Kirby','Duo Duck Hunt','Bowser','Siwei');
insert into smash values('Single',689,'Ness','Kirby','Steve','Bowser','Leo');
insert into smash values('Single',688,'Joker','Kirby','Steve','Captain Falcon','Siwei');
insert into smash values('Single',687,'Kirby','Sora','Sephiroth','Ganondorf','Leo');
insert into smash values('Single',686,'Kirby','Sora','Sephiroth','King K. Rool','Ale');
insert into smash values('Single',685,'Sonic','Ice Climbers','Sephiroth','Samus Tuta Zero','Ale');
insert into smash values('Single',684,'Sonic','Ice Climbers','R.O.B.','King K. Rool','Ale');
insert into smash values('Single',683,'Sonic','Olimar','Yoshi','King K. Rool','Leo');
insert into smash values('Single',682,'Samus Tuta Zero','Ganondorf','Sonic','King K. Rool','Sandro');
insert into smash values('Single',681,'Kirby','Pit Oscuro','Sheik','Banjo e Kazooie','Ale');
insert into smash values('Single',680,'Kirby','Trainer di Wii Fit','Sephiroth','King K. Rool','Ale');
insert into smash values('Single',679,'Kirby','Link Cartone','Sephiroth','King K. Rool','Siwei');
insert into smash values('Single',678,'Kirby','Link Cartone','Bowser','Spadaccino Mii','Leo');
insert into smash values('Single',677,'Min Min','Link Cartone','Bowser','Spadaccino Mii','Leo');
insert into smash values('Single',676,'Min Min','Link Cartone','Zelda','Ganondorf','Leo');
insert into smash values('Single',675,'Kirby','Sephiroth','Steve','Duo Duck Hunt','Sandro');
insert into smash values('Single',674,'Kirby','Kazuya','Steve','Duo Duck Hunt','Ale');
insert into smash values('Single',673,'Abitante','Ganondorf','Greninja','Spadaccino Mii','Siwei');
insert into smash values('Single',672,'Meta Knight','Pokemon Trainer','Samus','Little Mac','Sandro');
insert into smash values('Single',671,'Sora','Link Cartone','Bowser','Little Mac','Leo');
insert into smash values('Single',670,'Eroe','Sora','Yoshi','Duo Duck Hunt','Siwei');
insert into smash values('Single',669,'Ganondorf','Sora','Sephiroth','Duo Duck Hunt','Leo');
insert into smash values('Single',668,'Pichu','Sora','Steve','Wario','Ale');

insert into smash values('Doubles',284,'Marth','Simon','Rosalinda e Sfavillotto','Min Min','Sandro','Siwei');
insert into smash values('Doubles',283,'Pichu','Falco','Ridley','Olimar','Ale','Leo');
insert into smash values('Doubles',282,'Pichu','Jigglypuff','Daisy','Samus Oscura','Leo','Sandro');
insert into smash values('Doubles',281,'Ganondorf','Donkey Kong','Sephiroth','Lucas','Leo','Siwei');
insert into smash values('Doubles',280,'Abitante','Sora','Steve','Spadaccino Mii','Ale','Siwei');
insert into smash values('Doubles',279,'Abitante','Joker','Yoshi','Cloud','Leo','Sandro');
insert into smash values('Doubles',278,'Abitante','Joker','Pyra & Mythra','Cloud','Ale','Siwei');
insert into smash values('Doubles',277,'Kirby','Lucina','Yoshi','Cloud','Ale','Siwei');
insert into smash values('Doubles',276,'Kirby','Lucina','Yoshi','King K. Rool','Leo','Sandro');
insert into smash values('Doubles',275,'Kirby','Lucina','Yoshi','King K. Rool','Leo','Sandro');
insert into smash values('Doubles',274,'Kirby','Trainer di Wii Fit','Yoshi','Spadaccino Mii','Ale','Sandro');
insert into smash values('Doubles',273,'Kirby','Trainer di Wii Fit','Sephiroth','Banjo e Kazooie','Ale','Siwei');
insert into smash values('Doubles',272,'Kirby','Trainer di Wii Fit','Sora','Banjo e Kazooie','Leo','Siwei');
insert into smash values('Doubles',271,'Kirby','Trainer di Wii Fit','Greninja','Ganondorf','Ale','Sandro');
insert into smash values('Doubles',270,'Kirby','Link Cartone','Steve','Dr. Mario','Sandro','Leo');
insert into smash values('Doubles',269,'Sora','Sora','Steve','Peach','Sandro','Siwei');
insert into smash values('Doubles',268,'Pianta Piranha','Ganondorf','Steve','Ganondorf','Leo','Sandro');
insert into smash values('Doubles',267,'Eroe','Link Cartone','Steve','Mewtwo','Leo','Sandro');
insert into smash values('Doubles',266,'Ganondorf','Ganondorf','Ganondorf','Ganondorf','Ale','Siwei');
insert into smash values('Doubles',265,'Abitante','Link Cartone','R.O.B.','Incineroar','Ale','Sandro');
insert into smash values('Doubles',264,'Kirby','Daraen','Yoshi','King K. Rool','Ale','Siwei');
insert into smash values('Doubles',263,'Sora','Kazuya','Yoshi','Sheik','Leo','Sandro');
insert into smash values('Doubles',262,'Sora','Kazuya','Shulk','Roy','Ale','Sandro');
insert into smash values('Doubles',261,'Sora','Trainer di Wii Fit','Sephiroth','Duo Duck Hunt','Ale','Leo');
insert into smash values('Doubles',260,'Sora','Link Cartone','Sephiroth','Duo Duck Hunt','Ale','Siwei');
insert into smash values('Single',667,'Eroe','Link Cartone','Steve','Incineroar','Sandro');
insert into smash values('Single',666,'Eroe','Link Cartone','Sephiroth','Roy','Leo');
insert into smash values('Single',665,'Eroe','Link Cartone','Sephiroth','Duo Duck Hunt','Ale');
insert into smash values('Single',664,'Eroe','Link Cartone','Sephiroth','Duo Duck Hunt','Sandro');
insert into smash values('Single',663,'Pianta Piranha','Ice Climbers','Sora','Duo Duck Hunt','Sandro');
insert into smash values('Single',662,'Pianta Piranha','Ice Climbers','Sephiroth','Duo Duck Hunt','Ale');
insert into smash values('Single',661,'Pianta Piranha','Ice Climbers','Sephiroth','King K. Rool','Sandro');
insert into smash values('Single',660,'Terry','Pac-Man','R.O.B.','Cloud','Leo');
insert into smash values('Single',659,'Kirby','Sora','Corrin','Cloud','Leo');
insert into smash values('Single',658,'Kirby','Pyra & Mythra','Samus','Cloud','Sandro');
insert into smash values('Single',657,'Pichu','Trainer di Wii Fit','Palutena','Bowser Junior','Leo');
insert into smash values('Single',656,'Pichu','Trainer di Wii Fit','Shulk','Pit Oscuro','Leo');
insert into smash values('Single',655,'Sora','Trainer di Wii Fit','Shulk','Cloud','Leo');
insert into smash values('Single',654,'Sora','Snake','Lucario','Cloud','Ale');
insert into smash values('Single',653,'Sora','Zelda','Greninja','Ganondorf','Sandro');
insert into smash values('Single',652,'Sora','Falco','Yoshi','Little Mac','Ale');
insert into smash values('Single',651,'Sora','Captain Falcon','Bowser','Wario','Leo');
insert into smash values('Single',650,'Sora','Luigi','Bowser','Byleth','Leo');
insert into smash values('Single',649,'Sora','Ness','Mr. Game & Watch','R.O.B.','Sandro');
insert into smash values('Single',648,'Sora','Link Cartone','Steve','Samus Tuta Zero','Leo');
insert into smash values('Single',647,'Sora','Daraen','Steve','Banjo e Kazooie','Sandro');
insert into smash values('Single',646,'Sora','Sephiroth','Steve','Cloud','Sandro');
insert into smash values('Single',645,'Sora','Kazuya','Steve','Duo Duck Hunt','Ale');
insert into smash values('Single',644,'Sora','Byleth','Steve','King K. Rool','Ale');
insert into smash values('Single',643,'Sora','Sephiroth','Steve','Dr. Mario','Leo');
insert into smash values('Single',642,'Sora','Ganondorf','Steve','Sheik','Sandro');
insert into smash values('Single',641,'Sora','Sora','Sora','Sora','Leo');
*/
/*--Highlights-23
insert into smash values('Single',640,'Dr. Mario','Marth','Steve','Fuffi','Ale');
insert into smash values('Single',639,'Kirby','Chrom','Steve','Mr. Game & Watch','Sandro');
insert into smash values('Single',638,'Sephiroth','Simon','Steve','Corrin','Sandro');
insert into smash values('Single',637,'Sephiroth','Samus','Steve','Cloud','Leo');
insert into smash values('Single',636,'Min Min','Ken','Steve','Ridley','Sandro');
insert into smash values('Single',635,'Min Min','Mega Man','Steve','Ridley','Leo');
insert into smash values('Single',634,'Abitante','Snake','Bowser','Wario','Leo');
insert into smash values('Single',633,'Falco','Lucario','Pyra & Mythra','Dr. Mario','Leo');
insert into smash values('Single',632,'Kirby','Peach','Pyra & Mythra','Richter','Ale');
insert into smash values('Single',631,'Kirby','Luigi','Sephiroth','Sonic','Leo');
insert into smash values('Single',630,'Diddy Kong','Joker','Steve','Sheik','Leo');
insert into smash values('Single',629,'Shulk','Roy','Steve','Pit','Sandro');
insert into smash values('Single',628,'Shulk','Sephiroth','Steve','King K. Rool','Leo');
insert into smash values('Single',627,'Eroe','Sephiroth','Steve','King K. Rool','Sandro');
insert into smash values('Single',626,'Eroe','Kazuya','Steve','King K. Rool','Ale');
insert into smash values('Single',625,'Eroe','Trainer di Wii Fit','Steve','King Dedede','Ale');
insert into smash values('Single',624,'Wolf','Trainer di Wii Fit','Steve','Samus Oscura','Sandro');
insert into smash values('Single',623,'Wolf','Trainer di Wii Fit','Steve','Duo Duck Hunt','Leo');
insert into smash values('Single',622,'Pianta Piranha','Pac-Man','Steve','Samus Tuta Zero','Sandro');
insert into smash values('Single',621,'Terry','Pac-Man','Steve','Ganondorf','Ale');
insert into smash values('Single',620,'Terry','Pokemon Trainer','Steve','Pyra & Mythra','Ale');
insert into smash values('Single',619,'Bayonetta','Ike','Steve','Spadaccino Mii','Leo');
insert into smash values('Single',618,'Palutena','Captain Falcon','Steve','Duo Duck Hunt','Ale');
insert into smash values('Single',617,'Ganondorf','Little Mac','Steve','Eroe','Sandro');
insert into smash values('Single',616,'Olimar','Link Cartone','Steve','Byleth','Sandro');
insert into smash values('Single',615,'Olimar','Link Cartone','Pyra & Mythra','Byleth','Ale');
insert into smash values('Single',614,'Palutena','Link Cartone','Sephiroth','Banjo e Kazooie','Leo');
insert into smash values('Single',613,'Meta Knight','Ice Climbers','Sephiroth','Dr. Mario','Ale');
insert into smash values('Single',612,'Min Min','Ice Climbers','Steve','Dr. Mario','Ale');
insert into smash values('Single',611,'Kirby','Sephiroth','Steve','Terry','Leo');
insert into smash values('Single',610,'Kirby','Sephiroth','Pyra & Mythra','Ganondorf','Ale');
insert into smash values('Single',609,'Pikachu','Sephiroth','Pyra & Mythra','Ganondorf','Sandro');
insert into smash values('Single',608,'Pichu','Kazuya','Pyra & Mythra','Ganondorf','Sandro');
insert into smash values('Single',607,'Kirby','Kazuya','Pyra & Mythra','Ridley','Sandro');
insert into smash values('Single',606,'Kirby','Lucina','Steve','Mewtwo','Leo');
insert into smash values('Single',605,'Kirby','Ness','Steve','King K. Rool','Sandro');
insert into smash values('Single',604,'Jigglypuff','Ness','Steve','Spadaccino Mii','Leo');
insert into smash values('Single',603,'Jigglypuff','Ness','Steve','Banjo e Kazooie','Ale');
insert into smash values('Single',602,'Ragazza Inkling','Link Cartone','Steve','Richter','Leo');
insert into smash values('Single',601,'Rosalinda e Sfavillotto','Byleth','Steve','Pit Oscuro','Leo');
insert into smash values('Single',600,'Min Min','Ganondorf','Steve','Wario','Sandro');
insert into smash values('Single',599,'Min Min','Kazuya','Steve','Sephiroth','Sandro');
insert into smash values('Single',598,'Min Min','Kazuya','Steve','Sephiroth','Ale');
insert into smash values('Single',597,'Min Min','Kazuya','Steve','King K. Rool','Leo');
insert into smash values('Single',596,'Eroe','Kazuya','Steve','Pyra & Mythra','Siwei');
insert into smash values('Single',595,'Eroe','Sephiroth','Steve','King K. Rool','Sandro');
insert into smash values('Single',594,'Eroe','Sephiroth','Pyra & Mythra','Ganondorf','Ale');
insert into smash values('Single',593,'Eroe','Sephiroth','Pyra & Mythra','Ganondorf','Sandro');
insert into smash values('Single',592,'Steve','Kazuya','Pyra & Mythra','Lottatore Mii','Sandro');
insert into smash values('Single',591,'Pichu','Kazuya','Sephiroth','Cloud','Ale');
insert into smash values('Single',590,'Kirby','Link Cartone','Steve','Pyra & Mythra','Ale');
insert into smash values('Single',589,'Kirby','Link Cartone','Steve','Pyra & Mythra','Leo');
insert into smash values('Single',588,'Kirby','Sephiroth','Steve','Banjo e Kazooie','Leo');
insert into smash values('Single',587,'Kirby','Ganondorf','Steve','Spadaccino Mii','Leo');
insert into smash values('Single',586,'Kirby','Joker','Steve','Banjo e Kazooie','Ale');
insert into smash values('Single',585,'Min Min','Sephiroth','Steve','Kazuya','Sandro');
insert into smash values('Single',584,'Pyra & Mythra','Sephiroth','Steve','Kazuya','Ale');
insert into smash values('Single',583,'Meta Knight','Sephiroth','Steve','Spadaccino Mii','Sandro');
insert into smash values('Single',582,'Pichu','Sephiroth','Steve','Ganondorf','Leo');
insert into smash values('Single',581,'Pichu','Kazuya','Steve','King K. Rool','Ale');
insert into smash values('Single',580,'Pichu','Kazuya','Steve','Samus Oscura','Sandro');
insert into smash values('Single',579,'Sephiroth','Kazuya','Pyra & Mythra','Ganondorf','Ale');
insert into smash values('Single',578,'Meta Knight','Pyra & Mythra','Sephiroth','Spadaccino Mii','Ale');
insert into smash values('Single',577,'Sephiroth','Kazuya','Pyra & Mythra','Min Min','Leo');
insert into smash values('Single',576,'Kirby','Min Min','Steve','Mewtwo','Ale');
insert into smash values('Single',575,'Kazuya','Min Min','Steve','Sephiroth','Sandro');
insert into smash values('Single',574,'Pyra & Mythra','Kazuya','Min Min','Steve','Sandro');
insert into smash values('Single',573,'Sephiroth','Pyra & Mythra','Kazuya','Min Min','Ale');
insert into smash values('Single',572,'Steve','Sephiroth','Pyra & Mythra','Kazuya','Sandro');
insert into smash values('Single',571,'Min Min','Steve','Sephiroth','Pyra & Mythra','Ale');
*/
/*
insert into smash values('Doubles',259,'Samus Tuta Zero','Captain Falcon','Pianta Piranha','Simon','Ale','Sandro'),
('Doubles',258,'Cloud','Banjo e Kazooie','Lucas','R.O.B.','Leo','Siwei'),
('Doubles',257,'Pit Oscuro','Daisy','Eroe','Sonic','Ale','Siwei'),
('Doubles',256,'Mr. Game & Watch','Jigglypuff','Ike','Link','Ale','Sandro'),
('Doubles',255,'Ryu','Ice Climbers','Ness','Falco','Sandro','Siwei'),
('Doubles',254,'Trainer di Wii Fit','Luigi','King Dedede','King K. Rool','Sandro','Siwei'),
('Doubles',253,'Fuffi','Pit','Diddy Kong','Olimar','Leo','Siwei'),
('Doubles',252,'Bowser Junior','Lucina','Kirby','Lucario','Ale','Sandro'),
('Doubles',251,'Richter','Meta Knight','Pichu','Roy','Ale','Leo'),
('Doubles',250,'Yoshi','Terry','Sheik','Pokemon Trainer','Leo','Sandro'),
('Doubles',249,'Donkey Kong','Link Cartone','Snake','Shulk','Ale','Leo'),
('Doubles',248,'Abitante','Byleth','Ragazza Inkling','Mewtwo','Ale','Leo'),
('Doubles',247,'Mega Man','Ganondorf','Fox','Bayonetta','Leo','Siwei'),
('Doubles',246,'Pac-Man','Daraen','Marth','Wario','Ale','Leo'),
('Doubles',245,'King Dedede','Abitante','Shulk','Bayonetta','Leo','Sandro'),
('Doubles',244,'Little Mac','Corrin','Richter','Mario','Ale','Leo'),
('Doubles',243,'Link','King K. Rool','Eroe','Pichu','Ale','Leo'),
('Doubles',242,'Samus Oscura','Wario','Pac-Man','Pit Oscuro','Leo','Sandro'),
('Doubles',241,'Palutena','Donkey Kong','Bowser','Meta Knight','Ale','Sandro'),
('Doubles',240,'Sheik','Joker','Captain Falcon','Ragazza Inkling','Ale','Sandro'),
('Doubles',239,'Luigi','Lucina','Samus Tuta Zero','Mr. Game & Watch','Leo','Siwei'),
('Doubles',238,'Olimar','Ike','Ice Climbers','Simon','Ale','Sandro'),
('Doubles',237,'Kirby','Dr. Mario','Link Cartone','Pikachu','Ale','Sandro'),
('Doubles',236,'Daisy','Mewtwo','Link Bambino','R.O.B.','Leo','Sandro'),
('Doubles',235,'Trainer di Wii Fit','Pit','Diddy Kong','Duo Duck Hunt','Ale','Siwei'),
('Doubles',234,'Kirby','Wolf','Byleth','Ryu','Ale','Leo');
insert into smash values('Single',570,'Ragazza Inkling','Diddy Kong','Greninja','Dr. Mario','Sandro'),
('Single',569,'Pianta Piranha','Donkey Kong','Snake','Wario','Leo'),
('Single',568,'Link','Samus Oscura','Peach','Ken','Sandro'),
('Single',567,'Sheik','Pit','Lucario','Duo Duck Hunt','Leo'),
('Single',566,'Kirby','Mario','Bowser Junior','Pit Oscuro','Ale'),
('Single',565,'Kirby','Sonic','King Dedede','King K. Rool','Siwei'),
('Single',564,'Abitante','Richter','Byleth','Spadaccino Mii','Leo'),
('Single',563,'Kirby','Ice Climbers','Samus','Samus Tuta Zero','Ale'),
('Single',562,'Kirby','Chrom','Mr. Game & Watch','Spadaccino Mii','Ale'),
('Single',561,'Kirby','Trainer di Wii Fit','Mr. Game & Watch','Banjo e Kazooie','Ale'),
('Single',560,'Jigglypuff','Trainer di Wii Fit','Mr. Game & Watch','Banjo e Kazooie','Leo'),
('Single',559,'Bayonetta','Trainer di Wii Fit','Mr. Game & Watch','Eroe','Siwei'),
('Single',558,'Kirby','Trainer di Wii Fit','Mr. Game & Watch','Mewtwo','Leo'),
('Single',557,'Ganondorf','Link Cartone','Mr. Game & Watch','Banjo e Kazooie','Leo'),
('Single',556,'Ganondorf','Link Bambino','Yoshi','Byleth','Ale'),
('Single',555,'Pokemon Trainer','Link Bambino','Yoshi','Spadaccino Mii','Leo'),
('Single',554,'Palutena','Captain Falcon','Bowser','Byleth','Leo'),
('Single',553,'Kirby','Joker','Bowser','Mewtwo','Ale'),
('Single',552,'Kirby','Byleth','Yoshi','Banjo e Kazooie','Ale'),
('Single',551,'Abitante','Samus Tuta Zero','Bowser','King Dedede','Leo'),
('Single',550,'Pikachu','Fuffi','Mr. Game & Watch','Banjo e Kazooie','Leo'),
('Single',549,'Meta Knight','Daraen','Mr. Game & Watch','Eroe','Leo'),
('Single',548,'Pichu','Pokemon Trainer','Bowser','Little Mac','Sandro'),
('Single',547,'Kirby','Roy','Bowser','Banjo e Kazooie','Ale'),
('Single',546,'Ganondorf','Ness','Byleth','Banjo e Kazooie','Leo'),
('Single',545,'Kirby','Cloud','Incineroar','King Dedede','Ale'),
('Single',544,'Terry','Ike','Olimar','Spadaccino Mii','Sandro'),
('Single',543,'Kirby','Banjo e Kazooie','Shulk','Ganondorf','Ale'),
('Single',542,'Kirby','Lucina','Mr. Game & Watch','Spadaccino Mii','Leo'),
('Single',541,'Daisy','Ganondorf','Yoshi','Spadaccino Mii','Siwei'),
('Single',540,'Daisy','Fuciliere Mii','Bowser','Spadaccino Mii','Sandro');

insert into smash values('Doubles',233,'Kirby','Fuffi','Mr. Game & Watch','Link Cartone','Ale','Sandro'),
('Doubles',232,'Greninja','Ken','Link','Ganondorf','Sandro','Siwei'),
('Doubles',231,'Chrom','Byleth','Mario','Falco','Ale','Leo'),
('Doubles',230,'Bowser Junior','Pikachu','Wario','Zelda','Leo','Siwei'),
('Doubles',229,'Diddy Kong','Samus Tuta Zero','Samus','Snake','Ale','Leo'),
('Doubles',228,'Duo Duck Hunt','Wolf','King Dedede','Shulk','Leo','Sandro'),
('Doubles',227,'Ryu','Ice Climbers','Lucina','Pac-Man','Leo','Siwei'),
('Doubles',226,'Banjo e Kazooie','Ragazza Inkling','Bayonetta','Pit','Leo','Siwei'),
('Doubles',225,'Sheik','Link Bambino','Yoshi','King K. Rool','Sandro','Siwei'),
('Doubles',224,'Pokemon Trainer','Meta Knight','Sonic','Terry','Ale','Sandro'),
('Doubles',223,'R.O.B.','Daisy','Lucas','Abitante','Ale','Sandro'),
('Doubles',222,'Ridley','Ragazza Inkling','Pit Oscuro','Fox','Sandro','Siwei'),
('Doubles',221,'Lucas','Zelda','Mewtwo','Meta Knight','Ale','Leo'),
('Doubles',220,'Wolf','Joker','Pikachu','Ken','Ale','Sandro'),
('Doubles',219,'Sonic','Greninja','Ice Climbers','King Dedede','Ale','Siwei'),
('Doubles',218,'Bowser Junior','Ike','Trainer di Wii Fit','Lucario','Leo','Sandro'),
('Doubles',217,'Shulk','Samus Tuta Zero','Simon','King K. Rool','Leo','Siwei'),
('Doubles',216,'Cloud','Banjo e Kazooie','Bayonetta','Ganondorf','Leo','Sandro'),
('Doubles',215,'Bowser','Sheik','Ryu','Duo Duck Hunt','Ale','Leo'),
('Doubles',214,'Luigi','Pianta Piranha','Pac-Man','Peach','Ale','Siwei'),
('Doubles',213,'Samus Oscura','Corrin','Richter','Pit','Leo','Siwei'),
('Doubles',212,'Dr. Mario','Palutena','Falco','Diddy Kong','Ale','Sandro'),
('Doubles',211,'Kirby','Chrom','Wario','Marth','Ale','Leo'),
('Doubles',210,'Mr. Game & Watch','Daraen','Abitante','R.O.B.','Ale','Siwei'),
('Doubles',209,'Fuffi','Yoshi','Ness','Link','Leo','Siwei'),
('Doubles',208,'Terry','Mario','Link Bambino','Captain Falcon','Sandro','Siwei'),
('Doubles',207,'Donkey Kong','Link Cartone','Pokemon Trainer','Snake','Leo','Sandro'),
('Doubles',206,'Daisy','Mega Man','Roy','Incineroar','Ale','Sandro'),
('Doubles',205,'Rosalinda e Sfavillotto','Lucina','Eroe','Pichu','Leo','Sandro'),
('Doubles',204,'Little Mac','Byleth','Olimar','Jigglypuff','Ale','Leo');
insert into smash values('Single',539,'Mario','Bowser Junior','Fox','Richter','Leo'),
('Single',538,'Abitante','Donkey Kong','Ken','Samus Tuta Zero','Siwei'),
('Single',537,'Pikachu','Pit Oscuro','Olimar','Ridley','Sandro'),
('Single',536,'Pikachu','R.O.B.','Samus','Samus Oscura','Ale'),
('Single',535,'Kirby','Link Cartone','Samus Oscura','Byleth','Leo'),
('Single',534,'Terry','Link Cartone','Yoshi','Samus Tuta Zero','Sandro'),
('Single',533,'Jigglypuff','Link Bambino','Bowser','Samus Tuta Zero','Sandro'),
('Single',532,'Ganondorf','Joker','Mr. Game & Watch','Pianta Piranha','Ale'),
('Single',531,'Ganondorf','Pokemon Trainer','Sheik','King K. Rool','Ale'),
('Single',530,'Ganondorf','Ness','Zelda','King K. Rool','Ale'),
('Single',529,'Ganondorf','Captain Falcon','Mr. Game & Watch','Spadaccino Mii','Sandro'),
('Single',528,'Ganondorf','Fuffi','Byleth','Mewtwo','Ale'),
('Single',527,'Palutena','Fuffi','Byleth','Ganondorf','Sandro'),
('Single',526,'Bayonetta','Lucina','Incineroar','Little Mac','Ale'),
('Single',525,'Bayonetta','Ness','Mr. Game & Watch','Banjo e Kazooie','Sandro'),
('Single',524,'Meta Knight','Chrom','Terry','Banjo e Kazooie','Siwei'),
('Single',523,'Meta Knight','Pit Oscuro','Samus','Samus Tuta Zero','Leo'),
('Single',522,'Meta Knight','Ike','Yoshi','Spadaccino Mii','Sandro'),
('Single',521,'Kirby','Captain Falcon','Lucas','Ganondorf','Sandro'),
('Single',520,'Ragazza Inkling','Joker','Samus','Marth','Leo'),
('Single',519,'Pichu','Joker','Mr. Game & Watch','Banjo e Kazooie','Ale'),
('Single',518,'Ragazza Inkling','Ganondorf','Bowser','Little Mac','Ale'),
('Single',517,'Ragazza Inkling','Fuciliere Mii','Lottatore Mii','Eroe','Sandro'),
('Single',516,'Kirby','Duo Duck Hunt','Lucas','Corrin','Sandro'),
('Single',515,'Kirby','Pichu','Pikachu','Bayonetta','Leo'),
('Single',514,'Kirby','King K. Rool','Ken','Chrom','Leo'),
('Single',513,'Byleth','Fox','Kirby','Diddy Kong','Sandro'),
('Single',512,'Simon','Ryu','Mega Man','Pac-Man','Siwei'),
('Single',511,'Cloud','Greninja','Yoshi','Meta Knight','Sandro'),
('Single',510,'Roy','Abitante','Samus Oscura','Richter','Ale'),
('Single',509,'Palutena','Luigi','Bowser','Mewtwo','Leo'),
('Single',508,'Ragazza Inkling','Zelda','Bowser','Dr. Mario','Sandro'),
('Single',507,'Ragazza Inkling','Little Mac','Bowser','Mario','Leo'),
('Single',506,'Ragazza Inkling','Lucario','Bowser','Donkey Kong','Sandro'),
('Single',505,'Ragazza Inkling','Link','Bowser','Eroe','Sandro'),
('Single',504,'Ragazza Inkling','Link Bambino','Bowser','Link Cartone','Leo'),
('Single',503,'Ragazza Inkling','Captain Falcon','Bowser','Ganondorf','Leo'),
('Single',502,'Ragazza Inkling','Pokemon Trainer','Bowser','Ganondorf','Ale'),
('Single',501,'Ragazza Inkling','Ike','Bowser','Ganondorf','Sandro'),
('Single',500,'Ragazza Inkling','Lucina','Bowser','Banjo e Kazooie','Leo'),
('Single',499,'Kirby','Luigi','Bowser','Ganondorf','Ale'),
('Single',498,'Kirby','Lucina','Bowser','Banjo e Kazooie','Leo'),
('Single',497,'Kirby','Lucina','Bowser','Little Mac','Ale'),
('Single',496,'Abitante','Richter','Wolf','Banjo e Kazooie','Siwei'),
('Single',495,'Kirby','Ganondorf','Yoshi','Spadaccino Mii','Ale'),
('Single',494,'Pichu','Roy','Yoshi','King K. Rool','Ale'),
('Single',493,'Pichu','Lucina','Yoshi','Mewtwo','Ale'),
('Single',492,'Pichu','Joker','Yoshi','Mewtwo','Leo'),
('Single',491,'Lucas','Joker','Yoshi','Banjo e Kazooie','Siwei'),
('Single',490,'Bayonetta','Ganondorf','Yoshi','Ganondorf','Ale'),
('Single',489,'Bayonetta','Ganondorf','Yoshi','Ganondorf','Ale'),
('Single',488,'Bayonetta','Lucina','Yoshi','Ganondorf','Leo'),
('Single',487,'Terry','Byleth','Yoshi','Sheik','Ale'),
('Single',486,'Terry','Ganondorf','Samus','Sheik','Ale'),
('Single',485,'Rosalinda e Sfavillotto','Joker','Bowser','King K. Rool','Ale'),
('Single',484,'Kirby','Joker','Greninja','Ganondorf','Ale'),
('Single',483,'Meta Knight','Joker','Bowser Junior','Greninja','Sandro'),
('Single',482,'Kirby','Falco','Lucario','Samus Tuta Zero','Ale'),
('Single',481,'Pichu','Pokemon Trainer','Wolf','Banjo e Kazooie','Ale'),
('Single',480,'Pichu','Ike','R.O.B.','Mewtwo','Ale'),
('Single',479,'Pichu','Ike','Samus','Banjo e Kazooie','Sandro'),
('Single',478,'Pichu','Joker','Corrin','Ganondorf','Sandro'),
('Single',477,'Palutena','Cloud','Shulk','Eroe','Ale'),
('Single',476,'Palutena','Ganondorf','Mr. Game & Watch','Banjo e Kazooie','Sandro'),
('Single',475,'Ganondorf','Pit Oscuro','Yoshi','Ganondorf','Sandro'),
('Single',474,'Lottatore Mii','Pianta Piranha','Bowser','Little Mac','Ale'),
('Single',473,'Spadaccino Mii','Fuciliere Mii','Lottatore Mii','Spadaccino Mii','Leo');
insert into smash values('Doubles',203,'Bowser Junior','Luigi','Link Cartone','Ryu','Leo','Sandro'),
('Doubles',202,'Kirby','Pit Oscuro','Wolf','Ganondorf','Ale','Sandro'),
('Doubles',201,'Kirby','Roy','Wolf','Spadaccino Mii','Ale','Leo'),
('Doubles',200,'Palutena','Palutena','Wolf','Spadaccino Mii','Ale','Leo'),
('Doubles',199,'Banjo e Kazooie','Byleth','Wolf','Banjo e Kazooie','Leo','Sandro'),
('Doubles',198,'Banjo e Kazooie','Byleth','R.O.B.','Banjo e Kazooie','Ale','Siwei'),
('Doubles',197,'Olimar','Joker','R.O.B.','Banjo e Kazooie','Ale','Leo'),
('Doubles',196,'Kirby','Joker','R.O.B.','Cloud','Ale','Leo'),
('Doubles',195,'Pichu','Joker','Bowser','Ganondorf','Ale','Sandro'),
('Doubles',194,'Kirby','Joker','Bowser','King K. Rool','Ale','Leo'),
('Doubles',193,'Kirby','Ike','Bowser','King K. Rool','Ale','Leo'),
('Doubles',192,'Kirby','Ike','Bowser','Samus Tuta Zero','Ale','Sandro'),
('Doubles',191,'Pokemon Trainer','Pokemon Trainer','Bowser','Ganondorf','Sandro','Siwei'),
('Doubles',190,'Jigglypuff','Joker','Bowser','Ganondorf','Ale','Leo'),
('Doubles',189,'Jigglypuff','Joker','Bowser','Mewtwo','Ale','Sandro'),
('Doubles',188,'Pichu','Lucina','Bowser','Ganondorf','Ale','Sandro'),
('Doubles',187,'Rosalinda e Sfavillotto','Byleth','Bowser','Ganondorf','Leo','Siwei'),
('Doubles',186,'Palutena','Joker','Bowser','Samus Tuta Zero','Leo','Sandro'),
('Doubles',185,'Palutena','Lucina','Yoshi','Ganondorf','Ale','Siwei'),
('Doubles',184,'Pichu','Captain Falcon','Bowser','Ganondorf','Ale','Sandro'),
('Doubles',183,'Lucas','Ness','Yoshi','Ganondorf','Ale','Leo'),
('Doubles',182,'Abitante','Captain Falcon','Greninja','Ganondorf','Ale','Siwei');
insert into smash values('Single',472,'Lucas','Ness','Palutena','Eroe','Leo'),
('Single',471,'Meta Knight','Link Cartone','Bowser','Mewtwo','Leo'),
('Single',470,'Meta Knight','Pac-Man','Bowser','Mewtwo','Sandro'),
('Single',469,'Meta Knight','Ganondorf','Bowser','Mewtwo','Sandro'),
('Single',468,'Spadaccino Mii','Trainer di Wii Fit','Bowser','Samus Tuta Zero','Sandro'),
('Single',467,'Fuciliere Mii','Lucina','Bowser','Samus Tuta Zero','Ale'),
('Single',466,'Kirby','Lucina','Bowser','Samus Tuta Zero','Siwei'),
('Single',465,'Rosalinda e Sfavillotto','Ike','Bowser','Samus Tuta Zero','Leo'),
('Single',464,'Rosalinda e Sfavillotto','Ike','Bowser','Spadaccino Mii','Sandro'),
('Single',463,'Rosalinda e Sfavillotto','Ike','Bowser','King K. Rool','Ale'),
('Single',462,'Pokemon Trainer','Pokemon Trainer','Daisy','Ganondorf','Ale'),
('Single',461,'Rosalinda e Sfavillotto','Joker','R.O.B.','Ganondorf','Siwei'),
('Single',460,'Jigglypuff','Joker','Bayonetta','Ganondorf','Ale'),
('Single',459,'Jigglypuff','Joker','Ryu','Ganondorf','Ale'),
('Single',458,'Pikachu','Luigi','King Dedede','Ganondorf','Ale'),
('Single',457,'Abitante','Link Cartone','Ridley','Ganondorf','Leo'),
('Single',456,'Terry','Link Cartone','Yoshi','Cloud','Ale'),
('Single',455,'Shulk','Abitante','Samus Tuta Zero','Mewtwo','Siwei'),
('Single',454,'Palutena','Lucina','Incineroar','Sheik','Leo'),
('Single',453,'Rosalinda e Sfavillotto','Palutena','Pac-Man','King K. Rool','Sandro'),
('Single',452,'Rosalinda e Sfavillotto','Mega Man','Falco','Mewtwo','Sandro'),
('Single',451,'Rosalinda e Sfavillotto','Eroe','Palutena','Ganondorf','Sandro'),
('Single',450,'Rosalinda e Sfavillotto','Joker','Chrom','Lottatore Mii','Leo'),
('Single',449,'Kirby','Pokemon Trainer','Wolf','Byleth','Ale'),
('Single',448,'Kirby','Byleth','Mr. Game & Watch','Eroe','Ale'),
('Single',447,'Kirby','Ness','Snake','Spadaccino Mii','Ale'),
('Single',446,'Pichu','Ken','Link','Little Mac','Siwei'),
('Single',445,'Pichu','Ken','Luigi','Little Mac','Sandro'),
('Single',444,'Pichu','Trainer di Wii Fit','Ice Climbers','Banjo e Kazooie','Leo'),
('Single',443,'Pichu','Richter','Ike','Ganondorf','Sandro'),
('Single',442,'Pichu','Pokemon Trainer','Lucina','Ganondorf','Leo'),
('Single',441,'Pichu','Pit Oscuro','Bowser','Ganondorf','Sandro'),
('Single',440,'Pichu','Captain Falcon','Daraen','Bowser','Leo'),
('Single',439,'Meta Knight','Link Cartone','Pit','Bowser','Leo'),
('Single',438,'Meta Knight','Mario','Fuffi','Bowser','Ale'),
('Single',437,'Meta Knight','Byleth','Jigglypuff','Bowser','Sandro');
insert into smash values('Doubles',181,'Kirby','Joker','Bowser','Ganondorf','Ale','Leo'),
('Doubles',180,'Lucas','Ness','Bowser','Ganondorf','Ale','Leo'),
('Doubles',179,'Lucas','Ness','Mr. Game & Watch','Ganondorf','Sandro','Siwei'),
('Doubles',178,'Kirby','Daraen','Shulk','Ganondorf','Ale','Siwei'),
('Doubles',177,'Lucas','Ness','Shulk','Sheik','Ale','Leo'),
('Doubles',176,'Kirby','Lucina','Bowser','King K. Rool','Ale','Sandro'),
('Doubles',175,'Pikachu','Richter','Bowser','Cloud','Sandro','Siwei'),
('Doubles',174,'Pikachu','Ness','Bowser','Spadaccino Mii','Leo','Sandro'),
('Doubles',173,'Pikachu','Lucina','Bowser','Banjo e Kazooie','Ale','Sandro'),
('Doubles',172,'Kirby','Byleth','Bowser','Ganondorf','Ale','Leo'),
('Doubles',171,'Pikachu','Captain Falcon','Bowser','Ganondorf','Ale','Sandro'),
('Doubles',170,'Kirby','Chrom','Bowser','Little Mac','Ale','Leo'),
('Doubles',169,'King K. Rool','Lucina','Bowser','Banjo e Kazooie','Leo','Sandro'),
('Doubles',168,'Palutena','Lucina','Bowser','Banjo e Kazooie','Sandro','Siwei'),
('Doubles',167,'Palutena','Ness','Bowser','Banjo e Kazooie','Sandro','Siwei'),
('Doubles',166,'Palutena','Lucina','Bowser','Spadaccino Mii','Leo','Siwei'),
('Doubles',165,'Palutena','Byleth','Bowser','Banjo e Kazooie','Leo','Sandro'),
('Doubles',164,'Mewtwo','Captain Falcon','Bowser','Spadaccino Mii','Leo','Siwei');
insert into smash values('Single',436,'Kirby','Samus Tuta Zero','Mr. Game & Watch','Ganondorf','Ale'),
('Single',435,'Kirby','Ness','Mr. Game & Watch','Little Mac','Ale'),
('Single',434,'Kirby','Ness','Mr. Game & Watch','Mewtwo','Leo'),
('Single',433,'Abitante','Ike','Bowser','Mewtwo','Leo'),
('Single',432,'Abitante','Richter','Bowser','Spadaccino Mii','Ale'),
('Single',431,'Abitante','Richter','R.O.B.','King K. Rool','Ale'),
('Single',430,'Lucas','Ness','Samus','Pit','Leo'),
('Single',429,'Lucas','Joker','Bowser','Ganondorf','Ale'),
('Single',428,'Meta Knight','Ness','Bowser','Ganondorf','Sandro'),
('Single',427,'Meta Knight','Ness','Bowser','Little Mac','Leo'),
('Single',426,'Meta Knight','Ness','Yoshi','Little Mac','Sandro'),
('Single',425,'Pichu','Ness','Mr. Game & Watch','Sheik','Sandro'),
('Single',424,'Pichu','Ganondorf','Mr. Game & Watch','Spadaccino Mii','Sandro'),
('Single',423,'Pichu','Samus Tuta Zero','Mr. Game & Watch','Banjo e Kazooie','Sandro'),
('Single',422,'Pichu','Luigi','Mr. Game & Watch','Banjo e Kazooie','Ale'),
('Single',421,'Pichu','Luigi','Mr. Game & Watch','Banjo e Kazooie','Sandro'),
('Single',420,'Pichu','Pokemon Trainer','Bowser','Banjo e Kazooie','Siwei'),
('Single',419,'Palutena','Byleth','Mr. Game & Watch','Corrin','Ale'),
('Single',418,'Palutena','Lucina','Bowser','Sheik','Leo'),
('Single',417,'Palutena','Joker','Dr. Mario','Sheik','Siwei'),
('Single',416,'Rosalinda e Sfavillotto','Donkey Kong','Bowser','Cloud','Ale'),
('Single',415,'Rosalinda e Sfavillotto','Zelda','Pokemon Trainer','Cloud','Ale'),
('Single',414,'Shulk','Bowser','Mr. Game & Watch','Bayonetta','Sandro'),
('Single',413,'King K. Rool','Lucario','Mr. Game & Watch','Joker','Ale'),
('Single',412,'King K. Rool','Samus Tuta Zero','Greninja','Ganondorf','Leo'),
('Single',411,'King K. Rool','Byleth','Bowser','Ganondorf','Leo'),
('Single',410,'Terry','Eroe','Ridley','Ganondorf','Sandro'),
('Single',409,'Terry','Terry','Terry','Terry','Sandro');
insert into smash values('Doubles',163,'Sonic','Marth','Lucario','Wolf','Ale','Leo'),
('Doubles',162,'Pichu','Corrin','Bowser','Mega Man','Ale','Sandro'),
('Doubles',161,'Pichu','Daraen','Yoshi','Link Cartone','Ale','Sandro'),
('Doubles',160,'Pichu','Ike','Mr. Game & Watch','Spadaccino Mii','Ale','Sandro'),
('Doubles',159,'Kirby','Byleth','Greninja','Spadaccino Mii','Ale','Siwei'),
('Doubles',158,'Kirby','Shulk','Yoshi','Spadaccino Mii','Sandro','Siwei'),
('Doubles',157,'Pichu','Joker','Bowser','Spadaccino Mii','Ale','Sandro'),
('Doubles',156,'Kirby','Joker','Bowser','Ridley','Ale','Sandro'),
('Doubles',155,'Kirby','Chrom','Bowser','Incineroar','Ale','Sandro'),
('Doubles',154,'Kirby','Luigi','Yoshi','King K. Rool','Ale','Leo'),
('Doubles',153,'Kirby','Ness','Mr. Game & Watch','Pit','Ale','Leo'),
('Doubles',152,'Kirby','Joker','Bowser','Richter','Leo','Sandro'),
('Doubles',151,'Kirby','Eroe','Bowser','Spadaccino Mii','Leo','Sandro'),
('Doubles',150,'Kirby','Joker','Bowser','Little Mac','Ale','Leo'),
('Doubles',149,'Kirby','Joker','Mr. Game & Watch','Mewtwo','Ale','Siwei'),
('Doubles',148,'Meta Knight','Lucina','Mr. Game & Watch','Spadaccino Mii','Ale','Sandro'),
('Doubles',147,'King Dedede','Byleth','Bowser','Spadaccino Mii','Leo','Sandro'),
('Doubles',146,'Daisy','Pit Oscuro','Bowser','Mewtwo','Ale','Sandro'),
('Doubles',145,'Daisy','Lucina','Bowser','Mewtwo','Ale','Sandro'),
('Doubles',144,'Olimar','Joker','King Dedede','Mewtwo','Leo','Siwei'),
('Doubles',143,'Meta Knight','Lucina','Bowser','King K. Rool','Sandro','Siwei'),
('Doubles',142,'Meta Knight','Lucina','Bowser','Spadaccino Mii','Ale','Leo'),
('Doubles',141,'Abitante','Joker','Bowser','Spadaccino Mii','Leo','Siwei'),
('Doubles',140,'Kirby','Joker','Bowser','Mewtwo','Leo','Sandro'),
('Doubles',139,'Captain Falcon','Ganondorf','Bowser','Mewtwo','Ale','Leo'),
('Doubles',138,'Pichu','Byleth','Bowser','Richter','Ale','Sandro'),
('Doubles',137,'Kirby','Joker','Bowser','King K. Rool','Ale','Leo'),
('Doubles',136,'Kirby','Joker','Bowser','King K. Rool','Ale','Leo'),
('Doubles',135,'Banjo e Kazooie','Byleth','Bowser','King K. Rool','Ale','Sandro');
insert into smash values('Single',408,'Kirby','Byleth','Bowser','Samus Tuta Zero','Siwei'),
('Single',407,'Kirby','Byleth','Bowser','Samus Tuta Zero','Ale'),
('Single',406,'Kirby','Byleth','Bowser','Samus Tuta Zero','Sandro'),
('Single',405,'Pikachu','Byleth','Eroe','Samus Tuta Zero','Siwei'),
('Single',404,'Kirby','Byleth','King Dedede','Samus Tuta Zero','Ale'),
('Single',403,'Kirby','Palutena','Bowser','Samus Tuta Zero','Leo'),
('Single',402,'Kirby','Pit Oscuro','Bowser','Pit','Leo'),
('Single',401,'Kirby','Joker','Bowser','Little Mac','Ale'),
('Single',400,'Kirby','Pokemon Trainer','Bowser','Mewtwo','Leo'),
('Single',399,'Meta Knight','Ike','Bowser','Mewtwo','Leo'),
('Single',398,'Meta Knight','Ike','Bowser','King K. Rool','Leo'),
('Single',397,'Meta Knight','Lucina','Bowser','Pit','Sandro'),
('Single',396,'Banjo e Kazooie','Joker','Bowser','Little Mac','Sandro'),
('Single',395,'Banjo e Kazooie','Byleth','Bowser','Little Mac','Ale'),
('Single',394,'Abitante','Byleth','Bowser','Eroe','Sandro'),
('Single',393,'Jigglypuff','Joker','Bowser','Eroe','Ale'),
('Single',392,'Jigglypuff','Byleth','Bowser','Mewtwo','Ale'),
('Single',391,'Pichu','Byleth','Bowser','Mewtwo','Ale'),
('Single',390,'Pichu','Joker','Bowser','Spadaccino Mii','Leo'),
('Single',389,'Pichu','Joker','Bowser','Spadaccino Mii','Sandro'),
('Single',388,'Pichu','Bowser','Byleth','King K. Rool','Leo'),
('Single',387,'Kirby','Joker','Bowser','Richter','Leo'),
('Single',386,'Kirby','Joker','Yoshi','Richter','Ale'),
('Single',385,'Little Mac','Pac-Man','Lucas','Pikachu','Leo'),
('Single',384,'Yoshi','Ken','Lucario','Falco','Sandro'),
('Single',383,'Pianta Piranha','Samus Tuta Zero','Mr. Game & Watch','Samus','Leo'),
('Single',382,'Pianta Piranha','Ryu','Mr. Game & Watch','Incineroar','Ale'),
('Single',381,'Kirby','Sonic','Mr. Game & Watch','Diddy Kong','Ale'),
('Single',380,'Kirby','Dr. Mario','Mr. Game & Watch','Ness','Siwei'),
('Single',379,'Kirby','Zelda','Mr. Game & Watch','Terry','Sandro'),
('Single',378,'Kirby','Lucina','Corrin','King K. Rool','Leo'),
('Single',377,'Kirby','Pit Oscuro','Shulk','King K. Rool','Siwei'),
('Single',376,'Banjo e Kazooie','Roy','Mr. Game & Watch','Mewtwo','Leo'),
('Single',375,'Banjo e Kazooie','Lucina','Mr. Game & Watch','Pit','Leo'),
('Single',374,'Banjo e Kazooie','Lucina','Mr. Game & Watch','Spadaccino Mii','Ale'),
('Single',373,'Banjo e Kazooie','Chrom','Mr. Game & Watch','Little Mac','Sandro'),
('Single',372,'Banjo e Kazooie','Joker','Mr. Game & Watch','Byleth','Ale'),
('Single',371,'Meta Knight','Joker','Mr. Game & Watch','Eroe','Siwei'),
('Single',370,'Kirby','Shulk','Mr. Game & Watch','Eroe','Sandro'),
('Single',369,'Kirby','Joker','Mr. Game & Watch','Spadaccino Mii','Leo'),
('Single',368,'Kirby','Joker','Mr. Game & Watch','King K. Rool','Sandro'),
('Single',367,'Pikachu','Pokemon Trainer','Mr. Game & Watch','King K. Rool','Siwei'),
('Single',366,'Banjo e Kazooie','Pokemon Trainer','Mr. Game & Watch','King K. Rool','Sandro'),
('Single',365,'Banjo e Kazooie','Pokemon Trainer','Mr. Game & Watch','King K. Rool','Sandro'),
('Single',364,'Abitante','Fuffi','Mr. Game & Watch','King K. Rool','Ale'),
('Single',363,'Kirby','Ganondorf','Mr. Game & Watch','Little Mac','Sandro'),
('Single',362,'Kirby','Joker','Bowser','Little Mac','Ale'),
('Single',361,'Kirby','Joker','Bowser','Little Mac','Ale'),
('Single',360,'Kirby','Joker','Bowser','Richter','Sandro'),
('Single',359,'Kirby','Joker','Bowser','King K. Rool','Ale'),
('Single',358,'Kirby','Pokemon Trainer','Bowser','Spadaccino Mii','Leo'),
('Single',357,'Pichu','Roy','Bowser','Spadaccino Mii','Sandro'),
('Single',356,'Pichu','Chrom','Bowser','King K. Rool','Sandro'),
('Single',355,'Pichu','Pokemon Trainer','Bowser','King K. Rool','Leo'),
('Single',354,'Terry','Byleth','Bowser','Eroe','Ale'),
('Single',353,'Banjo e Kazooie','Joker','Bowser','Byleth','Leo'),
('Single',352,'King Dedede','Luigi','Yoshi','Mewtwo','Siwei'),
('Single',351,'Ragazza Inkling','Joker','Mr. Game & Watch','Little Mac','Leo'),
('Single',350,'Jigglypuff','Joker','Greninja','Little Mac','Siwei'),
('Single',349,'Kirby','Ike','Bowser','Little Mac','Ale'),
('Single',348,'Kirby','Ganondorf','Bowser','Little Mac','Leo'),
('Single',347,'Pichu','Byleth','Bowser','Donkey Kong','Sandro'),
('Single',346,'Pichu','Cloud','Bowser','Donkey Kong','Sandro'),
('Single',345,'Pichu','Joker','Bowser','Richter','Leo'),
('Single',344,'Pichu','Joker','Bowser','Pianta Piranha','Leo'),
('Single',343,'Pichu','Joker','Bowser','Spadaccino Mii','Siwei'),
('Single',342,'Kirby','Joker','Bowser','King K. Rool','Leo'),
('Single',341,'Kirby','Eroe','Bowser','Mewtwo','Ale'),
('Single',340,'Eroe','Byleth','Bowser','Banjo e Kazooie','Leo'),
('Single',339,'Pianta Piranha','Byleth','Bowser','Terry','Sandro'),
('Single',338,'Banjo e Kazooie','Byleth','Bowser','Pit','Siwei'),
('Single',337,'Kirby','Byleth','Bowser','Joker','Ale'),
('Single',336,'Banjo e Kazooie','Byleth','Terry','Eroe','Leo'),
('Single',335,'Byleth','Pianta Piranha','Joker','Eroe','Sandro'),
('Single',334,'Terry','Byleth','Pianta Piranha','Joker','Siwei'),
('Single',333,'Banjo e Kazooie','Terry','Byleth','Pianta Piranha','Leo'),
('Single',332,'Eroe','Banjo e Kazooie','Terry','Byleth','Leo'),
('Single',331,'Joker','Eroe','Banjo e Kazooie','Terry','Leo'),
('Single',330,'Pianta Piranha','Joker','Eroe','Banjo e Kazooie','Leo');
insert into smash values('Doubles',134,'Pit','Roy','Ken','Shulk','Leo','Siwei'),
('Doubles',133,'Chrom','Duo Duck Hunt','Richter','Bayonetta','Ale','Leo'),
('Doubles',132,'Simon','Greninja','Link Cartone','Link Bambino','Ale','Leo'),
('Doubles',131,'Lucas','Rosalinda e Sfavillotto','Lucario','Ice Climbers','Ale','Siwei'),
('Doubles',130,'Samus Tuta Zero','Sonic','Meta Knight','Pokemon Trainer','Leo','Siwei'),
('Doubles',129,'Sheik','Lucina','Bowser','Daraen','Sandro','Siwei'),
('Doubles',128,'Yoshi','R.O.B.','King K. Rool','Mr. Game & Watch','Ale','Sandro'),
('Doubles',127,'Captain Falcon','Pichu','Wario','Ryu','Ale','Leo'),
('Doubles',126,'Fox','Ike','Falco','Trainer di Wii Fit','Ale','Leo'),
('Doubles',125,'Samus','Abitante','Dr. Mario','Bowser Junior','Sandro','Siwei'),
('Doubles',124,'Daisy','Diddy Kong','Pikachu','Mega Man','Ale','Leo'),
('Doubles',123,'Wolf','Mewtwo','Zelda','Donkey Kong','Leo','Siwei'),
('Doubles',122,'Pac-Man','Mario','Kirby','Pit Oscuro','Leo','Sandro'),
('Doubles',121,'Link','Snake','Little Mac','Palutena','Ale','Siwei'),
('Doubles',120,'Ragazza Inkling','Samus Oscura','Incineroar','Ridley','Ale','Leo'),
('Doubles',119,'Olimar','Ness','Cloud','Ganondorf','Leo','Sandro'),
('Doubles',118,'Incineroar','Sheik','Mario','Lucina','Ale','Sandro'),
('Doubles',117,'Link','Link Bambino','Simon','Ryu','Leo','Sandro'),
('Doubles',116,'Ken','Wario','Mega Man','Olimar','Ale','Sandro'),
('Doubles',115,'Sonic','Dr. Mario','Snake','Duo Duck Hunt','Ale','Sandro'),
('Doubles',114,'Rosalinda e Sfavillotto','Falco','Lucas','King Dedede','Ale','Siwei');
insert into smash values('Single',329,'Kirby','Marth','Bowser','Richter','Leo'),
('Single',328,'Kirby','Peach','Greninja','Richter','Siwei'),
('Single',327,'Kirby','Ridley','Greninja','Richter','Ale'),
('Single',326,'Spadaccino Mii','Zelda','R.O.B.','Richter','Sandro'),
('Single',325,'Lottatore Mii','Fuffi','Bowser','Richter','Sandro'),
('Single',324,'Lucina','Lucina','Bowser','Corrin','Leo'),
('Single',323,'Abitante','Pac-Man','Bowser','Pit','Leo'),
('Single',322,'Abitante','Pit Oscuro','Bowser','Pit','Ale'),
('Single',321,'Jigglypuff','Luigi','Bowser','Pit','Sandro'),
('Single',320,'Jigglypuff','Luigi','Bowser','Pit','Sandro'),
('Single',319,'Kirby','Trainer di Wii Fit','Ice Climbers','Pit','Ale'),
('Single',318,'Kirby','Palutena','Bowser','King K. Rool','Siwei'),
('Single',317,'Ragazza Inkling','Palutena','Bowser','Diddy Kong','Ale'),
('Single',316,'Ragazza Inkling','Pit Oscuro','Bowser','Mewtwo','Ale'),
('Single',315,'Ragazza Inkling','Ike','Bowser','Donkey Kong','Ale'),
('Single',314,'Bayonetta','Ike','Bowser','Lucario','Siwei'),
('Single',313,'Pikachu','Ike','Bowser','Wolf','Ale'),
('Single',312,'Pichu','Ganondorf','Bowser','Captain Falcon','Sandro'),
('Single',311,'Pichu','Ganondorf','Bowser','Samus Oscura','Ale'),
('Single',310,'Pichu','Ganondorf','Bowser','Samus Oscura','Ale'),
('Single',309,'Jigglypuff','Pokemon Trainer','Fox','Spadaccino Mii','Siwei'),
('Single',308,'Daisy','Pokemon Trainer','Mr. Game & Watch','Pit','Siwei'),
('Single',307,'Daisy','Pokemon Trainer','Bowser','Richter','Sandro'),
('Single',306,'Kirby','Pokemon Trainer','Zelda','Spadaccino Mii','Sandro'),
('Single',305,'Kirby','Chrom','Greninja','Spadaccino Mii','Ale'),
('Single',304,'Kirby','Roy','Little Mac','King K. Rool','Leo'),
('Single',303,'Kirby','Link Cartone','Mr. Game & Watch','Mewtwo','Ale'),
('Single',302,'Meta Knight','Ness','Bowser Junior','Samus Tuta Zero','Siwei'),
('Single',301,'Kirby','Ganondorf','Samus','Pit','Ale'),
('Single',300,'Pichu','Shulk','Bowser','King K. Rool','Siwei'),
('Single',299,'Pichu','Daraen','Mr. Game & Watch','Mewtwo','Leo'),
('Single',298,'Cloud','Cloud','Yoshi','Spadaccino Mii','Ale'),
('Single',297,'Pikachu','Cloud','Lottatore Mii','King K. Rool','Sandro');
insert into smash values('Doubles',113,'Jigglypuff','Ganondorf','Bowser','Mewtwo','Leo','Sandro'),
('Doubles',112,'Jigglypuff','Ganondorf','Bowser','King K. Rool','Leo','Sandro'),
('Doubles',111,'Jigglypuff','Pokemon Trainer','Greninja','King K. Rool','Ale','Siwei'),
('Doubles',110,'Abitante','Fuffi','Yoshi','Spadaccino Mii','Ale','Leo'),
('Doubles',109,'Lucina','Chrom','Mr. Game & Watch','Spadaccino Mii','Siwei','Sandro'),
('Doubles',108,'Jigglypuff','Lucina','Mr. Game & Watch','Mewtwo','Leo','Sandro'),
('Doubles',107,'Jigglypuff','Lucina','Mr. Game & Watch','Mewtwo','Ale','Siwei'),
('Doubles',106,'Jigglypuff','Ike','Bowser','Mewtwo','Siwei','Sandro'),
('Doubles',105,'Jigglypuff','Ike','Bowser','King K. Rool','Ale','Leo'),
('Doubles',104,'Jigglypuff','Ganondorf','Bowser','King K. Rool','Siwei','Sandro'),
('Doubles',103,'King Dedede','Ganondorf','Bowser','King K. Rool','Ale','Siwei'),
('Doubles',102,'King Dedede','Ganondorf','Bowser','King K. Rool','Ale','Siwei'),
('Doubles',101,'King Dedede','Ganondorf','Mr. Game & Watch','Spadaccino Mii','Ale','Leo'),
('Doubles',100,'King Dedede','Ganondorf','Mr. Game & Watch','Spadaccino Mii','Ale','Leo'),
('Doubles',99,'Pichu','Pac-Man','Mr. Game & Watch','King K. Rool','Ale','Sandro'),
('Doubles',98,'Falco','Ryu','Mr. Game & Watch','Spadaccino Mii','Ale','Leo'),
('Doubles',97,'Lucas','Ness','Mr. Game & Watch','King K. Rool','Ale','Leo'),
('Doubles',96,'Jigglypuff','Lucas','Mr. Game & Watch','Mewtwo','Sandro','Leo'),
('Doubles',95,'Jigglypuff','Ness','Mr. Game & Watch','King K. Rool','Ale','Siwei'),
('Doubles',94,'Pokemon Trainer','Pokemon Trainer','Mr. Game & Watch','Spadaccino Mii','Ale','Leo');
insert into smash values('Single',296,'Jigglypuff','Link Bambino','Mr. Game & Watch','Samus Tuta Zero','Sandro'),
('Single',295,'Kirby','Dr. Mario','Mr. Game & Watch','Richter','Sandro'),
('Single',294,'Kirby','Ganondorf','Mr. Game & Watch','Diddy Kong','Ale'),
('Single',293,'Pichu','Captain Falcon','Mr. Game & Watch','King K. Rool','Sandro'),
('Single',292,'Pichu','Donkey Kong','Mr. Game & Watch','King K. Rool','Siwei'),
('Single',291,'Pichu','Ganondorf','Mr. Game & Watch','Mewtwo','Ale'),
('Single',290,'Jigglypuff','Ganondorf','Mr. Game & Watch','Mewtwo','Sandro'),
('Single',289,'Jigglypuff','Ganondorf','Mr. Game & Watch','Mewtwo','Sandro'),
('Single',288,'Jigglypuff','Wolf','Mr. Game & Watch','Mewtwo','Ale'),
('Single',287,'Jigglypuff','Wolf','Mr. Game & Watch','Ridley','Sandro'),
('Single',286,'Jigglypuff','Pokemon Trainer','Mr. Game & Watch','Ridley','Ale'),
('Single',285,'Olimar','Ganondorf','Bayonetta','Spadaccino Mii','Leo'),
('Single',284,'Abitante','Snake','Bowser','Samus Oscura','Ale'),
('Single',283,'Meta Knight','Richter','Bowser Junior','Samus Oscura','Ale'),
('Single',282,'Kirby','Corrin','Samus','Samus Oscura','Ale'),
('Single',281,'Kirby','Roy','Palutena','Spadaccino Mii','Ale'),
('Single',280,'Jigglypuff','Roy','Duo Duck Hunt','Spadaccino Mii','Siwei'),
('Single',279,'Jigglypuff','Ike','King Dedede','Spadaccino Mii','Leo'),
('Single',278,'Jigglypuff','Lucina','Pit Oscuro','Samus Tuta Zero','Ale'),
('Single',277,'Jigglypuff','Lucina','Lucario','Samus Tuta Zero','Leo'),
('Single',276,'Jigglypuff','Lucina','Greninja','Spadaccino Mii','Sandro'),
('Single',275,'Jigglypuff','Ganondorf','Bowser','Pit','Ale'),
('Single',274,'Jigglypuff','Fuffi','Rosalinda e Sfavillotto','Mewtwo','Siwei'),
('Single',273,'Jigglypuff','Ness','Little Mac','Link Cartone','Sandro'),
('Single',272,'Daisy','Peach','Zelda','Link Cartone','Sandro'),
('Single',271,'Jigglypuff','Mega Man','Ice Climbers','Mewtwo','Ale'),
('Single',270,'Pokemon Trainer','Pokemon Trainer','Yoshi','King K. Rool','Sandro'),
('Single',269,'Jigglypuff','Cloud','Mr. Game & Watch','King K. Rool','Siwei'),
('Single',268,'Fuciliere Mii','Fuciliere Mii','Lottatore Mii','King K. Rool','Leo');
insert into smash values('Doubles',93,'Pichu','Richter','Pokemon Trainer','Samus Tuta Zero','Ale','Sandro'),
('Doubles',92,'Pichu','Fuffi','R.O.B.','Mewtwo','Leo','Sandro'),
('Doubles',91,'Sonic','Pokemon Trainer','Bowser Junior','Dr. Mario','Leo','Sandro'),
('Doubles',90,'Sonic','Richter','Rosalinda e Sfavillotto','Incineroar','Leo','Siwei'),
('Doubles',89,'Spadaccino Mii','Luigi','Yoshi','Spadaccino Mii','Leo','Sandro'),
('Doubles',88,'Olimar','Trainer di Wii Fit','Peach','King K. Rool','Ale','Leo'),
('Doubles',87,'Olimar','Ganondorf','Zelda','Samus Tuta Zero','Ale','Leo'),
('Doubles',86,'Olimar','Mega Man','Ice Climbers','Mewtwo','Ale','Sandro'),
('Doubles',85,'Olimar','Pokemon Trainer','Mr. Game & Watch','Samus Tuta Zero','Ale','Leo'),
('Doubles',84,'Olimar','Pokemon Trainer','Yoshi','Samus Tuta Zero','Ale','Sandro');
insert into smash values('Single',267,'Abitante','Pokemon Trainer','Zelda','Mewtwo','Ale'),
('Single',266,'Abitante','Pokemon Trainer','Zelda','Mewtwo','Ale'),
('Single',265,'Abitante','Pokemon Trainer','Zelda','Samus Tuta Zero','Sandro'),
('Single',264,'Bayonetta','Pokemon Trainer','Zelda','Samus Tuta Zero','Leo'),
('Single',263,'King Dedede','Pokemon Trainer','Zelda','Samus Tuta Zero','Ale'),
('Single',262,'Meta Knight','Pokemon Trainer','Bowser','King K. Rool','Leo'),
('Single',261,'Meta Knight','Pokemon Trainer','Greninja','Mewtwo','Sandro'),
('Single',260,'Kirby','Pokemon Trainer','Samus','Mewtwo','Ale'),
('Single',259,'Kirby','Pokemon Trainer','Samus','Mewtwo','Ale'),
('Single',258,'Kirby','Pokemon Trainer','Yoshi','Mewtwo','Leo'),
('Single',257,'Pichu','Pokemon Trainer','Bowser Junior','Wolf','Sandro'),
('Single',256,'Pichu','Pokemon Trainer','Corrin','Samus Tuta Zero','Ale'),
('Single',255,'Spadaccino Mii','Pokemon Trainer','Spadaccino Mii','Spadaccino Mii','Siwei'),
('Single',254,'Spadaccino Mii','Fuciliere Mii','Lottatore Mii','Spadaccino Mii','Ale'),
('Single',253,'Bayonetta','Pit Oscuro','Bowser','Pit','Sandro'),
('Single',252,'Bayonetta','Pokemon Trainer','Fox','King K. Rool','Leo'),
('Single',251,'Bayonetta','Pokemon Trainer','Yoshi','King K. Rool','Leo'),
('Single',250,'Bayonetta','Mega Man','Lucario','King K. Rool','Leo'),
('Single',249,'Olimar','Pokemon Trainer','R.O.B.','Samus Tuta Zero','Ale'),
('Single',248,'Olimar','Pokemon Trainer','Ice Climbers','Samus Tuta Zero','Ale'),
('Single',247,'Olimar','Pokemon Trainer','Mr. Game & Watch','Dr. Mario','Sandro'),
('Single',246,'Olimar','Fuciliere Mii','Lottatore Mii','Dr. Mario','Ale');
insert into smash values('Doubles',83,'Mewtwo','Greninja','Roy','Meta Knight','Ale','Siwei'),
('Doubles',82,'Bayonetta','Ness','Ike','King K. Rool','Leo','Siwei'),
('Doubles',81,'Trainer di Wii Fit','Samus Tuta Zero','Yoshi','Cloud','Sandro','Leo'),
('Doubles',80,'Mario','Abitante','Jigglypuff','Pit','Leo','Siwei'),
('Doubles',79,'Daisy','Bowser','Chrom','Fuffi','Sandro','Leo'),
('Doubles',78,'Kirby','Diddy Kong','Shulk','Pokemon Trainer','Ale','Sandro'),
('Doubles',77,'Ragazza Inkling','Link Cartone','Incineroar','Rosalinda e Sfavillotto','Sandro','Leo'),
('Doubles',76,'Falco','Sonic','Richter','Daraen','Ale','Sandro'),
('Doubles',75,'Lottatore Mii','Pichu','Olimar','Lucas','Ale','Leo'),
('Doubles',74,'Diddy Kong','Samus Oscura','King K. Rool','Daisy','Ale','Sandro'),
('Doubles',73,'Abitante','Wario','Sheik','Pit','Ale','Sandro'),
('Doubles',72,'Abitante','Lucas','Zelda','Pit','Ale','Sandro'),
('Doubles',71,'Kirby','Snake','Yoshi','Corrin','Ale','Siwei'),
('Doubles',70,'Pichu','Falco','Yoshi','Mewtwo','Ale','Leo'),
('Doubles',69,'Pichu','Mega Man','Yoshi','King K. Rool','Leo','Siwei'),
('Doubles',68,'Pikachu','Ryu','Yoshi','Wolf','Sandro','Leo'),
('Doubles',67,'Mario','Pokemon Trainer','Yoshi','Dr. Mario','Ale','Leo'),
('Doubles',66,'Mario','Samus','Yoshi','Dr. Mario','Sandro','Siwei'),
('Doubles',65,'Kirby','Ragazza Inkling','Mr. Game & Watch','Samus Tuta Zero','Ale','Siwei'),
('Doubles',64,'Kirby','Pikachu','Mr. Game & Watch','Pit Oscuro','Sandro','Siwei'),
('Doubles',63,'Kirby','Link','Shulk','Little Mac','Ale','Sandro'),
('Doubles',62,'Kirby','R.O.B.','Mr. Game & Watch','Incineroar','Ale','Leo'),
('Doubles',61,'Meta Knight','Link Cartone','Bowser','Spadaccino Mii','Ale','Sandro'),
('Doubles',60,'Meta Knight','Donkey Kong','Mr. Game & Watch','King K. Rool','Leo','Siwei'),
('Doubles',59,'King Dedede','Richter','Bowser','King K. Rool','Ale','Siwei'),
('Doubles',58,'Bayonetta','Roy','Mr. Game & Watch','Little Mac','Ale','Sandro'),
('Doubles',57,'Sonic','Ike','Mr. Game & Watch','Little Mac','Ale','Sandro'),
('Doubles',56,'Sonic','Roy','Mr. Game & Watch','Little Mac','Leo','Siwei'),
('Doubles',55,'Pichu','Roy','Mr. Game & Watch','King K. Rool','Sandro','Leo'),
('Doubles',54,'Pichu','Chrom','Mr. Game & Watch','King K. Rool','Ale','Sandro'),
('Doubles',53,'Lottatore Mii','Chrom','Mr. Game & Watch','Spadaccino Mii','Sandro','Leo'),
('Doubles',52,'Kirby','Ike','Mr. Game & Watch','Captain Falcon','Ale','Siwei'),
('Doubles',51,'Kirby','Ike','Mr. Game & Watch','Wolf','Sandro','Leo'),
('Doubles',50,'Bayonetta','Zelda','Mr. Game & Watch','Samus Tuta Zero','Ale','Sandro'),
('Doubles',49,'Kirby','Ness','Mr. Game & Watch','King K. Rool','Ale','Siwei');
insert into smash values('Single',245,'Lottatore Mii','Chrom','Mr. Game & Watch','Diddy Kong','Ale'),
('Single',244,'Lottatore Mii','Pac-Man','Jigglypuff','Incineroar','Leo'),
('Single',243,'Spadaccino Mii','Roy','Peach','Wolf','Ale'),
('Single',242,'Fuciliere Mii','Lucina','Shulk','Duo Duck Hunt','Ale'),
('Single',241,'Abitante','Lucario','Corrin','Mewtwo','Ale'),
('Single',240,'Sonic','Ganondorf','Bowser Junior','Link Cartone','Siwei'),
('Single',239,'Sonic','Ness','Bowser','Diddy Kong','Ale'),
('Single',238,'Pichu','Palutena','Greninja','King K. Rool','Leo'),
('Single',237,'Bayonetta','Ike','Bowser','King K. Rool','Leo'),
('Single',236,'Bayonetta','Richter','Mr. Game & Watch','Spadaccino Mii','Ale'),
('Single',235,'Bayonetta','Richter','Yoshi','Incineroar','Sandro'),
('Single',234,'Bayonetta','Ken','Yoshi','Samus Tuta Zero','Ale'),
('Single',233,'Lottatore Mii','Fuciliere Mii','Bowser','Samus Tuta Zero','Leo');
insert into smash values('Doubles',48,'Bayonetta','Jigglypuff','Abitante','Ness','Ale','Leo'),
('Doubles',47,'Corrin','Lucas','Mario','Yoshi','Ale','Leo'),
('Doubles',46,'Luigi','Ganondorf','Snake','Olimar','Ale','Leo'),
('Doubles',45,'King Dedede','Pichu','R.O.B.','Samus Tuta Zero','Ale','Siwei'),
('Doubles',44,'Fuffi','Link Bambino','Snake','Cloud','Ale','Sandro'),
('Doubles',43,'Fox','Simon','Daisy','Pac-Man','Ale','Sandro'),
('Doubles',42,'Bowser','Lucario','Samus Oscura','Wolf','Ale','Siwei'),
('Doubles',41,'Pokemon Trainer','Ness','Mega Man','Trainer di Wii Fit','Ale','Leo'),
('Doubles',40,'Ice Climbers','King Dedede','Chrom','Sheik','Ale','Leo'),
('Doubles',39,'Mario','Samus','Mr. Game & Watch','Diddy Kong','Leo','Sandro'),
('Doubles',38,'Bowser Junior','Corrin','Shulk','Yoshi','Ale','Leo'),
('Doubles',37,'Bayonetta','Daraen','Lucina','Ike','Ale','Leo'),
('Doubles',36,'Sonic','Zelda','Lucas','R.O.B.','Leo','Siwei'),
('Doubles',35,'Kirby','Donkey Kong','Incineroar','Mewtwo','Leo','Sandro'),
('Doubles',34,'Kirby','Pit Oscuro','Ganondorf','Captain Falcon','Ale','Sandro'),
('Doubles',33,'Kirby','Zelda','Mr. Game & Watch','Samus Oscura','Ale','Leo'),
('Doubles',32,'Kirby','Pikachu','Mr. Game & Watch','Richter','Sandro','Siwei'),
('Doubles',31,'Kirby','Palutena','Corrin','Spadaccino Mii','Sandro','Leo'),
('Doubles',30,'Kirby','Shulk','Bowser Junior','Mewtwo','Ale','Leo'),
('Doubles',29,'Pichu','Ness','Ridley','King K. Rool','Sandro','Leo'),
('Doubles',28,'Pichu','Ness','Duo Duck Hunt','Ridley','Siwei','Leo'),
('Doubles',27,'Pichu','Ganondorf','Yoshi','Link','Ale','Sandro'),
('Doubles',26,'Pichu','Ganondorf','Shulk','Captain Falcon','Leo','Sandro'),
('Doubles',25,'Pichu','Ganondorf','Shulk','Spadaccino Mii','Sandro','Siwei'),
('Doubles',24,'Pichu','Ganondorf','Bowser','Diddy Kong','Ale','Leo');
insert into smash values('Single',232,'Pichu','Daraen','Sheik','Spadaccino Mii','Leo'),
('Single',231,'Pichu','Trainer di Wii Fit','Peach','Spadaccino Mii','Sandro'),
('Single',230,'Pichu','Pit Oscuro','Duo Duck Hunt','Diddy Kong','Leo'),
('Single',229,'Pichu','Zelda','Wolf','Diddy Kong','Leo'),
('Single',228,'Kirby','Pit Oscuro','R.O.B.','Diddy Kong','Ale'),
('Single',227,'Kirby','Palutena','Yoshi','Incineroar','Leo'),
('Single',226,'Kirby','Little Mac','Samus','Incineroar','Ale'),
('Single',225,'Kirby','Ness','Bowser Junior','Incineroar','Sandro'),
('Single',224,'Kirby','Ganondorf','Bowser','Mewtwo','Ale'),
('Single',223,'Spadaccino Mii','Fuciliere Mii','Mr. Game & Watch','Captain Falcon','Leo'),
('Single',222,'Pichu','Shulk','Mr. Game & Watch','Spadaccino Mii','Ale'),
('Single',221,'Pichu','Lucina','Mr. Game & Watch','Spadaccino Mii','Sandro'),
('Single',220,'Pichu','Chrom','Mr. Game & Watch','King K. Rool','Leo'),
('Single',219,'Pichu','Ganondorf','Pit','Link Bambino','Ale'),
('Single',218,'Pichu','Ganondorf','Mr. Game & Watch','Link','Ale'),
('Single',217,'Pichu','Ness','Bowser','Link','Sandro'),
('Single',216,'Pichu','Ness','Bowser','Wolf','Sandro'),
('Single',215,'Ragazza Inkling','Ness','Bowser','Diddy Kong','Leo'),
('Single',214,'Ragazza Inkling','Ness','Bowser','Diddy Kong','Ale'),
('Single',213,'Abitante','Meta Knight','Pokemon Trainer','Diddy Kong','Ale'),
('Single',212,'Abitante','Ike','Corrin','Duo Duck Hunt','Leo'),
('Single',211,'Kirby','Ike','Bayonetta','Lucario','Ale'),
('Single',210,'Kirby','Zelda','Bayonetta','Mewtwo','Ale'),
('Single',209,'Kirby','Zelda','Greninja','Mewtwo','Leo'),
('Single',208,'Kirby','Luigi','Ridley','Spadaccino Mii','Ale'),
('Single',207,'Kirby','Ganondorf','Ridley','Captain Falcon','Sandro'),
('Single',206,'Kirby','Pit Oscuro','King Dedede','Captain Falcon','Leo'),
('Single',205,'Kirby','Cloud','Greninja','Lottatore Mii','Sandro'),
('Single',204,'Pichu','Trainer di Wii Fit','Yoshi','Mewtwo','Leo'),
('Single',203,'Pichu','Palutena','Shulk','King K. Rool','Leo'),
('Single',202,'Pichu','Wolf','Bowser Junior','Incineroar','Leo'),
('Single',201,'Pichu','Little Mac','Fuciliere Mii','Lottatore Mii','Ale'),
('Single',200,'Pichu','Zelda','Bowser','Spadaccino Mii','Leo');
insert into smash values('Doubles',23,'Marth','Captain Falcon','Lucina','Link','Leo','Siwei'),
('Doubles',22,'Richter','Pokemon Trainer','Ken','Dr. Mario','Siwei','Sandro'),
('Doubles',21,'Ice Climbers','Lucas','Incineroar','Daisy','Leo','Sandro'),
('Doubles',20,'Mr. Game & Watch','Trainer di Wii Fit','Meta Knight','Wolf','Leo','Sandro'),
('Doubles',19,'Ike','Abitante','Pac-Man','Mario','Ale','Leo'),
('Doubles',18,'Daisy','Olimar','Zelda','Rosalinda e Sfavillotto','Siwei','Sandro'),
('Doubles',17,'Ken','Pokemon Trainer','Ridley','Chrom','Siwei','Sandro'),
('Doubles',16,'Daraen','Fox','Ridley','Roy','Siwei','Sandro'),
('Doubles',15,'Fuffi','Dr. Mario','Ridley','Ryu','Ale','Sandro'),
('Doubles',14,'Kirby','Simon','King Dedede','King K. Rool','Ale','Siwei'),
('Doubles',13,'Luigi','Jigglypuff','Yoshi','Link Cartone','Ale','Sandro'),
('Doubles',12,'Kirby','Peach','Corrin','Sheik','Ale','Siwei'),
('Doubles',11,'Abitante','Ganondorf','Mr. Game & Watch','Captain Falcon','Ale','Sandro'),
('Doubles',10,'Kirby','Ganondorf','Bowser','Incineroar','Ale','Sandro'),
('Doubles',9,'Pichu','Lucina','Bowser Junior','Spadaccino Mii','Ale','Leo'),
('Doubles',8,'Kirby','Ragazza Inkling','Ragazza Inkling','Richter','Ale','Siwei'),
('Doubles',7,'Abitante','Samus Oscura','Greninja','Lucario','Ale','Leo'),
('Doubles',6,'Meta Knight','Donkey Kong','Yoshi','King K. Rool','Siwei','Leo'),
('Doubles',5,'King Dedede','Cloud','Yoshi','Lottatore Mii','Ale','Leo'),
('Doubles',4,'Falco','Wolf','Snake','King K. Rool','Siwei','Sandro'),
('Doubles',3,'Lucas','Ness','Greninja','Lottatore Mii','Ale','Leo'),
('Doubles',2,'Kirby','Shulk','Ridley','Spadaccino Mii','Ale','Leo'),
('Doubles',1,'Kirby','Shulk','Ridley','Spadaccino Mii','Ale','Leo');
insert into smash values('Single',199,'Pichu','Ness','Ridley','Spadaccino Mii','Leo'),
('Single',198,'Abitante','Ganondorf','Ridley','Spadaccino Mii','Ale'),
('Single',197,'Meta Knight','Pac-Man','Ridley','Richter','Ale'),
('Single',196,'Meta Knight','Link','Ridley','Lottatore Mii','Ale'),
('Single',195,'Meta Knight','Palutena','Bowser','Mewtwo','Leo'),
('Single',194,'Meta Knight','Pit Oscuro','Bowser','Little Mac','Ale'),
('Single',193,'Meta Knight','Pit Oscuro','Bowser','Spadaccino Mii','Siwei'),
('Single',192,'Meta Knight','Marth','Samus','Lottatore Mii','Ale'),
('Single',191,'Kirby','Ganondorf','Bowser Junior','Pit','Ale'),
('Single',190,'Kirby','Ganondorf','Greninja','Richter','Ale'),
('Single',189,'Kirby','Lucina','Bowser','Incineroar','Leo'),
('Single',188,'Kirby','Chrom','Ragazza Inkling','Incineroar','Sandro'),
('Single',187,'Kirby','Fuciliere Mii','Spadaccino Mii','Lottatore Mii','Sandro'),
('Single',186,'Meta Knight','Samus','Bowser','Lottatore Mii','Leo'),
('Single',185,'Meta Knight','Ganondorf','Greninja','Spadaccino Mii','Ale'),
('Single',184,'King Dedede','Ness','Greninja','Donkey Kong','Ale'),
('Single',183,'Kirby','Lucina','Greninja','Donkey Kong','Leo'),
('Single',182,'Kirby','Ike','Greninja','Donkey Kong','Siwei'),
('Single',181,'Kirby','Ness','Bowser Junior','Incineroar','Ale'),
('Single',180,'Pichu','Ganondorf','Samus Oscura','Little Mac','Leo'),
('Single',179,'Pichu','Ganondorf','King Dedede','King K. Rool','Sandro'),
('Single',178,'Pichu','Ganondorf','Mr. Game & Watch','Incineroar','Sandro'),
('Single',177,'Pichu','Ike','Bowser','Lottatore Mii','Sandro'),
('Single',176,'Pichu','Ike','Bowser','Lottatore Mii','Ale'),
('Single',175,'Pichu','Lucina','Greninja','Lottatore Mii','Leo'),
('Single',174,'Fuciliere Mii','Fuciliere Mii','Fuciliere Mii','Fuciliere Mii','Ale'),
('Single',173,'Lucas','King Dedede','Bowser','Incineroar','Sandro'),
('Single',172,'Falco','Fox','Bowser Junior','Ken','Ale'),
('Single',171,'Lucas','Ness','Yoshi','Lottatore Mii','Leo'),
('Single',170,'Lucas','Ganondorf','Bowser Junior','Lottatore Mii','Sandro'),
('Single',169,'Pichu','Link Cartone','Ike','Lottatore Mii','Leo'),
('Single',168,'Abitante','Luigi','Lottatore Mii','Lottatore Mii','Leo'),
('Single',167,'Pichu','Jigglypuff','Greninja','Incineroar','Ale'),
('Single',166,'Pichu','Palutena','Greninja','Incineroar','Leo'),
('Single',165,'Abitante','Ike','Richter','Lottatore Mii','Leo'),
('Single',164,'Abitante','Lucina','Snake','Lottatore Mii','Ale'),
('Single',163,'King Dedede','Lucina','Ridley','Lottatore Mii','Siwei'),
('Single',162,'Spadaccino Mii','Lucina','King Dedede','Lottatore Mii','Sandro'),
('Single',161,'Meta Knight','Ganondorf','Bowser','Marth','Ale'),
('Single',160,'Pichu','Ike','Corrin','Marth','Leo'),
('Single',159,'Pichu','Ike','Roy','Spadaccino Mii','Sandro'),
('Single',158,'Pichu','Lucina','Ganondorf','Richter','Siwei'),
('Single',157,'Kirby','Ganondorf','Yoshi','Lucario','Sandro'),
('Single',156,'Kirby','Ganondorf','Captain Falcon','Incineroar','Ale'),
('Single',155,'Kirby','Ganondorf','Ice Climbers','Little Mac','Ale'),
('Single',154,'Kirby','Ness','Bowser','Little Mac','Leo'),
('Single',153,'Kirby','Ness','Bowser','Pit Oscuro','Sandro'),
('Single',152,'Kirby','Link','Greninja','Incineroar','Ale'),
('Single',151,'Kirby','Ganondorf','Greninja','Spadaccino Mii','Sandro'),
('Single',150,'Kirby','Lucina','Bowser','Incineroar','Leo'),
('Single',149,'Kirby','Ike','Bowser','Incineroar','Ale'),
('Single',148,'Kirby','Donkey Kong','Mr. Game & Watch','King K. Rool','Ale'),
('Single',147,'Kirby','Daraen','Bowser','Incineroar','Sandro'),
('Single',146,'Kirby','Luigi','Mr. Game & Watch','Spadaccino Mii','Sandro'),
('Single',145,'Pikachu','Dr. Mario','Mr. Game & Watch','Incineroar','Ale'),
('Single',144,'Pikachu','Zelda','Mr. Game & Watch','Incineroar','Siwei'),
('Single',143,'Pikachu','Lucina','Bowser','Donkey Kong','Ale'),
('Single',142,'Pikachu','Samus Tuta Zero','Bowser','Little Mac','Leo'),
('Single',141,'Lucas','Roy','Bowser','Daisy','Leo'),
('Single',140,'Lucas','Pikachu','Bowser','Little Mac','Ale'),
('Single',139,'Lucas','R.O.B.','Bowser','Link','Leo'),
('Single',138,'Lucas','Bowser Junior','Mr. Game & Watch','Trainer di Wii Fit','Leo'),
('Single',137,'Lucas','Mr. Game & Watch','Greninja','Donkey Kong','Ale'),
('Single',136,'Lucas','Peach','Greninja','Yoshi','Leo'),
('Single',134,'Lucas','Cloud','Greninja','Sonic','Ale'),
('Single',133,'Abitante','Captain Falcon','Jigglypuff','Incineroar','Leo'),
('Single',132,'King Dedede','Marth','Richter','Incineroar','Leo'),
('Single',131,'King Dedede','Diddy Kong','Mewtwo','Incineroar','Siwei'),
('Single',130,'Kirby','King Dedede','Bowser','Pit','Ale'),
('Single',129,'Abitante','Ike','Bowser','Mewtwo','Leo'),
('Single',128,'Meta Knight','Cloud','Bowser','Little Mac','Leo'),
('Single',126,'Meta Knight','Luigi','Mr. Game & Watch','Little Mac','Sandro'),
('Single',125,'Pichu','Ganondorf','Bowser','Richter','Leo'),
('Single',124,'Pichu','King K. Rool','Mr. Game & Watch','Spadaccino Mii','Sandro'),
('Single',122,'Pichu','Lucina','Mr. Game & Watch','Pit Oscuro','Sandro'),
('Single',121,'Pichu','Chrom','Bowser','Samus Oscura','Siwei'),
('Single',135,'Lucas','Link Bambino','Greninja','Link','Siwei'),
('Single',127,'Meta Knight','Samus Tuta Zero','Bowser','Little Mac','Ale'),
('Single',123,'Pichu','Lucina','Bowser','Spadaccino Mii','Leo'),
('Single',120,'Kirby','Rosalinda e Sfavillotto','Bowser','Mario','Leo'),
('Single',119,'Pichu','Sheik','Bowser','Palutena','Ale'),
('Single',118,'Pikachu','Luigi','Mr. Game & Watch','Lucario','Ale'),
('Single',117,'Ragazza Inkling','Samus Tuta Zero','Ganondorf','Lottatore Mii','Leo'),
('Single',116,'Meta Knight','Pit Oscuro','Bowser','Mewtwo','Leo'),
('Single',115,'Meta Knight','Daraen','Bowser','Richter','Leo'),
('Single',114,'King Dedede','Ganondorf','Mr. Game & Watch','Mewtwo','Siwei'),
('Single',113,'Meta Knight','Little Mac','Bowser','Spadaccino Mii','Ale'),
('Single',112,'Meta Knight','Little Mac','Bowser','Spadaccino Mii','Ale'),
('Single',111,'King Dedede','Snake','Bowser','Captain Falcon','Ale'),
('Single',110,'Fuffi','Ken','Mr. Game & Watch','Pit','Sandro'),
('Single',109,'Lucas','Ness','Bowser','Mewtwo','Leo'),
('Single',108,'Pichu','Chrom','Mr. Game & Watch','Spadaccino Mii','Leo'),
('Single',107,'Pichu','Ike','Mr. Game & Watch','King K. Rool','Sandro');
insert into smash values('Soccer',17,'Trainer di Wii Fit','Bowser','Palutena','Ryu','Ale','Leo'),
('Soccer',16,'Mr. Game & Watch','Samus','Ness','Sonic','Leo','Siwei'),
('Soccer',15,'Abitante','Incineroar','Greninja','Ice Climbers','Sandro','Siwei'),
('Soccer',14,'Lucario','Bayonetta','Zelda','Pokemon Trainer','Sandro','Ale'),
('Soccer',13,'Yoshi','Ridley','Daraen','Shulk','Ale','Siwei'),
('Soccer',12,'Wolf','King K. Rool','Falco','Marth','Leo','Siwei'),
('Soccer',11,'R.O.B.','Link','Diddy Kong','Fuffi','Ale','Leo'),
('Soccer',10,'Luigi','Pit','Ganondorf','Peach','Sandro','Ale');
insert into smash values('Single',106,'Kirby','Ganondorf','Mr. Game & Watch','Samus Oscura','Sandro'),
('Single',105,'Meta Knight','Lucario','Bowser','Spadaccino Mii','Leo'),
('Single',104,'Meta Knight','Pit Oscuro','Bowser','Duo Duck Hunt','Sandro'),
('Single',103,'Yoshi','Ness','Bowser','Samus','Leo'),
('Single',102,'Yoshi','Luigi','Bowser','Lottatore Mii','Leo'),
('Single',101,'Kirby','Ganondorf','Bowser','Richter','Ale'),
('Single',100,'Kirby','Ganondorf','Bowser','Samus Oscura','Sandro'),
('Single',99,'Kirby','Link','Bowser','Captain Falcon','Ale');
insert into smash values('Team',29,'Kirby','Jigglypuff','Bowser','Spadaccino Mii','Leo','Sandro'),
('Team',28,'Kirby','Falco','Bowser','Spadaccino Mii','Leo','Sandro'),
('Team',27,'Kirby','Pit Oscuro','Bowser','Richter','Ale','Sandro'),
('Team',26,'Kirby','Ganondorf','Bowser','Richter','Ale','Siwei'),
('Team',25,'Kirby','Donkey Kong','Bowser','Spadaccino Mii','Ale','Sandro'),
('Team',24,'Kirby','Ike','Bowser','Samus','Sandro','Siwei'),
('Team',23,'Kirby','Shulk','Bowser','Samus','Sandro','Siwei'),
('Team',22,'Meta Knight','Palutena','Bowser','Richter','Leo','Ale'),
('Team',21,'Kirby','Ganondorf','Bowser','Spadaccino Mii','Ale','Siwei'),
('Team',20,'Kirby','Pit','Bowser','Spadaccino Mii','Leo','Sandro'),
('Team',19,'Kirby','Ganondorf','Bowser','Spadaccino Mii','Ale','Sandro'),
('Team',18,'Kirby','Ganondorf','Bowser','Richter','Sandro','Siwei');
insert into smash values('Single',98,'Kirby','Zelda','Mr. Game & Watch','Spadaccino Mii','Siwei'),
('Single',97,'Spadaccino Mii','Pokemon Trainer','Bowser','Richter','Sandro'),
('Single',96,'Kirby','Jigglypuff','Snake','Richter','Ale'),
('Single',95,'Kirby','Ganondorf','Bowser Junior','Spadaccino Mii','Leo'),
('Single',94,'Kirby','Trainer di Wii Fit','Bowser','Richter','Leo'),
('Single',93,'Kirby','Lucas','Bayonetta','Richter','Ale'),
('Single',92,'Kirby','Ness','Dr. Mario','Richter','Leo'),
('Single',91,'Kirby','Ganondorf','Shulk','Spadaccino Mii','Siwei'),
('Single',90,'Meta Knight','Little Mac','Bowser Junior','Spadaccino Mii','Ale'),
('Single',89,'Pichu','Little Mac','Olimar','Spadaccino Mii','Siwei'),
('Single',88,'Pichu','Lucario','Corrin','Mewtwo','Sandro'),
('Single',87,'Pichu','Pit Oscuro','Mr. Game & Watch','Wolf','Ale'),
('Single',86,'Pichu','Pit Oscuro','Samus','Samus Oscura','Siwei'),
('Single',85,'Pichu','Ganondorf','Mr. Game & Watch','Spadaccino Mii','Siwei'),
('Single',84,'Pichu','Peach','Bowser','Samus','Leo'),
('Random Single',18,'Ridley','Meta Knight','Incineroar','Pichu','Leo'),
('Random Single',17,'R.O.B.','Chrom','Cloud','Duo Duck Hunt','Siwei'),
('Random Single',16,'Palutena','Diddy Kong','Luigi','Yoshi','Leo'),
('Random Single',15,'Jigglypuff','Kirby','Samus Tuta Zero','Meta Knight','Siwei'),
('Random Single',14,'Corrin','Ragazza Inkling','Shulk','Abitante','Siwei'),
('Random Single',13,'Daisy','Snake','Link Cartone','Peach','Leo'),
('Single',83,'Abitante','Pit Oscuro','Samus','Abitante','Leo'),
('Single',82,'Abitante','Richter','Mr. Game & Watch','Abitante','Leo'),
('Single',81,'Abitante','Luigi','Bowser','Abitante','Leo'),
('Single',80,'Kirby','Ragazza Inkling','Bowser','Abitante','Siwei'),
('Single',79,'Ganondorf','Jigglypuff','Bowser','Richter','Ale'),
('Single',78,'Ganondorf','Palutena','Bowser Junior','Spadaccino Mii','Leo'),
('Single',77,'Spadaccino Mii','Ike','Samus','Ridley','Ale'),
('Single',76,'Kirby','Mario','Bowser','Mewtwo','Ale'),
('Single',75,'Pichu','Samus Tuta Zero','Bowser','Pit Oscuro','Leo'),
('Single',74,'Meta Knight','Peach','Bowser','Richter','Ale'),
('Single',73,'Pichu','Roy','Bowser','Mewtwo','Leo'),
('Single',72,'Pichu','Little Mac','Samus','King K. Rool','Sandro'),
('Single',71,'Pichu','Luigi','Bowser','Spadaccino Mii','Ale');
insert into smash values('Random Team',28,'Incineroar','Luigi','King Dedede','Jigglypuff','Sandro','Siwei'),
('Random Team',27,'Pit Oscuro','Ganondorf','Lucas','Pac-Man','Siwei','Leo'),
('Random Team',26,'Ice Climbers','Ridley','Bowser','King K. Rool','Sandro','Leo'),
('Random Team',25,'Ike','Abitante','Link','Ness','Ale','Leo'),
('Random Team',24,'R.O.B.','Mewtwo','Trainer di Wii Fit','Jigglypuff','Ale','Siwei'),
('Random Team',23,'Samus Oscura','Link Bambino','Ken','Pichu','Ale','Siwei'),
('Random Team',22,'Ganondorf','Ryu','Chrom','Pikachu','Ale','Siwei'),
('Random Team',21,'Pac-Man','Luigi','Lucas','Donkey Kong','Sandro','Leo'),
('Random Team',20,'Kirby','Fuffi','Fox','Cloud','Siwei','Leo'),
('Random Team',19,'Pit Oscuro','Shulk','Snake','Palutena','Ale','Leo');
insert into smash values('Single',70,'Meta Knight','Cloud','Snake','Mewtwo','Sandro'),
('Single',69,'Lucas','Cloud','Bowser','Mewtwo','Sandro'),
('Single',68,'Kirby','Shulk','Bowser','Spadaccino Mii','Ale'),
('Single',67,'Kirby','Ike','Bowser Junior','Pit Oscuro','Sandro'),
('Single',66,'Kirby','Captain Falcon','Captain Falcon','King K. Rool','Ale'),
('Single',65,'Lucas','Jigglypuff','Olimar','Corrin','Leo'),
('Single',64,'Lucas','Little Mac','Samus','Spadaccino Mii','Ale'),
('Single',63,'Kirby','Ridley','Samus Oscura','Ganondorf','Siwei'),
('Single',62,'Lucas','Zelda','Link','Richter','Leo'),
('Single',61,'Lucas','Sheik','Mr. Game & Watch','Mewtwo','Leo'),
('Single',60,'Pokemon Trainer','Incineroar','Greninja','Mewtwo','Siwei'),
('Single',59,'Kirby','Pit Oscuro','Mega Man','Abitante','Ale'),
('Single',58,'Fuffi','Pac-Man','Samus Tuta Zero','Richter','Siwei'),
('Single',57,'Pokemon Trainer','Luigi','Corrin','Mewtwo','Leo'),
('Single',56,'Pokemon Trainer','Luigi','Bayonetta','Mewtwo','Ale'),
('Random Single',12,'Samus Tuta Zero','Dr. Mario','Meta Knight','Lucas','Leo'),
('Random Single',11,'Jigglypuff','Pit Oscuro','Link Cartone','Ragazza Inkling','Leo'),
('Random Single',10,'Pokemon Trainer','Donkey Kong','Falco','Link Bambino','Leo'),
('Random Single',9,'Sheik','Pac-Man','Mewtwo','Yoshi','Leo'),
('Random Single',8,'Ice Climbers','Pichu','Ridley','Samus Tuta Zero','Ale'),
('Random Single',7,'Daraen','Mega Man','Chrom','Abitante','Siwei'),
('Random Single',6,'Kirby','Diddy Kong','Ganondorf','Wario','Sandro'),
('Random Single',5,'Lucina','King K. Rool','Lucario','Meta Knight','Ale'),
('Random Single',4,'King Dedede','Ike','Wolf','Pikachu','Ale'),
('Random Single',3,'Olimar','Samus','Mario','Ken','Ale'),
('Random Single',2,'Little Mac','Peach','Roy','Greninja','Leo'),
('Random Single',1,'Zelda','Richter','Snake','Bowser Junior','Ale'),
('Single',55,'Meta Knight','Ike','Samus','Ridley','Leo'),
('Single',54,'Pichu','Ike','Samus','Corrin','Sandro'),
('Single',53,'Pichu','Ike','Samus','Mewtwo','Ale'),
('Single',52,'Pichu','Ike','Samus','Mewtwo','Leo'),
('Single',51,'Pichu','Ike','Samus','Spadaccino Mii','Leo'),
('Single',50,'Meta Knight','Ike','Samus','Mewtwo','Sandro'),
('Single',49,'Meta Knight','Ike','Samus','Mewtwo','Leo'),
('Single',48,'Kirby','Roy','Samus','Mewtwo','Sandro'),
('Single',47,'Kirby','Chrom','Samus','Mewtwo','Ale'),
('Single',46,'Kirby','Cloud','Samus Oscura','Ridley','Ale'),
('Single',45,'Kirby','Shulk','Samus','King K. Rool','Sandro'),
('Single',44,'Kirby','Shulk','Samus','Pit','Sandro'),
('Single',43,'Pichu','Pac-Man','Samus','Richter','Ale'),
('Single',42,'Pichu','Palutena','Bowser Junior','Ganondorf','Sandro'),
('Single',41,'Pichu','Captain Falcon','Bowser Junior','Ganondorf','Leo'),
('Single',40,'Kirby','Captain Falcon','Bowser Junior','King K. Rool','Ale'),
('Single',39,'Kirby','Luigi','Bowser Junior','King K. Rool','Ale'),
('Single',38,'Kirby','Luigi','Bowser Junior','King K. Rool','Ale');
insert into smash values('Random Team',18,'Ridley','Link','Luigi','Ryu','Leo','Siwei'),
('Random Team',17,'Simon','Jigglypuff','Bayonetta','Lucas','Ale','Siwei'),
('Random Team',16,'Link Cartone','Link Bambino','Dr. Mario','Snake','Leo','Siwei'),
('Random Team',15,'Little Mac','Donkey Kong','Sonic','Mario','Leo','Sandro'),
('Random Team',14,'Zelda','Fuffi','Ice Climbers','R.O.B.','Ale','Siwei'),
('Random Team',13,'Falco','Lucina','Kirby','Duo Duck Hunt','Leo','Ale'),
('Random Team',12,'Mega Man','Samus Tuta Zero','Richter','Bowser Junior','Leo','Ale'),
('Random Team',11,'Mewtwo','Ness','Pit','Chrom','Ale','Siwei'),
('Random Team',10,'Olimar','Sheik','Bowser','Wolf','Sandro','Ale'),
('Random Team',9,'Abitante','King Dedede','Captain Falcon','Roy','Leo','Sandro'),
('Random Team',8,'Mr. Game & Watch','Ragazza Inkling','Cloud','Corrin','Leo','Sandro'),
('Random Team',7,'Palutena','Yoshi','Ike','Incineroar','Leo','Ale'),
('Random Team',6,'Simon','Ness','Link Cartone','Link Bambino','Ale','Sandro'),
('Random Team',5,'Lucas','Peach','Ryu','King K. Rool','Leo','Siwei'),
('Random Team',4,'Lucario','Samus','Daraen','Sonic','Sandro','Siwei'),
('Random Team',3,'Wario','Chrom','Jigglypuff','Fox','Leo','Sandro'),
('Random Team',2,'Pikachu','Link','Pit','Shulk','Leo','Ale'),
('Random Team',1,'Dr. Mario','Bowser Junior','Captain Falcon','Abitante','Leo','Sandro');
insert into smash values('Soccer',9,'Pichu','Rosalinda e Sfavillotto','Sheik','Ganondorf','Ale'),
('Soccer',8,'Kirby','Incineroar','Zelda','Incineroar','Ale'),
('Soccer',7,'Pichu','Trainer di Wii Fit','Samus Tuta Zero','Ridley','Ale'),
('Soccer',6,'Duo Duck Hunt','Marth','Samus Tuta Zero','Fuffi','Sandro'),
('Soccer',5,'Kirby','Donkey Kong','Samus','Yoshi','Ale'),
('Soccer',4,'Kirby','Donkey Kong','King Dedede','Spadaccino Mii','Ale'),
('Soccer',3,'Kirby','Pac-Man','Luigi','Ridley','Leo'),
('Soccer',2,'Meta Knight','R.O.B.','Ice Climbers','Ridley','Ale'),
('Soccer',1,'Meta Knight','Richter','Samus','Ridley','Ale'),
('Single',37,'Pichu','Shulk','Samus','Richter','Sandro'),
('Single',36,'Pichu','Shulk','Samus','Incineroar','Ale'),
('Single',35,'Pichu','Shulk','Samus','Ridley','Leo'),
('Single',34,'Pichu','Cloud','Samus','Mewtwo','Ale'),
('Single',33,'Pichu','Duo Duck Hunt','Samus','Mewtwo','Sandro'),
('Single',32,'Pichu','Fox','Samus Oscura','Spadaccino Mii','Siwei'),
('Single',31,'Kirby','Ness','Ice Climbers','Pit','Ale'),
('Single',30,'Kirby','Pac-Man','Samus','King K. Rool','Ale'),
('Single',29,'Kirby','Daraen','Samus','Ganondorf','Sandro'),
('Single',28,'Kirby','Shulk','Samus Oscura','Richter','Leo'),
('Single',27,'Kirby','Jigglypuff','Samus','Pit','Leo'),
('Single',26,'Pichu','Donkey Kong','Samus','Pit','Sandro'),
('Single',25,'Pichu','Donkey Kong','Ice Climbers','Richter','Leo'),
('Single',24,'Pichu','Mega Man','Snake','King K. Rool','Ale'),
('Single',23,'Pichu','Ragazza Inkling','Link','Pit','Leo'),
('Single',22,'Pichu','Wolf','Samus','Pit','Sandro'),
('Single',21,'Pichu','Captain Falcon','Samus Oscura','Pit Oscuro','Sandro'),
('Single',20,'Pichu','Donkey Kong','Samus','Ridley','Ale'),
('Single',19,'Kirby','Pac-Man','Ryu','Ganondorf','Ale'),
('Single',18,'Kirby','Pac-Man','King Dedede','Ganondorf','Leo'),
('Single',17,'Kirby','Snake','Greninja','King K. Rool','Siwei'),
('Single',16,'Kirby','Shulk','Bowser Junior','Spadaccino Mii','Leo');
insert into smash values('Team',17,'Kirby','Duo Duck Hunt','Corrin','Spadaccino Mii','Ale','Siwei'),
('Team',16,'Duo Duck Hunt','Mr. Game & Watch','Corrin','Ridley','Leo','Siwei'),
('Team',15,'Duo Duck Hunt','Little Mac','Corrin','Lottatore Mii','Sandro','Ale'),
('Team',14,'Meta Knight','Snake','Corrin','Pit Oscuro','Sandro','Siwei'),
('Team',13,'Meta Knight','Palutena','R.O.B.','Lucina','Sandro','Ale'),
('Team',12,'Meta Knight','Donkey Kong','R.O.B.','Ganondorf','Sandro','Ale'),
('Team',11,'Meta Knight','Shulk','R.O.B.','King K. Rool','Ale','Leo'),
('Team',10,'Meta Knight','Fuciliere Mii','Corrin','Lottatore Mii','Sandro','Ale'),
('Team',9,'Pichu','Donkey Kong','R.O.B.','Ganondorf','Leo','Siwei'),
('Team',8,'Pichu','Donkey Kong','Corrin','Ganondorf','Sandro','Leo'),
('Team',7,'Pichu','Duo Duck Hunt','Bowser','Richter','Ale','Leo'),
('Team',6,'Pichu','Daraen','R.O.B.','King K. Rool','Sandro','Siwei'),
('Team',5,'Pichu','Ryu','Corrin','Pit','Sandro','Leo'),
('Team',4,'Pichu','Donkey Kong','R.O.B.','Ganondorf','Leo','Siwei'),
('Team',3,'Pichu','Palutena','R.O.B.','Ganondorf','Sandro','Leo'),
('Team',2,'Pichu','Chrom','R.O.B.','Richter','Sandro','Siwei'),
('Team',1,'Pichu','Duo Duck Hunt','King Dedede','Pit','Ale','Leo');
insert into smash values('Single',15,'Kirby','Ryu','King Dedede','Pit Oscuro','Ale'),
('Single',14,'Pichu','Donkey Kong','King Dedede','Pit Oscuro','Sandro'),
('Single',13,'Pichu','Donkey Kong','Fox','Pit Oscuro','Ale'),
('Single',12,'Pichu','Wolf','Palutena','Pit','Ale'),
('Single',11,'Pichu','Snake','Daraen','Ganondorf','Sandro'),
('Single',10,'Pichu','Greninja','Cloud','Lottatore Mii','Leo'),
('Single',9,'Pichu','Duo Duck Hunt','King Dedede','Ridley','Siwei'),
('Single',8,'Pichu','Little Mac','Pit','Ganondorf','Ale'),
('Single',7,'Pichu','Little Mac','Bowser Junior','Spadaccino Mii','Sandro'),
('Single',6,'Pichu','Lucas','Ridley','Corrin','Leo'),
('Single',5,'Pichu','Duo Duck Hunt','Shulk','Spadaccino Mii','Leo'),
('Single',4,'Kirby','Ragazza Inkling','King Dedede','Samus','Ale'),
('Single',3,'Kirby','Link','R.O.B.','Richter','Ale'),
('Single',2,'Kirby','Duo Duck Hunt','King Dedede','Ganondorf','Leo'),
('Single',1,'Kirby','Duo Duck Hunt','King Dedede','Ganondorf','Leo');
*/