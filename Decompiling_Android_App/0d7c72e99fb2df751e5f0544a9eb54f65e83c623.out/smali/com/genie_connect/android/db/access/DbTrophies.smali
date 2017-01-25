.class public final Lcom/genie_connect/android/db/access/DbTrophies;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbTrophies.java"


# static fields
.field private static final THRESHOLD_SELECT:[Ljava/lang/String;

.field private static final TROPHY_SELECT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "seqNo"

    aput-object v1, v0, v3

    const-string v1, "icon"

    aput-object v1, v0, v4

    const-string/jumbo v1, "trophies_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "thresholds_colour AS colour"

    aput-object v1, v0, v6

    const-string/jumbo v1, "thresholds_name AS name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "thresholds_thresholdValue AS thresholdValue"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbTrophies;->THRESHOLD_SELECT:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id AS _id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const-string v1, "isVisible"

    aput-object v1, v0, v6

    const-string v1, "primaryInfoPage"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sponsorCampaign"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbTrophies;->TROPHY_SELECT:[Ljava/lang/String;

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
.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TROPHY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getThresholdsForTrophy(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "trophyId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 79
    const-string/jumbo v7, "trophies_thresholds tt LEFT OUTER JOIN trophies t ON (tt.trophies_id = t.id)"

    .line 80
    .local v7, "sqlTables":Ljava/lang/String;
    const-string/jumbo v8, "trophies_id=?"

    .line 81
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 82
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seqNo, thresholds_thresholdValue, thresholds_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbTrophies;->getStringCollation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 85
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 86
    const-string/jumbo v1, "trophies_thresholds tt LEFT OUTER JOIN trophies t ON (tt.trophies_id = t.id)"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/genie_connect/android/db/access/DbTrophies;->THRESHOLD_SELECT:[Ljava/lang/String;

    const-string/jumbo v2, "trophies_id=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTrophies;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getTrophiesAndThresholds()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 92
    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v1, v3

    const-string v3, "icon"

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v4, "game"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "thresholds_colour AS colour"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "thresholds_thresholdValue AS thresholdValue"

    aput-object v4, v1, v3

    .line 100
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string/jumbo v8, "trophies LEFT JOIN trophies_thresholds tt on (trophies.id = tt.trophies_id)"

    .line 103
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v7, "id, thresholdValue DESC"

    .line 106
    .local v7, "sqlOrder":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 107
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 108
    const-string/jumbo v3, "trophies LEFT JOIN trophies_thresholds tt on (trophies.id = tt.trophies_id)"

    invoke-virtual {v0, v3}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 109
    const-string v6, "id, thresholdValue DESC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTrophies;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getTrophiesForGame(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "gameId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 121
    const-string/jumbo v7, "trophies"

    .line 122
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "isVisible=? AND game=?"

    .line 123
    .local v8, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v3, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 124
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbTrophies;->getStringCollation()Ljava/lang/String;

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
    const-string/jumbo v1, "trophies"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/genie_connect/android/db/access/DbTrophies;->TROPHY_SELECT:[Ljava/lang/String;

    const-string v2, "isVisible=? AND game=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTrophies;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getTrophy(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 140
    const-string/jumbo v7, "trophies"

    .line 141
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "isVisible=? AND id=?"

    .line 142
    .local v8, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v3, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 143
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbTrophies;->getStringCollation()Ljava/lang/String;

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
    const-string/jumbo v1, "trophies"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcom/genie_connect/android/db/access/DbTrophies;->TROPHY_SELECT:[Ljava/lang/String;

    const-string v2, "isVisible=? AND id=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTrophies;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method
