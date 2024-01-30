select gm.nom, count(a.id_album) nombre_albums
from grup_musical gm
inner join album a
	on a.id_grup_musical = gm.id_grup_musical
group by gm.id_grup_musical;
