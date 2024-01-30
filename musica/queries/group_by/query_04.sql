select cp.nom, cp.direccio, count(ca.id_canço) nombre_cançons
from companyia_productora cp
inner join album a
	on a.id_productora = cp.id_productora
inner join canço_album ca
	on a.id_album = ca.id_album
group by cp.id_productora
order by cp.nom;
