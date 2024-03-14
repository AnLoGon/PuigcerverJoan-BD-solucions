select g.curs, cf.sigles, p.nom, p.cognoms
from persona p
inner join professor pr
    on p.dni = pr.dni
inner join grup g
    on g.dni_tutor = pr.dni
inner join cicle_formatiu cf
    on g.id_cicle = cf.id_cicle
where cf.nivell = 'gs'
order by sigles, curs;
