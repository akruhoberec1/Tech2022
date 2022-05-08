drop database if exists taxi;
create database taxi default character set utf8;
use taxi;

create table vozilo(
id int not null primary key auto_increment,
naziv varchar(50),
reg varchar(20),
putnika int(2)
);

create table vozac(
id int not null primary key auto_increment,
ime varchar(60),
prezime varchar(60),
iban varchar(20),
vozilo int not NULL
);

create table putnik(
id int not null primary key auto_increment,
username varchar(20)
);

create table voznje(
id int not null primary key auto_increment,
vozac int not null,
putnik int not NULL
);

alter table voznje add foreign key (vozac) references vozac(id);
alter table voznje add foreign key (putnik) references putnik(id);
alter table vozac add foreign key (vozilo) references vozilo(id);
