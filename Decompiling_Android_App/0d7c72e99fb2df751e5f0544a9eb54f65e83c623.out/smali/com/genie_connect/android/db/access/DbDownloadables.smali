.class public final Lcom/genie_connect/android/db/access/DbDownloadables;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbDownloadables.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;


# static fields
.field private static final DL_VALIDATION_WHERE:Ljava/lang/String; = "d.fileName IS NOT NULL AND d.downloadUrl IS NOT NULL"

.field private static final FAV_COLUMN:Ljava/lang/String; = "(ifnull(fd.id, 0) > 0)"

.field private static final SQL_SELECT:[Ljava/lang/String;

.field private static final SQL_SELECT_SUMMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "d.id _id"

    aput-object v1, v0, v3

    const-string v1, "d.id id"

    aput-object v1, v0, v4

    const-string v1, "d.size size"

    aput-object v1, v0, v5

    const-string v1, "d.fileType fileType"

    aput-object v1, v0, v6

    const-string v1, "d.downloadUrl downloadUrl"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "d.md5Hash md5Hash"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "d.thumbnailUrl thumbnailUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "d.name name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "d.fileName fileName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "d.permissionGroup permissionGroup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "d.fullDescription fullDescription"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "d.mimeType mimeType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "(ifnull(fd.id, 0) > 0) isFavourite"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "n.relatedDownloadable IS NOT NULL hasNote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbDownloadables;->SQL_SELECT:[Ljava/lang/String;

    .line 66
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "d.id _id"

    aput-object v1, v0, v3

    const-string v1, "d.id id"

    aput-object v1, v0, v4

    const-string v1, "d.size size"

    aput-object v1, v0, v5

    const-string v1, "d.fileType fileType"

    aput-object v1, v0, v6

    const-string v1, "d.downloadUrl downloadUrl"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "d.md5Hash md5Hash"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "d.thumbnailUrl thumbnailUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "d.name name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "d.fileName fileName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "d.permissionGroup permissionGroup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "d.fullDescription fullDescription"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "d.mimeType mimeType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbDownloadables;->SQL_SELECT_SUMMARY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 83
    return-void
.end method

.method private getDownloadablesForEntity(JLcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "entityId"    # J
    .param p3, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-virtual {p3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    .line 168
    .local v7, "entityTable":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_downloadables e_d"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " LEFT OUTER JOIN downloadables d ON (e_d.downloadables = d.id)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " LEFT OUTER JOIN favouritedownloadables fd ON (fd.downloadable = d.id)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " LEFT OUTER JOIN notes n ON (d.id = n.relatedDownloadable "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbDownloadables;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e_d."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "_id=? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "d.fileName IS NOT NULL AND d.downloadUrl IS NOT NULL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/db/access/DbDownloadables;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 176
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 177
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 178
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/genie_connect/android/db/access/DbDownloadables;->SQL_SELECT:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getDownloadable(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "downloadableId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadables d  LEFT OUTER JOIN favouritedownloadables fd ON (fd.downloadable = d.id) LEFT OUTER JOIN notes n ON (d.id = n.relatedDownloadable "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbDownloadables;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v1, "d.id=?"

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/db/access/DbDownloadables;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 99
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 100
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 101
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/genie_connect/android/db/access/DbDownloadables;->SQL_SELECT:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadables()Luk/co/alt236/easycursor/EasyCursor;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 132
    const/16 v4, 0xb

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "d.id AS _id"

    aput-object v5, v1, v4

    const-string v4, "d.id AS id"

    aput-object v4, v1, v6

    const/4 v4, 0x2

    const-string v5, "d.size size"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "d.fileType fileType"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "d.downloadUrl downloadUrl"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "d.md5Hash md5Hash"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "d.thumbnailUrl thumbnailUrl"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "d.name name"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "d.mimeType mimeType"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "d.fullDescription fullDescription"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "n.relatedDownloadable IS NOT NULL hasNote"

    aput-object v5, v1, v4

    .line 146
    .local v1, "sqlSelect":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "favouritedownloadables fd LEFT OUTER JOIN downloadables d ON (fd.downloadable = d.id)  LEFT OUTER JOIN notes n ON (d.id = n.relatedDownloadable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbDownloadables;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v4, "d.fileName IS NOT NULL AND d.downloadUrl IS NOT NULL"

    invoke-virtual {p0, v4}, Lcom/genie_connect/android/db/access/DbDownloadables;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 153
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 154
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 155
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    return-object v3
.end method

.method public getDownloadablesByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
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
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 107
    const-string v8, "downloadables d"

    .line 108
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v2, "d.id=?"

    .line 109
    .local v2, "where":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " OR d.id=?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 114
    .local v3, "idsAsStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 115
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 118
    :cond_1
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 119
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 120
    const-string v1, "downloadables d"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/genie_connect/android/db/access/DbDownloadables;->SQL_SELECT_SUMMARY:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadablesForExhibitor(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "entityId"    # J

    .prologue
    .line 184
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForEntity(JLcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadablesForExhibitorProducts(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "exhibitorId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "products_downloadables p_d LEFT OUTER JOIN downloadables d ON (p_d.downloadables = d.id) LEFT OUTER JOIN favouritedownloadables fd ON (fd.downloadable = d.id) LEFT OUTER JOIN products p ON (p.id = p_d.products_id) LEFT OUTER JOIN products_exhibitors p_e ON (p.id = p_e.products_id) LEFT OUTER JOIN notes n ON (d.id = n.relatedDownloadable "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbDownloadables;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v1, "p_e.exhibitors=? AND d.fileName IS NOT NULL AND d.downloadUrl IS NOT NULL"

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/db/access/DbDownloadables;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "sqlWhere":Ljava/lang/String;
    new-array v3, v8, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 223
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "d.name"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbDownloadables;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 226
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 227
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/genie_connect/android/db/access/DbDownloadables;->SQL_SELECT:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadablesForFacility(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "entityId"    # J

    .prologue
    .line 188
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForEntity(JLcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadablesForProduct(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "entityId"    # J

    .prologue
    .line 192
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForEntity(JLcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadablesForSession(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "entityId"    # J

    .prologue
    .line 196
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForEntity(JLcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadablesForSpeaker(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "entityId"    # J

    .prologue
    .line 200
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForEntity(JLcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadablesForSubsession(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "entityId"    # J

    .prologue
    .line 204
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForEntity(JLcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 8
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadables d  LEFT OUTER JOIN favouritedownloadables fd ON (fd.downloadable = d.id) LEFT OUTER JOIN notes n ON (d.id = n.relatedDownloadable "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbDownloadables;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v1, "d.name=?"

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/db/access/DbDownloadables;->appendPermissionsCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 255
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 256
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 257
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 258
    sget-object v1, Lcom/genie_connect/android/db/access/DbDownloadables;->SQL_SELECT:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/DbDownloadables;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
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
    .line 235
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, 0x0

    return-object v0
.end method
