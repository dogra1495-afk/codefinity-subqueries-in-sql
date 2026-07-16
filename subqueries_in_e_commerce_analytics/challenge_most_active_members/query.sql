SELECT m.member_id, m.name, borrow_count
FROM (
    SELECT member_id, COUNT(*) AS borrow_count
    FROM borrowings
    GROUP BY member_id
) AS member_borrow_counts
JOIN members m ON m.member_id = member_borrow_counts.member_id
ORDER BY borrow_count DESC, m.member_id ASC
LIMIT 2;
