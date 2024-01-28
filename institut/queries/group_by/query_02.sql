USE institut;

SELECT e.nia, e.dni, AVG(c.nota) AS promedio_nota
FROM estudiant e
JOIN cursa c ON e.nia = c.nia
GROUP BY e.nia;
