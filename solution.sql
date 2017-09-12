-- Get all users from Chicago.
SELECT * FROM syntax_practice WHERE city='chicago';
-- Get all users with usernames that contain the letter a.
SELECT * FROM syntax_practice WHERE username LIKE '%a%';
-- The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE syntax_practice SET account_balance=10 WHERE account_balance=0 AND transactions_attempted=0;
-- Select all users that have attempted 9 or more transactions.
SELECT * FROM syntax_practice WHERE transactions_attempted>=9;
-- Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT username, account_balance FROM syntax_practice ORDER BY account_balance DESC LIMIT 3;
-- Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT username, account_balance FROM syntax_practice ORDER BY account_balance ASC LIMIT 3;
-- Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice WHERE account_balance > 100;
-- Add a new record.
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('Carla', 'minneapolis', 5, 5, 12750.00);
-- The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM syntax_practice WHERE city='miami' OR city='pheonix' AND transactions_completed > 5;
