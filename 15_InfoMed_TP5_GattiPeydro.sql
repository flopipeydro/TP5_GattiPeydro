SELECT p.nombre AS NombrePaciente, 
       c.fecha AS FechaUltimaConsulta, 
       c.diagnostico AS Diagnostico
FROM Pacientes p
LEFT JOIN Consultas c ON p.id_paciente = c.id_paciente
WHERE c.fecha = (SELECT MAX(fecha) 
                 FROM Consultas 
                 WHERE id_paciente = p.id_paciente);