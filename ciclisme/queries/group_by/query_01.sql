use ciclisme;

select e.id_etapa etapa, count(p.nom) ports_muntanya
from etapa e
inner join port_muntanya p
    on p.id_etapa = e.id_etapa
group by e.id_etapa
order by e.id_etapa;
