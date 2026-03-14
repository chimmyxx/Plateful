-- ============================================
-- Plateful Analytics Queries
-- Analysis of Texas Food Donation System
-- ============================================


-- Top Food Donors in Texas
SELECT
    donor_name,
    SUM(quantity) AS total_food_donated
FROM donors d
JOIN donations do
ON d.donor_id = do.donor_id
GROUP BY donor_name
ORDER BY total_food_donated DESC;


-- Total Donations by Texas City
SELECT
    city,
    SUM(quantity) AS total_donations
FROM donors d
JOIN donations do
ON d.donor_id = do.donor_id
GROUP BY city
ORDER BY total_donations DESC;


-- Most Donated Food Categories
SELECT
    f.category,
    SUM(d.quantity) AS total_donated
FROM food_items f
JOIN donations d
ON f.food_id = d.food_id
GROUP BY f.category
ORDER BY total_donated DESC;


-- Most Donated Individual Food Items
SELECT
    f.food_name,
    SUM(d.quantity) AS total_donated
FROM food_items f
JOIN donations d
ON f.food_id = d.food_id
GROUP BY f.food_name
ORDER BY total_donated DESC;


-- Food Distributed by Each Texas Food Bank
SELECT
    fb.food_bank_name,
    SUM(dis.quantity_distributed) AS total_food_distributed
FROM food_banks fb
JOIN distributions dis
ON fb.food_bank_id = dis.food_bank_id
GROUP BY fb.food_bank_name
ORDER BY total_food_distributed DESC;


-- Donations by Year (Trend Analysis)
SELECT
    EXTRACT(YEAR FROM donation_date) AS donation_year,
    SUM(quantity) AS yearly_donations
FROM donations
GROUP BY donation_year
ORDER BY donation_year;


-- Monthly Donation Trends
SELECT
    DATE_TRUNC('month', donation_date) AS month,
    SUM(quantity) AS total_donations
FROM donations
GROUP BY month
ORDER BY month;


-- Average Donation Size by Donor
SELECT
    donor_name,
    AVG(quantity) AS avg_donation_size
FROM donors d
JOIN donations do
ON d.donor_id = do.donor_id
GROUP BY donor_name
ORDER BY avg_donation_size DESC;

 -- Total Food Distributed by State
SELECT
    state,
    SUM(quantity_distributed) AS total_distributed
FROM food_banks fb
JOIN distributions dis
ON fb.food_bank_id = dis.food_bank_id
GROUP BY state;


-- Donation Efficiency (How Much of Donated Food Was Distributed)
SELECT
    SUM(quantity_distributed) AS total_distributed,
    SUM(quantity) AS total_donated
FROM donations d
JOIN distributions dis
ON d.donation_id = dis.donation_id;
