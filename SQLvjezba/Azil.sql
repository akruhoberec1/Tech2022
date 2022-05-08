drop database if exists azil;
create database azil default character set utf8;
use azil;

create table osoba(
id int not null primary key auto_increment,
ime varchar(60),
prezime varchar(60),
oib int(11)
);

create table zivotinja(
id int not null primary key auto_increment,
naziv varchar(60)
);

create table prostor(
id int not null primary key auto_increment,
naziv VARCHAR(50),
kvadratura decimal(18, 2),
zivotinja int not NULL
);

create table sticenik(
id int not null primary key auto_increment,
ime varchar(60),
agresivan BOOLEAN,
zivotinja int not null,
osoba int not null,
prostor int not NULL
);

alter table sticenik add foreign key (zivotinja) references zivotinja(id);
alter table sticenik add foreign key (osoba) references osoba(id);
alter table sticenik add foreign key (prostor) references prostor(id);

alter table prostor add foreign key (zivotinja) references zivotinja(id);


