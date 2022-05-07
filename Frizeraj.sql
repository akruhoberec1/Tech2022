drop database if exists frizeraj;
create database frizeraj;
use frizeraj;

create table usluge(
sifra int(1),
naziv varchar(60),
cijena DECIMAL(4,2)
);

create table rezervacija(
sifra int(1),
datum DATE(DEFAULT),
vrijeme time(DEFAULT),
usluga int(1)
);

create table osoba(
idosobe int(1),
imepre varchar(60),
spol CHAR(1),
oib int(11)
);

create table zaposlenici(
iddjelatnik int(1),
osoba int(1),
iban varchar(20),
rezervacija int(1)
);

create table korisnici(
idklijent int(1),
osoba int(1),
rezervacija int(1)
);

