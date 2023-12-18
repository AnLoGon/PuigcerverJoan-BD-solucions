use musica;

select distinct a.nom
from album a
inner join canço_album ca
    on ca.id_album = a.id_album
inner join canço c
    on ca.id_canço = c.id_canço
where c.duracio > 5
order by a.nom;
