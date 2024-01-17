use ciclisme;

select e1.id_etapa
from etapa e1
inner join etapa e2
    on e1.id_etapa - 1 = e2.id_etapa
where e1.inici != e2.final
order by e1.id_etapa;
