use institut;
SELECT estudiant.dni, estudiant.nia, cursa.id_modul, cursa.nota
FROM estudiant
LEFT JOIN cursa ON estudiant.nia = cursa.nia;
