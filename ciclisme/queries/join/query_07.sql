use ciclisme;

select distinct c.nom, e.id_etapa etapa
from ciclista c
inner join etapa e
    on e.ciclista_guanyador = c.dorsal
inner join porta p
    on p.dorsal_ciclista = c.dorsal and p.id_etapa = e.id_etapa
inner join mallot m
    on p.id_mallot = m.id_mallot
where m.color = "Groc"
order by c.nom;
