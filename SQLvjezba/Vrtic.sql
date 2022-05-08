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
osoba int not NULL,
skupina int not null
);

create table ss(
id int not null primary key auto_increment,
naziv varchar(100)
);

create table skupina(
id int not null primary key auto_increment,
naziv varchar(30)
);

create table odgajateljice(
id int not null primary key auto_increment,
osoba int not null,
ss int not null,
skupina int not NULL
);

