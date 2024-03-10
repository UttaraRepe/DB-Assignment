-- Create Product_Category table
CREATE TABLE Product_Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    description VARCHAR(255)
);

-- Create Product table
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Product_Category(category_id)
);

--In this schema:

--The Product_Category table has columns for category_id, category_name, and description.
--The Product table has columns for product_id, product_name, description, price, and category_id, where category_id is a foreign key referencing the category_id column in the Product_Category table.
--You can execute these SQL statements in your preferred SQL database management tool to create the schema.

--If you're using an ORM like SQLAlchemy in Python, the schema definition would look different and would depend on the ORM syntax and conventions. Let me know if you need an example using an ORM.
