/* String-Funktionen */

USE stocks;
system clear;

/*
    CONCAT() / Verknuepfung "string" + "string" ...
    UPPER() --> alles in Großbuchstaben
    LOWER() --> alles in Kleinbuchstaben
    LENGTH() --> String-Laenge
    REPLACE() --> Ersetzen von Stringanteilen
    TRIM() --> Trimmen vor/nach String (Whitespace)
*/

-- CONCAT() / Verknuepfung "string" + "string" ...
/*
SELECT 
    ticker "SYM",
    c_name "Unternehmen",
    CONCAT(sector," : ",industry) "Operations"
FROM stocks.ccc_list
LIMIT 10;
*/
    
-- UPPER() --> alles in Großbuchstaben
/*
SELECT 
    ticker "SYM",
    UPPER(c_name) "Unternehmen"
FROM stocks.ccc_list
LIMIT 20;
*/

-- LOWER() --> alles in Kleinbuchstaben (zb. bei mail-Adressen)
/*
SELECT 
    ticker "SYM",
    LOWER(c_name) "Unternehmen"
FROM stocks.ccc_list
LIMIT 20;
*/

-- LENGTH() --> String-Laenge
/*
SELECT 
    ticker "SYM",
    c_name "Unternehmen",
    CONCAT(sector,":",industry) "Operations",
    LENGTH(CONCAT(sector,":",industry)) "StringLength"
FROM stocks.ccc_list
ORDER BY StringLength DESC
LIMIT 20;
*/

-- REPLACE() --> Ersetzen von Stringanteilen
/*
SELECT 
    ticker "SYM",
    c_name "Unternehmen"
FROM stocks.ccc_list
WHERE c_name LIKE "%Inc."
LIMIT 30;

UPDATE ccc_list SET c_name = REPLACE(c_name,"Inc.","Incorporated");

SELECT 
    ticker "SYM",
    c_name "Unternehmen"
FROM stocks.ccc_list
WHERE c_name LIKE "%Incorporated"
LIMIT 30;
*/

-- TRIM() --> Trimmen vor/nach String (Whitespace)
/*
UPDATE ccc_list SET c_name = CONCAT("   ",c_name) WHERE id = 2;
UPDATE ccc_list SET c_name = CONCAT("   ",c_name) WHERE id = 3;

SELECT 
    ticker "SYM",
    #c_name "Unternehmen"
    TRIM("  " FROM c_name) "Unternehmen"
FROM stocks.ccc_list
LIMIT 10;
*/
    