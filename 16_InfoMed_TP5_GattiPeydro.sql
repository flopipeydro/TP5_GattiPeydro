SELECT 
    m.nombre AS NombreMedico, p.nombre AS NombrePaciente, 
 COUNT(c.id_consulta) AS TotalConsultas

FROM 
    Medicos m
JOIN 
    Consultas c ON m.id_medico = c.id_medico
JOIN 
    Pacientes p ON c.id_paciente = p.id_paciente
GROUP BY 
    m.id_medico, p.id_paciente
ORDER BY 
    m.nombre, p.nombre;