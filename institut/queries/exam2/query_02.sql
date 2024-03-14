select distinct nom
from persona
where nom like "%a%"
    and nom like "%b%"
order by nom;
