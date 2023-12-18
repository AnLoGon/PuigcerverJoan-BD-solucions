use musica;

select distinct c.titol
from canço c
inner join canço_album ca
    on c.id_canço = ca.id_canço
inner join album a
    on ca.id_album = a.id_album
inner join grup_musical gm
    on a.id_grup_musical = gm.id_grup_musical
where gm.pais = "Espanya" and c.duracio = 4
order by c.titol;
