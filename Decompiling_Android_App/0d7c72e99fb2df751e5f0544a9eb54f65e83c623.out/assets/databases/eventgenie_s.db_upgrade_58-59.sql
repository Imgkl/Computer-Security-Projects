BEGIN TRANSACTION;

-- Creating table sessions from scratch (simple ALTER TABLE is not enough)

CREATE TABLE IF NOT EXISTS exhibitors_imagesUrl
			(
	[seqNo] bigint NOT NULL
, _namespace nvarchar(100)
,  [exhibitors_id] bigint NULL
,  [imagesUrl] nvarchar(500) NULL
			, _dataversion  NVARCHAR( 100 ) DEFAULT ( NULL ));

COMMIT TRANSACTION;
