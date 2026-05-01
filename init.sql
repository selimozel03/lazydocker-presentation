CREATE TABLE IF NOT EXISTS sales (
    id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    quantity INTEGER NOT NULL,
    unit_price NUMERIC(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO sales (product_name, quantity, unit_price)
VALUES
    ('Docker Handbook', 3, 25.00),
    ('PostgreSQL Guide', 2, 40.00),
    ('Data Engineering Notes', 5, 15.50);

CREATE VIEW sales_summary AS
SELECT
    product_name,
    quantity,
    unit_price,
    quantity * unit_price AS total_price,
    created_at
FROM sales;