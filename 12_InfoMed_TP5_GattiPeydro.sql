SELECT m.nombre AS nombre_medicamento,
COUNT(r.id_receta) AS cantidad_prescripciones
FROM Recetas r JOIN Medicamentos m ON r.id_medicamento = m.id_medicamento WHERE r.id_medico = 2
GROUP BY m.nombre
HAVING 
    COUNT(r.id_receta) > 1;