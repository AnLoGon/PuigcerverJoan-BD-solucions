use ciclisme;

select distinct e.nom, e.entrenador
from equip e
inner join ciclista c
    on e.nom = c.equip
where c.edat > 33
order by e.nom;
