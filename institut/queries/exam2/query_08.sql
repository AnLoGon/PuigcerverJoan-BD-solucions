select
    mp.id_modul,
    mp.nom,
    count(c.nia) as nombre_estudiants,
    avg(c.nota) as nota_mitjana
from modul_professional mp
inner join cursa c
    on mp.id_modul = c.id_modul
group by mp.id_modul
having nota_mitjana = (
    select min(nota_mitjana)
    from (
        select
            c.id_modul,
            avg(c.nota) as nota_mitjana
        from cursa c
        group by c.id_modul
    ) as subquery
);
