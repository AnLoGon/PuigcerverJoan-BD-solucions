use ciclisme;

select c.nom, count(e.ciclista_guanyador) etapes_guanyades
from ciclista c
inner join etapa e
    on e.ciclista_guanyador = c.dorsal
where c.equip in (
    select eq.nom
    from equip eq
    inner join ciclista c2
        on c2.equip = eq.nom
    group by eq.nom
    having count(c2.dorsal) > 5
)
group by c.dorsal
having etapes_guanyades >= 1
order by c.nom;
