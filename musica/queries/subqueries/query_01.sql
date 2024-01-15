use musica;

select a.nom
from album a
inner join grup_musical gm
	on a.id_grup_musical = gm.id_grup_musical
where gm.data_fundacio = (
	select min(data_fundacio)
	from grup_musical
)
order by a.nom;
