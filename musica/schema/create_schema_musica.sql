drop database if exists musica;
create database musica;
use musica;

create table `canço` (
  `id_canço` int primary key,
  `titol` varchar(30) not null,
  `duracio` int
);

create table `companyia_productora` (
  `id_productora` int primary key,
  `nom` varchar(30) not null,
  `direccio` varchar(30),
  `fax` varchar(10),
  `telefon` varchar(10)
);

create table `grup_musical` (
  `id_grup_musical` int primary key,
  `nom` varchar(30) not null,
  `data_fundacio` date,
  `pais` varchar(30)
);

create table `album` (
  `id_album` int primary key,
  `nom` varchar(30) not null,
  `data_publicacio` date,
  `id_productora` int not null,
  `id_grup_musical` int not null,
  foreign key (`id_productora`) references `companyia_productora`(`id_productora`),
  foreign key (`id_grup_musical`) references `grup_musical`(`id_grup_musical`)
);

create table `canço_album` (
  `id_canço` int,
  `id_album` int,
  primary key(id_canço, id_album),
  foreign key (`id_canço`) references `canço`(`id_canço`),
  foreign key (`id_album`) references `album`(`id_album`)
);

create table `artista` (
  `dni` varchar(10) primary key,
  `nom` varchar(30) not null
);

create table `artista_grup` (
  `dni_artista` varchar(10),
  `id_grup_musical` int,
  `rol` varchar(20),
  primary key(dni_artista, id_grup_musical),
  foreign key (`dni_artista`) references `artista`(`dni`),
  foreign key (`id_grup_musical`) references `grup_musical`(`id_grup_musical`)
);

create table `club_fans` (
  `id_club_fans` int primary key,
  `nom` varchar(30) not null,
  `direccio` varchar(30),
  `nombre_membres` int unsigned,
  `id_grup_musical` int not null,
  foreign key (`id_grup_musical`) references `grup_musical`(`id_grup_musical`)
);
