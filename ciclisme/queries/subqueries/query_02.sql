use ciclisme;

select avg(edat) edat_mitjana
from ciclista c
where c.dorsal in (
    select distinct s.ciclista_guanyador
    from etapa s
);
