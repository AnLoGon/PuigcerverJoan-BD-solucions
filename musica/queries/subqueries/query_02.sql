use musica;

select count(a.id_album) nombre_albums
from album a
where a.id_grup_musical in (
	select distinct cf.id_grup_musical
	from club_fans cf
	where cf.nombre_membres >= 5000
)
order by a.id_album;
