BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS bla
(
    modifiedBy nvarchar(50) NULL
);

DROP TABLE bla;

COMMIT TRANSACTION;