use musica;

select a.nom 
from artista a 
inner join artista_grup ag
    on ag.dni_artista = a.dni 
inner join grup_musical gm
    on ag.id_grup_musical = gm.id_grup_musical
where gm.pais = "Espanya"
order by a.nom;
