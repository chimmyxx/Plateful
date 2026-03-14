-- ============================================
-- Sample Data for Plateful
-- Texas Food Donation & Distribution System
-- ============================================

-- =====================
-- DONORS
-- =====================

INSERT INTO donors (donor_name, donor_type, city, state) VALUES
('HEB','Grocery Store','San Antonio','TX'),
('Walmart','Grocery Store','Houston','TX'),
('Whole Foods','Grocery Store','Austin','TX'),
('Target','Retail Store','Dallas','TX'),
('Kroger','Grocery Store','Houston','TX'),
('Panera Bread','Restaurant','Fort Worth','TX'),
('Costco','Retail Store','Plano','TX'),
('Trader Joes','Grocery Store','Austin','TX'),
('Randalls','Grocery Store','Houston','TX'),
('Central Market','Grocery Store','San Antonio','TX');

-- =====================
-- FOOD ITEMS
-- =====================

INSERT INTO food_items (food_name, category) VALUES
('Bread','Bakery'),
('Milk','Dairy'),
('Apples','Produce'),
('Bananas','Produce'),
('Chicken','Meat'),
('Rice','Grains'),
('Pasta','Grains'),
('Yogurt','Dairy'),
('Carrots','Produce'),
('Canned Beans','Canned Goods'),
('Cereal','Grains'),
('Potatoes','Produce'),
('Tomatoes','Produce'),
('Cheese','Dairy'),
('Eggs','Dairy');

-- =====================
-- FOOD BANKS
-- =====================

INSERT INTO food_banks (food_bank_name, city, state) VALUES
('San Antonio Food Bank','San Antonio','TX'),
('Houston Food Bank','Houston','TX'),
('Central Texas Food Bank','Austin','TX'),
('North Texas Food Bank','Dallas','TX'),
('Tarrant Area Food Bank','Fort Worth','TX');

-- =====================
-- DONATIONS
-- =====================

INSERT INTO donations (donor_id, food_id, quantity, donation_date) VALUES
(1,1,120,'2023-05-10'),
(2,3,90,'2023-06-14'),
(3,2,70,'2023-07-03'),
(4,6,150,'2023-08-19'),
(5,4,95,'2023-09-07'),
(1,12,110,'2024-01-12'),
(2,11,140,'2024-02-20'),
(3,9,85,'2024-03-04'),
(4,3,100,'2024-04-11'),
(5,13,90,'2024-05-22'),
(6,14,75,'2024-06-17'),
(7,4,105,'2024-07-28'),
(8,5,60,'2024-08-13'),
(9,6,130,'2024-09-09'),
(10,7,115,'2024-10-05'),
(1,8,55,'2025-01-16'),
(2,9,95,'2025-02-02'),
(3,10,100,'2025-02-18'),
(4,11,150,'2025-03-01'),
(5,12,80,'2025-03-14');

-- =====================
-- DISTRIBUTIONS
-- =====================

INSERT INTO distributions (donation_id, food_bank_id, quantity_distributed, distribution_date) VALUES
(1,1,100,'2023-05-11'),
(2,2,80,'2023-06-15'),
(3,3,65,'2023-07-04'),
(4,4,130,'2023-08-20'),
(5,2,85,'2023-09-08'),
(6,1,95,'2024-01-13'),
(7,2,120,'2024-02-21'),
(8,3,70,'2024-03-05'),
(9,4,90,'2024-04-12'),
(10,2,85,'2024-05-23'),
(11,5,65,'2024-06-18'),
(12,4,90,'2024-07-29'),
(13,3,50,'2024-08-14'),
(14,2,110,'2024-09-10'),
(15,1,100,'2024-10-06'),
(16,1,45,'2025-01-17'),
(17,2,85,'2025-02-03'),
(18,3,90,'2025-02-19'),
(19,4,130,'2025-03-02'),
(20,2,70,'2025-03-15');

