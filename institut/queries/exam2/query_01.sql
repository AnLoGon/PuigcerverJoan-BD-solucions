select dni, nom, cognoms, data_naixement
from persona p
where year(data_naixement) between 1990 and 1995
order by data_naixement desc;
