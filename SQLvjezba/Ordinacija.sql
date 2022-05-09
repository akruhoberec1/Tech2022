drop database if exists ordinacija;
create database ordinacija default character set utf8;
use ordinacija;

create table osoba(
id int not null primary key auto_increment,
ime varchar(60),
prezime varchar(60),
kontakt varchar(120)
);

create table doktori(
id int not null primary key auto_increment,
osoba int not null,
sestra int not null,
spec varchar(20)
);

create table sestre(
id int not null primary key auto_increment,
osoba int not null,
iban varchar(20)
);

create table pacijent(
id int not null primary key auto_increment,
osoba int not null,
rodjen date null
);


create table lijecenje(
doktor int not null,
pacijent int not null,
pocetak date NULL,
opis varchar(500),
uspjeh BOOL
);

alter table lijecenje add foreign key (doktor) references doktori(id);
alter table doktori add foreign key (sestra) references sestre(id);
alter table lijecenje add foreign key (pacijent) references pacijent(id);

alter table doktori add foreign key (osoba) references osoba(id);
alter table sestre add foreign key (osoba) references osoba(id);
alter table pacijent add foreign key (osoba) references osoba(id);