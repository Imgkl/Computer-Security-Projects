BEGIN TRANSACTION;

-- Creating table agendaitems from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS agendaitems
(
    modifiedBy nvarchar(50) NULL,
    relatedSession bigint NULL,
    importCameFrom nvarchar(500) NULL,
    type nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    eventDay nvarchar(50) NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    relatedSubSession bigint NULL,
    relatedMeeting bigint NULL,
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    isDeletable bit NULL,
    isWaitlisted bit NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_agendaitems_726643700
(
    modifiedBy nvarchar(50) NULL,
    relatedSession bigint NULL,
    importCameFrom nvarchar(500) NULL,
    type nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    eventDay nvarchar(50) NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    relatedSubSession bigint NULL,
    relatedMeeting bigint NULL,
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    isDeletable bit NULL,
    isWaitlisted bit NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_agendaitems_726643700 (modifiedBy,relatedSession,importCameFrom,type,runningTime_to,runningTime_from,visitor,modifiedDate,id,eventDay,fullDescription,_id,createdBy,relatedSubSession,relatedMeeting,name,importBatch,isWaitlisted, isDeletable,createdDate,importKey,_namespace,_dataversion)
 SELECT modifiedBy,relatedSession,importCameFrom,type,runningTime_to,runningTime_from,visitor,modifiedDate,id,eventDay,fullDescription,_id,createdBy,relatedSubSession,relatedMeeting,name,importBatch,0,isDeletable,createdDate,importKey,_namespace,_dataversion FROM agendaitems;

DROP TABLE agendaitems;
ALTER TABLE temp_agendaitems_726643700 RENAME TO agendaitems;

COMMIT TRANSACTION;
