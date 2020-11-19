CREATE TABLE Student (
	id int,
  	materia1 int,
  	materia2 int,
  	materia3 int,
  	total INT NULL
);

CREATE TRIGGER aasasa  ON Student
FOR INSERT AS
BEGIN
    UPDATE Student
    SET total=materia1+materia2+materia3
    WHERE (UPDATE(materia1) OR UPDATE(materia2))
        AND id IN (SELECT ins.id FROM inserted AS ins)
END

INSERT INTO Student (id, materia1, materia2, materia3) VALUES  (1,7,10,4) ;

SELECT * FROM Student;

DROP TABLE Student