-- Generated by SQLite Compare utility

-- The script can be used to migrate database
-- C:\Documents and Settings\eventgenie\Desktop\db\eventgenie_v45.db schema
-- to the schema of database
-- C:\Documents and Settings\eventgenie\Desktop\db\eventgenie_v46.db

BEGIN TRANSACTION;


DROP TABLE adbanners_keywords;

DROP TABLE adcampaigns_keywords;

DROP TABLE agendaitems_keywords;

DROP TABLE apprefcategories_keywords;

-- Creating table apprefs from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_apprefs_1752227528
(
    liveStatus INTEGER NULL,
    isUsingHoldingPage bit NULL,
    modifiedBy nvarchar(50) NULL,
    iconUrl nvarchar(500) NULL,
    isFeatured bit NULL,
    eventEndDate datetime NULL,
    isAvailable bit NULL,
    scheduledDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(300) NULL,
    createdDate datetime NULL,
    app bigint NULL,
    icon bigint NULL,
    scheduledTaskName nvarchar(500) NULL,
    eventLocation nvarchar(500) NULL,
    strapLine nvarchar(500) NULL,
    eventStartDate datetime NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    createdBy nvarchar(50) NULL,
    holdingPageHTML text NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    permissionGroup STRING DEFAULT NULL
);

-- Copying rows from original table to the new table

INSERT INTO temp_apprefs_1752227528 (liveStatus,isUsingHoldingPage,modifiedBy,iconUrl,isFeatured,eventEndDate,isAvailable,scheduledDate,id,scheduledLiveStatus,_id,importBatch,name,createdDate,app,icon,scheduledTaskName,eventLocation,strapLine,eventStartDate,importCameFrom,modifiedDate,createdBy,holdingPageHTML,importKey,_namespace,permissionGroup) SELECT liveStatus,isUsingHoldingPage,modifiedBy,iconUrl,isFeatured,eventEndDate,isAvailable,scheduledDate,id,scheduledLiveStatus,_id,importBatch,name,createdDate,app,icon,scheduledTaskName,eventLocation,strapLine,eventStartDate,importCameFrom,modifiedDate,createdBy,holdingPageHTML,importKey,_namespace,NULL AS permissionGroup FROM apprefs;

-- Droping the original table and renaming the temporary table

DROP TABLE apprefs;
ALTER TABLE temp_apprefs_1752227528 RENAME TO apprefs;

DROP TABLE apprefs_keywords;

DROP TABLE apps_keywords;

DROP TABLE articlegroups_keywords;

DROP TABLE articles_keywords;

DROP TABLE categories_keywords;

DROP TABLE countries_keywords;

DROP TABLE dataversions_keywords;

DROP TABLE downloadables_keywords;

DROP TABLE earlycaches_keywords;

DROP TABLE eventdays_keywords;

DROP TABLE exhibitors_keywords;

DROP TABLE exhibitortypes_keywords;

DROP TABLE favouritedownloadables_keywords;

DROP TABLE favouriteexhibitors_keywords;

DROP TABLE favouritepoi_keywords;

DROP TABLE favouriteproducts_keywords;

DROP TABLE favouritespeakers_keywords;

DROP TABLE favouritevisitors_keywords;

-- Creating table games from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_games_726643700
(
    primaryInfoPage bigint NULL,
    modifiedBy nvarchar(50) NULL,
    featured bit NULL,
    importCameFrom nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    maxGamePoints INTEGER NULL,
    sponsorCampaign bigint NULL,
    isVisible bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) NULL,
    thumbUrl nvarchar(500) NULL,
    thumb bigint NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL
);

-- Copying rows from original table to the new table

INSERT INTO temp_games_726643700 (primaryInfoPage,modifiedBy,importCameFrom,featured,runningTime_to,runningTime_from,modifiedDate,id,sponsorCampaign,isVisible,_id,createdBy,importBatch,name,thumbUrl,thumb,createdDate,importKey,_namespace,maxGamePoints) SELECT primaryInfoPage,modifiedBy,importCameFrom,featured,runningTime_to,runningTime_from,modifiedDate,id,sponsorCampaign,isVisible,_id,createdBy,importBatch,name,thumbUrl,thumb,createdDate,importKey,_namespace,NULL AS maxGamePoints FROM games;

-- Droping the original table and renaming the temporary table

DROP TABLE games;
ALTER TABLE temp_games_726643700 RENAME TO games;

DROP TABLE games_keywords;

DROP TABLE infopages_keywords;

DROP TABLE locations_keywords;

DROP TABLE maps_keywords;

DROP TABLE meetinglocations_keywords;

DROP TABLE meetings_keywords;

DROP TABLE messages_keywords;

DROP TABLE notes_keywords;

DROP TABLE permissiongroups_keywords;

DROP TABLE playergames_keywords;

DROP TABLE poi_keywords;

DROP TABLE poicategories_keywords;

DROP TABLE productcategories_keywords;

DROP TABLE products_keywords;

DROP TABLE scheduleitems_keywords;

DROP TABLE sessioncategories_keywords;

DROP TABLE sessions_keywords;

DROP TABLE speakers_keywords;

DROP TABLE subsessions_keywords;

DROP TABLE tags_keywords;

DROP TABLE tracks_keywords;

-- Creating table trophies from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_trophies_1848543519
(
    primaryInfoPage bigint NULL,
    icon nvarchar(500) NULL,
    maxTrophyPoints INTEGER NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    game bigint NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    sponsorCampaign bigint NULL,
    isVisible bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL
);

-- Copying rows from original table to the new table

INSERT INTO temp_trophies_1848543519 (primaryInfoPage,icon,modifiedBy,importCameFrom,game,runningTime_to,runningTime_from,modifiedDate,id,sponsorCampaign,isVisible,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,maxTrophyPoints) SELECT primaryInfoPage,icon,modifiedBy,importCameFrom,game,runningTime_to,runningTime_from,modifiedDate,id,sponsorCampaign,isVisible,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,NULL AS maxTrophyPoints FROM trophies;

-- Droping the original table and renaming the temporary table

DROP TABLE trophies;
ALTER TABLE temp_trophies_1848543519 RENAME TO trophies;

DROP TABLE trophies_keywords;

DROP TABLE visitorgroups_keywords;

DROP TABLE visitors_keywords;

COMMIT TRANSACTION;
