use ciclisme;

select p.nom, e.id_etapa as etapa, e.km
from port_muntanya p
inner join etapa e
    on p.id_etapa = e.id_etapa
order by p.nom;
