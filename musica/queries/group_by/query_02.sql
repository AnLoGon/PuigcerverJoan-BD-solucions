select gm.nom, count(ag.dni_artista) nombre_components
from grup_musical gm
inner join artista_grup ag
	on gm.id_grup_musical = ag.id_grup_musical
group by gm.id_grup_musical
having nombre_components > 2
order by nombre_components desc, gm.nom;
