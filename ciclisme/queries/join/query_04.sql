use ciclisme;

select distinct c.nom nom_ciclista, m.color color_mallot
from porta p
inner join ciclista c
    on p.dorsal_ciclista = c.dorsal
inner join mallot m
    on p.id_mallot = m.id_mallot
order by nom_ciclista, color_mallot;
