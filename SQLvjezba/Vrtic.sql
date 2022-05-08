drop database if exists vrtic;
create database vrtic default character set utf8;
use vrtic;

create table osoba(
id int not null primary key auto_increment,
ime varchar(60),
prezime varchar(60),
oib int(11),
dob int(2)
);

create table djeca(
id int not null primary key auto_increment,
osoba int not NULL
);

create table ss(
id int not null primary key auto_increment,
naziv varchar(100),
short varchar(15)
);

create table skupina(
id int not null primary key auto_increment,
naziv varchar(30),
djeca int not null
);

create table odgajateljice(
id int not null primary key auto_increment,
osoba int not null,
ss int not null,
skupina int not NULL
);

alter table djeca add foreign key (osoba) references osoba(id);
alter table skupina add foreign key (djeca) references djeca(id);
alter table odgajateljice add foreign key (osoba) references osoba(id);
alter table odgajateljice add foreign key (ss) references ss(id);
alter table odgajateljice add foreign key (skupina) references skupina(id);

