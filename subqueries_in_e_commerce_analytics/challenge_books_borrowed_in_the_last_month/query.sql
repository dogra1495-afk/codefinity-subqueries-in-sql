SELECT *
FROM books
WHERE book_id IN (
    SELECT DISTINCT book_id
    FROM borrowings
    WHERE borrow_date >= DATE '2023-07-01'
);