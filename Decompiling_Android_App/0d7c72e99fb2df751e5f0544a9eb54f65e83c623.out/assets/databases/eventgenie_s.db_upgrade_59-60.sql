BEGIN TRANSACTION;


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
    canWaitlist BOOLEAN DEFAULT 0,
    hasNote BOOLEAN DEFAULT 0,
    _dataversion NVARCHAR(100) DEFAULT (NULL),
    survey bigint null
);


CREATE TABLE temp_sessions_601795864_1
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

-- Copying rows from original table to the new table

INSERT INTO temp_sessions_601795864_1 (location,modifiedBy,id,feedbackUrl,eventDay,fullDescription,_id,briefDescription,importBatch,name,createdDate,addToAgendaMessage,leadChair,track,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,shareUrl,importKey,permissionGroup,_namespace,canWaitlist,isFavourite,isBookmarked,hasNote,_dataversion)
 SELECT location,modifiedBy,id,feedbackUrl,eventDay,fullDescription,_id,briefDescription,importBatch,name,createdDate,addToAgendaMessage,leadChair,track,importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,shareUrl,importKey,permissionGroup,_namespace,0,isFavourite,isBookmarked,hasNote,_dataversion FROM sessions;


-- Droping the original table and renaming the temporary table

DROP TABLE sessions;
ALTER TABLE temp_sessions_601795864_1 RENAME TO sessions;


-- subsessions should go here as well
CREATE TABLE IF NOT EXISTS "subsessions"
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

CREATE TABLE IF NOT EXISTS "subsessions_temp1_1"
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


-- Copying rows from original table to the new table

INSERT INTO subsessions_temp1_1 (modifiedBy,id,eventDay,fullDescription,_id,briefDescription,priority,importBatch,name,createdDate,addToAgendaMessage,removeFromAgendaMessage,
importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,session,shareUrl,importKey,_namespace,isFavourite,isBookmarked,canWaitlist,hasNote,_dataversion)
 SELECT modifiedBy,id,eventDay,fullDescription,_id,briefDescription,priority,importBatch,name,createdDate,addToAgendaMessage,removeFromAgendaMessage,
        importCameFrom,runningTime_to,runningTime_from,modifiedDate,createdBy,session,shareUrl,importKey,_namespace,isFavourite,isBookmarked,0,hasNote,_dataversion FROM subsessions;


-- Droping the original table and renaming the temporary table

DROP TABLE subsessions;
ALTER TABLE subsessions_temp1_1 RENAME TO subsessions;



-- Creating table messages from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS messages
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


CREATE TABLE IF NOT EXISTS temp_messages_1
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


-- Copying rows from original table to the new table

INSERT INTO temp_messages_1 (liveStatus,body,bodyHtml,modifiedBy,subject,noChildren,type,recipient,scheduledDate,id,timestamp,author,isRootParent,scheduledLiveStatus,_id,importBatch, toVisitor,
fromExhibitor,createdDate,scheduledTaskName,toExhibitor,parent,importCameFrom,modifiedDate,associatedMeeting,createdBy,fromVisitor,importKey,_namespace,isRead,_dataversion)
SELECT liveStatus,body,body,modifiedBy,subject,noChildren,type,recipient,scheduledDate,id,timestamp,author,isRootParent,scheduledLiveStatus,_id,importBatch, toVisitor,
       fromExhibitor,createdDate,scheduledTaskName,toExhibitor,parent,importCameFrom,modifiedDate,associatedMeeting,createdBy,fromVisitor,importKey,_namespace,isRead,_dataversion FROM temp_messages_1;

-- Droping the original table and renaming the temporary table

DROP TABLE messages;
ALTER TABLE temp_messages_1 RENAME TO messages;


CREATE INDEX IF NOT EXISTS IX_speakers_speakerAtSessions ON speakers_speakerAtSessions	(speakers_id, speakerAtSessions);
CREATE INDEX IF NOT EXISTS  IX_speakers_speakerAtSubSessions ON speakers_speakerAtSubSessions	(speakers_id, speakerAtSubSessions);
CREATE INDEX IF NOT EXISTS  IX_speakers_coChairAtSessions ON speakers_coChairAtSessions	(speakers_id, coChairAtSessions);
CREATE INDEX IF NOT EXISTS  IX_speakers_leadChairAtSessions ON speakers_leadChairAtSessions	(speakers_id, leadChairAtSessions);
CREATE INDEX IF NOT EXISTS  IX_speakers_keySpeakerAtSessions ON speakers_keySpeakerAtSessions	(speakers_id, keySpeakerAtSessions);
CREATE INDEX IF NOT EXISTS IX_speakers_keySpeakerAtSubSessions ON speakers_keySpeakerAtSubSessions	(speakers_id, keySpeakerAtSubSessions);

COMMIT TRANSACTION;
