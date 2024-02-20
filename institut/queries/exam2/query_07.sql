select p.nom, p.cognoms, avg(c.nota) as nota_mitjana
from persona p
inner join estudiant e
    on p.dni = e.dni
inner join cursa c
    on e.nia = c.nia
where c.curs_academic = "23/24" and 5 <= all(
    select c2.nota
    from cursa c2
    where c2.nia = e.nia
    and c2.curs_academic = "23/24"
)
group by e.nia
having nota_mitjana < 7
order by avg(c.nota), nom, cognoms;
