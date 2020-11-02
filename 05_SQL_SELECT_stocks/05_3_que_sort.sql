/* QUERIES Sortierung */

USE stocks;
system clear;

-- ASC / DSC
-- sortieren nach Sektor / aufsteigend
SELECT
ticker "sym",
c_name "company",
CONCAT(sector," : ",industry) "operations"
FROM stocks.ccc_list
ORDER BY sector, industry ASC
#ORDER BY sector DESC
LIMIT 25;

