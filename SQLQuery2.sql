SELECT
    E.SSN,
    E.FirstN + ' ' + E.LastN AS EmployeeName,
    P.Pname AS ProjectName,
    W.Hours
FROM Employee AS E
INNER JOIN Work AS W
    ON E.SSN = W.SSN
INNER JOIN Project AS P
    ON W.Pnum = P.Pnum
ORDER BY W.Hours DESC;

SELECT
    E.FirstN + ' ' + E.LastN AS EmployeeName,
    P.Pname AS ProjectName,
    W.Hours
FROM Employee AS E
INNER JOIN Work AS W
    ON E.SSN = W.SSN
INNER JOIN Project AS P
    ON W.Pnum = P.Pnum
WHERE W.Hours > 10
ORDER BY W.Hours DESC;

SELECT COUNT(*) AS TotalWorkRecords
FROM Work;

SELECT SUM(Hours) AS TotalHours
FROM Work;

SELECT AVG(Hours) AS AverageHours
FROM Work;

SELECT
    MAX(Hours) AS MaximumHours,
    MIN(Hours) AS MinimumHours
FROM Work;

SELECT
    E.SSN,
    E.FirstN + ' ' + E.LastN AS EmployeeName,
    SUM(W.Hours) AS TotalHours
FROM Employee AS E
INNER JOIN Work AS W
    ON E.SSN = W.SSN
GROUP BY
    E.SSN,
    E.FirstN,
    E.LastN
ORDER BY TotalHours DESC;

SELECT
    E.SSN,
    E.FirstN + ' ' + E.LastN AS EmployeeName,
    SUM(W.Hours) AS TotalHours
FROM Employee AS E
INNER JOIN Work AS W
    ON E.SSN = W.SSN
GROUP BY
    E.SSN,
    E.FirstN,
    E.LastN
HAVING SUM(W.Hours) > 20
ORDER BY TotalHours DESC;

SELECT City AS PlaceName
FROM Project

UNION

SELECT Location AS PlaceName
FROM Project

ORDER BY PlaceName ASC;


SELECT
    E.SSN,
    E.FirstN + ' ' + E.LastN AS EmployeeName,
    W.Pnum,
    W.Hours
FROM Employee AS E
INNER JOIN Work AS W
    ON E.SSN = W.SSN
WHERE W.Hours > (
    SELECT AVG(Hours)
    FROM Work
)
ORDER BY W.Hours DESC;


SELECT
    E.SSN,
    E.FirstN + ' ' + E.LastN AS EmployeeName
FROM Employee AS E
WHERE E.SSN IN (
    SELECT W.SSN
    FROM Work AS W
)
ORDER BY EmployeeName ASC;