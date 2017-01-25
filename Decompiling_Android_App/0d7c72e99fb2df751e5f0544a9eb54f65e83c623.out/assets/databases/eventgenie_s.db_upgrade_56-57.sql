BEGIN TRANSACTION;

-- Creating table sessions from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS sessions
(
    location nvarchar(50) NULL,
        modifiedBy nvarchar(50) NULL,
        id INTEGER PRIMARY KEY ASC NOT NULL,
        feedbackUrl nvarchar(500) NULL,
        eventDay nvarchar(50) NULL,
        fullDescription text NULL,
        _id nvarchar(500) NULL,
        briefDescription nvarchar(500) NULL,
        importBatch nvarchar(500) NULL,
        name nvarchar(250) NULL,
        createdDate datetime NULL,
        addToAgendaMessage nvarchar(500) NULL,
        removeFromAgendaMessage nvarchar(500) NULL,
        leadChair bigint NULL,
        track nvarchar(50) NULL,
        importCameFrom nvarchar(500) NULL,
        runningTime_to datetime NULL,
        runningTime_from datetime NULL,
        modifiedDate datetime NULL,
        createdBy nvarchar(50) NULL,
        shareUrl nvarchar(500) NULL,
        importKey nvarchar(500) NULL,
        permissionGroup bigint NULL,
        _namespace nvarchar(100) NULL,
        isFavourite BOOLEAN DEFAULT 0,
        isBookmarked BOOLEAN DEFAULT 0,
        hasNote BOOLEAN DEFAULT 0,
        _dataversion NVARCHAR(100) DEFAULT (NULL)
);


CREATE TABLE temp_sessions_601795864
(
    location nvarchar(50) NULL,
        modifiedBy nvarchar(50) NULL,
        id INTEGER PRIMARY KEY ASC NOT NULL,
        feedbackUrl nvarchar(500) NULL,
        eventDay nvarchar(50) NULL,
        fullDescription text NULL,
        _id nvarchar(500) NULL,
        briefDescription nvarchar(500) NULL,
        importBatch nvarchar(500) NULL,
        name nvarchar(250) NULL,
        createdDate datetime NULL,
        addToAgendaMessage nvarchar(500) NULL,
        removeFromAgendaMessage nvarchar(500) NULL,
        leadChair bigint NULL,
        track nvarchar(50) NULL,
        importCameFrom nvarchar(500) NULL,
        runningTime_to datetime NULL,
        runningTime_from datetime NULL,
        modifiedDate datetime NULL,
        createdBy nvarchar(50) NULL,
        shareUrl nvarchar(500) NULL,
        importKey nvarchar(500) NULL,
        permissionGroup bigint NULL,
        _namespace nvarchar(100) NULL,
        isFavourite BOOLEAN DEFAULT 0,
        isBookmarked BOOLEAN DEFAULT 0,
        hasNote BOOLEAN DEFAULT 0,
        _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_sessions_601795864 (location,modifiedBy,id,feedbackUrl,eventDay,fullDescription,_id,briefDescription,importBatch,name,createdDate,addToAgendaMessage,leadChair,track,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,shareUrl,importKey,permissionGroup,_namespace,isFavourite,isBookmarked,hasNote,_dataversion)
 SELECT location,modifiedBy,id,feedbackUrl,eventDay,fullDescription,_id,briefDescription,importBatch,name,createdDate,addToAgendaMessage,leadChair,track,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,shareUrl,importKey,permissionGroup,_namespace,isFavourite,0,hasNote,_dataversion FROM sessions;


-- Droping the original table and renaming the temporary table

DROP TABLE sessions;
ALTER TABLE temp_sessions_601795864 RENAME TO sessions;

-- Creating table subsessions from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS subsessions
(
    modifiedBy nvarchar(50) NULL,
        id INTEGER PRIMARY KEY ASC NOT NULL,
        eventDay nvarchar(50) NULL,
        fullDescription text NULL,
        _id nvarchar(500) NULL,
        briefDescription nvarchar(500) NULL,
        priority INTEGER NULL,
        importBatch nvarchar(500) NULL,
        name nvarchar(250) NULL,
        createdDate datetime NULL,
        addToAgendaMessage nvarchar(500) NULL,
        removeFromAgendaMessage nvarchar(500) NULL,
        importCameFrom nvarchar(500) NULL,
        runningTime_to datetime NULL,
        runningTime_from datetime NULL,
        modifiedDate datetime NULL,
        createdBy nvarchar(50) NULL,
        session bigint NULL,
        shareUrl nvarchar(500) NULL,
        importKey nvarchar(500) NULL,
        _namespace nvarchar(100) NULL,
        isFavourite BOOLEAN DEFAULT 0,
        isBookmarked BOOLEAN DEFAULT 0,
        hasNote BOOLEAN DEFAULT 0,
        _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_subsessions_698111855
(
    modifiedBy nvarchar(50) NULL,
        id INTEGER PRIMARY KEY ASC NOT NULL,
        eventDay nvarchar(50) NULL,
        fullDescription text NULL,
        _id nvarchar(500) NULL,
        briefDescription nvarchar(500) NULL,
        priority INTEGER NULL,
        importBatch nvarchar(500) NULL,
        name nvarchar(250) NULL,
        createdDate datetime NULL,
        addToAgendaMessage nvarchar(500) NULL,
        removeFromAgendaMessage nvarchar(500) NULL,
        importCameFrom nvarchar(500) NULL,
        runningTime_to datetime NULL,
        runningTime_from datetime NULL,
        modifiedDate datetime NULL,
        createdBy nvarchar(50) NULL,
        session bigint NULL,
        shareUrl nvarchar(500) NULL,
        importKey nvarchar(500) NULL,
        _namespace nvarchar(100) NULL,
        isFavourite BOOLEAN DEFAULT 0,
        isBookmarked BOOLEAN DEFAULT 0,
        hasNote BOOLEAN DEFAULT 0,
        _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_subsessions_698111855 (modifiedBy,id,eventDay,fullDescription,_id,briefDescription,priority,importBatch,name,createdDate,addToAgendaMessage,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,session,shareUrl,importKey,_namespace,isFavourite,isBookmarked,hasNote,_dataversion)
SELECT modifiedBy,id,eventDay,fullDescription,_id,briefDescription,priority,importBatch,name,createdDate,addToAgendaMessage,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,session,shareUrl,importKey,_namespace,isFavourite,0,hasNote,_dataversion FROM subsessions;

-- Droping the original table and renaming the temporary table

DROP TABLE subsessions;
ALTER TABLE temp_subsessions_698111855 RENAME TO subsessions;


-- Creating table permissiongroups from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS permissiongroups
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    anonymousPermissionSet_canFavourite bit NULL,
    anonymousPermissionSet_canAddToFavourite bit NULL,
    anonymousPermissionSet_canOpen bit NULL,
    anonymousPermissionSet_canView bit NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(300) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    permissionFailureMessage nvarchar(500) NULL,
    everyoneElsePermissionSet_canFavourite bit NULL,
    everyoneElsePermissionSet_canAddToFavourite bit NULL,
    everyoneElsePermissionSet_canOpen bit NULL,
    everyoneElsePermissionSet_canView bit NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_permissiongroups_216531900
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    anonymousPermissionSet_canFavourite bit NULL,
    anonymousPermissionSet_canAddToFavourite bit NULL,
    anonymousPermissionSet_canOpen bit NULL,
    anonymousPermissionSet_canView bit NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(300) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    permissionFailureMessage nvarchar(500) NULL,
    everyoneElsePermissionSet_canFavourite bit NULL,
    everyoneElsePermissionSet_canAddToFavourite bit NULL,
    everyoneElsePermissionSet_canOpen bit NULL,
    everyoneElsePermissionSet_canView bit NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_permissiongroups_216531900 (modifiedBy,importCameFrom,anonymousPermissionSet_canFavourite,anonymousPermissionSet_canAddToFavourite,anonymousPermissionSet_canOpen,anonymousPermissionSet_canView,modifiedDate,id,_id,createdBy,name,importBatch,createdDate,permissionFailureMessage,everyoneElsePermissionSet_canFavourite,everyoneElsePermissionSet_canAddToFavourite,everyoneElsePermissionSet_canOpen,everyoneElsePermissionSet_canView,importKey,_namespace,_dataversion)
SELECT modifiedBy,importCameFrom,anonymousPermissionSet_canFavourite,0,anonymousPermissionSet_canOpen,anonymousPermissionSet_canView,modifiedDate,id,_id,createdBy,name,importBatch,createdDate,permissionFailureMessage,everyoneElsePermissionSet_canFavourite,0,everyoneElsePermissionSet_canOpen,everyoneElsePermissionSet_canView,importKey,_namespace,_dataversion FROM permissiongroups;

-- Droping the original table and renaming the temporary table

DROP TABLE permissiongroups;
ALTER TABLE temp_permissiongroups_216531900 RENAME TO permissiongroups;


-- Creating table permissionGroups_visitorGroupPermissionSets from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS permissionGroups_visitorGroupPermissionSets
(
	[seqNo] bigint NOT NULL,
	_namespace nvarchar(100),
	[permissiongroups_id] bigint NULL ,
	[visitorGroupPermissionSets_visitorGroup] nvarchar(50) NULL  ,
    [visitorGroupPermissionSets_canFavourite] bit NULL  ,
    [visitorGroupPermissionSets_canAddToFavourite] bit NULL  ,
    [visitorGroupPermissionSets_canOpen] bit NULL  ,
    [visitorGroupPermissionSets_canView] bit NULL,
    _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL )
);

CREATE TABLE temp_permissionGroups_visitorGroupPermissionSets_123123
(
	[seqNo] bigint NOT NULL,
	_namespace nvarchar(100),
	[permissiongroups_id] bigint NULL ,
	[visitorGroupPermissionSets_visitorGroup] nvarchar(50) NULL  ,
    [visitorGroupPermissionSets_canFavourite] bit NULL  ,
    [visitorGroupPermissionSets_canAddToFavourite] bit NULL  ,
    [visitorGroupPermissionSets_canOpen] bit NULL  ,
    [visitorGroupPermissionSets_canView] bit NULL,
    _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL )
);


-- Copying rows from original table to the new table

INSERT INTO temp_permissionGroups_visitorGroupPermissionSets_123123 (seqNo,_namespace,permissiongroups_id,visitorGroupPermissionSets_visitorGroup,visitorGroupPermissionSets_canFavourite,visitorGroupPermissionSets_canAddToFavourite,visitorGroupPermissionSets_canOpen,visitorGroupPermissionSets_canView,_dataversion)
SELECT seqNo,_namespace,permissiongroups_id,visitorGroupPermissionSets_visitorGroup,visitorGroupPermissionSets_canFavourite,0 ,visitorGroupPermissionSets_canOpen,visitorGroupPermissionSets_canView,_dataversion FROM permissionGroups_visitorGroupPermissionSets;

-- Droping the original table and renaming the temporary table

DROP TABLE permissionGroups_visitorGroupPermissionSets;
ALTER TABLE temp_permissionGroups_visitorGroupPermissionSets_123123 RENAME TO permissionGroups_visitorGroupPermissionSets;


-- Surveys

CREATE TABLE IF NOT EXISTS surveys
(
    id INTEGER PRIMARY KEY ASC NOT NULL,
    name nvarchar(100) NULL,
--    relatedTags ???
    permissionGroup bigint NULL,
    url nvarchar(500) NULL,

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

ALTER TABLE sessions ADD COLUMN survey bigint NULL;

CREATE TABLE if not exists products
(
    modifiedBy nvarchar(50) NULL,
    contact_youtubeUrl nvarchar(255) NULL,
    contact_twitter nvarchar(255) NULL,
    contact_linkedIn nvarchar(255) NULL,
    contact_fax nvarchar(100) NULL,
    contact_telephone2 nvarchar(100) NULL,
    contact_email nvarchar(100) NULL,
    contact_facebook nvarchar(255) NULL,
    contact_www nvarchar(255) NULL,
    contact_telephone nvarchar(100) NULL,
    contact_blogUrl nvarchar(255) NULL,
    mainImage bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(300) NULL,
    createdDate datetime NULL,
    customField3 nvarchar(100) NULL,
    customField4 nvarchar(100) NULL,
    importCameFrom nvarchar(500) NULL,
    customField1 nvarchar(100) NULL,
    customField2 nvarchar(100) NULL,
    mainImageUrl nvarchar(500) NULL,
    customField5 nvarchar(100) NULL,
    modifiedDate datetime NULL,
    createdBy nvarchar(50) NULL,
    shareUrl nvarchar(500) NULL,
    exhibitor bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

ALTER TABLE products ADD COLUMN survey bigint NULL;

COMMIT TRANSACTION;