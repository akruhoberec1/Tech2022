drop database if exists frizeraj;
create database frizeraj default character set utf8;
use frizeraj;

create table rezervacija(
id int not null primary key auto_increment,
datumvrijeme NULL,
usluga int not NULL,
zaposlenici int not null,
korisnici int not null
);

create table osoba(
idosobe int not null primary key auto_increment,
imepre varchar(60),
spol CHAR(1),
oib int(11)
);

create table zaposlenici(
iddjelatnik int not null primary key auto_increment,
osoba int not NULL,
iban varchar(20)
);

create table korisnici(
idklijent int not null primary key auto_increment,
osoba int not NULL
);

create table usluge(
sifra int not null primary key auto_increment,
naziv varchar(60),
cijena DECIMAL(18,2) DEFAULT 5000
);
