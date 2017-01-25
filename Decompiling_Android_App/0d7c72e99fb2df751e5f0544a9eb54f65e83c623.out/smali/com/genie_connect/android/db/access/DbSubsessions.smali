.class public final Lcom/genie_connect/android/db/access/DbSubsessions;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbSubsessions.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessLocation;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;


# static fields
.field static final BOOKMARKED_COLUMN:Ljava/lang/String; = "(ifnull(FSS.subsession, 0) > 0)"

.field static final FAV_COLUMN:Ljava/lang/String; = "(ifnull(f.relatedSubSession, 0) > 0)"

.field static final NOTE_COLUMN:Ljava/lang/String; = "(ifnull(n.relatedSubSession, 0) > 0)"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 61
    return-void
.end method

.method private getSubsessions(Ljava/lang/Long;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 13
    .param p1, "sessionId"    # Ljava/lang/Long;
    .param p2, "subSessionId"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 152
    const/16 v5, 0x12

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "a.id AS _id"

    aput-object v5, v1, v12

    const-string v5, "a.id AS id"

    aput-object v5, v1, v11

    const/4 v5, 0x2

    const-string v6, "a.name AS name"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "a.fullDescription"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "a.addToAgendaMessage AS addToAgendaMessage"

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "a.removeFromAgendaMessage AS removeFromAgendaMessage"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "a.session"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "a.priority"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "a.runningTime_to AS runningTime_to"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "a.runningTime_from AS runningTime_from"

    aput-object v6, v1, v5

    const/16 v5, 0xa

    const-string v6, "a.fullDescription AS fullDescription"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    const-string v6, "a.shareUrl AS shareUrl"

    aput-object v6, v1, v5

    const/16 v5, 0xc

    const-string v6, "(ifnull(f.relatedSubSession, 0) > 0)"

    const-string v10, "isFavourite"

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0xd

    const-string v6, "(ifnull(FSS.subsession, 0) > 0)"

    const-string v10, "isBookmarked"

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0xe

    const-string v6, "(ifnull(n.relatedSubSession, 0) > 0)"

    const-string v10, "hasNote"

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0xf

    const-string v6, "EXISTS (SELECT * FROM AgendaItems AI WHERE (AI.RelatedSubSession = a.Id AND AI.isWaitlisted = 1) )"

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v10, v10, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0x10

    const-string v6, "a.canWaitlist"

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v10, v10, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0x11

    const-string v6, "s.permissionGroup AS permissionGroup"

    aput-object v6, v1, v5

    .line 174
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v9, "subsessions a LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession) LEFT OUTER JOIN sessions s ON (a.session = s.id)"

    .line 181
    .local v9, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 182
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 183
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 184
    const-string v2, "a.id=?"

    .line 185
    new-array v7, v11, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v12

    .line 186
    .local v7, "args":[Ljava/lang/String;
    move-object v3, v7

    .line 188
    .end local v7    # "args":[Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 189
    const-string v2, "a.session=?"

    .line 190
    new-array v7, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v12

    .line 191
    .restart local v7    # "args":[Ljava/lang/String;
    move-object v3, v7

    .line 194
    .end local v7    # "args":[Ljava/lang/String;
    :cond_1
    const-string v8, "a.priority, a.runningTime_from"

    .line 195
    .local v8, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 196
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v11}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 197
    const-string v5, "subsessions a LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession) LEFT OUTER JOIN sessions s ON (a.session = s.id)"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 198
    const-string v6, "a.priority, a.runningTime_from"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSubsessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0, v0}, Lcom/genie_connect/android/db/access/DbSubsessions;->getSubsessions(Ljava/lang/Long;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/genie_connect/android/db/access/DbSubsessions;->getSubsessions(Ljava/lang/Long;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subsessions do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 80
    if-nez p1, :cond_0

    const-string p1, "!$%^NO_LOCATION&**^*"

    .line 82
    :cond_0
    const/16 v5, 0x9

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "a.id"

    const-string v6, "_id"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    const-string v5, "a.id"

    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    const/4 v5, 0x2

    const-string v6, "a.name"

    const-string v8, "name"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "a.fullDescription"

    const-string v8, "fullDescription"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "a.canWaitlist"

    sget-object v8, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v8, v8, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "sl.locations"

    const-string v8, "locations"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "(ifnull(f.relatedSubSession, 0) > 0)"

    const-string v8, "isFavourite"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "(ifnull(FSS.subsession, 0) > 0)"

    const-string v8, "isBookmarked"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "(ifnull(n.relatedSubSession, 0) > 0)"

    const-string v8, "hasNote"

    invoke-static {v6, v8}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 94
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v5, "locations=?"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbSubsessions;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "sqlWhere":Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    aput-object p1, v3, v10

    .line 97
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v7, "subsessions a LEFT OUTER JOIN subsessions_locations sl ON(sl.subsessions_id = a.id) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN sessions s ON (a.session = s.id) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession)"

    .line 104
    .local v7, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 106
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 107
    const-string v5, "subsessions a LEFT OUTER JOIN subsessions_locations sl ON(sl.subsessions_id = a.id) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN sessions s ON (a.session = s.id) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession)"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v5, v4

    move-object v6, v4

    .line 108
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSubsessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getSubSessionsByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
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
    .local p1, "subsessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 203
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 204
    const/16 v5, 0x10

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "a.id AS _id"

    aput-object v6, v1, v5

    const-string v5, "a.id AS id"

    aput-object v5, v1, v11

    const/4 v5, 0x2

    const-string v6, "a.name AS name"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "a.fullDescription"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "a.addToAgendaMessage AS addToAgendaMessage"

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "a.removeFromAgendaMessage AS removeFromAgendaMessage"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "a.session"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "a.priority"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "a.runningTime_to AS runningTime_to"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "a.runningTime_from AS runningTime_from"

    aput-object v6, v1, v5

    const/16 v5, 0xa

    const-string v6, "a.fullDescription AS fullDescription"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    const-string v6, "a.shareUrl AS shareUrl"

    aput-object v6, v1, v5

    const/16 v5, 0xc

    const-string v6, "(ifnull(f.relatedSubSession, 0) > 0)"

    const-string v10, "isFavourite"

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0xd

    const-string v6, "(ifnull(FSS.subsession, 0) > 0)"

    const-string v10, "isBookmarked"

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0xe

    const-string v6, "(ifnull(n.relatedSubSession, 0) > 0)"

    const-string v10, "hasNote"

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/16 v5, 0xf

    const-string v6, "EXISTS (SELECT * FROM AgendaItems AI WHERE (AI.RelatedSubSession = a.Id AND AI.isWaitlisted = 1) )"

    sget-object v10, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v10, v10, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 223
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v9, "subsessions a LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession)"

    .line 228
    .local v9, "sqlTables":Ljava/lang/String;
    const-string v2, "a.id=?"

    .line 229
    .local v2, "where":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_0

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR a.id=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 234
    .local v3, "idsAsStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_1

    .line 235
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 234
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 238
    :cond_1
    const-string v8, "a.priority, a.runningTime_from"

    .line 239
    .local v8, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 240
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v11}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 241
    const-string v5, "subsessions a LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession)"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 242
    const-string v6, "a.priority, a.runningTime_from"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSubsessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 246
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v1    # "sqlSelect":[Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "idsAsStrings":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "orderBy":Ljava/lang/String;
    .end local v9    # "sqlTables":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public getSubsessionLocations(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "subsessionId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 125
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "seqNo AS seqNo"

    aput-object v2, v1, v9

    const-string v2, "locations AS name"

    aput-object v2, v1, v10

    const/4 v2, 0x2

    const-string v5, "l.mapPosition_map AS map"

    aput-object v5, v1, v2

    .line 131
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "subsessions_locations LEFT OUTER JOIN locations l ON (locations = l.name)"

    .line 134
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "subsessions_id=?"

    .line 135
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    .line 136
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seqNo, name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/genie_connect/android/db/access/DbSubsessions;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 139
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v2, "subsessions_locations LEFT OUTER JOIN locations l ON (locations = l.name)"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 140
    const-string v2, "subsessions_id=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSubsessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getSubsessionsForSession(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "sessionId"    # J

    .prologue
    .line 251
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/genie_connect/android/db/access/DbSubsessions;->getSubsessions(Ljava/lang/Long;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    .line 256
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/db/access/DbSubsessions;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/access/DbSubsessions;->search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 266
    const/16 v4, 0x10

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a.id AS _id"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "a.id AS id"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "a.name AS name"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "a.fullDescription"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "a.addToAgendaMessage AS addToAgendaMessage"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "a.removeFromAgendaMessage AS removeFromAgendaMessage"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "a.session"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "a.priority"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "a.runningTime_to AS runningTime_to"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "a.runningTime_from AS runningTime_from"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "a.fullDescription AS fullDescription"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "a.shareUrl AS shareUrl"

    aput-object v5, v1, v4

    const/16 v4, 0xc

    const-string v5, "(ifnull(f.relatedSubSession, 0) > 0)"

    const-string v6, "isFavourite"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xd

    const-string v5, "(ifnull(FSS.subsession, 0) > 0)"

    const-string v6, "isBookmarked"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xe

    const-string v5, "(ifnull(n.relatedSubSession, 0) > 0)"

    const-string v6, "hasNote"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xf

    const-string v5, "EXISTS (SELECT * FROM AgendaItems AI WHERE (AI.RelatedSubSession = a.Id AND AI.isWaitlisted = 1) )"

    sget-object v6, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v6, v6, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 285
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v10, "subsessions a LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession)"

    .line 291
    .local v10, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 292
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 293
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 294
    const-string v2, "a.fullDescription=? OR a.name=?"

    .line 296
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 297
    .local v8, "args":[Ljava/lang/String;
    move-object v3, v8

    .line 300
    .end local v8    # "args":[Ljava/lang/String;
    :cond_0
    const-string v9, "a.priority, a.runningTime_from"

    .line 301
    .local v9, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 302
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 303
    const-string v4, "subsessions a LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession)"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 304
    if-ltz p2, :cond_1

    .line 305
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "a.priority, a.runningTime_from"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_0
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSubsessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4

    .line 309
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "a.priority, a.runningTime_from"

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 317
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchForLocation(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 10
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 322
    const/16 v2, 0xa

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "a.id AS _id"

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-string v4, "a.id AS id"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "a.runningTime_from AS runningTime_from"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "a.runningTime_to AS runningTime_to"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "a.name AS name"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "locations"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "(ifnull(f.relatedSubSession, 0) > 0)"

    const-string v5, "isFavourite"

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "(ifnull(FSS.subsession, 0) > 0)"

    const-string v5, "isBookmarked"

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "(ifnull(n.relatedSubSession, 0) > 0)"

    const-string v5, "hasNote"

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "EXISTS (SELECT * FROM AgendaItems AI WHERE (AI.RelatedSubSession = a.Id AND AI.isWaitlisted = 1) )"

    sget-object v5, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    iget-object v5, v5, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/DbSubsessions;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 335
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v9, "(a.name like ? OR a.fullDescription like ? OR locations like ?) AND locations IS NOT NULL"

    .line 336
    .local v9, "sqlWhere":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 341
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v8, "subsessions a LEFT OUTER JOIN subsessions_locations sl ON(sl.subsessions_id = a.id) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession)"

    .line 347
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 350
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    if-lez p2, :cond_0

    .line 351
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "sqlLimit":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 357
    const-string v2, "subsessions a LEFT OUTER JOIN subsessions_locations sl ON(sl.subsessions_id = a.id) LEFT OUTER JOIN agendaitems f ON (a.id = f.relatedSubSession) LEFT OUTER JOIN favouriteSubSession FSS ON (a.id = FSS.subsession) LEFT OUTER JOIN notes n ON (a.id = n.relatedSubSession)"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 358
    const-string v2, "(a.name like ? OR a.fullDescription like ? OR locations like ?) AND locations IS NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSubsessions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2

    .line 353
    .end local v7    # "sqlLimit":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "sqlLimit":Ljava/lang/String;
    goto :goto_0
.end method
