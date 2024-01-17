use ciclisme;

select id_etapa, inici, final
from etapa
where inici = final
order by id_etapa;
