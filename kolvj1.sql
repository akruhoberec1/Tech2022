# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < E:\tecaj\Vjezbadb\kolvj1.sql 

drop database if exists vjezba1;
create database vjezba1 DEFAULT CHARACTER SET utf8mb4;
use vjezba1;

create table sestra(
sifra int not null primary key auto_increment,
introvertno bit,
haljina varchar(31) not null,
maraka decimal(16,6),
hlace varchar(46) not null,
narukvica int not NULL
);

create table zena(
sifra int not null primary key auto_increment,
treciputa datetime,
hlace varchar(46),
kratkamajica varchar(31) not null,
jmbag char(11) not null,
bojaociju  varchar(39) not null,
haljina varchar(44),
sestra int not NULL
);

create table muskarac(
sifra int not null primary key auto_increment,
bojaociju varchar(50) not NULL,
hlace varchar(30),
modelnaocala varchar(43),
maraka decimal(14,5) not NULL,
zena int not NULL
);

create table mladic(
sifra int not null primary key auto_increment,
suknja varchar(50) not NULL,
kuna decimal(16,8) not NULL,
drugiputa datetime,
asocijalno bit,
ekstrovertno bit not null,
dukserica varchar(48) not null,
muskarac int
);

create table svekar(
sifra int not null primary key auto_increment,
bojaociju varchar(40) not null,
prstena int,
dukserica varchar(41),
lipa decimal(13,8),
eura decimal(12,7),
majica varchar(35)
);

create table cura(
sifra int not null primary key auto_increment,
novcica decimal(16,5) not null,
gustoca decimal (18,6) not null,
lipa decimal(13,10),
ogrlica int not null,
bojakose varchar(38),
suknja varchar(36),
punac int
);

create table punac(
sifra int not null primary key auto_increment,
ogrlica int,
gustoca decimal(14,9),
hlace varchar(41)
);

create table sestra_svekar(
sifra int not null primary key auto_increment,
sestra int not null,
svekar int not null
);

alter table sestra_svekar add foreign key (sestra) references sestra(sifra);
alter table sestra_svekar add foreign key (svekar) references svekar(sifra);
alter table zena add foreign key (sestra) references sestra(sifra);
alter table muskarac add foreign key (zena) references zena(sifra);
alter table mladic add foreign key (muskarac) references muskarac(sifra);
alter table cura add foreign key (punac) references punac(sifra);



insert into sestra values (1,true, 'svecana', 100.56, 'haljinaste', 123);
insert into sestra values (2,true, 'karirana', 86.28, 'karirane', 321);
insert into sestra values (3,true, 'ljetna', 20.18, 'samptane', 654);

insert into zena(sifra,kratkamajica,jmbag,bojaociju,sestra) values 
(1,'cropp','95874621304','kesten',2),
(2, 'njujorker','45872468746','zelena',1),
(3,'stradivarius','45876125487','crna',3);

insert into muskarac(sifra,bojaociju,maraka,zena) values
(1,'zelena',16.25,2),
(2,'smeđa',18.68,1),
(3,'siva',15.98,3);


insert into mladic(sifra,suknja,kuna,ekstrovertno,dukserica,muskarac) values 
(1,'armani', 16.58, true, 'nike', 2);

select * from zena; 

insert into svekar(sifra,bojaociju) values
(1,'crvena'),
(2,'bež'),
(3,'grej');

insert into sestra_svekar(sestra,svekar) values
(1,2),
(1,3),
(3,1);

update cura set gustoca=15.77;

delete from mladic where kuna>15.78;

select * from mladic;

select kratkamajica,hlace from zena where hlace like '%ana%';

update muskarac set hlace='giorgio' where sifra=1;
update muskarac set hlace='zentix' where sifra=2;
update muskarac set hlace='armani' where sifra=3;

update zena set hlace='giorgio' where sifra=1;
update zena set hlace='zentix' where sifra=2;
update zena set hlace='anarmani' where sifra=3;
update zena set hlace='reddevil' where sifra=4;

select * from muskarac;

insert into zena(sifra,kratkamajica,jmbag,bojaociju,sestra) values 
(4,'lijuana','45879687216','sarena',3);

select b.hlace, a.ekstrovertno, c.hlace, c.kratkamajica
from 
mladic a inner join muskarac b
on a.muskarac = b.sifra
inner join zena c
on b.zena=c.sifra
inner join sestra d 
on c.sestra =d.sifra
where b.sifra = 1;