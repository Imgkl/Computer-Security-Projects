BEGIN TRANSACTION;

-- Info Pages

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
    permissionGroup bigint NULL
);


CREATE TABLE temp_infoPages_51234523423
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
    permissionGroup bigint NULL
);


INSERT INTO temp_infoPages_51234523423 (icon,modifiedBy,noChildren,isSecure,parent,importCameFrom,type,id,url,modifiedDate,isRootParent,_id,createdBy,name,importBatch,html,createdDate,openEmbedded,importKey,_namespace,_dataversion,permissionGroup)
SELECT icon,modifiedBy,noChildren,isSecure,parent,importCameFrom,type,id,url,modifiedDate,isRootParent,_id,createdBy,name,importBatch,html,createdDate,openEmbedded,importKey,_namespace,_dataversion, null FROM infoPages;


DROP TABLE infoPages;
ALTER TABLE temp_infoPages_51234523423 RENAME TO infoPages;

-- Visitor Groups

CREATE TABLE IF NOT EXISTS visitorGroups_viewingRestrictions
			(
	[seqNo] bigint NOT NULL
,	_namespace nvarchar(100)
,  [visitorgroups_name] nvarchar(500) NULL 
,  [viewingRestrictions_visitorGroup] nvarchar(500) NULL
,  [viewingRestrictions_visitorAttribute] nvarchar(500) NULL
, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));	

COMMIT TRANSACTION;