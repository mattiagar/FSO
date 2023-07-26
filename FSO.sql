drop database if exists FSO;
create database FSO;
use FSO;

create table Collocamento(
 id_prodotto varchar(45) references Prodotto(titolo_Prodotto),
  id_fattura int references Fattura(id_fattura),
  pezzi int,
primary key(id_prodotto,id_fattura)
);


create table fattura(
  id_fattura int auto_increment,
  data_acquisto date ,
  username varchar(45) references utente(username),
  iban varchar(45) ,
  primary key (id_fattura)
);

CREATE TABLE Prodotto(
titolo_prodotto varchar(45) ,
prezzo_prodotto double ,
descrizione_prodotto varchar(5000) ,
anno_prodotto char(4),
assunzione varchar(45) ,
casafarmaceutica varchar(45) ,
url varchar(45) not null,
in_sconto boolean not null,
prezzo_scont_prodotto double,
genere varchar(45),
in_vendita boolean,
nome_immagine varchar(45),
numero_vendite int default 100 not null,
  primary key(titolo_prodotto)
);

create table utente(
	username varchar(255) not null,
    pass varchar(255) not null,
    provincia varchar(2) not null,
    citta varchar(255) not null,
    via varchar(255) not null,
    telefono long not null,
    iban varchar(27),
    primary key(username, pass)
);


insert into utente values
('genn09', 'calcare00', 'NA', 'san paolo', 'vincenzo gemito', 3289876431, 'IT99C1987654329012345678902'),
('mariolino', 'bradipi99', 'SA', 'mercato san severino', 'cirtcumvallazione', 3299918431, 'IT89S1234567689012345678902'),
('armandino88', 'patatiness', 'SA', 'baronissi', 'vittorio emanuele', 3275432201, 'IT01C789654389012345678902'),
('cucciolone70', 'mammaaaaaaaa', 'SA', 'baronissi', 'vittorio emanuele', 3256784431, 'IT01C9987765543321166778654'),
('armandino88', 'giornataccia', 'AV', 'avellino', 'san sebastiano', 3456789011, 'IT01C000099889012345678902'),
('beatrice69', 'bestiolinabbb', 'SA', 'baronissi', 'vittorio emanuele', 3987654321, 'IT01C789654389010000000099'),
('carlino01', 'occhialidasole', 'SA', 'mercato s.severino', 'circumvallazione', 3289007864, 'IT01C789654389019090909090'),
('matti01', 'monellone', 'SA', 'baronissi', 'vittorio emanuele', 3289099999, 'IT01S709876767662345678902'),
('antoLeader', 'capitanoccc', 'NA', 'san paolo', 'feudo', 3256787766, 'IT09T4567665433789099887767'),
('root', 'root', 'NA', 'san paolo', 'feudo', 123456787, 'asdasd'),
('admin', 'admin', 'SA', 'baronissi', 'vittorio emanuele', 3099998883, 'IT02G789658888882340098772')
;

insert into Prodotto values
('Tachipirina','4.35','Tachipirina Bambini 10% Gocce si usa come antipiretico e come analgesico per di varia origine.','2023','Gocce','Angelini','tachipirina',false,null,'Medicinale',false,'tachipirina','456'),
('Massigen', 5.00, 'Integratore di magnesio e potassio senza l aggiunta di zuccheri. ', '2023', 'Da sciogliere in acqua.', 'Marco Viti', 'massigen', true, 1, 'Medicinale', true, 'massigen','378'),
('Oki',10.80, 'Okitask si utilizza nel trattamento dei dolori di diversa origine e natura, ed in particolare: mal di testa e mal di denti.', 2023, 'Via orale', 'Oki', 'oki', false, null, 'Medicinale', true, 'oki', 510 ),
('Bronchenolo','12.90','Bronchenolo Sedativo e Fluidificante è uno sciroppo formulato per calmare la tosse.',2023,'Gocce','Perrigo','bronchenolo',true,6,'Medicinale',true,'bronchenolo','200'),
('Fexallegra','11.80','Fexallegra, antistaminico che ha un’azione rapida e prolungata contro i sintomi della rinite allergica stagionale, senza indurre sonnolenza.','2023','Gocce','Argan','vitaminaC',false,null,'Essenza',true,'vitaminaC','170'), 
('OLIO DI ARGAN + VITAMINA c (TOCOPHEROL 70%)','6.70','Il tuo viso è la tua carta d identità, e non c è niente di meglio che prendersene cura con i migliori prodotti per la pelle.',2023,'Gocce','ESSENZE','vitaminaC',true,3,'Essenza',true,'vitaminaC','170'),
('OLIO DI ARGAN + VITAMINA E (TOCOPHEROL 70%)','6.70','Il kit di bellezza per una pelle protetta e idratata.',2023,'Gocce','Argan','vitaminaE',false,null,'Essenza',true,'vitaminaE','70')
;

insert into Fattura values 
(62,'2022-05-22','root','1234512345123456'),
(63,'2022-05-23','matti01','1234512345123456'),
(64,'2022-05-21','carlino01','1234512345123456'),
(65,'2022-05-21','carlino01','1234512345123456'),
(66,'2022-05-27','mariolino01','1234512345123456'),
(67,'2022-05-27','mariolino01','1234512345123456'),
(68,'2022-05-27','mariolino01','1234512345123456')
;

 insert into Collocamento values 
 ('Oki',62,1),
 ('Massigen',63,1),
 ('Bronchenolo', 64,2),
 ('Fexallegra',66,3)
 ;
