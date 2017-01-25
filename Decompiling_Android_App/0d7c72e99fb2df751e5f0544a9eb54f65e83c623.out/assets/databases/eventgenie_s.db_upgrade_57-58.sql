BEGIN TRANSACTION;

-- Creating table favouritesessionfrom scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_infoPages_1234
(
    icon nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    isSecure bit NULL,
    parent bigint NULL,
    importCameFrom nvarchar(500) NULL,
    type nvarchar(500) NULL,
    url nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    html text NULL,
    createdDate datetime NULL,
    openEmbedded bit NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL),
    permissionGroup bigint NULL,
    openNativeAppSchema bit NULL,
    nativeAppSchemaUri nvarchar(500) NULL
);

CREATE TABLE IF NOT EXISTS infoPages
(
    icon nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    isSecure bit NULL,
    parent bigint NULL,
    importCameFrom nvarchar(500) NULL,
    type nvarchar(500) NULL,
    url nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    html text NULL,
    createdDate datetime NULL,
    openEmbedded bit NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL),
    permissionGroup bigint NULL,
    openNativeAppSchema bit NULL,
    nativeAppSchemaUri nvarchar(500) NULL

);


-- Copying rows from original table to the new table

INSERT INTO temp_infoPages_1234 (icon, modifiedBy, noChildren, isSecure, parent, importCameFrom, type, url, modifiedDate, id, isRootParent, _id, createdBy, name, importBatch, html, createdDate, openEmbedded, importKey, _namespace, _dataversion, permissionGroup, openNativeAppSchema, nativeAppSchemaUri)
 SELECT icon, modifiedBy, noChildren, isSecure, parent, importCameFrom, type, url, modifiedDate, id, isRootParent, _id, createdBy, name, importBatch, html, createdDate, openEmbedded, importKey, _namespace, _dataversion, permissionGroup, 0, NULL FROM infoPages;

-- Droping the original table and renaming the temporary table

DROP TABLE infoPages;
ALTER TABLE temp_infoPages_1234 RENAME TO infoPages;

COMMIT TRANSACTION;
