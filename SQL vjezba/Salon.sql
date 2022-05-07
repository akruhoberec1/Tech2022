drop database if exists salon;
create database salon default character set utf8;
use salon;

create table osoba(
id int not null primary key auto_increment,
ime varchar(60) not NULL,
prezime varchar(60) not NULL,
oib int(11) not NULL check(len(oib)=11),
email varchar(100) not NULL check(email like '%_@__%.__%')
brtel varchar(15) not NULL
);

create table djelatnice(
iddjel int not null primary key auto_increment,
osoba int not null
);

create table korisnici(
idkor int not null primary key auto_increment,
osoba int not NULL
);

create table usluge(
id int not null primary key auto_increment,
djelatnice int not null,
korisnici int not null,
cijena decimal(18, 2) default 1500,
vrijeme smalldatetime NULL
);

