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



--Adding Primary and Foreign Keys

--Adding PK and FK to Recipes_with_Cuisines
ALTER TABLE "Recipes_with_cuisines" 
ADD FOREIGN KEY (cuisineid) REFERENCES cuisine_names (cuisineid),
ADD PRIMARY KEY (recipeid, cuisineid);

-- Adding PK to Cuisine_with_ingredents
ALTER TABLE "cuisine_with_ingredents"
ADD PRIMARY KEY (recipeid)



-- View tables that were imported using SQL Alchemy
SELECT *
FROM "Recipes_with_cuisines"
LIMIT 10;

SELECT *
FROM "cuisine_with_ingredents"
LIMIT 10;


DROP TABLE cuisine_names;
DROP TABLE recipe_names;
DROP TABLE "Recipes_with_cuisines";
DROP TABLE "cuisine_with_ingredents";



-- Creating the join with recipe_with_cuisine table and showing recipe and cuisine names
SELECT * 
FROM "Recipes_with_cuisines" AS rc
INNER JOIN recipe_names AS rn
ON rn.recipeid = rc.recipeid
INNER JOIN cuisine_names as cn
ON cn.cuisineid = rc.cuisineid;