use ciclisme;

select p.nom, p.categoria
from port_muntanya p
inner join ciclista c
    on p.ciclista_guanyador = c.dorsal
where c.equip = "Banesto"
order by p.nom;
