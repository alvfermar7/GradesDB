USE gradesDB;

SELECT *
FROM subjects;

SELECT s.subject_name, s.acronym
FROM subjects s
WHERE s.acronym = 'IISSI-1';


SELECT s.subject_name, s.acronym, s.subject_type
FROM subjects s
WHERE s.subject_type = 'Formacion Basica';


SELECT p.first_name, p.last_name, pr.category
FROM professors pr
JOIN people p ON  pr.professor_id = p.person_id
WHERE pr.category = 'Catedratico';


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

