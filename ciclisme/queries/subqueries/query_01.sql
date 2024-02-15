use ciclisme;

select id_etapa etapa, inici
from etapa
where id_etapa not in (
    select id_etapa
    from port_muntanya
)
order by id_etapa;
