use ciclisme;

select c.nom
from ciclista c
inner join port_muntanya p
    on p.ciclista_guanyador = c.dorsal
group by c.dorsal
having count(p.ciclista_guanyador) > 1
order by c.nom;
