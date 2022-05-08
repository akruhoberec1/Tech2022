drop database if exists azil;
create database azil default character set utf8;
use azil;

create table osoba(
id int not null primary key auto_increment,
ime varchar(60),
prezime varchar(60),
oib int(11),
sticenik int not NULL
);

create table prostor(
id int not null primary key auto_increment,
naziv VARCHAR(50),
kvadratura decimal(18, 2)
);

create table zivotinja(
id int not null primary key auto_increment,
naziv varchar(60),
prostor id not NULL
);

create table sticenik(
id int not null primary key auto_increment,
ime varchar(60),
agresivan BOOLEAN,
zivotinja int not null
);
