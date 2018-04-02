DECLARE @variable INT DEFAULT 1234

SELECT	`Name`
		, Id
  		, MIN(Amount) AS 'MinAmount'
		, MAX(Amount) AS 'MaxAmount'
		, Column1
		/*, GROUP_CONCAT(DISTINCT Column2 SEPARATOR ';') as 'Column2'
  		, GROUP_CONCAT(DISTINCT Column3 SEPARATOR ';') as 'Column3' */
  		, GROUP_CONCAT(DISTINCT Column4 SEPARATOR ';') AS 'Column4'  
FROM	TableName
WHERE	Id > @variable
GROUP BY 
		`Name`
		, Id
		, Column1
ORDER BY 
		`Name`
		, Id
LIMIT	1000;