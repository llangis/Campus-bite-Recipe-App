USE [campus-bites];
GO

---------- [CATEGORIES] ----------

SELECT * FROM Categories;

-- DELETE CATEGORY
-- DELETE FROM Categories WHERE ID = 1002;

-- (SPECIFC) APPROVED A CATEGORIES
UPDATE Categories SET IsApproved = 1, IsPendingModification = 0 WHERE ID = 2002;

-- (ALL) APPOVED A CATEGORIES
UPDATE Categories SET IsApproved = 1, IsPendingModification = 0;

---------- [INGREDIENTS] ----------

SELECT * FROM Ingredients;

-- (SPECIFIC) APPROVE A INGREDIENS
UPDATE Ingredients 
SET 
	IsApproved = 1, IsPendingModification = 0, DecidedBy = 'John.Smith@campusbites.com',
	ApprovedDate = CAST(GETDATE() AS DATE)
WHERE Id = 1021;

-- (ALL) APPROVE A INGREDIENS
UPDATE Ingredients 
SET 
	IsApproved = 1, IsPendingModification = 0, DecidedBy = 'John.Smith@campusbites.com',
	ApprovedDate = CAST(GETDATE() AS DATE)
WHERE IsApproved = 0 AND IsPendingModification = 1;

---------- [RECIPES] ----------

SELECT * FROM Recipes;

-- (SPECIFIC) Recipe -> PUBLIC
UPDATE Recipes SET Status = 'Public' WHERE ID = 1010;

-- (ALL) Recipe -> PUBLIC
UPDATE Recipes SET Status = 'Public';

SELECT * FROM Images;

-- (SPECIFIC) APPROVED A Image
UPDATE Images SET IsApproved = 1 WHERE RecipeId = 1010;

-- (INDIVIDUAL) APPROVED A Image
UPDATE Images SET IsApproved = 1 WHERE ID = 2135

-- (ALL) APPROVED A Image
UPDATE Images SET IsApproved = 1;

---------- [CONTACTS] ----------

SELECT * FROM Contacts;