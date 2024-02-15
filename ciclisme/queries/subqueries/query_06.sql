use ciclisme;

select c.nom
from ciclista c
where c.edat = (
    select min(edat)
    from ciclista
)
order by c.nom;
