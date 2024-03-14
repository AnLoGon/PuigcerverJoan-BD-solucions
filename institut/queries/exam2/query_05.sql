select p.nom, p.cognoms, p.data_naixement
from persona p
where lower(p.nom) like "m%" and p.data_naixement = (
    select max(p2.data_naixement)
    from persona p2
    where lower(p2.nom) like "m%"
);
