.class public final Lcom/genie_connect/android/db/access/DbSessions;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbSessions.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessLocation;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;


# static fields
.field static final BOOKMARKED_COLUMN:Ljava/lang/String; = "(ifnull(FS.session, 0) > 0)"

.field static final FAV_COLUMN:Ljava/lang/String; = "(ifnull(f.relatedSession, 0) > 0)"

.field static final NOTE_COLUMN:Ljava/lang/String; = "(ifnull(n.relatedSession, 0) > 0)"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 71
    return-void
.end method


# virtual methods
.method public getByLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 81
    if-nez p1, :cond_0

    const-string p1, "!$%^NO_LOCATION&**^*"

    .line 83
    :cond_0
    const/4 v5, 0x7

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "a.id _id"

    aput-object v5, v1, v10

    const-string v5, "a.id id"

    aput-object v5, v1, v9

    const/4 v5, 0x2

    const-string v6, "a.name name"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "a.fullDescription fullDescription"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "(ifnull(f.relatedSession, 0) > 0)"

    const-string v8, "isFavourite"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "(ifnull(FS.session, 0) > 0)"

    const-string v8, "isBookmarked"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "(ifnull(n.relatedSession, 0) > 0)"

    const-string v8, "hasNote"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 93
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v5, "locations=?"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbSessions;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "sqlWhere":Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    aput-object p1, v3, v10

    .line 96
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v7, "sessions a LEFT OUTER JOIN sessions_locations sl ON(sl.sessions_id = a.id) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSession) LEFT OUTER JOIN favouriteSession FS ON (a.id = FS.session) LEFT OUTER JOIN notes n ON (a.id = n.relatedSession)"

    .line 102
    .local v7, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 104
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 105
    const-string v5, "sessions a LEFT OUTER JOIN sessions_locations sl ON(sl.sessions_id = a.id) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSession) LEFT OUTER JOIN favouriteSession FS ON (a.id = FS.session) LEFT OUTER JOIN notes n ON (a.id = n.relatedSession)"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v5, v4

    move-object v6, v4

    .line 106
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getSession(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x1

    .line 122
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 123
    .local v0, "genieBuilder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    const-string v1, "a"

    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 124
    const-string v1, "a"

    const-string v2, "name"

    const-string v3, "name"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 125
    const-string v1, "a"

    const-string v2, "runningTime_from"

    const-string v3, "runningTime_from"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 126
    const-string v1, "a"

    const-string v2, "runningTime_to"

    const-string v3, "runningTime_to"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 127
    const-string v1, "a"

    const-string v2, "fullDescription"

    const-string v3, "fullDescription"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 128
    const-string v1, "a"

    const-string v2, "eventDay"

    const-string v3, "eventDay"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 129
    const-string/jumbo v1, "track"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 130
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 131
    const-string v1, "addToAgendaMessage"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 132
    const-string v1, "removeFromAgendaMessage"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 133
    const-string v1, "leadChair"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 134
    const-string v1, "shareUrl"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 135
    const-string v1, "permissionGroup"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 136
    const-string v1, "b"

    const-string v2, "colour"

    const-string v3, "colour"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 137
    const-string v1, "(ifnull(f.relatedSession, 0) > 0)"

    const-string v2, "isFavourite"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 138
    const-string v1, "(ifnull(FS.session, 0) > 0)"

    const-string v2, "isBookmarked"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 139
    const-string v1, "(ifnull(n.relatedSession, 0) > 0)"

    const-string v2, "hasNote"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 140
    const-string v1, "EXISTS (SELECT * FROM AgendaItems AI WHERE (AI.RelatedSession = a.Id AND AI.isWaitlisted = 1) )"

    sget-object v2, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v2, v2, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 142
    const-string v1, "sessions"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 144
    const-string/jumbo v1, "tracks"

    const-string v2, "b"

    const-string v3, "(a.track = b.name)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 145
    const-string v1, "agendaitems"

    const-string v2, "f"

    const-string v3, "(a.id = f.relatedSession)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 146
    const-string v1, "notes"

    const-string v2, "n"

    const-string v3, "(a.id = n.relatedSession)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 147
    const-string v1, "favouritesession"

    const-string v2, "FS"

    const-string v3, "(a.id = FS.session)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 149
    const-string v1, "a.id=?"

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 150
    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->setDistinct(Z)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 152
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getSessionCalendarLimits(Z)[Ljava/lang/String;
    .locals 12
    .param p1, "withMeetings"    # Z

    .prologue
    .line 218
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 223
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    if-eqz p1, :cond_0

    .line 224
    const-string v10, "sessions a, agendaitems b, meetings c"

    .line 225
    .local v10, "sqlTables":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "MIN(MIN(MIN(TIME(a.runningTime_from)), MIN(TIME(b.runningTime_from))), TIME(c.runningTime_from)) start"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "MAX(MAX(MAX(TIME(a.runningTime_to)),   MAX(TIME(b.runningTime_to))),   TIME(c.runningTime_to))   finish"

    aput-object v3, v2, v1

    .line 245
    .local v2, "sqlSelect":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 248
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    const-string v1, "start"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 251
    .local v11, "start":Ljava/lang/String;
    const-string v1, "finish"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "finish":Ljava/lang/String;
    invoke-static {v8}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 254
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v9, v1, v3

    return-object v1

    .line 230
    .end local v2    # "sqlSelect":[Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "finish":Ljava/lang/String;
    .end local v10    # "sqlTables":Ljava/lang/String;
    .end local v11    # "start":Ljava/lang/String;
    :cond_0
    const-string v10, "sessions"

    .line 231
    .restart local v10    # "sqlTables":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "MIN(TIME(runningTime_from)) start"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "MAX(TIME(runningTime_to)) finish"

    aput-object v3, v2, v1

    .restart local v2    # "sqlSelect":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getSessionLocations(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 13
    .param p1, "sessionId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 264
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "sl.seqNo"

    const-string v5, "seqNo"

    invoke-static {v2, v5}, Lcom/genie_connect/android/db/access/DbSessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "sl.locations"

    const-string v5, "name"

    invoke-static {v2, v5}, Lcom/genie_connect/android/db/access/DbSessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x2

    const-string v5, "l.mapPosition_map"

    const-string v9, "map"

    invoke-static {v5, v9}, Lcom/genie_connect/android/db/access/DbSessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 270
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "sessions_locations sl LEFT OUTER JOIN locations l ON (sl.locations = l.name)"

    .line 273
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "sl.sessions_id=?"

    .line 274
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    .line 275
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seqNo, name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/genie_connect/android/db/access/DbSessions;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 278
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v2, "sessions_locations sl LEFT OUTER JOIN locations l ON (sl.locations = l.name)"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 279
    const-string v2, "sl.sessions_id=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getSessionsById(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 163
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 164
    .local v0, "genieBuilder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    const-string v4, "a"

    const-string v5, "id"

    const-string v6, "id"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 165
    const-string v4, "a"

    const-string v5, "name"

    const-string v6, "name"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 166
    const-string v4, "a"

    const-string v5, "runningTime_from"

    const-string v6, "runningTime_from"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 167
    const-string v4, "a"

    const-string v5, "runningTime_to"

    const-string v6, "runningTime_to"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 168
    const-string v4, "a"

    const-string v5, "fullDescription"

    const-string v6, "fullDescription"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 169
    const-string v4, "a"

    const-string v5, "eventDay"

    const-string v6, "eventDay"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 170
    const-string/jumbo v4, "track"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 171
    const-string v4, "location"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 172
    const-string v4, "addToAgendaMessage"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 173
    const-string v4, "removeFromAgendaMessage"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 174
    const-string v4, "leadChair"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 175
    const-string v4, "shareUrl"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 176
    const-string v4, "permissionGroup"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 177
    const-string v4, "b"

    const-string v5, "colour"

    const-string v6, "colour"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 178
    const-string v4, "(ifnull(f.relatedSession, 0) > 0)"

    const-string v5, "isFavourite"

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 179
    const-string v4, "(ifnull(FS.session, 0) > 0)"

    const-string v5, "isBookmarked"

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 180
    const-string v4, "(ifnull(n.relatedSession, 0) > 0)"

    const-string v5, "hasNote"

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 182
    const-string v4, "EXISTS (SELECT * FROM AgendaItems AI WHERE (AI.RelatedSession = a.Id AND AI.isWaitlisted = 1) )"

    sget-object v5, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v5, v5, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 184
    const-string v4, "sessions"

    const-string v5, "a"

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 186
    const-string/jumbo v4, "tracks"

    const-string v5, "b"

    const-string v6, "(a.track = b.name)"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 187
    const-string v4, "agendaitems"

    const-string v5, "f"

    const-string v6, "(a.id = f.relatedSession)"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 188
    const-string v4, "notes"

    const-string v5, "n"

    const-string v6, "(a.id = n.relatedSession)"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 189
    const-string v4, "favouritesession"

    const-string v5, "FS"

    const-string v6, "(a.id = FS.session)"

    invoke-virtual {v0, v4, v5, v6}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 190
    const-string v4, "id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 192
    const-string v3, "a.id=?"

    .line 193
    .local v3, "where":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR a.id=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 198
    .local v2, "idsAsStrings":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 199
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 202
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->setDistinct(Z)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 204
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 207
    .end local v0    # "genieBuilder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .end local v1    # "i":I
    .end local v2    # "idsAsStrings":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :goto_2
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getSessionsForExhibitor(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 13
    .param p1, "exhibitorId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 290
    const/16 v5, 0xd

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "a.id _id"

    aput-object v5, v1, v11

    const-string v5, "a.id id"

    aput-object v5, v1, v10

    const/4 v5, 0x2

    const-string v6, "a.name name"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "a.runningTime_from runningTime_from"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "a.runningTime_to runningTime_to"

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "track"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "location"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "colour"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "a.fullDescription fullDescription"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "leadChair"

    aput-object v6, v1, v5

    const/16 v5, 0xa

    const-string v6, "shareUrl"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    const-string v6, "(ifnull(f.relatedSession, 0) > 0)"

    const-string v9, "isFavourite"

    invoke-static {v6, v9}, Lcom/genie_connect/android/db/access/DbSessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0xc

    const-string v6, "(ifnull(FS.session, 0) > 0)"

    const-string v9, "isBookmarked"

    invoke-static {v6, v9}, Lcom/genie_connect/android/db/access/DbSessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 304
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v8, " sessions a LEFT OUTER JOIN exhibitors_sessions c ON (c.sessions = a.id) LEFT OUTER JOIN tracks b ON (a.track = b.name) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSession)"

    .line 308
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v5, "c.exhibitors_id=?"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbSessions;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "sqlWhere":Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v11

    .line 310
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v7, "a.runningTime_from, a.runningTime_to"

    .line 312
    .local v7, "sqlOrder":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 313
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v10}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 314
    const-string v5, " sessions a LEFT OUTER JOIN exhibitors_sessions c ON (c.sessions = a.id) LEFT OUTER JOIN tracks b ON (a.track = b.name) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSession)"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 315
    const-string v6, "a.runningTime_from, a.runningTime_to"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4
.end method

.method public getSessionsWithoutLocation()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 320
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "sessions.id AS _id"

    aput-object v4, v1, v2

    const-string v2, "sessions.id AS sid"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v4, "sessions.name AS sn"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "sessions_locations.locations AS ln"

    aput-object v4, v1, v2

    .line 326
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "sessions_locations LEFT OUTER JOIN sessions ON (sessions_locations.sessions_id = sessions.id) LEFT OUTER JOIN locations ON (sessions_locations.locations = locations.name)"

    .line 330
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "mapPosition_vectors IS NULL"

    .line 332
    .local v8, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 333
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 334
    const-string v2, "sessions_locations LEFT OUTER JOIN sessions ON (sessions_locations.sessions_id = sessions.id) LEFT OUTER JOIN locations ON (sessions_locations.locations = locations.name)"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 335
    const-string v2, "mapPosition_vectors IS NULL"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    .line 582
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/db/access/DbSessions;->getSession(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 531
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/access/DbSessions;->search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 6
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 536
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 537
    .local v0, "genieBuilder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    const-string v1, "a"

    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 538
    const-string v1, "a"

    const-string v2, "name"

    const-string v3, "name"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 539
    const-string v1, "a"

    const-string v2, "runningTime_from"

    const-string v3, "runningTime_from"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 540
    const-string v1, "a"

    const-string v2, "runningTime_to"

    const-string v3, "runningTime_to"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 541
    const-string v1, "a"

    const-string v2, "fullDescription"

    const-string v3, "fullDescription"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 542
    const-string/jumbo v1, "track"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 543
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 544
    const-string v1, "addToAgendaMessage"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 545
    const-string v1, "removeFromAgendaMessage"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 546
    const-string v1, "leadChair"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 547
    const-string v1, "shareUrl"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 548
    const-string v1, "permissionGroup"

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 549
    const-string v1, "(ifnull(f.relatedSession, 0) > 0)"

    const-string v2, "isFavourite"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 550
    const-string v1, "(ifnull(FS.session, 0) > 0)"

    const-string v2, "isBookmarked"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 551
    const-string v1, "(ifnull(n.relatedSession, 0) > 0)"

    const-string v2, "hasNote"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 553
    const-string v1, "EXISTS (SELECT * FROM AgendaItems AI WHERE (AI.RelatedSession = a.Id AND AI.isWaitlisted = 1) )"

    sget-object v2, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v2, v2, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 555
    const-string v1, "sessions"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 557
    const-string/jumbo v1, "tracks"

    const-string v2, "b"

    const-string v3, "(a.track = b.name)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 558
    const-string v1, "agendaitems"

    const-string v2, "f"

    const-string v3, "(a.id = f.relatedSession)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 559
    const-string v1, "notes"

    const-string v2, "n"

    const-string v3, "(a.id = n.relatedSession)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 560
    const-string v1, "favouritesession"

    const-string v2, "FS"

    const-string v3, "(a.id = FS.session)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 563
    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->OR:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v2, "a.name LIKE \'%\' || ? || \'%\'"

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 565
    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->OR:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v2, "b.name LIKE \'%\' || ? || \'%\'"

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 567
    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->OR:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v2, "f.name LIKE \'%\' || ? || \'%\'"

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 569
    sget-object v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->OR:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v2, "n.note LIKE \'%\' || ? || \'%\'"

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 572
    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->setDistinct(Z)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 573
    if-ltz p2, :cond_0

    .line 574
    invoke-virtual {v0, p2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->setLimit(I)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 577
    :cond_0
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchForLocation(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 481
    const-string v8, "(ifnull(f.relatedSession, 0) > 0)"

    .line 482
    .local v8, "favColumn":Ljava/lang/String;
    const-string v9, "(ifnull(n.relatedSession, 0) > 0)"

    .line 484
    .local v9, "noteColumn":Ljava/lang/String;
    const/16 v4, 0x9

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a.id AS _id"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "a.id AS id"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "a.runningTime_from AS runningTime_from"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "a.runningTime_to AS runningTime_to"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "a.name AS name"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "locations"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "(ifnull(f.relatedSession, 0) > 0) isFavourite"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "(ifnull(FS.session, 0) > 0) isBookmarked"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "(ifnull(n.relatedSession, 0) > 0) hasNote"

    aput-object v5, v1, v4

    .line 496
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v4, "(a.name like ? OR a.fullDescription like ? OR locations like ?) AND locations IS NOT NULL"

    invoke-virtual {p0, v4}, Lcom/genie_connect/android/db/access/DbSessions;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "%"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "%"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 502
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v10, "sessions a LEFT OUTER JOIN sessions_locations sl ON(sl.sessions_id = a.id) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSession) LEFT OUTER JOIN favouriteSession FS ON (a.id = FS.session) LEFT OUTER JOIN notes n ON (a.id = n.relatedSession)"

    .line 508
    .local v10, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 511
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    if-lez p2, :cond_0

    .line 512
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 517
    .local v7, "sqlLimit":Ljava/lang/String;
    :goto_0
    const-string v6, "a.runningTime_from, a.name"

    .line 518
    .local v6, "sqlOrderBy":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 519
    const-string v4, "sessions a LEFT OUTER JOIN sessions_locations sl ON(sl.sessions_id = a.id) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSession) LEFT OUTER JOIN favouriteSession FS ON (a.id = FS.session) LEFT OUTER JOIN notes n ON (a.id = n.relatedSession)"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 520
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4

    .line 514
    .end local v6    # "sqlOrderBy":Ljava/lang/String;
    .end local v7    # "sqlLimit":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "sqlLimit":Ljava/lang/String;
    goto :goto_0
.end method
