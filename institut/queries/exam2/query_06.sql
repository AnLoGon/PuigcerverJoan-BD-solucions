select es.id_especialitat, es.nom, sum(mp.hores) as hores_impartides
from especialitat es
inner join modul_professional mp
    on es.id_especialitat = mp.id_especialitat
inner join imparteix i
    on mp.id_modul = i.id_modul
where i.curs_academic = '23/24'
group by es.id_especialitat
order by hores_impartides desc;
