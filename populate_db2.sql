USE GradesDB;

SELECT *
FROM subjects;

SELECT s.subject_name, s.acronym
FROM subjects s
WHERE s.acronym = 'IISSI-1';

SELECT s.subject_name, s.acronym, s.subject_type
FROM subjects s
WHERE s.subject_type = 'Formación Básica';

-- join
SELECT p.first_name, p.last_name, pr.category
FROM professors pr
JOIN people p ON pr.professor_id = p.person_id
WHERE pr.category = 'Catedrático';

-- vistas
CREATE OR REPLACE VIEW v_students AS
SELECT
	st.student_id,
	st.access_method,
	p.person_id,
	p.dni,
	p.first_name,
	p.last_name,
	p.age,
	p.email
FROM students st
JOIN people p ON st.student_id = p.person_id;

-- funciones agregadas
-- calcular la media de las notas del grupo 1
SELECT AVG(g.grade_value) AS average_grade
FROM grades g
WHERE g.group_id = 1;

-- total creditos asignaturas del grado con id 3
SELECT SUM(s.credits) AS total_credits
FROM subjects s
WHERE s.degree_id = 3;

-- contar
SELECT COUNT(*) AS total_groups
FROM groups
GROUP BY activity;

-- valor maximo / minimo
SELECT MAX(g.grade_value) AS max_grade
FROM grades g;

SELECT MIN(g.grade_value) AS min_grade
FROM grades g;