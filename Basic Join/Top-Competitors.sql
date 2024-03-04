SELECT
    h.hacker_id,
    h.name
FROM hackers AS h
JOIN submissions AS s ON h.hacker_id = s.hacker_id
JOIN challenges AS c ON s.challenge_id = c.challenge_id
JOIN difficulty AS d ON c.difficulty_level = d.difficulty_level AND s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(h.hacker_id) > 1
ORDER BY COUNT(h.hacker_id) DESC, h.hacker_id