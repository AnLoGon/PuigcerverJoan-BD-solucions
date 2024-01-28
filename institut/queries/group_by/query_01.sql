USE institut;

SELECT cm.id_modul, cm.id_cicle, AVG(c.nota) AS promedio_nota, COUNT(DISTINCT c.nia) AS cantidad_estudiantes
FROM cicle_modul cm
JOIN cursa c ON cm.id_modul = c.id_modul
GROUP BY cm.id_modul, cm.id_cicle;

