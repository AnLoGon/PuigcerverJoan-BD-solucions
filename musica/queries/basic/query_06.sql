use musica;

select nom, direccio
from club_fans
where nombre_membres > 500
order by nom;
