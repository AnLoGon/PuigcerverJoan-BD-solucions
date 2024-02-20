select distinct mp.id_modul, mp.nom
from modul_professional mp
inner join cicle_modul cm
    on cm.id_modul = mp.id_modul
inner join cicle_formatiu cf
    on cm.id_cicle = cf.id_cicle
where cf.sigles like "D%" and hores > 100;
