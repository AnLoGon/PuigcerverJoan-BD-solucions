select gm.nom, sum(cf.nombre_membres) nombre_fans
from grup_musical gm
inner join club_fans cf
	on cf.id_grup_musical = gm.id_grup_musical
where gm.pais = "Espanya"
group by gm.id_grup_musical
order by gm.nom;
