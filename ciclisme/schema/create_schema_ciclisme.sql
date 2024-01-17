drop database if exists ciclisme;
create database ciclisme;
use ciclisme;

create table equip (
	nom varchar(25) primary key,
    entrenador varchar(50) not null
);

create table ciclista (
	dorsal int unsigned primary key,
    nom varchar(50) not null,
    edat int unsigned not null,
    equip varchar(25) not null,
    foreign key (equip) references equip (nom)
);

create table etapa (
	id_etapa int primary key auto_increment,
    inici varchar(50) not null,
    final varchar(50) not null,
    km int unsigned not null,
    ciclista_guanyador int unsigned not null,
    foreign key (ciclista_guanyador) references ciclista (dorsal)
);

create table port_muntanya (
	nom varchar(30) primary key,
    altura int unsigned not null,
    categoria enum('E', '1', '2', '3') not null,
    pendent decimal(4, 2) not null check (pendent >= 0 and pendent <= 100),
    id_etapa int not null,
    ciclista_guanyador int unsigned not null,
    foreign key (id_etapa) references etapa (id_etapa),
    foreign key (ciclista_guanyador) references ciclista (dorsal)
);

create table mallot (
	id_mallot char(3) primary key,
    color varchar(30) not null,
    tipus varchar(30) not null,
    premi int unsigned not null
);

create table porta (
	dorsal_ciclista int unsigned not null,
    id_etapa int not null,
    id_mallot char(3) not null,
    primary key(id_etapa, id_mallot),
    foreign key (dorsal_ciclista) references ciclista (dorsal),
    foreign key (id_etapa) references etapa (id_etapa),
    foreign key (id_mallot) references mallot (id_mallot)
);
