use musica;

select cf.nom club_fans, cf.direccio, gm.nom grup_musical
from club_fans cf
inner join grup_musical gm
    on gm.id_grup_musical = cf.id_grup_musical
where gm.pais = "Espanya"
order by club_fans;
