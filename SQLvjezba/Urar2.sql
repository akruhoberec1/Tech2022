drop database if exists urar;
create database urar default character set utf8;
use urar;

create table sat(
id int not null primary key auto_increment,
marka varchar(40),
model varchar(20),
godiste int(5),
korisnik int not NULL
);

create table korisnik(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
mobitel VARCHAR(20),
email varchar(120)
);

create table postolar(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
mobitel VARCHAR(20),
email varchar(120)
);

create table servis(
sat int not null,
zaposleni int not null,
cijena decimal(18, 2),
segrt BOOLEAN
);

alter table sat add foreign key (korisnik) references korisnik(id);
alter table servis add foreign key (sat) references sat(id);
alter table servis add foreign key (zaposleni) references postolar(id);
