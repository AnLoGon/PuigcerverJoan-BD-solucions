USE institut;

SELECT nia, id_modul, nota
FROM cursa
WHERE curs_academic = '23/24'
  AND nota >= 9
  AND id_modul IN ("0223", "0224")
ORDER BY id_modul, nota DESC;

