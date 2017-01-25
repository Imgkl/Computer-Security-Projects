.class public final Lcom/genie_connect/android/db/access/DbLocations;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbLocations.java"


# static fields
.field private static final SELECT_LOCATIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a.id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mapPosition_colour"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mapPosition_vectors"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mapPosition_label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mapPosition_map"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mapPosition_zIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mapPosition_version"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mapPosition_labelColour"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mapPosition_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mapPosition_vectorsFormat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mapPosition_rotation"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mapPosition_textBoundingBox"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c.name AS name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "f.exhibitor IS NOT NULL isFavourite"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "FS.session IS NOT NULL isFavouriteSession"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "FSS.subsession IS NOT NULL isFavouriteSubSession"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ai.relatedSession IS NOT NULL isSessionScheduled"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "aii.relatedSession IS NOT NULL isSubSessionScheduled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbLocations;->SELECT_LOCATIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getInvalidLocations()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 72
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v1, v2

    .line 73
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "locations"

    .line 74
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "mapPosition_vectors IS NULL"

    .line 76
    .local v8, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 77
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 78
    const-string v2, "locations"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 79
    const-string v2, "mapPosition_vectors IS NULL"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbLocations;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getInvalidLocationsWithExhibitorsAttached()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 84
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v1, v2

    const-string v2, "mapPosition_vectors"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v4, "exhibitors_id AS _id"

    aput-object v4, v1, v2

    .line 90
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "locations LEFT OUTER JOIN exhibitors_locations ON (locations.name = exhibitors_locations.locations)"

    .line 92
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "mapPosition_vectors IS NULL"

    .line 95
    .local v8, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 96
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 97
    const-string v2, "locations LEFT OUTER JOIN exhibitors_locations ON (locations.name = exhibitors_locations.locations)"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 98
    const-string v2, "mapPosition_vectors IS NULL"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbLocations;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 8
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v7, "locations c LEFT OUTER JOIN exhibitors_locations b ON (b.locations = c.name) LEFT OUTER JOIN exhibitors a ON (a.id = b.exhibitors_id) LEFT OUTER JOIN favouriteexhibitors f ON (a.id = f.exhibitor) LEFT OUTER JOIN sessions_locations sl ON (sl.locations = c.name) LEFT OUTER JOIN favouriteSession FS ON (sl.sessions_id = FS.session) LEFT OUTER JOIN subsessions_locations ssl ON (ssl.locations = c.name) LEFT OUTER JOIN favouriteSubSession FSS ON (ssl.subsessions_id = FSS.subsession) LEFT OUTER JOIN agendaitems ai ON (sl.sessions_id = ai.relatedSession) LEFT OUTER JOIN agendaitems aii ON (ssl.subsessions_id = aii.relatedSession)"

    .line 119
    .local v7, "sqlTables":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapPosition_vectors not null AND c.name=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 122
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 123
    const-string v1, "locations c LEFT OUTER JOIN exhibitors_locations b ON (b.locations = c.name) LEFT OUTER JOIN exhibitors a ON (a.id = b.exhibitors_id) LEFT OUTER JOIN favouriteexhibitors f ON (a.id = f.exhibitor) LEFT OUTER JOIN sessions_locations sl ON (sl.locations = c.name) LEFT OUTER JOIN favouriteSession FS ON (sl.sessions_id = FS.session) LEFT OUTER JOIN subsessions_locations ssl ON (ssl.locations = c.name) LEFT OUTER JOIN favouriteSubSession FSS ON (ssl.subsessions_id = FSS.subsession) LEFT OUTER JOIN agendaitems ai ON (sl.sessions_id = ai.relatedSession) LEFT OUTER JOIN agendaitems aii ON (ssl.subsessions_id = aii.relatedSession)"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/genie_connect/android/db/access/DbLocations;->SELECT_LOCATIONS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbLocations;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v1, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getLocationsForMap(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "mapId"    # J

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v7, "locations c LEFT OUTER JOIN exhibitors_locations b ON (b.locations = c.name) LEFT OUTER JOIN exhibitors a ON (a.id = b.exhibitors_id) LEFT OUTER JOIN favouriteexhibitors f ON (a.id = f.exhibitor) LEFT OUTER JOIN sessions_locations sl ON (sl.locations = c.name) LEFT OUTER JOIN favouriteSession FS ON (sl.sessions_id = FS.session) LEFT OUTER JOIN subsessions_locations ssl ON (ssl.locations = c.name) LEFT OUTER JOIN favouriteSubSession FSS ON (ssl.subsessions_id = FSS.subsession) LEFT OUTER JOIN agendaitems ai ON (sl.sessions_id = ai.relatedSession) LEFT OUTER JOIN agendaitems aii ON (ssl.subsessions_id = aii.relatedSession)"

    .line 147
    .local v7, "sqlTables":Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    .line 148
    const-string v2, "mapPosition_vectors not null AND mapPosition_map not null"

    .line 153
    .local v2, "sqlWhere":Ljava/lang/String;
    :goto_0
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 154
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 155
    const-string v1, "locations c LEFT OUTER JOIN exhibitors_locations b ON (b.locations = c.name) LEFT OUTER JOIN exhibitors a ON (a.id = b.exhibitors_id) LEFT OUTER JOIN favouriteexhibitors f ON (a.id = f.exhibitor) LEFT OUTER JOIN sessions_locations sl ON (sl.locations = c.name) LEFT OUTER JOIN favouriteSession FS ON (sl.sessions_id = FS.session) LEFT OUTER JOIN subsessions_locations ssl ON (ssl.locations = c.name) LEFT OUTER JOIN favouriteSubSession FSS ON (ssl.subsessions_id = FSS.subsession) LEFT OUTER JOIN agendaitems ai ON (sl.sessions_id = ai.relatedSession) LEFT OUTER JOIN agendaitems aii ON (ssl.subsessions_id = aii.relatedSession)"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/genie_connect/android/db/access/DbLocations;->SELECT_LOCATIONS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbLocations;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v1, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1

    .line 150
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v2    # "sqlWhere":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapPosition_vectors not null AND mapPosition_map="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "sqlWhere":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->LOCATION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getValidBoothsWithNoExhibitor()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 166
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v1, v2

    const-string v2, "mapPosition_vectors"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v4, "exhibitors_id AS _id"

    aput-object v4, v1, v2

    .line 168
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "locations LEFT OUTER JOIN exhibitors_locations ON (locations.name = exhibitors_locations.locations)"

    .line 170
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "mapPosition_type IS 0 AND mapPosition_vectors IS NOT NULL AND exhibitors_id IS NULL"

    .line 173
    .local v8, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 174
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 175
    const-string v2, "locations LEFT OUTER JOIN exhibitors_locations ON (locations.name = exhibitors_locations.locations)"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 176
    const-string v2, "mapPosition_type IS 0 AND mapPosition_vectors IS NOT NULL AND exhibitors_id IS NULL"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbLocations;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getValidLocationsWithNoExhibitor()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 181
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "name"

    aput-object v4, v1, v2

    const-string v2, "mapPosition_vectors"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v4, "exhibitors_id AS _id"

    aput-object v4, v1, v2

    .line 186
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "locations LEFT OUTER JOIN exhibitors_locations ON (locations.name = exhibitors_locations.locations)"

    .line 188
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "mapPosition_vectors IS NOT NULL AND exhibitors_id IS NULL"

    .line 191
    .local v8, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 192
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 193
    const-string v2, "locations LEFT OUTER JOIN exhibitors_locations ON (locations.name = exhibitors_locations.locations)"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 194
    const-string v2, "mapPosition_vectors IS NOT NULL AND exhibitors_id IS NULL"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbLocations;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method
