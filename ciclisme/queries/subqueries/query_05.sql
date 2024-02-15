use ciclisme;

select c.dorsal, c.nom
from port_muntanya p
inner join ciclista c
    on p.ciclista_guanyador = c.dorsal
where p.altura = (
    select max(altura)
    from port_muntanya
)
order by c.dorsal;
