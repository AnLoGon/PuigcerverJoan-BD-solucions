drop database if exists institut;
create database institut;
use institut;

create table familia_professional (
    id_familia int primary key auto_increment,
    nom varchar(100) not null unique key
);

create table cicle_formatiu (
    id_cicle int primary key auto_increment,
    id_familia int not null,
    nom varchar(100) not null unique key,
    sigles varchar(5) not null unique key,
    nivell enum('fpb', 'gm', 'gs', 'ce') not null,
    foreign key (id_familia) references familia_professional (id_familia)
);

create table especialitat (
    id_especialitat char(3) primary key,
    nom varchar(100) not null unique key,
    sigles varchar(5) not null unique key,
    cos varchar(50) not null
);

create table modul_professional (
    id_modul varchar(6) primary key,
    id_especialitat char(3),
    nom varchar(100) not null,
    sigles varchar(10) not null,
    hores int unsigned not null,
    hores_setmanals int unsigned,
    ects int unsigned not null,
    foreign key (id_especialitat) references especialitat(id_especialitat)
);

create table cicle_modul (
    id_cicle int,
    id_modul varchar(6),
    curs int unsigned not null,
    primary key (id_cicle, id_modul),
    foreign key (id_cicle) references cicle_formatiu (id_cicle),
    foreign key (id_modul) references modul_professional (id_modul)
);

create table persona (
    dni varchar(10) primary key,
    nom varchar(50) not null,
    cognoms varchar(50) not null,
    data_naixement date not null,
    telefon varchar(20),
    correu_personal varchar(50),
    correu_corporatiu varchar(50)
);

create table professor (
    dni varchar(10) primary key,
    id_especialitat char(3) not null,
    foreign key (dni) references persona (dni),
    foreign key (id_especialitat) references especialitat (id_especialitat)
);

create table grup (
    id_cicle int,
    curs int unsigned,
    lletra char default "",
    semipresencial boolean default false,
    dni_tutor varchar(10) not null unique,
    primary key (id_cicle, curs, lletra, semipresencial),
    foreign key (id_cicle) references cicle_formatiu (id_cicle),
    foreign key (dni_tutor) references professor (dni)
);

create table estudiant (
    nia varchar(8) primary key,
    dni varchar(10) not null unique,
    id_cicle int,
    lletra_grup char default "",
    curs int unsigned,
    semipresencial boolean default false,
    foreign key (dni) references persona (dni),
    foreign key (id_cicle, curs, lletra_grup, semipresencial) references grup (id_cicle, curs, lletra, semipresencial)
);

create table cursa (
    nia varchar(8),
    id_modul varchar(6),
    curs_academic char(5),
    nota decimal(4,2) check (nota >= 0 and nota <= 10),
    primary key (nia, id_modul, curs_academic),
    foreign key (nia) references estudiant (nia),
    foreign key (id_modul) references modul_professional (id_modul)
);

create table imparteix (
    dni_professor varchar(10),
    id_modul varchar(6),
    id_cicle int,
    curs int unsigned,
    lletra_grup char default "",
    semipresencial boolean default false,
    curs_academic char(5),
    primary key (dni_professor, id_modul, id_cicle, curs, lletra_grup, semipresencial, curs_academic),
    foreign key (dni_professor) references professor (dni),
    foreign key (id_modul) references modul_professional (id_modul),
    foreign key (id_cicle, curs, lletra_grup, semipresencial) references grup (id_cicle, curs, lletra, semipresencial)
);
