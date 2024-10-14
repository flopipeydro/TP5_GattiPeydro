SELECT m.nombre AS nombre_medico, COUNT(c.id_paciente) AS total_pacientes
FROM Medicos m
JOIN Consultas c ON m.id_medico = c.id_medico
GROUP BY m.id_medico, m.nombre
ORDER BY total_pacientes DESC;
