use musica;

select c.titol 
from canço c 
inner join canço_album ca 
    on c.id_canço = ca.id_canço 
inner join album a
    on ca.id_album = a.id_album
where c.titol = a.nom
order by c.titol;
