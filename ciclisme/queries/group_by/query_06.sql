use ciclisme;

select e.nom, avg(c.edat) edat_mitjana
from equip e
inner join ciclista c
    on c.equip = e.nom
group by e.nom
having avg(c.edat) = (
    select max(a.edat_mitjana)
    from (
      select avg(c2.edat) edat_mitjana
      from equip e2
      inner join ciclista c2
          on c2.equip = e2.nom
      group by e2.nom
    ) a
)
order by e.nom;
