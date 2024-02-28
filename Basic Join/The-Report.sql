SELECT
    IF(g.grade > 7, s.name, NULL) AS name,
    g.grade,
    s.marks
FROM students AS s
JOIN Grades AS g ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade DESC, name, s.marks