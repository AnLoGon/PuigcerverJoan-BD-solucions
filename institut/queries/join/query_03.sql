use institut;
SELECT estudiant.dni, estudiant.nia, cursa.id_modul, cursa.nota
FROM estudiant
RIGHT JOIN cursa ON estudiant.nia = cursa.nia
order by nota desc;
