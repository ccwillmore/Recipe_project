-- Create table for the Cuisine_Names
CREATE TABLE cuisine_names (
	cuisineID INT,
	cuisineName VARCHAR,
	PRIMARY KEY(cuisineID)
)

SELECT * 
FROM cuisine_names;

--Create table for the recipe dictonary
CREATE TABLE recipe_names (
	recipeID INT,
	recipeName VARCHAR,
	PRIMARY KEY(recipeID)
)

SELECT * 
FROM recipe_names;

-- View tables that were imported using SQL Alchemy
SELECT *
FROM "Recipes_with_cuisines"
LIMIT 10;

SELECT *
FROM "cuisine_with_ingredents"
LIMIT 10;