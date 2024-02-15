use ciclisme;

select c.nom
from ciclista c
inner join etapa e
    on e.ciclista_guanyador = c.dorsal
where c.edat = (
    select min(c2.edat)
    from ciclista c2
    inner join etapa e2
        on e2.ciclista_guanyador = c2.dorsal
)
order by c.nom;
