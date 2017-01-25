-- Generated by SQLite Compare utility

-- The script can be used to migrate database
-- C:\Documents and Settings\eventgenie\Desktop\db\eventgenie_v41.db schema
-- to the schema of database
-- C:\Documents and Settings\eventgenie\Desktop\db\eventgenie_v42.db

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
    networkingEmails_loginDetailsFullMessageTxt text NULL,
    networkingEmails_declineMeetingFooterTxt text NULL,
    networkingEmails_autoCancelMeetingPushNotification nvarchar(200) NULL,
    networkingEmails_myEventSubject nvarchar(500) NULL,
    networkingEmails_loginDetailsFooterTxt text NULL,
    networkingEmails_meetingConfirmationPushNotification nvarchar(200) NULL,
    networkingEmails_newMeetingEnabled bit NULL,
    networkingEmails_myEventCSSOverrideFile bigint NULL,
    networkingEmails_myEventBody text NULL,
    networkingEmails_changeMeetingHeaderTxt text NULL,
    networkingEmails_cancelMeetingSubject nvarchar(500) NULL,
    networkingEmails_declineMeetingSubject nvarchar(500) NULL,
    networkingEmails_autoCancelMeetingFooterTxt text NULL,
    networkingEmails_cancelMeetingHeaderTxt text NULL,
    networkingEmails_loginDetailsFullyConfigured bit NULL,
    networkingEmails_newMeetingHeaderTxt text NULL,
    networkingEmails_newMeetingSubject nvarchar(500) NULL,
    networkingEmails_changeMeetingFooterTxt text NULL,
    networkingEmails_forgottenPasswordBody text NULL,
    networkingEmails_meetingConfirmationHeaderTxt text NULL,
    networkingEmails_cancelMeetingFooterTxt text NULL,
    networkingEmails_loginDetailsSubject nvarchar(500) NULL,
    networkingEmails_inAppMessageSubject nvarchar(500) NULL,
    networkingEmails_newMeetingFooterTxt text NULL,
    networkingEmails_meetingConfirmationFooterTxt text NULL,
    networkingEmails_meetingConfirmationEnabled bit NULL,
    networkingEmails_autoCancelMeetingEnabled bit NULL,
    networkingEmails_inAppMessageHeaderTxt text NULL,
    networkingEmails_autoCancelMeetingHeaderTxt text NULL,
    networkingEmails_forgottenPasswordSubject nvarchar(500) NULL,
    networkingEmails_changeMeetingEnabled bit NULL,
    networkingEmails_declineMeetingEnabled bit NULL,
    networkingEmails_inAppMessagePushNotification nvarchar(200) NULL,
    networkingEmails_declineMeetingHeaderTxt text NULL,
    networkingEmails_meetingConfirmationSubject nvarchar(500) NULL,
    networkingEmails_cancelMeetingEnabled bit NULL,
    networkingEmails_cancelMeetingPushNotification nvarchar(200) NULL,
    networkingEmails_autoCancelMeetingSubject nvarchar(500) NULL,
    networkingEmails_newMeetingPushNotification nvarchar(200) NULL,
    networkingEmails_inAppMessageFooterTxt text NULL,
    networkingEmails_changeMeetingSubject nvarchar(500) NULL,
    networkingEmails_changeMeetingPushNotification nvarchar(200) NULL,
    networkingEmails_inAppMessageEnabled bit NULL,
    networkingEmails_loginDetailsHeaderTxt text NULL,
    networkingEmails_declineMeetingPushNotification nvarchar(200) NULL,
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

INSERT INTO temp_apps_534011718 (client,modifiedBy,eventAppStoreSubmitDate,iconUrl,locale,eventEndDate,networkingEmails_loginDetailsFullMessageTxt,networkingEmails_declineMeetingFooterTxt,networkingEmails_autoCancelMeetingPushNotification,networkingEmails_myEventSubject,networkingEmails_loginDetailsFooterTxt,networkingEmails_meetingConfirmationPushNotification,networkingEmails_newMeetingEnabled,networkingEmails_myEventCSSOverrideFile,networkingEmails_myEventBody,networkingEmails_changeMeetingHeaderTxt,networkingEmails_cancelMeetingSubject,networkingEmails_declineMeetingSubject,networkingEmails_autoCancelMeetingFooterTxt,networkingEmails_cancelMeetingHeaderTxt,networkingEmails_loginDetailsFullyConfigured,networkingEmails_newMeetingHeaderTxt,networkingEmails_newMeetingSubject,networkingEmails_changeMeetingFooterTxt,networkingEmails_forgottenPasswordBody,networkingEmails_meetingConfirmationHeaderTxt,networkingEmails_cancelMeetingFooterTxt,networkingEmails_loginDetailsSubject,networkingEmails_inAppMessageSubject,networkingEmails_newMeetingFooterTxt,networkingEmails_meetingConfirmationFooterTxt,networkingEmails_meetingConfirmationEnabled,networkingEmails_autoCancelMeetingEnabled,networkingEmails_inAppMessageHeaderTxt,networkingEmails_autoCancelMeetingHeaderTxt,networkingEmails_forgottenPasswordSubject,networkingEmails_changeMeetingEnabled,networkingEmails_declineMeetingEnabled,networkingEmails_inAppMessagePushNotification,networkingEmails_declineMeetingHeaderTxt,networkingEmails_meetingConfirmationSubject,networkingEmails_cancelMeetingEnabled,networkingEmails_cancelMeetingPushNotification,networkingEmails_autoCancelMeetingSubject,networkingEmails_newMeetingPushNotification,networkingEmails_inAppMessageFooterTxt,networkingEmails_changeMeetingSubject,networkingEmails_changeMeetingPushNotification,networkingEmails_inAppMessageEnabled,networkingEmails_loginDetailsHeaderTxt,networkingEmails_declineMeetingPushNotification,eventType,dataIntegrationRequired,id,liveVersion,servingUrl,title,fullDescription,stagingVersion,_id,integration_param1,integration_param10,integration_param2,integration_visitorLoginType,integration_param3,integration_param4,integration_integrationType,integration_param5,integration_param6,integration_param7,integration_param8,integration_param9,mappingIntegrationRequired,name,importBatch,features_networking_enabled,features_networking_purchasedLevel,features_salesPackage,features_exhibitors_enabled,features_exhibitors_purchasedLevel,features_sponsorship_sponsorCampaign,features_sponsorship_enabled,features_sponsorship_purchasedLevel,features_sponsorship_sponsor_portalBanner,features_sponsorship_sponsor_bannerUrl,features_sponsorship_sponsor_showBanner,features_sponsorship_sponsor_linkType,features_sponsorship_sponsor_portalBannerUrl,features_sponsorship_sponsor_infoPage,features_sponsorship_sponsor_exhibitor,features_sponsorship_sponsor_banner,features_multievent_enabled,features_multievent_purchasedLevel,features_qrreader_enabled,features_qrreader_purchasedLevel,features_mapping_enabled,features_mapping_purchasedLevel,features_platforms,features_registration_enabled,features_registration_purchasedLevel,features_speakers_enabled,features_speakers_purchasedLevel,features_downloads_enabled,features_downloads_purchasedLevel,features_infobooth_enabled,features_infobooth_purchasedLevel,features_feedback_enabled,features_feedback_purchasedLevel,features_poi_enabled,features_poi_purchasedLevel,features_favourites_enabled,features_favourites_purchasedLevel,features_newssocial_enabled,features_newssocial_purchasedLevel,features_schedule_enabled,features_schedule_purchasedLevel,features_messaging_enabled,features_messaging_purchasedLevel,features_notes_enabled,features_notes_purchasedLevel,features_products_enabled,features_products_purchasedLevel,features_myevent_enabled,features_myevent_purchasedLevel,features_appsecurity_enabled,features_appsecurity_purchasedLevel,features_appsecurity_allowRegistration,integrationXSLs,createdDate,incrementNotificationBadgeCounts,lastProcessedUUIDs,appProcessStopDate,eventLaunchDate,appProcessAnalytics,eventStartDate,importCameFrom,appProcessStartDate,modifiedDate,dashboardAllowed,lastProcessedVisitors,createdBy,lastProcessedActivities,isTemplate,shortName,lastProcessedInterests,importKey,_namespace,requiresInterestsRecompilation,requiresActivityRecompilation,visitorDataNamespace) SELECT client,modifiedBy,eventAppStoreSubmitDate,iconUrl,locale,eventEndDate,networkingEmails_loginDetailsFullMessageTxt,networkingEmails_declineMeetingFooterTxt,networkingEmails_autoCancelMeetingPushNotification,networkingEmails_myEventSubject,networkingEmails_loginDetailsFooterTxt,networkingEmails_meetingConfirmationPushNotification,networkingEmails_newMeetingEnabled,networkingEmails_myEventCSSOverrideFile,networkingEmails_myEventBody,networkingEmails_changeMeetingHeaderTxt,networkingEmails_cancelMeetingSubject,networkingEmails_declineMeetingSubject,networkingEmails_autoCancelMeetingFooterTxt,networkingEmails_cancelMeetingHeaderTxt,networkingEmails_loginDetailsFullyConfigured,networkingEmails_newMeetingHeaderTxt,networkingEmails_newMeetingSubject,networkingEmails_changeMeetingFooterTxt,networkingEmails_forgottenPasswordBody,networkingEmails_meetingConfirmationHeaderTxt,networkingEmails_cancelMeetingFooterTxt,networkingEmails_loginDetailsSubject,networkingEmails_inAppMessageSubject,networkingEmails_newMeetingFooterTxt,networkingEmails_meetingConfirmationFooterTxt,networkingEmails_meetingConfirmationEnabled,networkingEmails_autoCancelMeetingEnabled,networkingEmails_inAppMessageHeaderTxt,networkingEmails_autoCancelMeetingHeaderTxt,networkingEmails_forgottenPasswordSubject,networkingEmails_changeMeetingEnabled,networkingEmails_declineMeetingEnabled,networkingEmails_inAppMessagePushNotification,networkingEmails_declineMeetingHeaderTxt,networkingEmails_meetingConfirmationSubject,networkingEmails_cancelMeetingEnabled,networkingEmails_cancelMeetingPushNotification,networkingEmails_autoCancelMeetingSubject,networkingEmails_newMeetingPushNotification,networkingEmails_inAppMessageFooterTxt,networkingEmails_changeMeetingSubject,networkingEmails_changeMeetingPushNotification,networkingEmails_inAppMessageEnabled,networkingEmails_loginDetailsHeaderTxt,networkingEmails_declineMeetingPushNotification,eventType,dataIntegrationRequired,id,liveVersion,servingUrl,title,fullDescription,stagingVersion,_id,integration_param1,integration_param10,integration_param2,integration_visitorLoginType,integration_param3,integration_param4,integration_integrationType,integration_param5,integration_param6,integration_param7,integration_param8,integration_param9,mappingIntegrationRequired,name,importBatch,features_networking_enabled,features_networking_purchasedLevel,features_salesPackage,features_exhibitors_enabled,features_exhibitors_purchasedLevel,features_sponsorship_sponsorCampaign,features_sponsorship_enabled,features_sponsorship_purchasedLevel,features_sponsorship_sponsor_portalBanner,features_sponsorship_sponsor_bannerUrl,features_sponsorship_sponsor_showBanner,features_sponsorship_sponsor_linkType,features_sponsorship_sponsor_portalBannerUrl,features_sponsorship_sponsor_infoPage,features_sponsorship_sponsor_exhibitor,features_sponsorship_sponsor_banner,features_multievent_enabled,features_multievent_purchasedLevel,features_qrreader_enabled,features_qrreader_purchasedLevel,features_mapping_enabled,features_mapping_purchasedLevel,features_platforms,features_registration_enabled,features_registration_purchasedLevel,features_speakers_enabled,features_speakers_purchasedLevel,features_downloads_enabled,features_downloads_purchasedLevel,features_infobooth_enabled,features_infobooth_purchasedLevel,features_feedback_enabled,features_feedback_purchasedLevel,features_poi_enabled,features_poi_purchasedLevel,features_favourites_enabled,features_favourites_purchasedLevel,features_newssocial_enabled,features_newssocial_purchasedLevel,features_schedule_enabled,features_schedule_purchasedLevel,features_messaging_enabled,features_messaging_purchasedLevel,features_notes_enabled,features_notes_purchasedLevel,features_products_enabled,features_products_purchasedLevel,features_myevent_enabled,features_myevent_purchasedLevel,features_appsecurity_enabled,features_appsecurity_purchasedLevel,features_appsecurity_allowRegistration,integrationXSLs,createdDate,incrementNotificationBadgeCounts,lastProcessedUUIDs,appProcessStopDate,eventLaunchDate,appProcessAnalytics,eventStartDate,importCameFrom,appProcessStartDate,modifiedDate,dashboardAllowed,lastProcessedVisitors,createdBy,lastProcessedActivities,isTemplate,shortName,lastProcessedInterests,importKey,_namespace,NULL AS requiresInterestsRecompilation,NULL AS requiresActivityRecompilation,NULL AS visitorDataNamespace FROM apps;

-- Droping the original table and renaming the temporary table

DROP TABLE apps;
ALTER TABLE temp_apps_534011718 RENAME TO apps;

DROP TABLE interestlogs;

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
    colour nvarchar(500) NULL,
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

INSERT INTO temp_maps_1655911537 (cameraX,icon,seqNo,imageUrl,cameraY,modifiedBy,cameraZ,isRoot,image,importCameFrom,type,cameraMinZ,modifiedDate,id,_id,createdBy,importBatch,name,rotationOffset,createdDate,importKey,_namespace,colour) SELECT cameraX,icon,seqNo,imageUrl,cameraY,modifiedBy,cameraZ,isRoot,image,importCameFrom,type,cameraMinZ,modifiedDate,id,_id,createdBy,importBatch,name,rotationOffset,createdDate,importKey,_namespace,NULL AS colour FROM maps;

-- Droping the original table and renaming the temporary table

DROP TABLE maps;
ALTER TABLE temp_maps_1655911537 RENAME TO maps;

CREATE TABLE products_exhibitors
(
    seqNo bigint NOT NULL,
    _namespace nvarchar(100),
    products_id bigint NULL,
    exhibitors bigint NULL
);

COMMIT TRANSACTION;
