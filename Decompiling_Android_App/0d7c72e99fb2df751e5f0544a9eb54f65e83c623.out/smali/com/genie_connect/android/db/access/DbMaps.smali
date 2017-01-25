.class public final Lcom/genie_connect/android/db/access/DbMaps;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbMaps.java"


# static fields
.field private static final SELECT_MAPS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "colour"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "imageUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cameraX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cameraY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cameraZ"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cameraMinZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rotationOffset"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "seqNo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbMaps;->SELECT_MAPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getMapIDForEmspId(Ljava/lang/String;)J
    .locals 14
    .param p1, "emspId"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 111
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const-wide/16 v10, -0x1

    .line 139
    .local v10, "res":J
    :goto_0
    return-wide v10

    .line 114
    .end local v10    # "res":J
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 115
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v2, v7

    const-string v1, "emspId"

    aput-object v1, v2, v13

    .line 118
    .local v2, "sqlSelect":[Ljava/lang/String;
    const-string v9, "maps"

    .line 119
    .local v9, "sqlTables":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emspId"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=\'%s\'"

    new-array v6, v13, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "sqlWhere":Ljava/lang/String;
    new-array v12, v13, [Ljava/lang/String;

    aput-object p1, v12, v7

    .line 123
    .local v12, "sqlWhereArgs":[Ljava/lang/String;
    const-string v1, "maps"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^FOO: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbMaps;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    const-string v1, "id"

    invoke-static {v8, v1}, Lcom/genie_connect/android/db/DbHelper;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 136
    .restart local v10    # "res":J
    :goto_1
    invoke-static {v8}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .line 133
    .end local v10    # "res":J
    :cond_1
    const-wide/16 v10, -0x1

    .restart local v10    # "res":J
    goto :goto_1
.end method

.method public getMapName(J)Ljava/lang/String;
    .locals 11
    .param p1, "mapId"    # J

    .prologue
    const/4 v4, 0x0

    .line 76
    const-wide/16 v6, -0x1

    cmp-long v1, p1, v6

    if-nez v1, :cond_0

    .line 77
    const-string v9, ""

    .line 99
    .local v9, "res":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 79
    .end local v9    # "res":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 80
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "id"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "name"

    aput-object v5, v2, v1

    .line 83
    .local v2, "sqlSelect":[Ljava/lang/String;
    const-string v10, "maps"

    .line 84
    .local v10, "sqlTables":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "sqlWhere":Ljava/lang/String;
    const-string v1, "maps"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbMaps;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 90
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    const-string v1, "name"

    invoke-static {v8, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    .restart local v9    # "res":Ljava/lang/String;
    :goto_1
    invoke-static {v8}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .line 93
    .end local v9    # "res":Ljava/lang/String;
    :cond_1
    const-string v9, ""

    .restart local v9    # "res":Ljava/lang/String;
    goto :goto_1
.end method

.method public getMaps(I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "mapType"    # I

    .prologue
    const/4 v3, 0x0

    .line 149
    const-string v8, "maps"

    .line 150
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "sqlWhere":Ljava/lang/String;
    const-string v7, "seqNo,name ASC"

    .line 153
    .local v7, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 154
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 155
    const-string v1, "maps"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/genie_connect/android/db/access/DbMaps;->SELECT_MAPS:[Ljava/lang/String;

    const-string v6, "seqNo,name ASC"

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbMaps;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v1, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
