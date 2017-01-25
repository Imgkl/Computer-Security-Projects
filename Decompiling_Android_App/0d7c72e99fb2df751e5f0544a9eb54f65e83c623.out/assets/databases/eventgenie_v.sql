CREATE TABLE trophies_thresholds
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [trophies_id] bigint NULL 
,   [thresholds_colour] nvarchar(500) NULL  ,  [thresholds_thresholdValue] bigint NULL  ,  [thresholds_name] nvarchar(500) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE trophies_secondaryInfoPages
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [trophies_id] bigint NULL 
,  [secondaryInfoPages] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE trophies_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [trophies_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "trophies"
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
CREATE TABLE tracks_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [tracks_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "tracks"
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
CREATE TABLE tagsV2_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [tagsv2_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE tagsV2_dirtyEntities
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [tagsv2_id] bigint NULL 
,  [dirtyEntities] nvarchar(500) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE tagsV2_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [tagsv2_id] bigint NULL 
,  [children] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "tagsV2"
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
CREATE TABLE tags_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [tags_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE tags_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [tags_name] nvarchar(500) NULL 
,  [children] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "tags"
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
CREATE TABLE subsessions_tags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [subsessions_id] bigint NULL 
,  [tags] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE subsessions_speakers
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [subsessions_id] bigint NULL 
,  [speakers] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE subsessions_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [subsessions_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE subsessions_locations
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [subsessions_id] bigint NULL 
,  [locations] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE subsessions_keySpeakers
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [subsessions_id] bigint NULL 
,  [keySpeakers] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE subsessions_downloadables
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [subsessions_id] bigint NULL 
,  [downloadables] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "subsessions"
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
    canWaitlist BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);
CREATE TABLE speakers_tags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [tags] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE speakers_speakerAtSubSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [speakerAtSubSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
			
CREATE INDEX IX_speakers_speakerAtSubSessions ON speakers_speakerAtSubSessions	(speakers_id, speakerAtSubSessions);

CREATE TABLE speakers_speakerAtSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [speakerAtSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
			
CREATE INDEX IX_speakers_speakerAtSessions ON speakers_speakerAtSessions	(speakers_id, speakerAtSessions);

CREATE TABLE speakers_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE speakers_leadChairAtSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [leadChairAtSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));

CREATE INDEX IX_speakers_leadChairAtSessions ON speakers_leadChairAtSessions	(speakers_id, leadChairAtSessions);

CREATE TABLE speakers_keySpeakerAtSubSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [keySpeakerAtSubSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
			
CREATE INDEX IX_speakers_keySpeakerAtSubSessions ON speakers_keySpeakerAtSubSessions	(speakers_id, keySpeakerAtSubSessions);

CREATE TABLE speakers_keySpeakerAtSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [keySpeakerAtSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
			
CREATE INDEX IX_speakers_keySpeakerAtSessions ON speakers_keySpeakerAtSessions	(speakers_id, keySpeakerAtSessions);

CREATE TABLE speakers_gameRecords
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [gameRecords] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE speakers_downloadables
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [downloadables] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE speakers_coChairAtSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [coChairAtSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
			
CREATE INDEX IX_speakers_coChairAtSessions ON speakers_coChairAtSessions	(speakers_id, coChairAtSessions);

CREATE TABLE speakers_apps
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [speakers_id] bigint NULL 
,  [apps] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "speakers"
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
CREATE TABLE sessions_tags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [tags] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessions_subSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [subSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessions_speakers
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [speakers] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessions_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessions_locations
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [locations] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));

CREATE INDEX IX_sessions_locations on sessions_locations (sessions_id, locations);

CREATE TABLE sessions_keySpeakers
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [keySpeakers] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessions_exhibitors
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [exhibitors] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessions_downloadables
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [downloadables] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessions_coChairs
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [coChairs] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessions_categories
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessions_id] bigint NULL 
,  [categories] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));

CREATE INDEX IX_sessions_categories on sessions_categories (sessions_id, categories);

CREATE TABLE "sessions"
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
    canWaitlist BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL),
    survey bigint null
);

CREATE INDEX IX_Sessions_EventDay_Track ON Sessions (eventDay, track);

CREATE TABLE sessionCategories_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessioncategories_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE sessionCategories_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [sessioncategories_name] nvarchar(500) NULL 
,  [children] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "sessionCategories"
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
CREATE TABLE scheduleItems_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [scheduleitems_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "scheduleItems"
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
CREATE TABLE QrCodeCustom ( id          INTEGER  PRIMARY KEY AUTOINCREMENT,type        NVARCHAR( 100 ),time        DATETIME,displayname NVARCHAR( 100 ),code        NVARCHAR( 7100 ),entity      NVARCHAR( 100 ),entityId    INTEGER,_namespace  NVARCHAR( 100 ) DEFAULT ( NULL ), _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE products_tags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [products_id] bigint NULL 
,  [tags] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE products_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [products_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE products_imagesUrl
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [products_id] bigint NULL 
,  [imagesUrl] nvarchar(500) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE products_images
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [products_id] bigint NULL 
,  [images] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE products_exhibitors
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [products_id] bigint NULL 
,  [exhibitors] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE products_downloadables
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [products_id] bigint NULL 
,  [downloadables] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE products_categories
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [products_id] bigint NULL 
,  [categories] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "products"
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
    _dataversion NVARCHAR(100) DEFAULT (NULL),
    survey bigint NULL
);
CREATE TABLE productCategories_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [productcategories_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE productCategories_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [productcategories_name] nvarchar(500) NULL 
,  [children] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "productCategories"
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
CREATE TABLE poiCategories_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [poicategories_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE poiCategories_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [poicategories_name] nvarchar(500) NULL 
,  [children] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "poiCategories"
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
CREATE TABLE poi_tags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [poi_id] bigint NULL 
,  [tags] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE poi_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [poi_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE poi_categories
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [poi_id] bigint NULL 
,  [categories] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "poi"
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
CREATE TABLE playerGames_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [playergames_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE playerGames_playerTrophies
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [playergames_id] bigint NULL 
,   [playerTrophies_trophy] bigint NULL  ,  [playerTrophies_totalTrophyPoints] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "playerGames"
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
CREATE TABLE permissionGroups_visitorGroupPermissionSets
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [permissiongroups_id] bigint NULL 
,   [visitorGroupPermissionSets_visitorGroup] nvarchar(50) NULL  ,  [visitorGroupPermissionSets_canFavourite] bit NULL  ,  [visitorGroupPermissionSets_canAddToFavourite] bit NULL  , [visitorGroupPermissionSets_canOpen] bit NULL  ,  [visitorGroupPermissionSets_canView] bit NULL
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE permissionGroups_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [permissiongroups_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "permissionGroups"
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

CREATE TABLE messages_visibleTo
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [messages_id] bigint NULL 
,  [visibleTo] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE messages_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [messages_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE messages_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [messages_id] bigint NULL 
,  [children] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE messages
(
    liveStatus INTEGER NULL,
    body text NULL,
    bodyHtml text NULL,
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

CREATE TABLE mapZones_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [mapzones_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE mapZones
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
CREATE TABLE maps_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [maps_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE maps
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
CREATE TABLE mapFacilities_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [mapfacilities_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE mapFacilities_downloadables
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [mapfacilities_id] bigint NULL 
,  [downloadables] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE mapFacilities
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
CREATE TABLE locations_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [locations_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE locations
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
CREATE TABLE infoPages_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [infopages_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE infoPages_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [infopages_id] bigint NULL 
,  [children] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE infoPages
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
CREATE TABLE inAppActions_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [inappactions_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE inAppActions
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
CREATE TABLE hotspots_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [hotspots_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE hotspots_actions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [hotspots_id] bigint NULL 
,  [actions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE hotspots
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
CREATE TABLE games_trophies
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [games_id] bigint NULL 
,  [trophies] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE games_secondaryInfoPages
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [games_id] bigint NULL 
,  [secondaryInfoPages] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE games_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [games_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE games
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

CREATE TABLE exhibitorTypes_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitortypes_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitorTypes
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
CREATE TABLE exhibitors_visitors
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [visitors] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_tags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [tags] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_subcategories
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [subcategories] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_sessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [sessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_products
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [products] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_locations
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [locations] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_gameRecords
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [gameRecords] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_downloadables
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [downloadables] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE exhibitors_apps
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL 
,  [apps] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));

CREATE TABLE exhibitors_imagesUrl
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL
,  [imagesUrl] nvarchar(500) NULL
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));

CREATE TABLE exhibitors
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
CREATE TABLE eventDays_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [eventdays_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE eventDays
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

CREATE TABLE downloadables_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [downloadables_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE downloadables
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
CREATE TABLE dataVersions_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [dataversions_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE dataVersions
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
CREATE TABLE countries_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [countries_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE countries
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
CREATE TABLE categories_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [categories_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE categories_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [categories_name] nvarchar(500) NULL 
,  [children] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE categories
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
CREATE TABLE articles_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [articles_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE articles_articleGroups
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [articles_id] bigint NULL 
,  [articleGroups] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE articles
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
CREATE TABLE articleGroups_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [articlegroups_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE articleGroups
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

CREATE TABLE appRefs_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [apprefs_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE appRefs_categories
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [apprefs_id] bigint NULL 
,  [categories] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE appRefs
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
CREATE TABLE appRefCategories_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [apprefcategories_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE appRefCategories_children
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [apprefcategories_name] nvarchar(500) NULL 
,  [children] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE appRefCategories
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

-- Apps

CREATE TABLE apps_relatedTags
			(
	[seqNo] bigint NOT NULL
,  [apps_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE apps_games
			(
	[seqNo] bigint NOT NULL
,  [apps_id] bigint NULL 
,  [games] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE "apps"
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

CREATE TABLE adCampaigns_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [adcampaigns_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE adCampaigns_adverts
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [adcampaigns_id] bigint NULL 
,  [adverts] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE adCampaigns
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
CREATE TABLE adBanners_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [adbanners_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE adBanners_campaigns
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [adbanners_id] bigint NULL 
,  [campaigns] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE adBanners
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
CREATE TABLE activityStreamPosts_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_imagesUrl
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [imagesUrl] nvarchar(500) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_images
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [images] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_comments
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [comments] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_associatedVisitors
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [associatedVisitors] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_associatedSubSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [associatedSubSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_associatedSpeakers
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [associatedSpeakers] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_associatedSessions
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [associatedSessions] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_associatedProducts
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [associatedProducts] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_associatedPOIs
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [associatedPOIs] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_associatedExhibitors
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [associatedExhibitors] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_associatedDownloadables
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [associatedDownloadables] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts_abuseReports
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamposts_id] bigint NULL 
,  [abuseReports] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamPosts
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
CREATE TABLE activityStreamComments_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamcomments_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamComments_abuseReports
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [activitystreamcomments_id] bigint NULL 
,  [abuseReports] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE activityStreamComments
(
    liveStatus INTEGER NULL,
    scheduledTaskName nvarchar(500) NULL,
    modifiedBy nvarchar(50) NULL,
    preAbuseLiveStatus INTEGER NULL,
    importCameFrom nvarchar(500) NULL,
    modifiedDate datetime NULL,
    message text NULL,
    noComments INTEGER NULL,
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

CREATE TABLE surveys
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

CREATE TABLE visitorsurveys
(
    id INTEGER PRIMARY KEY ASC NOT NULL,
    visitor bigint NULL,
    survey bigint NULL,
--    relatedTags ???
    submissionStatus int NULL,
    submissionDate datetime NULL,

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

CREATE INDEX locations_i5
ON locations
(
    name
);
CREATE INDEX exhibitors_subcategories_i3 ON exhibitors_subcategories(exhibitors_id);
CREATE INDEX exhibitors_locations_i6 ON exhibitors_locations(locations);
CREATE INDEX exhibitors_locations_i2 ON exhibitors_locations(exhibitors_id);
CREATE INDEX exhibitors_i1
ON exhibitors
(
    id
);
