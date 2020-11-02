/* QUERIES Sortierung */

USE stocks;
system clear;

-- ASC / DSC
-- sortieren nach Sektor / aufsteigend (alphabetisch)
/**/
SELECT
ticker "sym",
c_name "company",
CONCAT(sector," : ",industry) "operations"
FROM stocks.ccc_list
ORDER BY sector,industry ASC
#ORDER BY sector ASC , industry DESC
LIMIT 30;


-- sortieren nach Aktienpreis aufsteigend /absteigend (numerisch)
/*
SELECT
ticker "Symbol",
price "Preis in US$",
payouts "Zahlungen pro Jahr",
no_years "Jahre++",
c_name "Unternehmen",
CONCAT(sector," : ",industry) "operations"
FROM stocks.ccc_list
#ORDER BY price DESC
ORDER BY price ASC
LIMIT 100;
*/





