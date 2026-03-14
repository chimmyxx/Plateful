SELECT
    d.donor_name,
    SUM(do.quantity) AS total_donated
FROM donors d
JOIN donations do
ON d.donor_id = do.donor_id
GROUP BY d.donor_name
ORDER BY total_donated DESC;

