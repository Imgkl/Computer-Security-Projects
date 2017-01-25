.class public final Lcom/genie_connect/android/db/access/DbInfopages;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbInfopages.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;


# static fields
.field private static final SQL_SELECT_DEFAULT:[Ljava/lang/String;

.field private static final SQL_SELECT_DEFAULT_GAMIFICATION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id AS _id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "html"

    aput-object v1, v0, v6

    const-string/jumbo v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "openNativeAppSchema"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nativeAppSchemaUri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbInfopages;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id AS _id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "url"

    aput-object v1, v0, v6

    const-string v1, "html"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "openNativeAppSchema"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nativeAppSchemaUri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "seqNo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbInfopages;->SQL_SELECT_DEFAULT_GAMIFICATION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 81
    const-string v7, "infopages"

    .line 82
    .local v7, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 83
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 85
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 86
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v1, "infopages"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/genie_connect/android/db/access/DbInfopages;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInfopages;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 99
    const-string v7, "infopages"

    .line 100
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "id=?"

    .line 101
    .local v8, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 103
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 104
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v1, "infopages"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/genie_connect/android/db/access/DbInfopages;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    const-string v2, "id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInfopages;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Infopages do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInfopagesForGame(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "entityId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 121
    const-string v7, "games_secondaryinfopages gi LEFT OUTER JOIN infopages i  ON (gi.secondaryinfopages= i.id)"

    .line 122
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "games_id=?"

    .line 123
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 124
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seqNo, name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbInfopages;->getStringCollation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 127
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 128
    const-string v1, "games_secondaryinfopages gi LEFT OUTER JOIN infopages i  ON (gi.secondaryinfopages= i.id)"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/genie_connect/android/db/access/DbInfopages;->SQL_SELECT_DEFAULT_GAMIFICATION:[Ljava/lang/String;

    const-string v2, "games_id=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInfopages;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getInfopagesForTrophy(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "entityId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 140
    const-string/jumbo v7, "trophies_secondaryinfopages gi LEFT OUTER JOIN infopages i  ON (gi.secondaryinfopages= i.id)"

    .line 141
    .local v7, "sqlTables":Ljava/lang/String;
    const-string/jumbo v8, "trophies_id=?"

    .line 142
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 143
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seqNo, name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbInfopages;->getStringCollation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 146
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 147
    const-string/jumbo v1, "trophies_secondaryinfopages gi LEFT OUTER JOIN infopages i  ON (gi.secondaryinfopages= i.id)"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcom/genie_connect/android/db/access/DbInfopages;->SQL_SELECT_DEFAULT_GAMIFICATION:[Ljava/lang/String;

    const-string/jumbo v2, "trophies_id=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbInfopages;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
