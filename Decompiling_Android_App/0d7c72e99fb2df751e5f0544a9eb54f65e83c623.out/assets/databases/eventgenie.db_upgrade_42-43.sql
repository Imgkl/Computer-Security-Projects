-- Generated by SQLite Compare utility

-- The script can be used to migrate database
-- C:\Documents and Settings\eventgenie\Desktop\db\eventgenie_42.db schema
-- to the schema of database
-- C:\Documents and Settings\eventgenie\Desktop\db\eventgenie_43.db

BEGIN TRANSACTION;


-- Creating table apps from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_apps_534011718
(
    client bigint NULL,
    modifiedBy nvarchar(50) NULL,
    eventAppStoreSubmitDate datetime NULL,
    iconUrl nvarchar(500) NULL,
    locale nvarchar(10) NULL,
    eventEndDate datetime NULL,
    networkingEmails_autoCancelMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_autoCancelMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_forgottenPasswordMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_forgottenPasswordMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_acceptMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_acceptMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_inAppMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_inAppMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_arrangeMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_arrangeMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_declineMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_declineMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_changeMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_changeMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_loginMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_loginMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_emailMyEventMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_emailMyEventMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_autoAcceptMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_autoAcceptMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_cancelMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_cancelMeetingTemplate_appMessageTemplate bigint NULL,
    eventType nvarchar(500) NULL,
    dataIntegrationRequired bit NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    liveVersion nvarchar(50) NULL,
    servingUrl nvarchar(500) NULL,
    title nvarchar(500) NULL,
    fullDescription text NULL,
    stagingVersion nvarchar(50) NULL,
    _id nvarchar(500) NULL,
    integration_param1 nvarchar(500) NULL,
    integration_param10 nvarchar(500) NULL,
    integration_param2 nvarchar(500) NULL,
    integration_visitorLoginType int NULL,
    integration_param3 nvarchar(500) NULL,
    integration_param4 nvarchar(500) NULL,
    integration_integrationType nvarchar(500) NULL,
    integration_param5 nvarchar(500) NULL,
    integration_param6 nvarchar(500) NULL,
    integration_param7 nvarchar(500) NULL,
    integration_param8 nvarchar(500) NULL,
    integration_param9 nvarchar(500) NULL,
    mappingIntegrationRequired bit NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(25) NULL,
    features_networking_enabled bit NULL,
    features_networking_purchasedLevel int NULL,
    features_salesPackage nvarchar(500) NULL,
    features_exhibitors_enabled bit NULL,
    features_exhibitors_purchasedLevel int NULL,
    features_sponsorship_sponsorCampaign bigint NULL,
    features_sponsorship_enabled bit NULL,
    features_sponsorship_purchasedLevel int NULL,
    features_sponsorship_sponsor_portalBanner bigint NULL,
    features_sponsorship_sponsor_bannerUrl nvarchar(500) NULL,
    features_sponsorship_sponsor_showBanner bit NULL,
    features_sponsorship_sponsor_linkType int NULL,
    features_sponsorship_sponsor_portalBannerUrl nvarchar(500) NULL,
    features_sponsorship_sponsor_infoPage bigint NULL,
    features_sponsorship_sponsor_exhibitor bigint NULL,
    features_sponsorship_sponsor_banner bigint NULL,
    features_multievent_enabled bit NULL,
    features_multievent_purchasedLevel int NULL,
    features_qrreader_enabled bit NULL,
    features_qrreader_purchasedLevel int NULL,
    features_mapping_enabled bit NULL,
    features_mapping_purchasedLevel int NULL,
    features_platforms int NULL,
    features_registration_enabled bit NULL,
    features_registration_purchasedLevel int NULL,
    features_speakers_enabled bit NULL,
    features_speakers_purchasedLevel int NULL,
    features_downloads_enabled bit NULL,
    features_downloads_purchasedLevel int NULL,
    features_infobooth_enabled bit NULL,
    features_infobooth_purchasedLevel int NULL,
    features_gamification_enabled bit NULL,
    features_gamification_purchasedLevel int NULL,
    features_feedback_enabled bit NULL,
    features_feedback_purchasedLevel int NULL,
    features_poi_enabled bit NULL,
    features_poi_purchasedLevel int NULL,
    features_favourites_enabled bit NULL,
    features_favourites_purchasedLevel int NULL,
    features_newssocial_enabled bit NULL,
    features_newssocial_purchasedLevel int NULL,
    features_schedule_enabled bit NULL,
    features_schedule_purchasedLevel int NULL,
    features_messaging_enabled bit NULL,
    features_messaging_purchasedLevel int NULL,
    features_notes_enabled bit NULL,
    features_notes_purchasedLevel int NULL,
    features_products_enabled bit NULL,
    features_products_purchasedLevel int NULL,
    features_myevent_enabled bit NULL,
    features_myevent_purchasedLevel int NULL,
    features_appsecurity_enabled bit NULL,
    features_appsecurity_purchasedLevel int NULL,
    features_appsecurity_allowRegistration bit NULL,
    integrationXSLs bigint NULL,
    createdDate datetime NULL,
    incrementNotificationBadgeCounts bit NULL,
    lastProcessedUUIDs datetime NULL,
    requiresInterestsRecompilation bit NULL,
    appProcessStopDate datetime NULL,
    eventLaunchDate datetime NULL,
    appProcessAnalytics bit NULL,
    eventStartDate datetime NULL,
    importCameFrom nvarchar(500) NULL,
    appProcessStartDate datetime NULL,
    modifiedDate datetime NULL,
    dashboardAllowed bit NULL,
    lastProcessedVisitors datetime NULL,
    requiresActivityRecompilation bit NULL,
    createdBy nvarchar(50) NULL,
    lastProcessedActivities datetime NULL,
    isTemplate bit NULL,
    shortName nvarchar(13) NULL,
    lastProcessedInterests datetime NULL,
    visitorDataNamespace nvarchar(500) NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL
);

-- Copying rows from original table to the new table

INSERT INTO temp_apps_534011718 (client,modifiedBy,eventAppStoreSubmitDate,iconUrl,locale,eventEndDate,eventType,dataIntegrationRequired,id,liveVersion,servingUrl,title,fullDescription,stagingVersion,_id,integration_param1,integration_param10,integration_param2,integration_visitorLoginType,integration_param3,integration_param4,integration_integrationType,integration_param5,integration_param6,integration_param7,integration_param8,integration_param9,mappingIntegrationRequired,importBatch,name,features_networking_enabled,features_networking_purchasedLevel,features_salesPackage,features_exhibitors_enabled,features_exhibitors_purchasedLevel,features_sponsorship_sponsorCampaign,features_sponsorship_enabled,features_sponsorship_purchasedLevel,features_sponsorship_sponsor_portalBanner,features_sponsorship_sponsor_bannerUrl,features_sponsorship_sponsor_showBanner,features_sponsorship_sponsor_linkType,features_sponsorship_sponsor_portalBannerUrl,features_sponsorship_sponsor_infoPage,features_sponsorship_sponsor_exhibitor,features_sponsorship_sponsor_banner,features_multievent_enabled,features_multievent_purchasedLevel,features_qrreader_enabled,features_qrreader_purchasedLevel,features_mapping_enabled,features_mapping_purchasedLevel,features_platforms,features_registration_enabled,features_registration_purchasedLevel,features_speakers_enabled,features_speakers_purchasedLevel,features_downloads_enabled,features_downloads_purchasedLevel,features_infobooth_enabled,features_infobooth_purchasedLevel,features_feedback_enabled,features_feedback_purchasedLevel,features_poi_enabled,features_poi_purchasedLevel,features_favourites_enabled,features_favourites_purchasedLevel,features_newssocial_enabled,features_newssocial_purchasedLevel,features_schedule_enabled,features_schedule_purchasedLevel,features_messaging_enabled,features_messaging_purchasedLevel,features_notes_enabled,features_notes_purchasedLevel,features_products_enabled,features_products_purchasedLevel,features_myevent_enabled,features_myevent_purchasedLevel,features_appsecurity_enabled,features_appsecurity_purchasedLevel,features_appsecurity_allowRegistration,integrationXSLs,createdDate,incrementNotificationBadgeCounts,lastProcessedUUIDs,requiresInterestsRecompilation,appProcessStopDate,eventLaunchDate,appProcessAnalytics,eventStartDate,importCameFrom,appProcessStartDate,modifiedDate,dashboardAllowed,lastProcessedVisitors,requiresActivityRecompilation,createdBy,lastProcessedActivities,isTemplate,shortName,lastProcessedInterests,visitorDataNamespace,importKey,_namespace,networkingEmails_autoCancelMeetingTemplate_globalMessageTemplate,networkingEmails_autoCancelMeetingTemplate_appMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_acceptMeetingTemplate_globalMessageTemplate,networkingEmails_acceptMeetingTemplate_appMessageTemplate,networkingEmails_inAppMessageTemplate_globalMessageTemplate,networkingEmails_inAppMessageTemplate_appMessageTemplate,networkingEmails_arrangeMeetingTemplate_globalMessageTemplate,networkingEmails_arrangeMeetingTemplate_appMessageTemplate,networkingEmails_declineMeetingTemplate_globalMessageTemplate,networkingEmails_declineMeetingTemplate_appMessageTemplate,networkingEmails_changeMeetingTemplate_globalMessageTemplate,networkingEmails_changeMeetingTemplate_appMessageTemplate,networkingEmails_loginMessageTemplate_globalMessageTemplate,networkingEmails_loginMessageTemplate_appMessageTemplate,networkingEmails_emailMyEventMessageTemplate_globalMessageTemplate,networkingEmails_emailMyEventMessageTemplate_appMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_globalMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_appMessageTemplate,networkingEmails_cancelMeetingTemplate_globalMessageTemplate,networkingEmails_cancelMeetingTemplate_appMessageTemplate,features_gamification_enabled,features_gamification_purchasedLevel) SELECT client,modifiedBy,eventAppStoreSubmitDate,iconUrl,locale,eventEndDate,eventType,dataIntegrationRequired,id,liveVersion,servingUrl,title,fullDescription,stagingVersion,_id,integration_param1,integration_param10,integration_param2,integration_visitorLoginType,integration_param3,integration_param4,integration_integrationType,integration_param5,integration_param6,integration_param7,integration_param8,integration_param9,mappingIntegrationRequired,importBatch,name,features_networking_enabled,features_networking_purchasedLevel,features_salesPackage,features_exhibitors_enabled,features_exhibitors_purchasedLevel,features_sponsorship_sponsorCampaign,features_sponsorship_enabled,features_sponsorship_purchasedLevel,features_sponsorship_sponsor_portalBanner,features_sponsorship_sponsor_bannerUrl,features_sponsorship_sponsor_showBanner,features_sponsorship_sponsor_linkType,features_sponsorship_sponsor_portalBannerUrl,features_sponsorship_sponsor_infoPage,features_sponsorship_sponsor_exhibitor,features_sponsorship_sponsor_banner,features_multievent_enabled,features_multievent_purchasedLevel,features_qrreader_enabled,features_qrreader_purchasedLevel,features_mapping_enabled,features_mapping_purchasedLevel,features_platforms,features_registration_enabled,features_registration_purchasedLevel,features_speakers_enabled,features_speakers_purchasedLevel,features_downloads_enabled,features_downloads_purchasedLevel,features_infobooth_enabled,features_infobooth_purchasedLevel,features_feedback_enabled,features_feedback_purchasedLevel,features_poi_enabled,features_poi_purchasedLevel,features_favourites_enabled,features_favourites_purchasedLevel,features_newssocial_enabled,features_newssocial_purchasedLevel,features_schedule_enabled,features_schedule_purchasedLevel,features_messaging_enabled,features_messaging_purchasedLevel,features_notes_enabled,features_notes_purchasedLevel,features_products_enabled,features_products_purchasedLevel,features_myevent_enabled,features_myevent_purchasedLevel,features_appsecurity_enabled,features_appsecurity_purchasedLevel,features_appsecurity_allowRegistration,integrationXSLs,createdDate,incrementNotificationBadgeCounts,lastProcessedUUIDs,requiresInterestsRecompilation,appProcessStopDate,eventLaunchDate,appProcessAnalytics,eventStartDate,importCameFrom,appProcessStartDate,modifiedDate,dashboardAllowed,lastProcessedVisitors,requiresActivityRecompilation,createdBy,lastProcessedActivities,isTemplate,shortName,lastProcessedInterests,visitorDataNamespace,importKey,_namespace,NULL AS networkingEmails_autoCancelMeetingTemplate_globalMessageTemplate,NULL AS networkingEmails_autoCancelMeetingTemplate_appMessageTemplate,NULL AS networkingEmails_forgottenPasswordMessageTemplate_globalMessageTemplate,NULL AS networkingEmails_forgottenPasswordMessageTemplate_appMessageTemplate,NULL AS networkingEmails_acceptMeetingTemplate_globalMessageTemplate,NULL AS networkingEmails_acceptMeetingTemplate_appMessageTemplate,NULL AS networkingEmails_inAppMessageTemplate_globalMessageTemplate,NULL AS networkingEmails_inAppMessageTemplate_appMessageTemplate,NULL AS networkingEmails_arrangeMeetingTemplate_globalMessageTemplate,NULL AS networkingEmails_arrangeMeetingTemplate_appMessageTemplate,NULL AS networkingEmails_declineMeetingTemplate_globalMessageTemplate,NULL AS networkingEmails_declineMeetingTemplate_appMessageTemplate,NULL AS networkingEmails_changeMeetingTemplate_globalMessageTemplate,NULL AS networkingEmails_changeMeetingTemplate_appMessageTemplate,NULL AS networkingEmails_loginMessageTemplate_globalMessageTemplate,NULL AS networkingEmails_loginMessageTemplate_appMessageTemplate,NULL AS networkingEmails_emailMyEventMessageTemplate_globalMessageTemplate,NULL AS networkingEmails_emailMyEventMessageTemplate_appMessageTemplate,NULL AS networkingEmails_autoAcceptMeetingTemplate_globalMessageTemplate,NULL AS networkingEmails_autoAcceptMeetingTemplate_appMessageTemplate,NULL AS networkingEmails_cancelMeetingTemplate_globalMessageTemplate,NULL AS networkingEmails_cancelMeetingTemplate_appMessageTemplate,NULL AS features_gamification_enabled,NULL AS features_gamification_purchasedLevel FROM apps;

-- Droping the original table and renaming the temporary table

DROP TABLE apps;
ALTER TABLE temp_apps_534011718 RENAME TO apps;

CREATE TABLE apps_games
(
    seqNo bigint NOT NULL,
    apps_id bigint NULL,
    games bigint NULL
);

-- Creating table exhibitors from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_exhibitors_1655911537
(
    externalMappingUrl nvarchar(500) NULL,
    gamePersona_nickname nvarchar(30) NULL,
    modifiedBy nvarchar(50) NULL,
    newPassword nvarchar(500) NULL,
    locale nvarchar(10) NULL,
    featured INTEGER NULL,
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
    password nvarchar(50) NULL,
    userType INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    username nvarchar(500) NULL,
    timezone nvarchar(500) NULL,
    fullDescription text NULL,
    briefDescription nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(100) NULL,
    createdDate datetime NULL,
    lastAccessed datetime NULL,
    logo bigint NULL,
    logoUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    numFavourites INTEGER NULL,
    category nvarchar(50) NULL,
    createdBy nvarchar(50) NULL,
    address_county nvarchar(100) NULL,
    address_postCode nvarchar(45) NULL,
    address_address1 nvarchar(100) NULL,
    address_address2 nvarchar(100) NULL,
    address_town nvarchar(100) NULL,
    address_address3 nvarchar(100) NULL,
    address_country nvarchar(50) NULL,
    shareUrl nvarchar(500) NULL,
    exhibitorType nvarchar(50) NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0
);

-- Copying rows from original table to the new table

INSERT INTO temp_exhibitors_1655911537 (externalMappingUrl,modifiedBy,featured,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,fullDescription,_id,briefDescription,name,importBatch,createdDate,logo,importCameFrom,logoUrl,modifiedDate,numFavourites,category,createdBy,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,shareUrl,exhibitorType,importKey,_namespace,isFavourite,hasNote,gamePersona_nickname,newPassword,locale,password,userType,username,timezone,lastAccessed) SELECT externalMappingUrl,modifiedBy,featured,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,fullDescription,_id,briefDescription,name,importBatch,createdDate,logo,importCameFrom,logoUrl,modifiedDate,numFavourites,category,createdBy,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,shareUrl,exhibitorType,importKey,_namespace,isFavourite,hasNote,NULL AS gamePersona_nickname,NULL AS newPassword,NULL AS locale,NULL AS password,NULL AS userType,NULL AS username,NULL AS timezone,NULL AS lastAccessed FROM exhibitors;

-- Droping the original table and renaming the temporary table

DROP TABLE exhibitors;
ALTER TABLE temp_exhibitors_1655911537 RENAME TO exhibitors;

-- Creating associated indexes from scratch

CREATE INDEX exhibitors_i1
ON exhibitors
(
    id
);

CREATE TABLE exhibitors_apps
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    exhibitors_id bigint NULL,
    apps bigint NULL
);

CREATE TABLE exhibitors_UUIDs
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    exhibitors_id bigint NULL,
    UUIDs nvarchar(500) NULL
);

CREATE TABLE games
(
    primaryInfoPage bigint NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    featured bit NULL,
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

CREATE TABLE games_keywords
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    games_id bigint NULL,
    keywords nvarchar(500) NULL
);

CREATE TABLE games_secondaryInfoPages
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    games_id bigint NULL,
    secondaryInfoPages bigint NULL
);

CREATE TABLE games_trophies
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    games_id bigint NULL,
    trophies bigint NULL
);

-- Creating table locations from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_locations_630327709
(
    mapPosition_colour nvarchar(500) NULL,
    mapPosition_vectors nvarchar(500) NULL,
    mapPosition_zIndex int NULL,
    mapPosition_vectorsFormat int NULL,
    mapPosition_labelColour nvarchar(500) NULL,
    mapPosition_rotation int NULL,
    mapPosition_map bigint NULL,
    mapPosition_label nvarchar(500) NULL,
    mapPosition_type int NULL,
    mapPosition_version int NULL,
    mapPosition_vectorsBig text NULL,
    createdBy nvarchar(50) NULL,
    _id nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    locationType nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    importBatch nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    createdDate datetime NULL,
    modifiedDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL
);

-- Copying rows from original table to the new table

INSERT INTO temp_locations_630327709 (mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,createdBy,_id,modifiedBy,locationType,name,importBatch,importCameFrom,createdDate,modifiedDate,importKey,_namespace,mapPosition_vectorsBig) SELECT mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,createdBy,_id,modifiedBy,locationType,name,importBatch,importCameFrom,createdDate,modifiedDate,importKey,_namespace,NULL AS mapPosition_vectorsBig FROM locations;

-- Droping the original table and renaming the temporary table

DROP TABLE locations;
ALTER TABLE temp_locations_630327709 RENAME TO locations;

-- Creating associated indexes from scratch

CREATE INDEX locations_i5
ON locations
(
    name
);

-- Creating table meetinglocations from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_meetinglocations_1752227528
(
    mapPosition_colour nvarchar(500) NULL,
    mapPosition_vectors nvarchar(500) NULL,
    mapPosition_zIndex int NULL,
    mapPosition_vectorsFormat int NULL,
    mapPosition_labelColour nvarchar(500) NULL,
    mapPosition_rotation int NULL,
    mapPosition_map bigint NULL,
    mapPosition_label nvarchar(500) NULL,
    mapPosition_type int NULL,
    mapPosition_version int NULL,
    mapPosition_vectorsBig text NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    meetingsCapacity INTEGER NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL
);

-- Copying rows from original table to the new table

INSERT INTO temp_meetinglocations_1752227528 (mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,modifiedBy,importCameFrom,modifiedDate,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,mapPosition_vectorsBig,meetingsCapacity) SELECT mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,modifiedBy,importCameFrom,modifiedDate,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,NULL AS mapPosition_vectorsBig,NULL AS meetingsCapacity FROM meetinglocations;

-- Droping the original table and renaming the temporary table

DROP TABLE meetinglocations;
ALTER TABLE temp_meetinglocations_1752227528 RENAME TO meetinglocations;

CREATE TABLE playergames
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    game bigint NULL,
    modifiedDate datetime NULL,
    visitor bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    totalGamePoints INTEGER NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL
);

CREATE TABLE playergames_keywords
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    playergames_id bigint NULL,
    keywords nvarchar(500) NULL
);

CREATE TABLE playergames_playerAchievements
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    playergames_id bigint NULL,
    playerAchievements_trophy bigint NULL,
    playerAchievements_activityLog nvarchar(500) NULL,
    playerAchievements_actionType int NULL,
    playerAchievements_points bigint NULL
);

CREATE TABLE playergames_playerTrophies
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    playergames_id bigint NULL,
    playerTrophies_trophy bigint NULL,
    playerTrophies_totalTrophyPoints bigint NULL
);

-- Creating table speakers from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_speakers_726643700
(
    gamePersona_nickname nvarchar(30) NULL,
    department nvarchar(100) NULL,
    modifiedBy nvarchar(50) NULL,
    newPassword nvarchar(500) NULL,
    locale nvarchar(10) NULL,
    mugShot bigint NULL,
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
    password nvarchar(50) NULL,
    userType INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    mugShotUrl nvarchar(500) NULL,
    username nvarchar(500) NULL,
    timezone nvarchar(500) NULL,
    title nvarchar(20) NULL,
    fullDescription text NULL,
    briefDescription nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    lastNames nvarchar(100) NULL,
    createdDate datetime NULL,
    jobTitle nvarchar(500) NULL,
    lastAccessed datetime NULL,
    firstNames nvarchar(100) NULL,
    importCameFrom nvarchar(500) NULL,
    companyName nvarchar(100) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    numFavourites INTEGER NULL,
    createdBy nvarchar(50) NULL,
    address_county nvarchar(100) NULL,
    address_postCode nvarchar(45) NULL,
    address_address1 nvarchar(100) NULL,
    address_address2 nvarchar(100) NULL,
    address_town nvarchar(100) NULL,
    address_address3 nvarchar(100) NULL,
    address_country nvarchar(50) NULL,
    shareUrl nvarchar(500) NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0
);

-- Copying rows from original table to the new table

INSERT INTO temp_speakers_726643700 (modifiedBy,department,mugShot,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,title,mugShotUrl,fullDescription,_id,briefDescription,importBatch,lastNames,createdDate,firstNames,jobTitle,importCameFrom,companyName,visitor,modifiedDate,numFavourites,createdBy,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,shareUrl,importKey,_namespace,isFavourite,hasNote,gamePersona_nickname,newPassword,locale,password,userType,username,timezone,lastAccessed) SELECT modifiedBy,department,mugShot,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,title,mugShotUrl,fullDescription,_id,briefDescription,importBatch,lastNames,createdDate,firstNames,jobTitle,importCameFrom,companyName,visitor,modifiedDate,numFavourites,createdBy,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,shareUrl,importKey,_namespace,isFavourite,hasNote,NULL AS gamePersona_nickname,NULL AS newPassword,NULL AS locale,NULL AS password,NULL AS userType,NULL AS username,NULL AS timezone,NULL AS lastAccessed FROM speakers;

-- Droping the original table and renaming the temporary table

DROP TABLE speakers;
ALTER TABLE temp_speakers_726643700 RENAME TO speakers;

CREATE TABLE speakers_apps
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    speakers_id bigint NULL,
    apps bigint NULL
);

CREATE TABLE speakers_UUIDs
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    speakers_id bigint NULL,
    UUIDs nvarchar(500) NULL
);

CREATE TABLE trophies
(
    primaryInfoPage bigint NULL,
    icon nvarchar(500) NULL,
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

CREATE TABLE trophies_keywords
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    trophies_id bigint NULL,
    keywords nvarchar(500) NULL
);

CREATE TABLE trophies_secondaryInfoPages
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    trophies_id bigint NULL,
    secondaryInfoPages bigint NULL
);

CREATE TABLE trophies_thresholds
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    trophies_id bigint NULL,
    thresholds_colour nvarchar(500) NULL,
    thresholds_thresholdValue bigint NULL,
    thresholds_name nvarchar(500) NULL
);

-- Creating table visitorgroups from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_visitorgroups_1848543519
(
    meetingCredits INTEGER NULL,
    addToAgendaDisabledMessage nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    isAddToAgendaEnabled bit NULL,
    importCameFrom nvarchar(500) NULL,
    meetingMinQuota INTEGER NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    autoAcceptMeeting bit NULL,
    createdDate datetime NULL,
    messageCredits INTEGER NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL
);

-- Copying rows from original table to the new table

INSERT INTO temp_visitorgroups_1848543519 (meetingCredits,addToAgendaDisabledMessage,modifiedBy,isAddToAgendaEnabled,importCameFrom,modifiedDate,_id,createdBy,importBatch,name,createdDate,messageCredits,importKey,_namespace,meetingMinQuota,autoAcceptMeeting) SELECT meetingCredits,addToAgendaDisabledMessage,modifiedBy,isAddToAgendaEnabled,importCameFrom,modifiedDate,_id,createdBy,importBatch,name,createdDate,messageCredits,importKey,_namespace,NULL AS meetingMinQuota,NULL AS autoAcceptMeeting FROM visitorgroups;

-- Droping the original table and renaming the temporary table

DROP TABLE visitorgroups;
ALTER TABLE temp_visitorgroups_1848543519 RENAME TO visitorgroups;

-- Creating table visitors from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_visitors_822959691
(
    gamePersona_nickname nvarchar(30) NULL,
    newPassword nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    loginEmailSent bit NULL,
    password nvarchar(50) NULL,
    userType INTEGER NULL,
    timezone nvarchar(500) NULL,
    username nvarchar(500) NULL,
    mugShotUrl nvarchar(500) NULL,
    showEmail bit NULL,
    fullDescription text NULL,
    showTwitter bit NULL,
    messageDebits INTEGER NULL,
    lastNames nvarchar(100) NULL,
    createdDate datetime NULL,
    firstNames nvarchar(100) NULL,
    meetingDebits INTEGER NULL,
    privateKey nvarchar(500) NULL,
    totalPlayerPoints INTEGER NULL,
    showYouTubeUrl bit NULL,
    companyName nvarchar(100) NULL,
    showBriefDescription bit NULL,
    createdBy nvarchar(50) NULL,
    showBlogUrl bit NULL,
    actionTypesLastRanOn text NULL,
    showReasonForAttending bit NULL,
    showVisitorType bit NULL,
    showFullDescription bit NULL,
    messageCredits INTEGER NULL,
    importKey nvarchar(500) NULL,
    showJobTitle bit NULL,
    hasSetProfile bit NULL,
    meetingCredits INTEGER NULL,
    department nvarchar(100) NULL,
    locale nvarchar(10) NULL,
    reasonForAttending nvarchar(500) NULL,
    showInterests bit NULL,
    mugShot bigint NULL,
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
    meetingMinQuota INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    showLinkedIn bit NULL,
    showDepartment bit NULL,
    showFax bit NULL,
    title nvarchar(20) NULL,
    showTelephone2 bit NULL,
    showName bit NULL,
    _id nvarchar(500) NULL,
    briefDescription nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    showAddress bit NULL,
    showCompanyName bit NULL,
    lastAccessed datetime NULL,
    jobTitle nvarchar(500) NULL,
    showMugShot bit NULL,
    importCameFrom nvarchar(500) NULL,
    enableGamification bit NULL,
    showWww bit NULL,
    modifiedDate datetime NULL,
    showTelephone bit NULL,
    visitorGroup nvarchar(50) NULL,
    showFacebook bit NULL,
    address_county nvarchar(100) NULL,
    address_postCode nvarchar(45) NULL,
    address_address1 nvarchar(100) NULL,
    address_address2 nvarchar(100) NULL,
    address_town nvarchar(100) NULL,
    address_address3 nvarchar(100) NULL,
    address_country nvarchar(50) NULL,
    visitorType nvarchar(500) NULL,
    urbanAirshipAPID nvarchar(500) NULL,
    exhibitor bigint NULL,
    showMe bit NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0
);

-- Copying rows from original table to the new table

INSERT INTO temp_visitors_822959691 (modifiedBy,newPassword,loginEmailSent,password,userType,username,mugShotUrl,timezone,showEmail,fullDescription,showTwitter,messageDebits,lastNames,createdDate,firstNames,meetingDebits,showYouTubeUrl,companyName,createdBy,showBriefDescription,showBlogUrl,actionTypesLastRanOn,showReasonForAttending,showVisitorType,showFullDescription,messageCredits,importKey,showJobTitle,hasSetProfile,meetingCredits,department,locale,reasonForAttending,showInterests,mugShot,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,showLinkedIn,showDepartment,showFax,title,showTelephone2,showName,_id,briefDescription,importBatch,showAddress,showCompanyName,jobTitle,lastAccessed,showMugShot,importCameFrom,showWww,modifiedDate,showTelephone,visitorGroup,showFacebook,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,visitorType,urbanAirshipAPID,exhibitor,showMe,_namespace,isFavourite,hasNote,gamePersona_nickname,privateKey,totalPlayerPoints,meetingMinQuota,enableGamification) SELECT modifiedBy,newPassword,loginEmailSent,password,userType,username,mugShotUrl,timezone,showEmail,fullDescription,showTwitter,messageDebits,lastNames,createdDate,firstNames,meetingDebits,showYouTubeUrl,companyName,createdBy,showBriefDescription,showBlogUrl,actionTypesLastRanOn,showReasonForAttending,showVisitorType,showFullDescription,messageCredits,importKey,showJobTitle,hasSetProfile,meetingCredits,department,locale,reasonForAttending,showInterests,mugShot,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,showLinkedIn,showDepartment,showFax,title,showTelephone2,showName,_id,briefDescription,importBatch,showAddress,showCompanyName,jobTitle,lastAccessed,showMugShot,importCameFrom,showWww,modifiedDate,showTelephone,visitorGroup,showFacebook,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,visitorType,urbanAirshipAPID,exhibitor,showMe,_namespace,isFavourite,hasNote,NULL AS gamePersona_nickname,NULL AS privateKey,NULL AS totalPlayerPoints,NULL AS meetingMinQuota,NULL AS enableGamification FROM visitors;

-- Droping the original table and renaming the temporary table

DROP TABLE visitors;
ALTER TABLE temp_visitors_822959691 RENAME TO visitors;

CREATE TABLE visitors_gameRecords
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    visitors_id bigint NULL,
    gameRecords bigint NULL
);

COMMIT TRANSACTION;
