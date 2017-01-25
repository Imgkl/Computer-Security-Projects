BEGIN TRANSACTION;

CREATE INDEX IX_sessions_locations on sessions_locations (sessions_id, locations);
CREATE INDEX IX_sessions_categories on sessions_categories (sessions_id, categories);
CREATE INDEX IX_Sessions_EventDay_Track ON sessions (eventDay, track);

COMMIT TRANSACTION;
