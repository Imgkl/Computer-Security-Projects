BEGIN TRANSACTION;

-- Creating table favouritesessionfrom scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouriteSession
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    session bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouritesession_1593487619
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    session bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_favouritesession_1593487619 (modifiedBy,importCameFrom,visitor,modifiedDate,session,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion)
 SELECT modifiedBy,importCameFrom,visitor,modifiedDate,session,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion FROM favouriteSession;

-- Droping the original table and renaming the temporary table

DROP TABLE favouriteSession;
ALTER TABLE temp_favouritesession_1593487619 RENAME TO favouriteSession;


-- Creating table favouritesubsessionfrom scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouriteSubSession
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    subsession bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouritesubsession_1593487619
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    subsession bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_favouritesubsession_1593487619 (modifiedBy,importCameFrom,visitor,modifiedDate,subsession,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion)
 SELECT modifiedBy,importCameFrom,visitor,modifiedDate,subsession,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion FROM favouriteSubSession;

-- Droping the original table and renaming the temporary table

DROP TABLE favouriteSubSession;
ALTER TABLE temp_favouritesubsession_1593487619 RENAME TO favouriteSubSession;

CREATE TABLE IF NOT EXISTS visitorsurveys
(
    id INTEGER PRIMARY KEY ASC NOT NULL,
    visitor bigint NULL,
    survey bigint NULL,
--    relatedTags ???
    submissionStatus int NULL,
    submissionDate datetime NULL,

    _id nvarchar(500) NULL,
    importKey nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    modifiedDate datetime NULL,
    createdBy nvarchar(50) NULL,
    createdDate datetime NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);


COMMIT TRANSACTION;