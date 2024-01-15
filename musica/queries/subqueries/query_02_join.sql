use musica;

select count(distinct(a.id_album)) nombre_albums
from album a
inner join grup_musical gm
	on a.id_grup_musical = gm.id_grup_musical
inner join club_fans cf
	on gm.id_grup_musical = cf.id_grup_musical
where cf.nombre_membres >= 5000;
