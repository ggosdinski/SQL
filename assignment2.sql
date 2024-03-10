-- Assignment 2
SELECT *
FROM account;
SELECT *
FROM classification;
SELECT *
FROM inventory;
-- Insert a new record
INSERT INTO public.account (
        account_firstname,
        account_lastname,
        account_email,
        account_password
    )
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');
-- Modify the record
UPDATE public.account
SET account_type = 'Admin'
WHERE account_id = 1;
-- Delete the record
DELETE FROM public.account
WHERE account_id = 1;
-- Modify the "GM Hummer" record
SELECT *
FROM public.inventory
WHERE inv_id = 10;
UPDATE public.inventory
SET inv_description = REPLACE(
        inv_description,
        'small interiors',
        'a huge interior'
    )
WHERE inv_id = 10;
-- Inner join
SELECT *
FROM classification;
SELECT *
FROM inventory;
SELECT i.inv_model,
    c.classification_name
FROM inventory i
    INNER JOIN classification c ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';
-- Update all records
SELECT *
FROM inventory;
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');
-- End of exercise