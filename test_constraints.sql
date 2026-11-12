DELIMITER//
CREATE OR REPLACE PROCEDURE ejemplo_variables_locales()
BEGIN
	DECLARE v_contador INT DEFAULT 0;
	DECLARE v_nombre VARCHAR(100);
	DECLARE v_promedio DECIMAL(4,2);
	
	ser v_comtador = 10;
	SELECT first_name INTO v_nombre form people WHERE person_id = 1;
	
	SELECT v_contador, v_nombre;
END//
DELIMITER;