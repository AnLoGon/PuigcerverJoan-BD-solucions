use ciclisme;

select distinct e.entrenador
from equip e
inner join ciclista c
    on c.equip = e.nom
inner join porta p
    on p.dorsal_ciclista = c.dorsal
group by e.nom
having count(p.id_mallot) >= ALL (
    select count(p2.id_mallot)
    from equip e2
    inner join ciclista c2
        on c2.equip = e2.nom
    inner join porta p2
        on p2.dorsal_ciclista = c2.dorsal
    group by e2.nom
)
order by e.entrenador;
