use musica;

select distinct c.nom, c.direccio 
from companyia_productora c 
inner join album a 
    on a.id_productora = c.id_productora
where a.nom like "A%"
order by c.nom;
