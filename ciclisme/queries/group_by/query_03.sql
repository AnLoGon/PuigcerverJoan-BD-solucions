use ciclisme;

select e.nom equip, count(c.dorsal) ciclistes
from equip e
left join ciclista c
    on c.equip = e.nom
group by e.nom
order by e.nom;
