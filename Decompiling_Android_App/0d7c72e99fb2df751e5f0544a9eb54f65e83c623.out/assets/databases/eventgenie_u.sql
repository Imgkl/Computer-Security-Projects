-- Visitor Groups 

CREATE TABLE IF NOT EXISTS visitorGroups_viewingRestrictions
			(
	[seqNo] bigint NOT NULL
,	_namespace nvarchar(100)
,  [visitorgroups_name] nvarchar(500) NULL 
,  [viewingRestrictions_visitorGroup] nvarchar(500) NULL
,  [viewingRestrictions_visitorAttribute] nvarchar(500) NULL
, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));			
			
CREATE TABLE IF NOT EXISTS visitorGroups_visibleGroups
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitorgroups_name] nvarchar(500) NULL 
,  [visibleGroups] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitorGroups_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitorgroups_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitorGroups_meetingsTargetPerDay
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitorgroups_name] nvarchar(500) NULL 
,   [meetingsTargetPerDay_eventDay] nvarchar(50) NULL  ,  [meetingsTargetPerDay_meetingsTarget] int NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
			
CREATE TABLE IF NOT EXISTS "visitorGroups"
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

-- Visitors

CREATE TABLE IF NOT EXISTS visitors_secondaryVisitorGroups
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitors_id] bigint NULL 
,  [secondaryVisitorGroups] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitors_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitors_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitors_meetingsTargetPerDay
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitors_id] bigint NULL 
,   [meetingsTargetPerDay_eventDay] nvarchar(50) NULL  ,  [meetingsTargetPerDay_meetingsTarget] int NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitors_interests
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitors_id] bigint NULL 
,  [interests] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitors_gameRecords
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitors_id] bigint NULL 
,  [gameRecords] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitors_competencies
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitors_id] bigint NULL 
,  [competencies] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitors_attendingDays
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitors_id] bigint NULL 
,  [attendingDays] nvarchar(50) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS visitors_apps
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [visitors_id] bigint NULL 
,  [apps] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "visitors"
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

-- Notes

CREATE TABLE IF NOT EXISTS notes_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [notes_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "notes"
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

-- Meetings

CREATE TABLE IF NOT EXISTS meetings_visitors
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetings_id] bigint NULL 
,  [visitors] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetings_visitorNames
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetings_id] bigint NULL 
,  [visitorNames] nvarchar(500) NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetings_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetings_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetings_meetingConfirmationMessages
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetings_id] bigint NULL 
,  [meetingConfirmationMessages] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetings_associatedMessages
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetings_id] bigint NULL 
,  [associatedMessages] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetings_approvedVisitors
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetings_id] bigint NULL 
,  [approvedVisitors] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetings_agendaItems
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetings_id] bigint NULL 
,  [agendaItems] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "meetings"
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

-- Meeting Locations

CREATE TABLE IF NOT EXISTS meetingLocations_reservedFor
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetinglocations_name] nvarchar(500) NULL 
,  [reservedFor] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetingLocations_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetinglocations_name] nvarchar(500) NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetingLocations_meetings
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetinglocations_name] nvarchar(500) NULL 
,  [meetings] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS meetingLocations_blockedOut
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [meetinglocations_name] nvarchar(500) NULL 
,   [blockedOut_to] datetime NULL  ,  [blockedOut_from] datetime NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "meetingLocations"
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

-- Favourites

CREATE TABLE IF NOT EXISTS favouriteVisitors_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouritevisitors_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "favouriteVisitors"
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
CREATE TABLE IF NOT EXISTS favouriteSpeakers_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouritespeakers_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "favouriteSpeakers"
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
CREATE TABLE IF NOT EXISTS favouriteProducts_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouriteproducts_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "favouriteProducts"
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
CREATE TABLE IF NOT EXISTS favouritePoi_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouritepoi_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "favouritePoi"
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
CREATE TABLE IF NOT EXISTS favouriteExhibitors_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouriteexhibitors_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "favouriteExhibitors"
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
CREATE TABLE IF NOT EXISTS favouriteDownloadables_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouritedownloadables_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "favouriteDownloadables"
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
CREATE TABLE IF NOT EXISTS favouriteActivityStreamPosts_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouriteactivitystreamposts_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS "favouriteActivityStreamPosts"
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

CREATE TABLE IF NOT EXISTS "favouriteSubSession"
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    subsession bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);
CREATE TABLE IF NOT EXISTS favouriteSubSession_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouritesubsession_id] bigint NULL
,  [relatedTags] bigint NULL
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));

CREATE TABLE IF NOT EXISTS "favouriteSession"
(
    modifiedBy nvarchar(50) NULL,
    importCameFrom nvarchar(500) NULL,
    visitor bigint NULL,
    modifiedDate datetime NULL,
    session bigint NULL,
    id INTEGER PRIMARY KEY ASC NOT NULL,
    _id nvarchar(500) NULL,
    createdBy nvarchar(50) NULL,
    importBatch nvarchar(500) NULL,
    createdDate datetime NULL,
    importKey nvarchar(500) NULL,
    _namespace nvarchar(100) NULL,
    _dataversion NVARCHAR(100) DEFAULT (NULL)
);
CREATE TABLE IF NOT EXISTS favouriteSession_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [favouritesession_id] bigint NULL
,  [relatedTags] bigint NULL
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));


--Agenda Items

CREATE TABLE IF NOT EXISTS agendaItems_relatedTags
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [agendaitems_id] bigint NULL 
,  [relatedTags] bigint NULL 
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));
CREATE TABLE IF NOT EXISTS agendaItems
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
CREATE INDEX IF NOT EXISTS favouriteExhibitors_i7
ON favouriteexhibitors
(
    exhibitor
);