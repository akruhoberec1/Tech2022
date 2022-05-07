drop database if exists frizeraj;
create database frizeraj default character set utf8;
use frizeraj;


create table osoba(
id int not null primary key auto_increment,
imepre varchar(60),
spol CHAR(1),
oib int(11)
);

create table zaposlenici(
id int not null primary key auto_increment,
osoba int not NULL,
iban varchar(20)
);

create table korisnici(
id int not null primary key auto_increment,
osoba int not NULL
);

create table usluge(
id int not null primary key auto_increment,
naziv varchar(60),
cijena DECIMAL(18,2) DEFAULT 5000
);

create table rezervacija(
datumvrijeme smalldatetime NULL,
usluge int not NULL,
zaposlenici int NOT NULL,
korisnici int not NULL
);


