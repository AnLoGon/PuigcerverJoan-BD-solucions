use ciclisme;

select p.nom
from port_muntanya p
where p.altura > (
    select avg(altura)
    from port_muntanya
)
order by p.nom;
