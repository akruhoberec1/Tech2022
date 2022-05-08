drop database if exists muzej;
create database muzej default character set utf8;
use muzej;

create table kustos(
id int not null primary key auto_increment,
imeprezime varchar(80),
titula varchar(80),
iban varchar(15)
);

create table sponzor(
id int not null primary key auto_increment,
naziv varchar(120),
logo varchar(120)
);

create table djela(
id int not null primary key auto_increment,
naziv varchar(120),
autor varchar(120),
godina int(5)
);

create table izlozba(
naziv varchar(240),
djela int not null,
kustos int not null,
sponzor int not null
);

alter table izlozba add foreign key (djela) references djela(id);
alter table izlozba add foreign key (kustos) references kustos(id);
alter table izlozba add foreign key (sponzor) references sponzor(id);
