SELECT name
FROM members m
WHERE NOT EXISTS (
    SELECT 1
    FROM borrowings b
    WHERE b.member_id = m.member_id
);