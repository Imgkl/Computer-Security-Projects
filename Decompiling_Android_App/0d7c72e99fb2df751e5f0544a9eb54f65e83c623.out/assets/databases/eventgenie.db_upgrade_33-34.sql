
-- Creating table maps from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_maps_1655911537
(
    cameraX bigint NULL,
    icon nvarchar(500) NULL,
    seqNo bigint NULL,
    imageUrl nvarchar(500) NULL,
    cameraY bigint NULL,
    modifiedBy nvarchar(50) NULL,
    cameraZ bigint NULL,
    isRoot bit NULL,
    image bigint NULL,
    importCameFrom nvarchar(500) NULL,
    type INTEGER NULL,
    cameraMinZ bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(200) NULL,
    rotationOffset bigint NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL
);

-- Copying rows from original table to the new table

INSERT INTO temp_maps_1655911537 (cameraX,icon,imageUrl,cameraY,modifiedBy,cameraZ,isRoot,image,importCameFrom,type,cameraMinZ,modifiedDate,id,_id,createdBy,importBatch,name,rotationOffset,createdDate,importKey,_namespace,seqNo) SELECT cameraX,icon,imageUrl,cameraY,modifiedBy,cameraZ,isRoot,image,importCameFrom,type,cameraMinZ,modifiedDate,id,_id,createdBy,importBatch,name,rotationOffset,createdDate,importKey,_namespace,NULL AS seqNo FROM maps;

-- Droping the original table and renaming the temporary table

DROP TABLE maps;
ALTER TABLE temp_maps_1655911537 RENAME TO maps;

