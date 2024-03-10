### 1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram. ###
Answer - Foreign key relationship with Category_id
Typically, the relationship between "Product" and "Product_Category" is a one-to-many relationship.
This means that one product can belong to only one category, but one category can have multiple products.
In terms of database schema, this relationship is often represented by a foreign key in the "Product" table that references the primary key of the "Product_Category" table.
For instance, the "Product" table might have a column called "category_id" which references the primary key of the "Product_Category" table.

This relationship allows for effective organization and management of products within the system. It enables querying and filtering products based on their categories, 
which can be useful for various purposes such as inventory management, reporting, and user navigation in an e-commerce application.


### 2. How could you ensure that each product in the "Product" table has a valid category assigned to it? ###

Answer - Product entity has its own category_id column and values are present and it's foreign key reference is an category entity so every category_id against values are present in category entity.

Foreign Key Constraint: In your database schema design, define a foreign key constraint in the "Product" table that references the primary key of the "Product_Category" table. This foreign key column in the "Product" table will store the category ID.

Cascading Actions: Define cascading actions on the foreign key constraint to ensure that if a category is deleted or updated in the "Product_Category" table, appropriate actions are taken in the "Product" table. For example, you might choose to cascade deletes, which means that if a category is deleted, all products belonging to that category will also be deleted.

Insert and Update Validation: When inserting or updating records in the "Product" table, ensure that the category ID being inserted or updated is a valid ID present in the "Product_Category" table. You can enforce this validation at the application level or through database triggers.

Data Integrity Checks: Regularly perform data integrity checks to ensure that there are no orphaned records in the "Product" table, i.e., products with category IDs that do not exist in the "Product_Category" table.

By implementing these measures, you can ensure that each product in the "Product" table has a valid category assigned to it, thereby maintaining data integrity within your database.
