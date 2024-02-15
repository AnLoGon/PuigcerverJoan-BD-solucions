use ciclisme;

select e.inici, e.final
from etapa e
where e.id_etapa in (
    select p.id_etapa
    from port_muntanya p
    where p.pendent = (
        select max(pendent)
        from port_muntanya
    )
)
order by e.inici, e.final;
