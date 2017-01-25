

BEGIN TRANSACTION;


CREATE TABLE IF NOT EXISTS activitystreamcomments
(
    liveStatus INTEGER NULL,
    scheduledTaskName nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    preAbuseLiveStatus INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    message text NULL,
    timestamp datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    scheduledDate datetime NULL,
    author_linkUrl nvarchar(500) NULL,
    author_imageUrl nvarchar(500) NULL,
    author_name nvarchar(500) NULL,
    author_exhibitor bigint NULL,
    author_visitor bigint NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    abuseStatus nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    activityStreamPost bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_activitystreamcomments_534011718
(
    liveStatus INTEGER NULL,
    scheduledTaskName nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    preAbuseLiveStatus INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    message text NULL,
    timestamp datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    scheduledDate datetime NULL,
    author_linkUrl nvarchar(500) NULL,
    author_imageUrl nvarchar(500) NULL,
    author_name nvarchar(500) NULL,
    author_exhibitor bigint NULL,
    author_visitor bigint NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    abuseStatus nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    activityStreamPost bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);


INSERT INTO temp_activitystreamcomments_534011718 (liveStatus,scheduledTaskName,modifiedBy,preAbuseLiveStatus,importCameFrom,modifiedDate,message,timestamp,id,scheduledDate,author_linkUrl,author_imageUrl,author_name,author_exhibitor,author_visitor,scheduledLiveStatus,_id,createdBy,abuseStatus,importBatch,createdDate,activityStreamPost,importKey,_namespace,_dataversion) SELECT liveStatus,scheduledTaskName,modifiedBy,preAbuseLiveStatus,importCameFrom,modifiedDate,message,timestamp,id,scheduledDate,author_linkUrl,author_imageUrl,author_name,author_exhibitor,author_visitor,scheduledLiveStatus,_id,createdBy,abuseStatus,importBatch,createdDate,activityStreamPost,importKey,_namespace,_dataversion FROM activitystreamcomments;


DROP TABLE activitystreamcomments;
ALTER TABLE temp_activitystreamcomments_534011718 RENAME TO activitystreamcomments;

-- Creating table activitystreamposts from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS activitystreamposts
(
    liveStatus INTEGER NULL,
    modifiedBy nvarchar(50) NULL,
    preAbuseLiveStatus INTEGER NULL,
    type nvarchar(500) NULL,
    buoyancy INTEGER NULL,
    timestamp datetime NULL,
    scheduledDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    author_linkUrl nvarchar(500) NULL,
    author_imageUrl nvarchar(500) NULL,
    author_name nvarchar(500) NULL,
    author_exhibitor bigint NULL,
    author_visitor bigint NULL,
    title nvarchar(500) NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    abuseStatus nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    scheduledTaskName nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    url nvarchar(500) NULL,
    modifiedDate datetime NULL,
    message text NULL,
    noComments INTEGER NULL,
    createdBy nvarchar(50) NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);


CREATE TABLE temp_activitystreamposts_1655911537
(
    liveStatus INTEGER NULL,
    modifiedBy nvarchar(50) NULL,
    preAbuseLiveStatus INTEGER NULL,
    type nvarchar(500) NULL,
    buoyancy INTEGER NULL,
    timestamp datetime NULL,
    scheduledDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    author_linkUrl nvarchar(500) NULL,
    author_imageUrl nvarchar(500) NULL,
    author_name nvarchar(500) NULL,
    author_exhibitor bigint NULL,
    author_visitor bigint NULL,
    title nvarchar(500) NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    abuseStatus nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    scheduledTaskName nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    url nvarchar(500) NULL,
    modifiedDate datetime NULL,
    message text NULL,
    noComments INTEGER NULL,
    createdBy nvarchar(50) NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_activitystreamposts_1655911537 (liveStatus,modifiedBy,preAbuseLiveStatus,type,buoyancy,timestamp,scheduledDate,id,author_linkUrl,author_imageUrl,author_name,author_exhibitor,author_visitor,title,scheduledLiveStatus,_id,abuseStatus,importBatch,createdDate,scheduledTaskName,importCameFrom,url,modifiedDate,message,noComments,createdBy,importKey,_namespace,_dataversion) SELECT liveStatus,modifiedBy,preAbuseLiveStatus,type,buoyancy,timestamp,scheduledDate,id,author_linkUrl,author_imageUrl,author_name,author_exhibitor,author_visitor,title,scheduledLiveStatus,_id,abuseStatus,importBatch,createdDate,scheduledTaskName,importCameFrom,url,modifiedDate,message,noComments,createdBy,importKey,_namespace,_dataversion FROM activitystreamposts;

-- Droping the original table and renaming the temporary table

DROP TABLE activitystreamposts;
ALTER TABLE temp_activitystreamposts_1655911537 RENAME TO activitystreamposts;

-- Creating table adbanners from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS adbanners
(
    modifiedBy nvarchar(50) NULL,
    linkType INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    infoPage bigint NULL,
    iPad2BannerUrl nvarchar(500) NULL,
    modifiedDate datetime NULL,
    portalBanner bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    iPadBannerUrl nvarchar(500) NULL,
    bannerUrl nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    iPad2Banner bigint NULL,
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    portalBannerUrl nvarchar(500) NULL,
    iPadBanner bigint NULL,
    createdDate datetime NULL,
    exhibitor bigint NULL,
    banner bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);


CREATE TABLE temp_adbanners_630327709
(
    modifiedBy nvarchar(50) NULL,
    linkType INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    infoPage bigint NULL,
    iPad2BannerUrl nvarchar(500) NULL,
    modifiedDate datetime NULL,
    portalBanner bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    iPadBannerUrl nvarchar(500) NULL,
    bannerUrl nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    iPad2Banner bigint NULL,
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    portalBannerUrl nvarchar(500) NULL,
    iPadBanner bigint NULL,
    createdDate datetime NULL,
    exhibitor bigint NULL,
    banner bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_adbanners_630327709 (modifiedBy,linkType,importCameFrom,infoPage,iPad2BannerUrl,modifiedDate,portalBanner,id,iPadBannerUrl,bannerUrl,_id,createdBy,iPad2Banner,name,importBatch,portalBannerUrl,iPadBanner,createdDate,exhibitor,banner,importKey,_namespace,_dataversion) SELECT modifiedBy,linkType,importCameFrom,infoPage,iPad2BannerUrl,modifiedDate,portalBanner,id,iPadBannerUrl,bannerUrl,_id,createdBy,iPad2Banner,name,importBatch,portalBannerUrl,iPadBanner,createdDate,exhibitor,banner,importKey,_namespace,_dataversion FROM adbanners;

-- Droping the original table and renaming the temporary table

DROP TABLE adbanners;
ALTER TABLE temp_adbanners_630327709 RENAME TO adbanners;

-- Creating table adcampaigns from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS adcampaigns
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_adcampaigns_1752227528
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_adcampaigns_1752227528 (modifiedBy,importCameFrom,modifiedDate,id,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,importCameFrom,modifiedDate,id,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion FROM adcampaigns;

-- Droping the original table and renaming the temporary table

DROP TABLE adcampaigns;
ALTER TABLE temp_adcampaigns_1752227528 RENAME TO adcampaigns;

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
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_agendaitems_726643700 (modifiedBy,relatedSession,importCameFrom,type,runningTime_to,runningTime_from,visitor,modifiedDate,id,eventDay,fullDescription,_id,createdBy,relatedSubSession,relatedMeeting,name,importBatch,isDeletable,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,relatedSession,importCameFrom,type,runningTime_to,runningTime_from,visitor,modifiedDate,id,eventDay,fullDescription,_id,createdBy,relatedSubSession,relatedMeeting,name,importBatch,isDeletable,createdDate,importKey,_namespace,_dataversion FROM agendaitems;

-- Droping the original table and renaming the temporary table

DROP TABLE agendaitems;
ALTER TABLE temp_agendaitems_726643700 RENAME TO agendaitems;

-- Creating table apprefcategories from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS apprefcategories
(
    liveStatus INTEGER NULL,
    scheduledTaskName nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    scheduledDate datetime NULL,
    isRootParent bit NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_apprefcategories_1848543519
(
    liveStatus INTEGER NULL,
    scheduledTaskName nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    scheduledDate datetime NULL,
    isRootParent bit NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_apprefcategories_1848543519 (liveStatus,scheduledTaskName,modifiedBy,noChildren,parent,importCameFrom,modifiedDate,scheduledDate,isRootParent,scheduledLiveStatus,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT liveStatus,scheduledTaskName,modifiedBy,noChildren,parent,importCameFrom,modifiedDate,scheduledDate,isRootParent,scheduledLiveStatus,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion FROM apprefcategories;

-- Droping the original table and renaming the temporary table

DROP TABLE apprefcategories;
ALTER TABLE temp_apprefcategories_1848543519 RENAME TO apprefcategories;

-- Creating table apprefs from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS apprefs
(
    liveStatus INTEGER NULL,
    isUsingHoldingPage bit NULL,
    modifiedBy nvarchar(50) NULL,
    isFeatured bit NULL,
    iconUrl nvarchar(500) NULL,
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
    permissionGroup bigint NULL,
    holdingPageHTML text NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_apprefs_822959691
(
    liveStatus INTEGER NULL,
    isUsingHoldingPage bit NULL,
    modifiedBy nvarchar(50) NULL,
    isFeatured bit NULL,
    iconUrl nvarchar(500) NULL,
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
    permissionGroup bigint NULL,
    holdingPageHTML text NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_apprefs_822959691 (liveStatus,isUsingHoldingPage,modifiedBy,isFeatured,iconUrl,eventEndDate,isAvailable,scheduledDate,id,scheduledLiveStatus,_id,importBatch,name,createdDate,app,icon,scheduledTaskName,eventLocation,strapLine,eventStartDate,importCameFrom,modifiedDate,createdBy,permissionGroup,holdingPageHTML,importKey,_namespace,_dataversion) SELECT liveStatus,isUsingHoldingPage,modifiedBy,isFeatured,iconUrl,eventEndDate,isAvailable,scheduledDate,id,scheduledLiveStatus,_id,importBatch,name,createdDate,app,icon,scheduledTaskName,eventLocation,strapLine,eventStartDate,importCameFrom,modifiedDate,createdBy,permissionGroup,holdingPageHTML,importKey,_namespace,_dataversion FROM apprefs;

-- Droping the original table and renaming the temporary table

DROP TABLE apprefs;
ALTER TABLE temp_apprefs_822959691 RENAME TO apprefs;

-- Creating table apps from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS apps
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
    analytics_goalVisitorNotes int NULL,
    analytics_goalVisitorSchedule int NULL,
    analytics_goalVisitorNetworking int NULL,
    analytics_goalVisitorExhibitors int NULL,
    analytics_goalVisitorOverall int NULL,
    analytics_goalVisitorFavourites int NULL,
    analytics_goalVisitorAgenda int NULL,
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

CREATE TABLE temp_apps_1944859510
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
    analytics_goalVisitorNotes int NULL,
    analytics_goalVisitorSchedule int NULL,
    analytics_goalVisitorNetworking int NULL,
    analytics_goalVisitorExhibitors int NULL,
    analytics_goalVisitorOverall int NULL,
    analytics_goalVisitorFavourites int NULL,
    analytics_goalVisitorAgenda int NULL,
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

INSERT INTO temp_apps_1944859510 (client,modifiedBy,iconUrl,locale,networkingEmails_autoCancelMeetingTemplate_globalMessageTemplate,networkingEmails_autoCancelMeetingTemplate_appMessageTemplate,networkingEmails_exhibitorLoginMessageTemplate_globalMessageTemplate,networkingEmails_exhibitorLoginMessageTemplate_appMessageTemplate,networkingEmails_inAppMessageTemplate_globalMessageTemplate,networkingEmails_inAppMessageTemplate_appMessageTemplate,networkingEmails_successIntegrationMessageTemplate_globalMessageTemplate,networkingEmails_successIntegrationMessageTemplate_appMessageTemplate,networkingEmails_errorIntegrationMessageTemplate_globalMessageTemplate,networkingEmails_errorIntegrationMessageTemplate_appMessageTemplate,networkingEmails_loginMessageTemplate_globalMessageTemplate,networkingEmails_loginMessageTemplate_appMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_globalMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_appMessageTemplate,networkingEmails_emailMyEventMessageTemplate_globalMessageTemplate,networkingEmails_emailMyEventMessageTemplate_appMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_exhibitorForgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_exhibitorForgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_acceptMeetingTemplate_globalMessageTemplate,networkingEmails_acceptMeetingTemplate_appMessageTemplate,networkingEmails_arrangeMeetingTemplate_globalMessageTemplate,networkingEmails_arrangeMeetingTemplate_appMessageTemplate,networkingEmails_declineMeetingTemplate_globalMessageTemplate,networkingEmails_declineMeetingTemplate_appMessageTemplate,networkingEmails_changeMeetingTemplate_globalMessageTemplate,networkingEmails_changeMeetingTemplate_appMessageTemplate,networkingEmails_cancelMeetingTemplate_globalMessageTemplate,networkingEmails_cancelMeetingTemplate_appMessageTemplate,id,liveVersion,servingUrl,title,fullDescription,stagingVersion,_id,integration_passwordEncryptionType,integration_param1,integration_param10,integration_param2,integration_visitorLoginType,integration_param3,integration_param4,integration_integrationType,integration_param5,integration_param6,integration_param7,integration_param8,integration_param9,importBatch,name,features_networking_enabled,features_networking_purchasedLevel,features_salesPackage,features_exhibitors_enabled,features_exhibitors_purchasedLevel,features_sponsorship_sponsorCampaign,features_sponsorship_enabled,features_sponsorship_purchasedLevel,features_sponsorship_sponsor_portalBanner,features_sponsorship_sponsor_bannerUrl,features_sponsorship_sponsor_showBanner,features_sponsorship_sponsor_linkType,features_sponsorship_sponsor_portalBannerUrl,features_sponsorship_sponsor_infoPage,features_sponsorship_sponsor_exhibitor,features_sponsorship_sponsor_banner,features_multievent_enabled,features_multievent_purchasedLevel,features_qrreader_enabled,features_qrreader_purchasedLevel,features_mapping_enabled,features_mapping_purchasedLevel,features_platforms,features_registration_enabled,features_registration_purchasedLevel,features_speakers_enabled,features_speakers_purchasedLevel,features_downloads_enabled,features_downloads_purchasedLevel,features_infobooth_enabled,features_infobooth_purchasedLevel,features_gamification_enabled,features_gamification_purchasedLevel,features_feedback_enabled,features_feedback_purchasedLevel,features_poi_enabled,features_poi_purchasedLevel,features_favourites_enabled,features_favourites_purchasedLevel,features_newssocial_enabled,features_newssocial_purchasedLevel,features_schedule_enabled,features_schedule_purchasedLevel,features_messaging_enabled,features_messaging_purchasedLevel,features_notes_enabled,features_notes_purchasedLevel,features_products_enabled,features_products_purchasedLevel,features_myevent_enabled,features_myevent_purchasedLevel,features_appsecurity_enabled,features_appsecurity_purchasedLevel,features_appsecurity_allowRegistration,integrationXSLs,createdDate,incrementNotificationBadgeCounts,lastProcessedUUIDs,requiresInterestsRecompilation,appProcessStopDate,appProcessAnalytics,importCameFrom,isArchived,appProcessStartDate,analytics_goalVisitorNotes,analytics_goalVisitorSchedule,analytics_goalVisitorNetworking,analytics_goalVisitorExhibitors,analytics_goalVisitorOverall,analytics_goalVisitorFavourites,analytics_goalVisitorAgenda,modifiedDate,dashboardAllowed,lastProcessedVisitors,requiresActivityRecompilation,createdBy,lastProcessedActivities,isTemplate,shortName,lastProcessedInterests,visitorDataNamespace,importKey,_namespace,_dataversion) SELECT client,modifiedBy,iconUrl,locale,networkingEmails_autoCancelMeetingTemplate_globalMessageTemplate,networkingEmails_autoCancelMeetingTemplate_appMessageTemplate,networkingEmails_exhibitorLoginMessageTemplate_globalMessageTemplate,networkingEmails_exhibitorLoginMessageTemplate_appMessageTemplate,networkingEmails_inAppMessageTemplate_globalMessageTemplate,networkingEmails_inAppMessageTemplate_appMessageTemplate,networkingEmails_successIntegrationMessageTemplate_globalMessageTemplate,networkingEmails_successIntegrationMessageTemplate_appMessageTemplate,networkingEmails_errorIntegrationMessageTemplate_globalMessageTemplate,networkingEmails_errorIntegrationMessageTemplate_appMessageTemplate,networkingEmails_loginMessageTemplate_globalMessageTemplate,networkingEmails_loginMessageTemplate_appMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_globalMessageTemplate,networkingEmails_autoAcceptMeetingTemplate_appMessageTemplate,networkingEmails_emailMyEventMessageTemplate_globalMessageTemplate,networkingEmails_emailMyEventMessageTemplate_appMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_forgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_exhibitorForgottenPasswordMessageTemplate_globalMessageTemplate,networkingEmails_exhibitorForgottenPasswordMessageTemplate_appMessageTemplate,networkingEmails_acceptMeetingTemplate_globalMessageTemplate,networkingEmails_acceptMeetingTemplate_appMessageTemplate,networkingEmails_arrangeMeetingTemplate_globalMessageTemplate,networkingEmails_arrangeMeetingTemplate_appMessageTemplate,networkingEmails_declineMeetingTemplate_globalMessageTemplate,networkingEmails_declineMeetingTemplate_appMessageTemplate,networkingEmails_changeMeetingTemplate_globalMessageTemplate,networkingEmails_changeMeetingTemplate_appMessageTemplate,networkingEmails_cancelMeetingTemplate_globalMessageTemplate,networkingEmails_cancelMeetingTemplate_appMessageTemplate,id,liveVersion,servingUrl,title,fullDescription,stagingVersion,_id,integration_passwordEncryptionType,integration_param1,integration_param10,integration_param2,integration_visitorLoginType,integration_param3,integration_param4,integration_integrationType,integration_param5,integration_param6,integration_param7,integration_param8,integration_param9,importBatch,name,features_networking_enabled,features_networking_purchasedLevel,features_salesPackage,features_exhibitors_enabled,features_exhibitors_purchasedLevel,features_sponsorship_sponsorCampaign,features_sponsorship_enabled,features_sponsorship_purchasedLevel,features_sponsorship_sponsor_portalBanner,features_sponsorship_sponsor_bannerUrl,features_sponsorship_sponsor_showBanner,features_sponsorship_sponsor_linkType,features_sponsorship_sponsor_portalBannerUrl,features_sponsorship_sponsor_infoPage,features_sponsorship_sponsor_exhibitor,features_sponsorship_sponsor_banner,features_multievent_enabled,features_multievent_purchasedLevel,features_qrreader_enabled,features_qrreader_purchasedLevel,features_mapping_enabled,features_mapping_purchasedLevel,features_platforms,features_registration_enabled,features_registration_purchasedLevel,features_speakers_enabled,features_speakers_purchasedLevel,features_downloads_enabled,features_downloads_purchasedLevel,features_infobooth_enabled,features_infobooth_purchasedLevel,features_gamification_enabled,features_gamification_purchasedLevel,features_feedback_enabled,features_feedback_purchasedLevel,features_poi_enabled,features_poi_purchasedLevel,features_favourites_enabled,features_favourites_purchasedLevel,features_newssocial_enabled,features_newssocial_purchasedLevel,features_schedule_enabled,features_schedule_purchasedLevel,features_messaging_enabled,features_messaging_purchasedLevel,features_notes_enabled,features_notes_purchasedLevel,features_products_enabled,features_products_purchasedLevel,features_myevent_enabled,features_myevent_purchasedLevel,features_appsecurity_enabled,features_appsecurity_purchasedLevel,features_appsecurity_allowRegistration,integrationXSLs,createdDate,incrementNotificationBadgeCounts,lastProcessedUUIDs,requiresInterestsRecompilation,appProcessStopDate,appProcessAnalytics,importCameFrom,isArchived,appProcessStartDate,analytics_goalVisitorNotes,analytics_goalVisitorSchedule,analytics_goalVisitorNetworking,analytics_goalVisitorExhibitors,analytics_goalVisitorOverall,analytics_goalVisitorFavourites,analytics_goalVisitorAgenda,modifiedDate,dashboardAllowed,lastProcessedVisitors,requiresActivityRecompilation,createdBy,lastProcessedActivities,isTemplate,shortName,lastProcessedInterests,visitorDataNamespace,importKey,_namespace,_dataversion FROM apps;

-- Droping the original table and renaming the temporary table

DROP TABLE apps;
ALTER TABLE temp_apps_1944859510 RENAME TO apps;

-- Creating table articlegroups from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS articlegroups
(
    isDashboardFeaturedOnly bit NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_articlegroups_919275682
(
    isDashboardFeaturedOnly bit NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_articlegroups_919275682 (isDashboardFeaturedOnly,modifiedBy,importCameFrom,modifiedDate,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT isDashboardFeaturedOnly,modifiedBy,importCameFrom,modifiedDate,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM articlegroups;

-- Droping the original table and renaming the temporary table

DROP TABLE articlegroups;
ALTER TABLE temp_articlegroups_919275682 RENAME TO articlegroups;

-- Creating table articles from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS articles
(
    liveStatus INTEGER NULL,
    thumbImage bigint NULL,
    modifiedBy nvarchar(50) NULL,
    featured bit NULL,
    type INTEGER NULL,
    mainImage bigint NULL,
    scheduledDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    timestamp datetime NULL,
    author nvarchar(100) NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(100) NULL,
    createdDate datetime NULL,
    scheduledTaskName nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    mainImageUrl nvarchar(500) NULL,
    modifiedDate datetime NULL,
    createdBy nvarchar(50) NULL,
    thumbImageUrl nvarchar(500) NULL,
    shareUrl nvarchar(500) NULL,
    html text NULL,
    brief nvarchar(500) NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_articles_2041175501
(
    liveStatus INTEGER NULL,
    thumbImage bigint NULL,
    modifiedBy nvarchar(50) NULL,
    featured bit NULL,
    type INTEGER NULL,
    mainImage bigint NULL,
    scheduledDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    timestamp datetime NULL,
    author nvarchar(100) NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(100) NULL,
    createdDate datetime NULL,
    scheduledTaskName nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    mainImageUrl nvarchar(500) NULL,
    modifiedDate datetime NULL,
    createdBy nvarchar(50) NULL,
    thumbImageUrl nvarchar(500) NULL,
    shareUrl nvarchar(500) NULL,
    html text NULL,
    brief nvarchar(500) NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_articles_2041175501 (liveStatus,thumbImage,modifiedBy,featured,type,mainImage,scheduledDate,id,timestamp,author,scheduledLiveStatus,_id,importBatch,name,createdDate,scheduledTaskName,importCameFrom,mainImageUrl,modifiedDate,createdBy,thumbImageUrl,shareUrl,html,brief,importKey,_namespace,_dataversion) SELECT liveStatus,thumbImage,modifiedBy,featured,type,mainImage,scheduledDate,id,timestamp,author,scheduledLiveStatus,_id,importBatch,name,createdDate,scheduledTaskName,importCameFrom,mainImageUrl,modifiedDate,createdBy,thumbImageUrl,shareUrl,html,brief,importKey,_namespace,_dataversion FROM articles;

-- Droping the original table and renaming the temporary table

DROP TABLE articles;
ALTER TABLE temp_articles_2041175501 RENAME TO articles;

-- Creating table categories from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS categories
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    sponsor_portalBanner bigint NULL,
    sponsor_bannerUrl nvarchar(500) NULL,
    sponsor_showBanner bit NULL,
    sponsor_linkType int NULL,
    sponsor_portalBannerUrl nvarchar(500) NULL,
    sponsor_infoPage bigint NULL,
    sponsor_exhibitor bigint NULL,
    sponsor_banner bigint NULL,
    modifiedDate datetime NULL,
    sponsorCampaign bigint NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_categories_1015591673
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    sponsor_portalBanner bigint NULL,
    sponsor_bannerUrl nvarchar(500) NULL,
    sponsor_showBanner bit NULL,
    sponsor_linkType int NULL,
    sponsor_portalBannerUrl nvarchar(500) NULL,
    sponsor_infoPage bigint NULL,
    sponsor_exhibitor bigint NULL,
    sponsor_banner bigint NULL,
    modifiedDate datetime NULL,
    sponsorCampaign bigint NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_categories_1015591673 (modifiedBy,noChildren,parent,importCameFrom,sponsor_portalBanner,sponsor_bannerUrl,sponsor_showBanner,sponsor_linkType,sponsor_portalBannerUrl,sponsor_infoPage,sponsor_exhibitor,sponsor_banner,modifiedDate,sponsorCampaign,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,noChildren,parent,importCameFrom,sponsor_portalBanner,sponsor_bannerUrl,sponsor_showBanner,sponsor_linkType,sponsor_portalBannerUrl,sponsor_infoPage,sponsor_exhibitor,sponsor_banner,modifiedDate,sponsorCampaign,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM categories;

-- Droping the original table and renaming the temporary table

DROP TABLE categories;
ALTER TABLE temp_categories_1015591673 RENAME TO categories;

-- Creating table countries from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS countries
(
    createdBy nvarchar(50) NULL,
    _id nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    importBatch nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    createdDate datetime NULL,
    modifiedDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);


CREATE TABLE temp_countries_2137491492
(
    createdBy nvarchar(50) NULL,
    _id nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    importBatch nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    createdDate datetime NULL,
    modifiedDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_countries_2137491492 (createdBy,_id,modifiedBy,name,importBatch,importCameFrom,createdDate,modifiedDate,importKey,_namespace,_dataversion) SELECT createdBy,_id,modifiedBy,name,importBatch,importCameFrom,createdDate,modifiedDate,importKey,_namespace,_dataversion FROM countries;

-- Droping the original table and renaming the temporary table

DROP TABLE countries;
ALTER TABLE temp_countries_2137491492 RENAME TO countries;

-- Creating table dataversions from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS dataversions
(
    liveStatus INTEGER NULL,
    scheduledTaskName nvarchar(500) NULL,
    jsonDeletes nvarchar(50) NULL,
    task bigint NULL,
    modifiedBy nvarchar(50) NULL,
    approximateJsonSize INTEGER NULL,
    approximatePlistSize INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    timestamp datetime NULL,
    scheduledDate datetime NULL,
    fileFormatVersionJson INTEGER NULL,
    plistUpdates nvarchar(50) NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    importBatch nvarchar(500) NULL,
    plistDeletes nvarchar(50) NULL,
    jsonUpdates nvarchar(50) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_dataversions_1111907664
(
    liveStatus INTEGER NULL,
    scheduledTaskName nvarchar(500) NULL,
    jsonDeletes nvarchar(50) NULL,
    task bigint NULL,
    modifiedBy nvarchar(50) NULL,
    approximateJsonSize INTEGER NULL,
    approximatePlistSize INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    timestamp datetime NULL,
    scheduledDate datetime NULL,
    fileFormatVersionJson INTEGER NULL,
    plistUpdates nvarchar(50) NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    importBatch nvarchar(500) NULL,
    plistDeletes nvarchar(50) NULL,
    jsonUpdates nvarchar(50) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_dataversions_1111907664 (liveStatus,scheduledTaskName,jsonDeletes,task,modifiedBy,approximateJsonSize,approximatePlistSize,importCameFrom,modifiedDate,timestamp,scheduledDate,fileFormatVersionJson,plistUpdates,scheduledLiveStatus,_id,createdBy,name,importBatch,plistDeletes,jsonUpdates,createdDate,importKey,_namespace,_dataversion) SELECT liveStatus,scheduledTaskName,jsonDeletes,task,modifiedBy,approximateJsonSize,approximatePlistSize,importCameFrom,modifiedDate,timestamp,scheduledDate,fileFormatVersionJson,plistUpdates,scheduledLiveStatus,_id,createdBy,name,importBatch,plistDeletes,jsonUpdates,createdDate,importKey,_namespace,_dataversion FROM dataversions;

-- Droping the original table and renaming the temporary table

DROP TABLE dataversions;
ALTER TABLE temp_dataversions_1111907664 RENAME TO dataversions;

-- Creating table downloadables from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS downloadables
(
    modifiedBy nvarchar(50) NULL,
    downloadUrl nvarchar(500) NULL,
    md5Hash nvarchar(500) NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(300) NULL,
    thumbnailUrl nvarchar(500) NULL,
    createdDate datetime NULL,
    mimeType nvarchar(500) NULL,
    fileType nvarchar(500) NULL,
    blobKey nvarchar(50) NULL,
    assosiatedDataFile bigint NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    size INTEGER NULL,
    thumbnail bigint NULL,
    createdBy nvarchar(50) NULL,
    fileName nvarchar(500) NULL,
    exhibitor bigint NULL,
    importKey nvarchar(500) NULL,
    permissionGroup bigint NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_downloadables_86323836
(
    modifiedBy nvarchar(50) NULL,
    downloadUrl nvarchar(500) NULL,
    md5Hash nvarchar(500) NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(300) NULL,
    thumbnailUrl nvarchar(500) NULL,
    createdDate datetime NULL,
    mimeType nvarchar(500) NULL,
    fileType nvarchar(500) NULL,
    blobKey nvarchar(50) NULL,
    assosiatedDataFile bigint NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    size INTEGER NULL,
    thumbnail bigint NULL,
    createdBy nvarchar(50) NULL,
    fileName nvarchar(500) NULL,
    exhibitor bigint NULL,
    importKey nvarchar(500) NULL,
    permissionGroup bigint NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_downloadables_86323836 (modifiedBy,downloadUrl,md5Hash,id,fullDescription,_id,importBatch,name,thumbnailUrl,createdDate,mimeType,fileType,blobKey,assosiatedDataFile,importCameFrom,modifiedDate,size,thumbnail,createdBy,fileName,exhibitor,importKey,permissionGroup,_namespace,isFavourite,hasNote,_dataversion) SELECT modifiedBy,downloadUrl,md5Hash,id,fullDescription,_id,importBatch,name,thumbnailUrl,createdDate,mimeType,fileType,blobKey,assosiatedDataFile,importCameFrom,modifiedDate,size,thumbnail,createdBy,fileName,exhibitor,importKey,permissionGroup,_namespace,isFavourite,hasNote,_dataversion FROM downloadables;

-- Droping the original table and renaming the temporary table

DROP TABLE downloadables;
ALTER TABLE temp_downloadables_86323836 RENAME TO downloadables;

-- Creating table earlycaches from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS earlycaches
(
    createdBy nvarchar(50) NULL,
    _id nvarchar(500) NULL,
    reason nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    createdDate datetime NULL,
    url nvarchar(500) PRIMARY KEY ASC NOT NULL,
    modifiedDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_earlycaches_1208223655
(
    createdBy nvarchar(50) NULL,
    _id nvarchar(500) NULL,
    reason nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    createdDate datetime NULL,
    url nvarchar(500) PRIMARY KEY ASC NOT NULL,
    modifiedDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_earlycaches_1208223655 (createdBy,_id,reason,modifiedBy,importBatch,importCameFrom,createdDate,url,modifiedDate,importKey,_namespace,_dataversion) SELECT createdBy,_id,reason,modifiedBy,importBatch,importCameFrom,createdDate,url,modifiedDate,importKey,_namespace,_dataversion FROM earlycaches;

-- Droping the original table and renaming the temporary table

DROP TABLE earlycaches;
ALTER TABLE temp_earlycaches_1208223655 RENAME TO earlycaches;

-- Creating table eventdays from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS eventdays
(
    modifiedBy nvarchar(50) NULL,
    timezoneOffset INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_eventdays_182639827
(
    modifiedBy nvarchar(50) NULL,
    timezoneOffset INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_eventdays_182639827 (modifiedBy,timezoneOffset,importCameFrom,runningTime_to,runningTime_from,modifiedDate,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,timezoneOffset,importCameFrom,runningTime_to,runningTime_from,modifiedDate,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM eventdays;

-- Droping the original table and renaming the temporary table

DROP TABLE eventdays;
ALTER TABLE temp_eventdays_182639827 RENAME TO eventdays;

-- Creating table exhibitors from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS exhibitors
(
    seqNo INTEGER NULL,
    gamePersona_nickname nvarchar(30) NULL,
    newPassword nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    locale nvarchar(10) NULL,
    loginEmailSent bit NULL,
    featured INTEGER NULL,
    password nvarchar(100) NULL,
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
    activeGamePlayer bit NULL,
    userType INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    username nvarchar(500) NULL,
    timezone nvarchar(500) NULL,
    fullDescription text NULL,
    briefDescription nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    lastAccessed datetime NULL,
    logo bigint NULL,
    totalPlayerPoints INTEGER NULL,
    logoUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    enableGamification bit NULL,
    modifiedDate datetime NULL,
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
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_exhibitors_1304539646
(
    seqNo INTEGER NULL,
    gamePersona_nickname nvarchar(30) NULL,
    newPassword nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    locale nvarchar(10) NULL,
    loginEmailSent bit NULL,
    featured INTEGER NULL,
    password nvarchar(100) NULL,
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
    activeGamePlayer bit NULL,
    userType INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    username nvarchar(500) NULL,
    timezone nvarchar(500) NULL,
    fullDescription text NULL,
    briefDescription nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    lastAccessed datetime NULL,
    logo bigint NULL,
    totalPlayerPoints INTEGER NULL,
    logoUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    enableGamification bit NULL,
    modifiedDate datetime NULL,
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
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_exhibitors_1304539646 (seqNo,gamePersona_nickname,newPassword,modifiedBy,locale,loginEmailSent,featured,password,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,activeGamePlayer,userType,id,username,timezone,fullDescription,briefDescription,_id,name,importBatch,createdDate,lastAccessed,logo,totalPlayerPoints,logoUrl,importCameFrom,enableGamification,modifiedDate,category,createdBy,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,shareUrl,exhibitorType,importKey,_namespace,isFavourite,hasNote,_dataversion) SELECT seqNo,gamePersona_nickname,newPassword,modifiedBy,locale,loginEmailSent,featured,password,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,activeGamePlayer,userType,id,username,timezone,fullDescription,briefDescription,_id,name,importBatch,createdDate,lastAccessed,logo,totalPlayerPoints,logoUrl,importCameFrom,enableGamification,modifiedDate,category,createdBy,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,shareUrl,exhibitorType,importKey,_namespace,isFavourite,hasNote,_dataversion FROM exhibitors;

-- Droping the original table and renaming the temporary table

DROP TABLE exhibitors;
ALTER TABLE temp_exhibitors_1304539646 RENAME TO exhibitors;

-- Creating associated indexes from scratch

CREATE INDEX exhibitors_i1
ON exhibitors
(
    id
);

-- Creating table exhibitortypes from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS exhibitortypes
(
    icon bigint NULL,
    modifiedBy nvarchar(50) NULL,
    iconUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    colour nvarchar(10) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_exhibitortypes_278955818
(
    icon bigint NULL,
    modifiedBy nvarchar(50) NULL,
    iconUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    colour nvarchar(10) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_exhibitortypes_278955818 (icon,modifiedBy,iconUrl,importCameFrom,modifiedDate,colour,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT icon,modifiedBy,iconUrl,importCameFrom,modifiedDate,colour,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM exhibitortypes;

-- Droping the original table and renaming the temporary table

DROP TABLE exhibitortypes;
ALTER TABLE temp_exhibitortypes_278955818 RENAME TO exhibitortypes;

-- Creating table favouriteactivitystreamposts from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouriteactivitystreamposts
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    activityStreamPost bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouriteactivitystreamposts_1400855637
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    activityStreamPost bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_favouriteactivitystreamposts_1400855637 (modifiedBy,importCameFrom,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,activityStreamPost,importKey,_namespace,_dataversion) SELECT modifiedBy,importCameFrom,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,activityStreamPost,importKey,_namespace,_dataversion FROM favouriteactivitystreamposts;

-- Droping the original table and renaming the temporary table

DROP TABLE favouriteactivitystreamposts;
ALTER TABLE temp_favouriteactivitystreamposts_1400855637 RENAME TO favouriteactivitystreamposts;

-- Creating table favouritedownloadables from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouritedownloadables
(
    groupName nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    downloadable bigint NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouritedownloadables_375271809
(
    groupName nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    downloadable bigint NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
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

INSERT INTO temp_favouritedownloadables_375271809 (groupName,modifiedBy,importCameFrom,downloadable,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT groupName,modifiedBy,importCameFrom,downloadable,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion FROM favouritedownloadables;

-- Droping the original table and renaming the temporary table

DROP TABLE favouritedownloadables;
ALTER TABLE temp_favouritedownloadables_375271809 RENAME TO favouritedownloadables;

-- Creating table favouriteexhibitors from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouriteexhibitors
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    exhibitor bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouriteexhibitors_1497171628
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    exhibitor bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_favouriteexhibitors_1497171628 (modifiedBy,importCameFrom,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,exhibitor,importKey,_namespace,_dataversion) SELECT modifiedBy,importCameFrom,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,exhibitor,importKey,_namespace,_dataversion FROM favouriteexhibitors;

-- Droping the original table and renaming the temporary table

DROP TABLE favouriteexhibitors;
ALTER TABLE temp_favouriteexhibitors_1497171628 RENAME TO favouriteexhibitors;

-- Creating associated indexes from scratch

CREATE INDEX favouriteexhibitors_i7
ON favouriteexhibitors
(
    exhibitor
);

-- Creating table favouritepoi from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouritepoi
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    poi bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouritepoi_471587800
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    poi bigint NULL,
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

INSERT INTO temp_favouritepoi_471587800 (modifiedBy,importCameFrom,visitor,modifiedDate,poi,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,importCameFrom,visitor,modifiedDate,poi,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion FROM favouritepoi;

-- Droping the original table and renaming the temporary table

DROP TABLE favouritepoi;
ALTER TABLE temp_favouritepoi_471587800 RENAME TO favouritepoi;

-- Creating table favouriteproducts from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouriteproducts
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    product bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouriteproducts_1593487619
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    product bigint NULL,
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

INSERT INTO temp_favouriteproducts_1593487619 (modifiedBy,importCameFrom,visitor,modifiedDate,product,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,importCameFrom,visitor,modifiedDate,product,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion FROM favouriteproducts;

-- Droping the original table and renaming the temporary table

DROP TABLE favouriteproducts;
ALTER TABLE temp_favouriteproducts_1593487619 RENAME TO favouriteproducts;

-- Creating table favouritespeakers from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouritespeakers
(
    speaker bigint NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouritespeakers_567903791
(
    speaker bigint NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
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

INSERT INTO temp_favouritespeakers_567903791 (speaker,modifiedBy,importCameFrom,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT speaker,modifiedBy,importCameFrom,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion FROM favouritespeakers;

-- Droping the original table and renaming the temporary table

DROP TABLE favouritespeakers;
ALTER TABLE temp_favouritespeakers_567903791 RENAME TO favouritespeakers;

-- Creating table favouritevisitors from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS favouritevisitors
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    relatedVisitor bigint NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_favouritevisitors_1689803610
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    relatedVisitor bigint NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
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

INSERT INTO temp_favouritevisitors_1689803610 (modifiedBy,importCameFrom,relatedVisitor,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,importCameFrom,relatedVisitor,visitor,modifiedDate,id,_id,createdBy,importBatch,createdDate,importKey,_namespace,_dataversion FROM favouritevisitors;

-- Droping the original table and renaming the temporary table

DROP TABLE favouritevisitors;
ALTER TABLE temp_favouritevisitors_1689803610 RENAME TO favouritevisitors;

-- Creating table games from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS games
(
    primaryInfoPage bigint NULL,
    modifiedBy nvarchar(50) NULL,
    featured bit NULL,
    importCameFrom nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    scoreDisplayStyle INTEGER NULL,
    modifiedDate datetime NULL,
    maxGamePoints INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    sponsorCampaign bigint NULL,
    isVisible bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    thumbUrl nvarchar(500) NULL,
    thumb bigint NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);


CREATE TABLE temp_games_664219782
(
    primaryInfoPage bigint NULL,
    modifiedBy nvarchar(50) NULL,
    featured bit NULL,
    importCameFrom nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    scoreDisplayStyle INTEGER NULL,
    modifiedDate datetime NULL,
    maxGamePoints INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    sponsorCampaign bigint NULL,
    isVisible bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    thumbUrl nvarchar(500) NULL,
    thumb bigint NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_games_664219782 (primaryInfoPage,modifiedBy,featured,importCameFrom,runningTime_to,runningTime_from,scoreDisplayStyle,modifiedDate,maxGamePoints,id,sponsorCampaign,isVisible,_id,createdBy,name,importBatch,thumbUrl,thumb,createdDate,importKey,_namespace,_dataversion) SELECT primaryInfoPage,modifiedBy,featured,importCameFrom,runningTime_to,runningTime_from,scoreDisplayStyle,modifiedDate,maxGamePoints,id,sponsorCampaign,isVisible,_id,createdBy,name,importBatch,thumbUrl,thumb,createdDate,importKey,_namespace,_dataversion FROM games;

-- Droping the original table and renaming the temporary table

DROP TABLE games;
ALTER TABLE temp_games_664219782 RENAME TO games;

-- Creating table hotspots from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS hotspots
(
    mapPosition_colour nvarchar(500) NULL,
    mapPosition_vectors nvarchar(500) NULL,
    mapPosition_zIndex int NULL,
    mapPosition_vectorsFormat int NULL,
    mapPosition_textBoundingBox text NULL,
    mapPosition_labelColour nvarchar(500) NULL,
    mapPosition_rotation int NULL,
    mapPosition_map bigint NULL,
    mapPosition_label nvarchar(500) NULL,
    mapPosition_type int NULL,
    mapPosition_version int NULL,
    mapPosition_vectorsBig text NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    identifier nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_hotspots_1786119601
(
    mapPosition_colour nvarchar(500) NULL,
    mapPosition_vectors nvarchar(500) NULL,
    mapPosition_zIndex int NULL,
    mapPosition_vectorsFormat int NULL,
    mapPosition_textBoundingBox text NULL,
    mapPosition_labelColour nvarchar(500) NULL,
    mapPosition_rotation int NULL,
    mapPosition_map bigint NULL,
    mapPosition_label nvarchar(500) NULL,
    mapPosition_type int NULL,
    mapPosition_version int NULL,
    mapPosition_vectorsBig text NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    identifier nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_hotspots_1786119601 (mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_textBoundingBox,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,mapPosition_vectorsBig,modifiedBy,importCameFrom,modifiedDate,id,_id,createdBy,name,importBatch,identifier,createdDate,importKey,_namespace,_dataversion) SELECT mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_textBoundingBox,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,mapPosition_vectorsBig,modifiedBy,importCameFrom,modifiedDate,id,_id,createdBy,name,importBatch,identifier,createdDate,importKey,_namespace,_dataversion FROM hotspots;

-- Droping the original table and renaming the temporary table

DROP TABLE hotspots;
ALTER TABLE temp_hotspots_1786119601 RENAME TO hotspots;

-- Creating table inappactions from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS inappactions
(
    startDate datetime NULL,
    httpRequestMethod nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    httpRequestRetry INTEGER NULL,
    httpRequestUrl nvarchar(500) NULL,
    httpRequestBackground bit NULL,
    intentEntityKey nvarchar(500) NULL,
    endDate datetime NULL,
    importCameFrom nvarchar(500) NULL,
    platforms nvarchar(500) NULL,
    repeat INTEGER NULL,
    intentUri nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    httpRequestBody nvarchar(500) NULL,
    intentEntityKind nvarchar(500) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    action nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_inappactions_760535773
(
    startDate datetime NULL,
    httpRequestMethod nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    httpRequestRetry INTEGER NULL,
    httpRequestUrl nvarchar(500) NULL,
    httpRequestBackground bit NULL,
    intentEntityKey nvarchar(500) NULL,
    endDate datetime NULL,
    importCameFrom nvarchar(500) NULL,
    platforms nvarchar(500) NULL,
    repeat INTEGER NULL,
    intentUri nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    httpRequestBody nvarchar(500) NULL,
    intentEntityKind nvarchar(500) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    action nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_inappactions_760535773 (startDate,httpRequestMethod,modifiedBy,httpRequestRetry,httpRequestUrl,httpRequestBackground,intentEntityKey,endDate,importCameFrom,platforms,repeat,intentUri,modifiedDate,id,_id,createdBy,httpRequestBody,intentEntityKind,name,importBatch,action,createdDate,importKey,_namespace,_dataversion) SELECT startDate,httpRequestMethod,modifiedBy,httpRequestRetry,httpRequestUrl,httpRequestBackground,intentEntityKey,endDate,importCameFrom,platforms,repeat,intentUri,modifiedDate,id,_id,createdBy,httpRequestBody,intentEntityKind,name,importBatch,action,createdDate,importKey,_namespace,_dataversion FROM inappactions;

-- Droping the original table and renaming the temporary table

DROP TABLE inappactions;
ALTER TABLE temp_inappactions_760535773 RENAME TO inappactions;

-- Creating table infopages from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS infopages
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
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_infopages_1882435592
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
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_infopages_1882435592 (icon,modifiedBy,noChildren,isSecure,parent,importCameFrom,type,url,modifiedDate,id,isRootParent,_id,createdBy,name,importBatch,html,createdDate,openEmbedded,importKey,_namespace,_dataversion) SELECT icon,modifiedBy,noChildren,isSecure,parent,importCameFrom,type,url,modifiedDate,id,isRootParent,_id,createdBy,name,importBatch,html,createdDate,openEmbedded,importKey,_namespace,_dataversion FROM infopages;

-- Droping the original table and renaming the temporary table

DROP TABLE infopages;
ALTER TABLE temp_infopages_1882435592 RENAME TO infopages;

-- Creating table locations from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS locations
(
    mapPosition_colour nvarchar(500) NULL,
    mapPosition_vectors nvarchar(500) NULL,
    mapPosition_zIndex int NULL,
    mapPosition_vectorsFormat int NULL,
    mapPosition_textBoundingBox text NULL,
    mapPosition_labelColour nvarchar(500) NULL,
    mapPosition_rotation int NULL,
    mapPosition_map bigint NULL,
    mapPosition_label nvarchar(500) NULL,
    mapPosition_type int NULL,
    mapPosition_version int NULL,
    mapPosition_vectorsBig text NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    locationType nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_locations_856851764
(
    mapPosition_colour nvarchar(500) NULL,
    mapPosition_vectors nvarchar(500) NULL,
    mapPosition_zIndex int NULL,
    mapPosition_vectorsFormat int NULL,
    mapPosition_textBoundingBox text NULL,
    mapPosition_labelColour nvarchar(500) NULL,
    mapPosition_rotation int NULL,
    mapPosition_map bigint NULL,
    mapPosition_label nvarchar(500) NULL,
    mapPosition_type int NULL,
    mapPosition_version int NULL,
    mapPosition_vectorsBig text NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    locationType nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_locations_856851764 (mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_textBoundingBox,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,mapPosition_vectorsBig,modifiedBy,importCameFrom,modifiedDate,_id,createdBy,locationType,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_textBoundingBox,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,mapPosition_vectorsBig,modifiedBy,importCameFrom,modifiedDate,_id,createdBy,locationType,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM locations;

-- Droping the original table and renaming the temporary table

DROP TABLE locations;
ALTER TABLE temp_locations_856851764 RENAME TO locations;

-- Creating associated indexes from scratch

CREATE INDEX locations_i5
ON locations
(
    name
);

-- Creating table mapfacilities from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS mapfacilities
(
    logo bigint NULL,
    location nvarchar(50) NULL,
    modifiedBy nvarchar(50) NULL,
    logoUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_mapfacilities_1978751583
(
    logo bigint NULL,
    location nvarchar(50) NULL,
    modifiedBy nvarchar(50) NULL,
    logoUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_mapfacilities_1978751583 (logo,location,modifiedBy,logoUrl,importCameFrom,modifiedDate,id,fullDescription,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT logo,location,modifiedBy,logoUrl,importCameFrom,modifiedDate,id,fullDescription,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion FROM mapfacilities;

-- Droping the original table and renaming the temporary table

DROP TABLE mapfacilities;
ALTER TABLE temp_mapfacilities_1978751583 RENAME TO mapfacilities;

-- Creating table maps from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS maps
(
    seqNo bigint NULL,
    imageUrl nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    type INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    colour nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(200) NULL,
    createdDate datetime NULL,
    icon nvarchar(500) NULL,
    cameraX bigint NULL,
    cameraY bigint NULL,
    cameraZ bigint NULL,
    image bigint NULL,
    importCameFrom nvarchar(500) NULL,
    cameraMinZ bigint NULL,
    modifiedDate datetime NULL,
    emspId nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    rotationOffset bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_maps_953167755
(
    seqNo bigint NULL,
    imageUrl nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    type INTEGER NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    colour nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(200) NULL,
    createdDate datetime NULL,
    icon nvarchar(500) NULL,
    cameraX bigint NULL,
    cameraY bigint NULL,
    cameraZ bigint NULL,
    image bigint NULL,
    importCameFrom nvarchar(500) NULL,
    cameraMinZ bigint NULL,
    modifiedDate datetime NULL,
    emspId nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    rotationOffset bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_maps_953167755 (cameraX,icon,seqNo,imageUrl,cameraY,modifiedBy,cameraZ,image,importCameFrom,type,cameraMinZ,modifiedDate,colour,id,_id,createdBy,name,importBatch,rotationOffset,createdDate,importKey,_namespace,_dataversion,emspId) SELECT cameraX,icon,seqNo,imageUrl,cameraY,modifiedBy,cameraZ,image,importCameFrom,type,cameraMinZ,modifiedDate,colour,id,_id,createdBy,name,importBatch,rotationOffset,createdDate,importKey,_namespace,_dataversion,NULL AS emspId FROM maps;

-- Droping the original table and renaming the temporary table

DROP TABLE maps;
ALTER TABLE temp_maps_953167755 RENAME TO maps;

-- Creating table mapzones from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS mapzones
(
    logo bigint NULL,
    location nvarchar(50) NULL,
    modifiedBy nvarchar(50) NULL,
    logoUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_mapzones_2075067574
(
    logo bigint NULL,
    location nvarchar(50) NULL,
    modifiedBy nvarchar(50) NULL,
    logoUrl nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_mapzones_2075067574 (logo,location,modifiedBy,logoUrl,importCameFrom,modifiedDate,id,fullDescription,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT logo,location,modifiedBy,logoUrl,importCameFrom,modifiedDate,id,fullDescription,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion FROM mapzones;

-- Droping the original table and renaming the temporary table

DROP TABLE mapzones;
ALTER TABLE temp_mapzones_2075067574 RENAME TO mapzones;

-- Creating table meetinglocations from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS meetinglocations
(
    mapPosition_colour nvarchar(500) NULL,
    mapPosition_vectors nvarchar(500) NULL,
    mapPosition_zIndex int NULL,
    mapPosition_vectorsFormat int NULL,
    mapPosition_textBoundingBox text NULL,
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
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_meetinglocations_1049483746
(
    mapPosition_colour nvarchar(500) NULL,
    mapPosition_vectors nvarchar(500) NULL,
    mapPosition_zIndex int NULL,
    mapPosition_vectorsFormat int NULL,
    mapPosition_textBoundingBox text NULL,
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
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_meetinglocations_1049483746 (mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_textBoundingBox,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,mapPosition_vectorsBig,modifiedBy,importCameFrom,meetingsCapacity,modifiedDate,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT mapPosition_colour,mapPosition_vectors,mapPosition_zIndex,mapPosition_vectorsFormat,mapPosition_textBoundingBox,mapPosition_labelColour,mapPosition_rotation,mapPosition_map,mapPosition_label,mapPosition_type,mapPosition_version,mapPosition_vectorsBig,modifiedBy,importCameFrom,meetingsCapacity,modifiedDate,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM meetinglocations;

-- Droping the original table and renaming the temporary table

DROP TABLE meetinglocations;
ALTER TABLE temp_meetinglocations_1049483746 RENAME TO meetinglocations;

-- Creating table meetings from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS meetings
(
    location nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    eventDay nvarchar(50) NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(200) NULL,
    isDeletable bit NULL,
    createdDate datetime NULL,
    status INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    meetingRequestMessage bigint NULL,
    createdBy nvarchar(50) NULL,
    meetingType INTEGER NULL,
    meetingLocation nvarchar(50) NULL,
    exhibitor bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_meetings_23899918
(
    location nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    eventDay nvarchar(50) NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(200) NULL,
    isDeletable bit NULL,
    createdDate datetime NULL,
    status INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    meetingRequestMessage bigint NULL,
    createdBy nvarchar(50) NULL,
    meetingType INTEGER NULL,
    meetingLocation nvarchar(50) NULL,
    exhibitor bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_meetings_23899918 (location,modifiedBy,id,eventDay,fullDescription,_id,importBatch,name,isDeletable,createdDate,status,importCameFrom,runningTime_to,runningTime_from,modifiedDate,meetingRequestMessage,createdBy,meetingType,meetingLocation,exhibitor,importKey,_namespace,_dataversion) SELECT location,modifiedBy,id,eventDay,fullDescription,_id,importBatch,name,isDeletable,createdDate,status,importCameFrom,runningTime_to,runningTime_from,modifiedDate,meetingRequestMessage,createdBy,meetingType,meetingLocation,exhibitor,importKey,_namespace,_dataversion FROM meetings;

-- Droping the original table and renaming the temporary table

DROP TABLE meetings;
ALTER TABLE temp_meetings_23899918 RENAME TO meetings;

-- Creating table messagecampaigns from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS messagecampaigns
(
    associatedTaskSchedule bigint NULL,
    sendInAppMessage bit NULL,
    modifiedBy nvarchar(50) NULL,
    userSegmentation text NULL,
    emailTemplate_body text NULL,
    emailTemplate_replyToTitle nvarchar(500) NULL,
    emailTemplate_replyTo nvarchar(500) NULL,
    emailTemplate_subject nvarchar(500) NULL,
    emailTemplate_rootWidget bigint NULL,
    emailTemplate_myEventCSSOverrideFile bigint NULL,
    messageTemplate_globalMessageTemplate bigint NULL,
    messageTemplate_appMessageTemplate bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    pushNotificationTemplate_body nvarchar(200) NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(100) NULL,
    createdDate datetime NULL,
    useMessageTemplate bit NULL,
    campaignType INTEGER NULL,
    inAppMessageTemplate_body text NULL,
    inAppMessageTemplate_author nvarchar(500) NULL,
    inAppMessageTemplate_subject nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    sendPushNotification bit NULL,
    createdBy nvarchar(50) NULL,
    sendEmail bit NULL,
    scheduleEnabled bit NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_messagecampaigns_1145799737
(
    associatedTaskSchedule bigint NULL,
    sendInAppMessage bit NULL,
    modifiedBy nvarchar(50) NULL,
    userSegmentation text NULL,
    emailTemplate_body text NULL,
    emailTemplate_replyToTitle nvarchar(500) NULL,
    emailTemplate_replyTo nvarchar(500) NULL,
    emailTemplate_subject nvarchar(500) NULL,
    emailTemplate_rootWidget bigint NULL,
    emailTemplate_myEventCSSOverrideFile bigint NULL,
    messageTemplate_globalMessageTemplate bigint NULL,
    messageTemplate_appMessageTemplate bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    pushNotificationTemplate_body nvarchar(200) NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(100) NULL,
    createdDate datetime NULL,
    useMessageTemplate bit NULL,
    campaignType INTEGER NULL,
    inAppMessageTemplate_body text NULL,
    inAppMessageTemplate_author nvarchar(500) NULL,
    inAppMessageTemplate_subject nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    sendPushNotification bit NULL,
    createdBy nvarchar(50) NULL,
    sendEmail bit NULL,
    scheduleEnabled bit NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_messagecampaigns_1145799737 (associatedTaskSchedule,sendInAppMessage,modifiedBy,userSegmentation,emailTemplate_body,emailTemplate_replyToTitle,emailTemplate_replyTo,emailTemplate_subject,emailTemplate_rootWidget,emailTemplate_myEventCSSOverrideFile,messageTemplate_globalMessageTemplate,messageTemplate_appMessageTemplate,id,pushNotificationTemplate_body,_id,importBatch,name,createdDate,useMessageTemplate,campaignType,inAppMessageTemplate_body,inAppMessageTemplate_author,inAppMessageTemplate_subject,importCameFrom,modifiedDate,sendPushNotification,createdBy,sendEmail,scheduleEnabled,importKey,_namespace,_dataversion) SELECT associatedTaskSchedule,sendInAppMessage,modifiedBy,userSegmentation,emailTemplate_body,emailTemplate_replyToTitle,emailTemplate_replyTo,emailTemplate_subject,emailTemplate_rootWidget,emailTemplate_myEventCSSOverrideFile,messageTemplate_globalMessageTemplate,messageTemplate_appMessageTemplate,id,pushNotificationTemplate_body,_id,importBatch,name,createdDate,useMessageTemplate,campaignType,inAppMessageTemplate_body,inAppMessageTemplate_author,inAppMessageTemplate_subject,importCameFrom,modifiedDate,sendPushNotification,createdBy,sendEmail,scheduleEnabled,importKey,_namespace,_dataversion FROM messagecampaigns;

-- Droping the original table and renaming the temporary table

DROP TABLE messagecampaigns;
ALTER TABLE temp_messagecampaigns_1145799737 RENAME TO messagecampaigns;

-- Creating table messages from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS messages
(
    liveStatus INTEGER NULL,
    body text NULL,
    modifiedBy nvarchar(50) NULL,
    subject nvarchar(200) NULL,
    noChildren INTEGER NULL,
    type INTEGER NULL,
    recipient nvarchar(100) NULL,
    scheduledDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    timestamp datetime NULL,
    author nvarchar(100) NULL,
    isRootParent bit NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    toVisitor bigint NULL,
    fromExhibitor bigint NULL,
    createdDate datetime NULL,
    scheduledTaskName nvarchar(500) NULL,
    toExhibitor bigint NULL,
    parent bigint NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    associatedMeeting bigint NULL,
    createdBy nvarchar(50) NULL,
    fromVisitor bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    isRead BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_messages_120215909
(
    liveStatus INTEGER NULL,
    body text NULL,
    modifiedBy nvarchar(50) NULL,
    subject nvarchar(200) NULL,
    noChildren INTEGER NULL,
    type INTEGER NULL,
    recipient nvarchar(100) NULL,
    scheduledDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    timestamp datetime NULL,
    author nvarchar(100) NULL,
    isRootParent bit NULL,
    scheduledLiveStatus INTEGER NULL,
    _id nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    toVisitor bigint NULL,
    fromExhibitor bigint NULL,
    createdDate datetime NULL,
    scheduledTaskName nvarchar(500) NULL,
    toExhibitor bigint NULL,
    parent bigint NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    associatedMeeting bigint NULL,
    createdBy nvarchar(50) NULL,
    fromVisitor bigint NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    isRead BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_messages_120215909 (liveStatus,body,modifiedBy,subject,noChildren,type,recipient,scheduledDate,id,timestamp,author,isRootParent,scheduledLiveStatus,_id,importBatch,toVisitor,fromExhibitor,createdDate,scheduledTaskName,toExhibitor,parent,importCameFrom,modifiedDate,associatedMeeting,createdBy,fromVisitor,importKey,_namespace,isRead,_dataversion) SELECT liveStatus,body,modifiedBy,subject,noChildren,type,recipient,scheduledDate,id,timestamp,author,isRootParent,scheduledLiveStatus,_id,importBatch,toVisitor,fromExhibitor,createdDate,scheduledTaskName,toExhibitor,parent,importCameFrom,modifiedDate,associatedMeeting,createdBy,fromVisitor,importKey,_namespace,isRead,_dataversion FROM messages;

-- Droping the original table and renaming the temporary table

DROP TABLE messages;
ALTER TABLE temp_messages_120215909 RENAME TO messages;

-- Creating table notes from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS notes
(
    relatedSpeaker bigint NULL,
    relatedActivityStreamPost bigint NULL,
    modifiedBy nvarchar(50) NULL,
    relatedExhibitor bigint NULL,
    relatedPoi bigint NULL,
    relatedSession bigint NULL,
    importCameFrom nvarchar(500) NULL,
    type nvarchar(500) NULL,
    relatedVisitor bigint NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    relatedDownloadable bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    relatedSubSession bigint NULL,
    importBatch nvarchar(500) NULL,
    relatedProduct bigint NULL,
    createdDate datetime NULL,
    note text NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_notes_1242115728
(
    relatedSpeaker bigint NULL,
    relatedActivityStreamPost bigint NULL,
    modifiedBy nvarchar(50) NULL,
    relatedExhibitor bigint NULL,
    relatedPoi bigint NULL,
    relatedSession bigint NULL,
    importCameFrom nvarchar(500) NULL,
    type nvarchar(500) NULL,
    relatedVisitor bigint NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    relatedDownloadable bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    relatedSubSession bigint NULL,
    importBatch nvarchar(500) NULL,
    relatedProduct bigint NULL,
    createdDate datetime NULL,
    note text NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_notes_1242115728 (relatedSpeaker,relatedActivityStreamPost,modifiedBy,relatedExhibitor,relatedPoi,relatedSession,importCameFrom,type,relatedVisitor,visitor,modifiedDate,relatedDownloadable,id,_id,createdBy,relatedSubSession,importBatch,relatedProduct,createdDate,note,importKey,_namespace,_dataversion) SELECT relatedSpeaker,relatedActivityStreamPost,modifiedBy,relatedExhibitor,relatedPoi,relatedSession,importCameFrom,type,relatedVisitor,visitor,modifiedDate,relatedDownloadable,id,_id,createdBy,relatedSubSession,importBatch,relatedProduct,createdDate,note,importKey,_namespace,_dataversion FROM notes;

-- Droping the original table and renaming the temporary table

DROP TABLE notes;
ALTER TABLE temp_notes_1242115728 RENAME TO notes;

-- Creating table permissiongroups from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS permissiongroups
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    anonymousPermissionSet_canFavourite bit NULL,
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
    everyoneElsePermissionSet_canOpen bit NULL,
    everyoneElsePermissionSet_canView bit NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_permissiongroups_216531900 (modifiedBy,importCameFrom,anonymousPermissionSet_canFavourite,anonymousPermissionSet_canOpen,anonymousPermissionSet_canView,modifiedDate,id,_id,createdBy,name,importBatch,createdDate,permissionFailureMessage,everyoneElsePermissionSet_canFavourite,everyoneElsePermissionSet_canOpen,everyoneElsePermissionSet_canView,importKey,_namespace,_dataversion) SELECT modifiedBy,importCameFrom,anonymousPermissionSet_canFavourite,anonymousPermissionSet_canOpen,anonymousPermissionSet_canView,modifiedDate,id,_id,createdBy,name,importBatch,createdDate,permissionFailureMessage,everyoneElsePermissionSet_canFavourite,everyoneElsePermissionSet_canOpen,everyoneElsePermissionSet_canView,importKey,_namespace,_dataversion FROM permissiongroups;

-- Droping the original table and renaming the temporary table

DROP TABLE permissiongroups;
ALTER TABLE temp_permissiongroups_216531900 RENAME TO permissiongroups;

-- Creating table playergames from scratch (simple ALTER TABLE is not enough)


CREATE TABLE IF NOT EXISTS playergames
(
    visitorActive bit NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    game bigint NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
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


CREATE TABLE temp_playergames_1338431719
(
    visitorActive bit NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    game bigint NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
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

INSERT INTO temp_playergames_1338431719 (visitorActive,modifiedBy,importCameFrom,game,visitor,modifiedDate,id,_id,createdBy,importBatch,totalGamePoints,createdDate,importKey,_namespace,_dataversion) SELECT visitorActive,modifiedBy,importCameFrom,game,visitor,modifiedDate,id,_id,createdBy,importBatch,totalGamePoints,createdDate,importKey,_namespace,_dataversion FROM playergames;

-- Droping the original table and renaming the temporary table

DROP TABLE playergames;
ALTER TABLE temp_playergames_1338431719 RENAME TO playergames;

-- Creating table poi from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS poi
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
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
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    address_county nvarchar(100) NULL,
    address_postCode nvarchar(45) NULL,
    address_address1 nvarchar(100) NULL,
    address_address2 nvarchar(100) NULL,
    address_town nvarchar(100) NULL,
    address_address3 nvarchar(100) NULL,
    address_country nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    thumbUrl nvarchar(500) NULL,
    shareUrl nvarchar(500) NULL,
    thumb bigint NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_poi_312847891
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
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
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    fullDescription text NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    address_county nvarchar(100) NULL,
    address_postCode nvarchar(45) NULL,
    address_address1 nvarchar(100) NULL,
    address_address2 nvarchar(100) NULL,
    address_town nvarchar(100) NULL,
    address_address3 nvarchar(100) NULL,
    address_country nvarchar(50) NULL,
    name nvarchar(100) NULL,
    importBatch nvarchar(500) NULL,
    thumbUrl nvarchar(500) NULL,
    shareUrl nvarchar(500) NULL,
    thumb bigint NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_poi_312847891 (modifiedBy,importCameFrom,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,modifiedDate,id,fullDescription,_id,createdBy,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,name,importBatch,thumbUrl,shareUrl,thumb,createdDate,importKey,_namespace,isFavourite,hasNote,_dataversion) SELECT modifiedBy,importCameFrom,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,modifiedDate,id,fullDescription,_id,createdBy,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,name,importBatch,thumbUrl,shareUrl,thumb,createdDate,importKey,_namespace,isFavourite,hasNote,_dataversion FROM poi;

-- Droping the original table and renaming the temporary table

DROP TABLE poi;
ALTER TABLE temp_poi_312847891 RENAME TO poi;

-- Creating table poicategories from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS poicategories
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    sponsorCampaign bigint NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_poicategories_1434747710
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    sponsorCampaign bigint NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_poicategories_1434747710 (modifiedBy,noChildren,parent,importCameFrom,modifiedDate,sponsorCampaign,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,noChildren,parent,importCameFrom,modifiedDate,sponsorCampaign,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM poicategories;

-- Droping the original table and renaming the temporary table

DROP TABLE poicategories;
ALTER TABLE temp_poicategories_1434747710 RENAME TO poicategories;

-- Creating table productcategories from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS productcategories
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    sponsor_portalBanner bigint NULL,
    sponsor_bannerUrl nvarchar(500) NULL,
    sponsor_showBanner bit NULL,
    sponsor_linkType int NULL,
    sponsor_portalBannerUrl nvarchar(500) NULL,
    sponsor_infoPage bigint NULL,
    sponsor_exhibitor bigint NULL,
    sponsor_banner bigint NULL,
    modifiedDate datetime NULL,
    sponsorCampaign bigint NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_productcategories_409163882
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    sponsor_portalBanner bigint NULL,
    sponsor_bannerUrl nvarchar(500) NULL,
    sponsor_showBanner bit NULL,
    sponsor_linkType int NULL,
    sponsor_portalBannerUrl nvarchar(500) NULL,
    sponsor_infoPage bigint NULL,
    sponsor_exhibitor bigint NULL,
    sponsor_banner bigint NULL,
    modifiedDate datetime NULL,
    sponsorCampaign bigint NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_productcategories_409163882 (modifiedBy,noChildren,parent,importCameFrom,sponsor_portalBanner,sponsor_bannerUrl,sponsor_showBanner,sponsor_linkType,sponsor_portalBannerUrl,sponsor_infoPage,sponsor_exhibitor,sponsor_banner,modifiedDate,sponsorCampaign,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,noChildren,parent,importCameFrom,sponsor_portalBanner,sponsor_bannerUrl,sponsor_showBanner,sponsor_linkType,sponsor_portalBannerUrl,sponsor_infoPage,sponsor_exhibitor,sponsor_banner,modifiedDate,sponsorCampaign,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM productcategories;

-- Droping the original table and renaming the temporary table

DROP TABLE productcategories;
ALTER TABLE temp_productcategories_409163882 RENAME TO productcategories;

-- Creating table products from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS products
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

CREATE TABLE temp_products_1531063701
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

-- Copying rows from original table to the new table

INSERT INTO temp_products_1531063701 (modifiedBy,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,mainImage,id,fullDescription,_id,importBatch,name,createdDate,customField3,customField4,importCameFrom,customField1,customField2,mainImageUrl,customField5,modifiedDate,createdBy,shareUrl,exhibitor,importKey,_namespace,isFavourite,hasNote,_dataversion) SELECT modifiedBy,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,mainImage,id,fullDescription,_id,importBatch,name,createdDate,customField3,customField4,importCameFrom,customField1,customField2,mainImageUrl,customField5,modifiedDate,createdBy,shareUrl,exhibitor,importKey,_namespace,isFavourite,hasNote,_dataversion FROM products;

-- Droping the original table and renaming the temporary table

DROP TABLE products;
ALTER TABLE temp_products_1531063701 RENAME TO products;

-- Creating table scheduleitems from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS scheduleitems
(
    location nvarchar(50) NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    type INTEGER NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    eventDay nvarchar(50) NULL,
    fullDescription text NULL,
    briefDescription nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(200) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_scheduleitems_505479873
(
    location nvarchar(50) NULL,
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    type INTEGER NULL,
    runningTime_to datetime NULL,
    runningTime_from datetime NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    eventDay nvarchar(50) NULL,
    fullDescription text NULL,
    briefDescription nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    name nvarchar(200) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_scheduleitems_505479873 (location,modifiedBy,importCameFrom,type,runningTime_to,runningTime_from,modifiedDate,id,eventDay,fullDescription,briefDescription,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT location,modifiedBy,importCameFrom,type,runningTime_to,runningTime_from,modifiedDate,id,eventDay,fullDescription,briefDescription,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion FROM scheduleitems;

-- Droping the original table and renaming the temporary table

DROP TABLE scheduleitems;
ALTER TABLE temp_scheduleitems_505479873 RENAME TO scheduleitems;

-- Creating table sessioncategories from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS sessioncategories
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    sponsor_portalBanner bigint NULL,
    sponsor_bannerUrl nvarchar(500) NULL,
    sponsor_showBanner bit NULL,
    sponsor_linkType int NULL,
    sponsor_portalBannerUrl nvarchar(500) NULL,
    sponsor_infoPage bigint NULL,
    sponsor_exhibitor bigint NULL,
    sponsor_banner bigint NULL,
    modifiedDate datetime NULL,
    sponsorCampaign bigint NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_sessioncategories_1627379692
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    sponsor_portalBanner bigint NULL,
    sponsor_bannerUrl nvarchar(500) NULL,
    sponsor_showBanner bit NULL,
    sponsor_linkType int NULL,
    sponsor_portalBannerUrl nvarchar(500) NULL,
    sponsor_infoPage bigint NULL,
    sponsor_exhibitor bigint NULL,
    sponsor_banner bigint NULL,
    modifiedDate datetime NULL,
    sponsorCampaign bigint NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_sessioncategories_1627379692 (modifiedBy,noChildren,parent,importCameFrom,sponsor_portalBanner,sponsor_bannerUrl,sponsor_showBanner,sponsor_linkType,sponsor_portalBannerUrl,sponsor_infoPage,sponsor_exhibitor,sponsor_banner,modifiedDate,sponsorCampaign,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,noChildren,parent,importCameFrom,sponsor_portalBanner,sponsor_bannerUrl,sponsor_showBanner,sponsor_linkType,sponsor_portalBannerUrl,sponsor_infoPage,sponsor_exhibitor,sponsor_banner,modifiedDate,sponsorCampaign,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM sessioncategories;

-- Droping the original table and renaming the temporary table

DROP TABLE sessioncategories;
ALTER TABLE temp_sessioncategories_1627379692 RENAME TO sessioncategories;

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
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_sessions_601795864 (location,modifiedBy,id,feedbackUrl,eventDay,fullDescription,_id,briefDescription,importBatch,name,createdDate,addToAgendaMessage,leadChair,track,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,shareUrl,importKey,permissionGroup,_namespace,isFavourite,hasNote,_dataversion) SELECT location,modifiedBy,id,feedbackUrl,eventDay,fullDescription,_id,briefDescription,importBatch,name,createdDate,addToAgendaMessage,leadChair,track,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,shareUrl,importKey,permissionGroup,_namespace,isFavourite,hasNote,_dataversion FROM sessions;

-- Droping the original table and renaming the temporary table

DROP TABLE sessions;
ALTER TABLE temp_sessions_601795864 RENAME TO sessions;

-- Creating table speakers from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS speakers
(
    gamePersona_nickname nvarchar(30) NULL,
    modifiedBy nvarchar(50) NULL,
    newPassword nvarchar(500) NULL,
    loginEmailSent bit NULL,
    activeGamePlayer bit NULL,
    password nvarchar(100) NULL,
    userType INTEGER NULL,
    timezone nvarchar(500) NULL,
    username nvarchar(500) NULL,
    mugShotUrl nvarchar(500) NULL,
    fullDescription text NULL,
    lastNames nvarchar(100) NULL,
    createdDate datetime NULL,
    firstNames nvarchar(100) NULL,
    totalPlayerPoints INTEGER NULL,
    companyName nvarchar(100) NULL,
    createdBy nvarchar(50) NULL,
    shareUrl nvarchar(500) NULL,
    importKey nvarchar(500) NULL,
    department nvarchar(100) NULL,
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
    id INTEGER PRIMARY KEY ASC NOT NULL,
    title nvarchar(20) NULL,
    _id nvarchar(500) NULL,
    briefDescription nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    lastAccessed datetime NULL,
    jobTitle nvarchar(500) NULL,
    enableGamification bit NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    address_county nvarchar(100) NULL,
    address_postCode nvarchar(45) NULL,
    address_address1 nvarchar(100) NULL,
    address_address2 nvarchar(100) NULL,
    address_town nvarchar(100) NULL,
    address_address3 nvarchar(100) NULL,
    address_country nvarchar(50) NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_speakers_1723695683
(
    gamePersona_nickname nvarchar(30) NULL,
    modifiedBy nvarchar(50) NULL,
    newPassword nvarchar(500) NULL,
    loginEmailSent bit NULL,
    activeGamePlayer bit NULL,
    password nvarchar(100) NULL,
    userType INTEGER NULL,
    timezone nvarchar(500) NULL,
    username nvarchar(500) NULL,
    mugShotUrl nvarchar(500) NULL,
    fullDescription text NULL,
    lastNames nvarchar(100) NULL,
    createdDate datetime NULL,
    firstNames nvarchar(100) NULL,
    totalPlayerPoints INTEGER NULL,
    companyName nvarchar(100) NULL,
    createdBy nvarchar(50) NULL,
    shareUrl nvarchar(500) NULL,
    importKey nvarchar(500) NULL,
    department nvarchar(100) NULL,
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
    id INTEGER PRIMARY KEY ASC NOT NULL,
    title nvarchar(20) NULL,
    _id nvarchar(500) NULL,
    briefDescription nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    lastAccessed datetime NULL,
    jobTitle nvarchar(500) NULL,
    enableGamification bit NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    address_county nvarchar(100) NULL,
    address_postCode nvarchar(45) NULL,
    address_address1 nvarchar(100) NULL,
    address_address2 nvarchar(100) NULL,
    address_town nvarchar(100) NULL,
    address_address3 nvarchar(100) NULL,
    address_country nvarchar(50) NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_speakers_1723695683 (gamePersona_nickname,modifiedBy,newPassword,loginEmailSent,activeGamePlayer,password,userType,timezone,username,mugShotUrl,fullDescription,lastNames,createdDate,firstNames,totalPlayerPoints,companyName,createdBy,shareUrl,importKey,department,locale,mugShot,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,title,_id,briefDescription,importBatch,lastAccessed,jobTitle,enableGamification,importCameFrom,visitor,modifiedDate,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,_namespace,isFavourite,hasNote,_dataversion) SELECT gamePersona_nickname,modifiedBy,newPassword,loginEmailSent,activeGamePlayer,password,userType,timezone,username,mugShotUrl,fullDescription,lastNames,createdDate,firstNames,totalPlayerPoints,companyName,createdBy,shareUrl,importKey,department,locale,mugShot,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,title,_id,briefDescription,importBatch,lastAccessed,jobTitle,enableGamification,importCameFrom,visitor,modifiedDate,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,_namespace,isFavourite,hasNote,_dataversion FROM speakers;

-- Droping the original table and renaming the temporary table

DROP TABLE speakers;
ALTER TABLE temp_speakers_1723695683 RENAME TO speakers;

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
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_subsessions_698111855 (modifiedBy,id,eventDay,fullDescription,_id,briefDescription,priority,importBatch,name,createdDate,addToAgendaMessage,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,session,shareUrl,importKey,_namespace,isFavourite,hasNote,_dataversion) SELECT modifiedBy,id,eventDay,fullDescription,_id,briefDescription,priority,importBatch,name,createdDate,addToAgendaMessage,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,session,shareUrl,importKey,_namespace,isFavourite,hasNote,_dataversion FROM subsessions;

-- Droping the original table and renaming the temporary table

DROP TABLE subsessions;
ALTER TABLE temp_subsessions_698111855 RENAME TO subsessions;

-- Creating table tags from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS tags
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_tags_1820011674
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_tags_1820011674 (modifiedBy,noChildren,parent,importCameFrom,modifiedDate,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,noChildren,parent,importCameFrom,modifiedDate,isRootParent,_id,createdBy,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM tags;

-- Droping the original table and renaming the temporary table

DROP TABLE tags;
ALTER TABLE temp_tags_1820011674 RENAME TO tags;

-- Creating table tagsv2 from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS tagsv2
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent bigint NULL,
    label nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    isArchived bit NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    sponsorCampaign bigint NULL,
    entityBitMask INTEGER NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    path nvarchar(500) NULL,
    archivedDate datetime NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_tagsv2_794427846
(
    modifiedBy nvarchar(50) NULL,
    noChildren INTEGER NULL,
    parent bigint NULL,
    label nvarchar(500) NULL,
    importCameFrom nvarchar(500) NULL,
    isArchived bit NULL,
    modifiedDate datetime NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    sponsorCampaign bigint NULL,
    entityBitMask INTEGER NULL,
    isRootParent bit NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    path nvarchar(500) NULL,
    archivedDate datetime NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_tagsv2_794427846 (modifiedBy,noChildren,parent,label,importCameFrom,isArchived,modifiedDate,id,sponsorCampaign,entityBitMask,isRootParent,_id,createdBy,importBatch,path,archivedDate,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,noChildren,parent,label,importCameFrom,isArchived,modifiedDate,id,sponsorCampaign,entityBitMask,isRootParent,_id,createdBy,importBatch,path,archivedDate,createdDate,importKey,_namespace,_dataversion FROM tagsv2;

-- Droping the original table and renaming the temporary table

DROP TABLE tagsv2;
ALTER TABLE temp_tagsv2_794427846 RENAME TO tagsv2;

-- Creating table tracks from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS tracks
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    colour nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    priority INTEGER NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_tracks_1916327665
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    colour nvarchar(500) NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    priority INTEGER NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_tracks_1916327665 (modifiedBy,importCameFrom,modifiedDate,colour,_id,createdBy,priority,importBatch,name,createdDate,importKey,_namespace,_dataversion) SELECT modifiedBy,importCameFrom,modifiedDate,colour,_id,createdBy,priority,importBatch,name,createdDate,importKey,_namespace,_dataversion FROM tracks;

-- Droping the original table and renaming the temporary table

DROP TABLE tracks;
ALTER TABLE temp_tracks_1916327665 RENAME TO tracks;

-- Creating table trophies from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS trophies
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
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_trophies_890743837
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
    name nvarchar(500) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_trophies_890743837 (primaryInfoPage,icon,maxTrophyPoints,modifiedBy,importCameFrom,game,runningTime_to,runningTime_from,modifiedDate,id,sponsorCampaign,isVisible,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion) SELECT primaryInfoPage,icon,maxTrophyPoints,modifiedBy,importCameFrom,game,runningTime_to,runningTime_from,modifiedDate,id,sponsorCampaign,isVisible,_id,createdBy,name,importBatch,createdDate,importKey,_namespace,_dataversion FROM trophies;

-- Droping the original table and renaming the temporary table

DROP TABLE trophies;
ALTER TABLE temp_trophies_890743837 RENAME TO trophies;

-- Creating table visitorgroups from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS visitorgroups
(
    meetingCredits INTEGER NULL,
    meetingsTarget INTEGER NULL,
    addToAgendaDisabledMessage nvarchar(500) NULL,
    isAddToAgendaEnabled bit NULL,
    modifiedBy nvarchar(50) NULL,
    autoIsDeletableMeeting bit NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    autoAcceptMeeting bit NULL,
    createdDate datetime NULL,
    messageCredits INTEGER NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_visitorgroups_2012643656
(
    meetingCredits INTEGER NULL,
    meetingsTarget INTEGER NULL,
    addToAgendaDisabledMessage nvarchar(500) NULL,
    isAddToAgendaEnabled bit NULL,
    modifiedBy nvarchar(50) NULL,
    autoIsDeletableMeeting bit NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    name nvarchar(500) PRIMARY KEY ASC NOT NULL,
    autoAcceptMeeting bit NULL,
    createdDate datetime NULL,
    messageCredits INTEGER NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_visitorgroups_2012643656 (meetingCredits,meetingsTarget,addToAgendaDisabledMessage,isAddToAgendaEnabled,modifiedBy,autoIsDeletableMeeting,importCameFrom,modifiedDate,_id,createdBy,importBatch,name,autoAcceptMeeting,createdDate,messageCredits,importKey,_namespace,_dataversion) SELECT meetingCredits,meetingsTarget,addToAgendaDisabledMessage,isAddToAgendaEnabled,modifiedBy,autoIsDeletableMeeting,importCameFrom,modifiedDate,_id,createdBy,importBatch,name,autoAcceptMeeting,createdDate,messageCredits,importKey,_namespace,_dataversion FROM visitorgroups;

-- Droping the original table and renaming the temporary table

DROP TABLE visitorgroups;
ALTER TABLE temp_visitorgroups_2012643656 RENAME TO visitorgroups;

-- Creating table visitors from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS visitors
(
    meetingsTarget INTEGER NULL,
    gamePersona_nickname nvarchar(30) NULL,
    modifiedBy nvarchar(50) NULL,
    newPassword nvarchar(500) NULL,
    loginEmailSent bit NULL,
    activeGamePlayer bit NULL,
    password nvarchar(100) NULL,
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
    enableGamification bit NULL,
    importCameFrom nvarchar(500) NULL,
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
    qrCodeGenerated bit NULL,
    showMe bit NULL,
    exhibitor bigint NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

CREATE TABLE temp_visitors_987059828
(
    meetingsTarget INTEGER NULL,
    gamePersona_nickname nvarchar(30) NULL,
    modifiedBy nvarchar(50) NULL,
    newPassword nvarchar(500) NULL,
    loginEmailSent bit NULL,
    activeGamePlayer bit NULL,
    password nvarchar(100) NULL,
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
    enableGamification bit NULL,
    importCameFrom nvarchar(500) NULL,
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
    qrCodeGenerated bit NULL,
    showMe bit NULL,
    exhibitor bigint NULL,
    _namespace nvarchar(100) NULL,
    isFavourite BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);

-- Copying rows from original table to the new table

INSERT INTO temp_visitors_987059828 (meetingsTarget,gamePersona_nickname,modifiedBy,newPassword,loginEmailSent,activeGamePlayer,password,userType,timezone,username,mugShotUrl,showEmail,fullDescription,showTwitter,messageDebits,lastNames,createdDate,firstNames,meetingDebits,privateKey,totalPlayerPoints,showYouTubeUrl,companyName,showBriefDescription,createdBy,showBlogUrl,actionTypesLastRanOn,showReasonForAttending,showVisitorType,showFullDescription,messageCredits,importKey,showJobTitle,hasSetProfile,meetingCredits,department,locale,reasonForAttending,showInterests,mugShot,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,showLinkedIn,showDepartment,showFax,title,showTelephone2,showName,_id,briefDescription,importBatch,showAddress,showCompanyName,lastAccessed,jobTitle,showMugShot,enableGamification,importCameFrom,showWww,modifiedDate,showTelephone,visitorGroup,showFacebook,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,visitorType,qrCodeGenerated,showMe,exhibitor,_namespace,isFavourite,hasNote,_dataversion) SELECT meetingsTarget,gamePersona_nickname,modifiedBy,newPassword,loginEmailSent,activeGamePlayer,password,userType,timezone,username,mugShotUrl,showEmail,fullDescription,showTwitter,messageDebits,lastNames,createdDate,firstNames,meetingDebits,privateKey,totalPlayerPoints,showYouTubeUrl,companyName,showBriefDescription,createdBy,showBlogUrl,actionTypesLastRanOn,showReasonForAttending,showVisitorType,showFullDescription,messageCredits,importKey,showJobTitle,hasSetProfile,meetingCredits,department,locale,reasonForAttending,showInterests,mugShot,contact_youtubeUrl,contact_twitter,contact_linkedIn,contact_fax,contact_telephone2,contact_email,contact_facebook,contact_www,contact_telephone,contact_blogUrl,id,showLinkedIn,showDepartment,showFax,title,showTelephone2,showName,_id,briefDescription,importBatch,showAddress,showCompanyName,lastAccessed,jobTitle,showMugShot,enableGamification,importCameFrom,showWww,modifiedDate,showTelephone,visitorGroup,showFacebook,address_county,address_postCode,address_address1,address_address2,address_town,address_address3,address_country,visitorType,qrCodeGenerated,showMe,exhibitor,_namespace,isFavourite,hasNote,_dataversion FROM visitors;

-- Droping the original table and renaming the temporary table

DROP TABLE visitors;
ALTER TABLE temp_visitors_987059828 RENAME TO visitors;

COMMIT TRANSACTION;
