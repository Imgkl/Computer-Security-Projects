-- Generated by SQLite Compare utility

-- The script can be used to migrate database
-- C:\Documents and Settings\eventgenie\Desktop\db\eventgenie_49.db schema
-- to the schema of database
-- C:\Documents and Settings\eventgenie\Desktop\db\eventgenie_50.db

BEGIN TRANSACTION;


-- Creating table apps from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_apps_534011718
(
    client bigint NULL,
    modifiedBy nvarchar(50) NULL,
    iconUrl nvarchar(500) NULL,
    locale nvarchar(10) NULL,
    networkingEmails_autoCancelMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_autoCancelMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_exhibitorLoginMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_exhibitorLoginMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_inAppMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_inAppMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_successIntegrationMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_successIntegrationMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_errorIntegrationMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_errorIntegrationMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_loginMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_loginMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_autoAcceptMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_autoAcceptMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_emailMyEventMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_emailMyEventMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_forgottenPasswordMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_forgottenPasswordMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_exhibitorForgottenPasswordMessageTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_exhibitorForgottenPasswordMessageTemplate_appMessageTemplate bigint NULL,
    networkingEmails_acceptMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_acceptMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_arrangeMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_arrangeMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_declineMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_declineMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_changeMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_changeMeetingTemplate_appMessageTemplate bigint NULL,
    networkingEmails_cancelMeetingTemplate_globalMessageTemplate bigint NULL,
    networkingEmails_cancelMeetingTemplate_appMessageTemplate bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    liveVersion nvarchar(50) NULL,
    servingUrl nvarchar(500) NULL,
    title nvarchar(500) NULL,
    fullDescription text NULL,
    stagingVersion nvarchar(50) NULL,
    _id nvarchar(500) NULL,
    integration_passwordEncryptionType int NULL,
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
    appProcessAnalytics bit NULL,
    importCameFrom nvarchar(500) NULL,
    isArchived bit NULL,
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
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_apps_534011718 (client,modifiedBy,iconUrl,locale,networkingEmails_autoCancelMeetingTemplate_globalMessageTemplate,networkingEmails_autoCancelMeetingTemplate_appMessageTemplate,networkingEmails_exhibitorLoginMessageTemplate_globalMessageTemplate,networkingEmails_exhibitorLoginMessageTemplate_appMessageTemplate,networkingEmails_inAppMessageTemplate_globalMessageTemplate,networkingEmails_inAppMessageTemplate_appMessageTemplate,networkingEmails_successIntegrationMessageTemplate_globalMessageTemplate,networkingEmails_successIntegrationMessageTemplate_appMessageTemplate,networkingEmails_errorIntegrationMessageTemplate_globalMessageTemplate,networkingEmails_errorIntegrationMessageTemplate_appMessageTemplate,networkingEmails_loginMessageTemplate_globalMessageTemplate,networkingEmails_loginMessageTemplate_appMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_globalMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_appMessageTemplate,networkingEmails_emailMyEventMessageTemplate_globalMessageTemplate,networkingEmails_emailMyEventMessageTemplate_appMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_exhibitorForgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_exhibitorForgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_acceptMeetingTemplate_globalMessageTemplate,networkingEmails_acceptMeetingTemplate_appMessageTemplate,networkingEmails_arrangeMeetingTemplate_globalMessageTemplate,networkingEmails_arrangeMeetingTemplate_appMessageTemplate,networkingEmails_declineMeetingTemplate_globalMessageTemplate,networkingEmails_declineMeetingTemplate_appMessageTemplate,networkingEmails_changeMeetingTemplate_globalMessageTemplate,networkingEmails_changeMeetingTemplate_appMessageTemplate,networkingEmails_cancelMeetingTemplate_globalMessageTemplate,networkingEmails_cancelMeetingTemplate_appMessageTemplate,id,liveVersion,servingUrl,title,fullDescription,stagingVersion,_id,integration_param1,integration_param10,integration_param2,integration_visitorLoginType,integration_param3,integration_param4,integration_integrationType,integration_param5,integration_param6,integration_param7,integration_param8,integration_param9,importBatch,name,features_networking_enabled,features_networking_purchasedLevel,features_salesPackage,features_exhibitors_enabled,features_exhibitors_purchasedLevel,features_sponsorship_sponsorCampaign,features_sponsorship_enabled,features_sponsorship_purchasedLevel,features_sponsorship_sponsor_portalBanner,features_sponsorship_sponsor_bannerUrl,features_sponsorship_sponsor_showBanner,features_sponsorship_sponsor_linkType,features_sponsorship_sponsor_portalBannerUrl,features_sponsorship_sponsor_infoPage,features_sponsorship_sponsor_exhibitor,features_sponsorship_sponsor_banner,features_multievent_enabled,features_multievent_purchasedLevel,features_qrreader_enabled,features_qrreader_purchasedLevel,features_mapping_enabled,features_mapping_purchasedLevel,features_platforms,features_registration_enabled,features_registration_purchasedLevel,features_speakers_enabled,features_speakers_purchasedLevel,features_downloads_enabled,features_downloads_purchasedLevel,features_infobooth_enabled,features_infobooth_purchasedLevel,features_gamification_enabled,features_gamification_purchasedLevel,features_feedback_enabled,features_feedback_purchasedLevel,features_poi_enabled,features_poi_purchasedLevel,features_favourites_enabled,features_favourites_purchasedLevel,features_newssocial_enabled,features_newssocial_purchasedLevel,features_schedule_enabled,features_schedule_purchasedLevel,features_messaging_enabled,features_messaging_purchasedLevel,features_notes_enabled,features_notes_purchasedLevel,features_products_enabled,features_products_purchasedLevel,features_myevent_enabled,features_myevent_purchasedLevel,features_appsecurity_enabled,features_appsecurity_purchasedLevel,features_appsecurity_allowRegistration,integrationXSLs,createdDate,incrementNotificationBadgeCounts,lastProcessedUUIDs,requiresInterestsRecompilation,appProcessStopDate,appProcessAnalytics,importCameFrom,isArchived,appProcessStartDate,modifiedDate,dashboardAllowed,lastProcessedVisitors,requiresActivityRecompilation,createdBy,lastProcessedActivities,isTemplate,shortName,lastProcessedInterests,visitorDataNamespace,importKey,_namespace,_dataversion,integration_passwordEncryptionType) SELECT client,modifiedBy,iconUrl,locale,networkingEmails_autoCancelMeetingTemplate_globalMessageTemplate,networkingEmails_autoCancelMeetingTemplate_appMessageTemplate,networkingEmails_exhibitorLoginMessageTemplate_globalMessageTemplate,networkingEmails_exhibitorLoginMessageTemplate_appMessageTemplate,networkingEmails_inAppMessageTemplate_globalMessageTemplate,networkingEmails_inAppMessageTemplate_appMessageTemplate,networkingEmails_successIntegrationMessageTemplate_globalMessageTemplate,networkingEmails_successIntegrationMessageTemplate_appMessageTemplate,networkingEmails_errorIntegrationMessageTemplate_globalMessageTemplate,networkingEmails_errorIntegrationMessageTemplate_appMessageTemplate,networkingEmails_loginMessageTemplate_globalMessageTemplate,networkingEmails_loginMessageTemplate_appMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_globalMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_appMessageTemplate,networkingEmails_emailMyEventMessageTemplate_globalMessageTemplate,networkingEmails_emailMyEventMessageTemplate_appMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_exhibitorForgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_exhibitorForgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_acceptMeetingTemplate_globalMessageTemplate,networkingEmails_acceptMeetingTemplate_appMessageTemplate,networkingEmails_arrangeMeetingTemplate_globalMessageTemplate,networkingEmails_arrangeMeetingTemplate_appMessageTemplate,networkingEmails_declineMeetingTemplate_globalMessageTemplate,networkingEmails_declineMeetingTemplate_appMessageTemplate,networkingEmails_changeMeetingTemplate_globalMessageTemplate,networkingEmails_changeMeetingTemplate_appMessageTemplate,networkingEmails_cancelMeetingTemplate_globalMessageTemplate,networkingEmails_cancelMeetingTemplate_appMessageTemplate,id,liveVersion,servingUrl,title,fullDescription,stagingVersion,_id,integration_param1,integration_param10,integration_param2,integration_visitorLoginType,integration_param3,integration_param4,integration_integrationType,integration_param5,integration_param6,integration_param7,integration_param8,integration_param9,importBatch,name,features_networking_enabled,features_networking_purchasedLevel,features_salesPackage,features_exhibitors_enabled,features_exhibitors_purchasedLevel,features_sponsorship_sponsorCampaign,features_sponsorship_enabled,features_sponsorship_purchasedLevel,features_sponsorship_sponsor_portalBanner,features_sponsorship_sponsor_bannerUrl,features_sponsorship_sponsor_showBanner,features_sponsorship_sponsor_linkType,features_sponsorship_sponsor_portalBannerUrl,features_sponsorship_sponsor_infoPage,features_sponsorship_sponsor_exhibitor,features_sponsorship_sponsor_banner,features_multievent_enabled,features_multievent_purchasedLevel,features_qrreader_enabled,features_qrreader_purchasedLevel,features_mapping_enabled,features_mapping_purchasedLevel,features_platforms,features_registration_enabled,features_registration_purchasedLevel,features_speakers_enabled,features_speakers_purchasedLevel,features_downloads_enabled,features_downloads_purchasedLevel,features_infobooth_enabled,features_infobooth_purchasedLevel,features_gamification_enabled,features_gamification_purchasedLevel,features_feedback_enabled,features_feedback_purchasedLevel,features_poi_enabled,features_poi_purchasedLevel,features_favourites_enabled,features_favourites_purchasedLevel,features_newssocial_enabled,features_newssocial_purchasedLevel,features_schedule_enabled,features_schedule_purchasedLevel,features_messaging_enabled,features_messaging_purchasedLevel,features_notes_enabled,features_notes_purchasedLevel,features_products_enabled,features_products_purchasedLevel,features_myevent_enabled,features_myevent_purchasedLevel,features_appsecurity_enabled,features_appsecurity_purchasedLevel,features_appsecurity_allowRegistration,integrationXSLs,createdDate,incrementNotificationBadgeCounts,lastProcessedUUIDs,requiresInterestsRecompilation,appProcessStopDate,appProcessAnalytics,importCameFrom,isArchived,appProcessStartDate,modifiedDate,dashboardAllowed,lastProcessedVisitors,requiresActivityRecompilation,createdBy,lastProcessedActivities,isTemplate,shortName,lastProcessedInterests,visitorDataNamespace,importKey,_namespace,_dataversion,NULL AS integration_passwordEncryptionType FROM apps;

-- Droping the original table and renaming the temporary table

DROP TABLE apps;
ALTER TABLE temp_apps_534011718 RENAME TO apps;

-- Creating table playergames from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_playergames_1655911537
(
    visitorActive bit NULL,
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
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_playergames_1655911537 (modifiedBy,importCameFrom,game,modifiedDate,visitor,id,_id,createdBy,importBatch,totalGamePoints,createdDate,importKey,_namespace,_dataversion,visitorActive) SELECT modifiedBy,importCameFrom,game,modifiedDate,visitor,id,_id,createdBy,importBatch,totalGamePoints,createdDate,importKey,_namespace,_dataversion,NULL AS visitorActive FROM playergames;

-- Droping the original table and renaming the temporary table

DROP TABLE playergames;
ALTER TABLE temp_playergames_1655911537 RENAME TO playergames;

-- Creating table sessions from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_sessions_630327709
(
    location nvarchar(50) NULL,
    modifiedBy nvarchar(50) NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    feedbackUrl nvarchar(500) NULL,
    eventDay nvarchar(50) NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    briefDescription nvarchar(500) NULL,
    name nvarchar(250) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    addToAgendaMessage nvarchar(500) NULL,
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
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_sessions_630327709 (location,modifiedBy,id,feedbackUrl,eventDay,fullDescription,_id,briefDescription,name,importBatch,createdDate,addToAgendaMessage,leadChair,track,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,shareUrl,importKey,permissionGroup,_namespace,isFavourite,hasNote,_dataversion) SELECT location,modifiedBy,id,feedbackUrl,eventDay,fullDescription,_id,briefDescription,name,importBatch,createdDate,addToAgendaMessage,leadChair,track,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,shareUrl,importKey,permissionGroup,_namespace,isFavourite,hasNote,_dataversion FROM sessions;

-- Droping the original table and renaming the temporary table

DROP TABLE sessions;
ALTER TABLE temp_sessions_630327709 RENAME TO sessions;

-- Creating table subsessions from scratch (simple ALTER TABLE is not enough)

CREATE TABLE temp_subsessions_1752227528
(
    addToAgendaMessage nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    eventDay nvarchar(50) NULL,
    fullDescription text NULL,
    briefDescription nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    session bigint NULL,
    priority INTEGER NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(250) NULL,
    shareUrl nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_subsessions_1752227528 (addToAgendaMessage,modifiedBy,importCameFrom,runningTime_to,runningTime_from,modifiedDate,id,eventDay,fullDescription,briefDescription,_id,createdBy,session,priority,importBatch,name,shareUrl,createdDate,importKey,_namespace,isFavourite,hasNote,_dataversion) SELECT addToAgendaMessage,modifiedBy,importCameFrom,runningTime_to,runningTime_from,modifiedDate,id,eventDay,fullDescription,briefDescription,_id,createdBy,session,priority,importBatch,name,shareUrl,createdDate,importKey,_namespace,isFavourite,hasNote,_dataversion FROM subsessions;

-- Droping the original table and renaming the temporary table

DROP TABLE subsessions;
ALTER TABLE temp_subsessions_1752227528 RENAME TO subsessions;

CREATE TABLE subsessions_locations
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    subsessions_id bigint NULL,
    locations nvarchar(50) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

COMMIT TRANSACTION;
