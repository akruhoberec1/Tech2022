drop database if exists postolar;
create database postolar default character set utf8;
use postolar;

create table korisnik(
id int not null primary key auto_increment,
ime varchar(60),
prezime varchar(60),
adresa varchar(120)
);

create table obuca(
id int not null primary key auto_increment,
vrsta varchar(59),
korisnik int not null
);

create table zaposleni(
id int not null primary key auto_increment,
ime varchar(60),
prezime varchar(60),
radnomjesto varchar(20)
);

create table popravak(
obuca int not null,
cijena int(10),
zaposleni int not NULL
);


alter table popravak add foreign key (obuca) references obuca(id);
alter table popravak add foreign key (zaposleni) references zaposleni(id);
alter table obuca add foreign key (korisnik) references korisnik(id);