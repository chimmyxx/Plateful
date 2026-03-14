CREATE TABLE donors (
    donor_id SERIAL PRIMARY KEY,
    donor_name VARCHAR(150),
    donor_type VARCHAR(50), -- restaurant, grocery store, supplier
    city VARCHAR(100)
);

CREATE TABLE food_items (
    food_id SERIAL PRIMARY KEY,
    food_name VARCHAR(150),
    category VARCHAR(100) -- produce, dairy, bakery, etc.
);

CREATE TABLE food_banks (
    food_bank_id SERIAL PRIMARY KEY,
    food_bank_name VARCHAR(150),
    city VARCHAR(100),
    state VARCHAR(50)
);

CREATE TABLE donations (
    donation_id SERIAL PRIMARY KEY,
    donor_id INT,
    food_id INT,
    quantity INT,
    donation_date DATE,
    FOREIGN KEY (donor_id) REFERENCES donors(donor_id),
    FOREIGN KEY (food_id) REFERENCES food_items(food_id)
);

CREATE TABLE distributions (
    distribution_id SERIAL PRIMARY KEY,
    donation_id INT,
    food_bank_id INT,
    distribution_date DATE,
    quantity_distributed INT,
    FOREIGN KEY (donation_id) REFERENCES donations(donation_id),
    FOREIGN KEY (food_bank_id) REFERENCES food_banks(food_bank_id)
);

