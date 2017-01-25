BEGIN TRANSACTION;

-- remove table if it exists on the master DB (introduced in version 57-58 by mistake)
DROP TABLE IF EXISTS infoPages;

COMMIT TRANSACTION;
