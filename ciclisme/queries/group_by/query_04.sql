use ciclisme;

select e.nom, e.entrenador
from equip e
inner join ciclista c
    on c.equip = e.nom
group by(e.nom)
having count(c.dorsal) > 3 and avg(c.edat) <= 30
order by e.nom;
