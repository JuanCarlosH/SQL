IF EXISTS (SELECT * FROM sys.tables WHERE name = 'matrixA')
   DROP TABLE matrixA;
GO
CREATE TABLE matrixA (
   row_num TINYINT,
   col_num TINYINT,
   value TINYINT
);
GO
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'matrixB')
   DROP TABLE matrixB;
GO
CREATE TABLE matrixB (
   row_num TINYINT,
   col_num TINYINT,
   value TINYINT
);
GO

INSERT INTO matrixA (
row_num,
col_num,
value
)
VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(2, 1, 2),
(2, 2, 5),
(2, 3, 7);
go

select * from matrixA

INSERT INTO matrixB (
row_num,
col_num,
value
)
VALUES
(1, 1, 2),
(1, 2, 4),
(1, 3, 8),
(2, 1, 1),
(2, 2, 5),
(2, 3, 10),
(3, 1, 3),
(3, 2, 6),
(3, 3, 9);
go

select * from matrixB

SELECT A.row_num,
   B.col_num,
   SUM(A.value * B.value) AS value
FROM matrixA A
INNER JOIN matrixB B
ON A.col_num = B.row_num
GROUP BY A.row_num, B.col_num;


SELECT A.row_num,
   B.col_num,
   SUM(A.value * B.value) AS result
FROM matrixA A
INNER JOIN matrixB B
ON A.col_num = B.row_num
WHERE A.row_num = 2
   AND B.col_num = 3
GROUP BY A.row_num, B.col_num;

/*--------------------------------------------*/


CREATE TYPE matrixType AS TABLE (i INT,j INT, val REAL)
GO

CREATE PROCEDURE dbo.multMatrixes @matA matrixType READONLY, 
@matB matrixType READONLY 
AS 
SELECT A.I, B.J, SUM (A.val * B.val) AS val 
FROM @matA A,@matB B 
WHERE A.J = B.I 
GROUP BY A.I, 
B.J; 
GO 


DECLARE @matrixA matrixType;
DECLARE @matrixB matrixType;
 
-- filling first matrix
INSERT INTO @matrixA
VALUES (1, 1, -1), (1, 2, 0), (1, 3, 6), 
       (2, 1,  2), (2, 2, 5), (2, 3, 1);

 
-- filling second matrix
INSERT INTO @matrixB
VALUES (1, 1, 2), (1, 2, -4) ,(1, 3,  9), 
       (2, 1, 0), (2, 2,  5) ,(2, 3,  1), 
       (3, 1, 3), (3, 2,  6) ,(3, 3, -1);


-- now doing the matrixes multiplication
EXEC dbo.multMatrixes @matrixA, @matrixB