CREATE OR ALTER TRIGGER historia_empleado_insert ON demo
FOR DELETE AS 
	DECLARE @id bigint;
    DECLARE @name VARCHAR(200);
    SELECT @id=(SELECT id FROM deleted);
    SELECT @name=(SELECT name FROM deleted);
    INSERT INTO post (name, old_id) VALUES (@name, @id);