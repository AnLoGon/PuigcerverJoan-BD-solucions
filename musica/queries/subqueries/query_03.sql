use musica;

select nom, nombre_membres
from club_fans
where nombre_membres = (
	select max(nombre_membres)
    from club_fans
);
