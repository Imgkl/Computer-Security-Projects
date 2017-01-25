BEGIN TRANSACTION;

-- HACK: do something with this file otherwise it might crash
CREATE TABLE IF NOT EXISTS bla
(
    modifiedBy nvarchar(50) NULL
);

DROP TABLE bla;

COMMIT TRANSACTION;