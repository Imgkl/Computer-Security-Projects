.class public final Lcom/genie_connect/android/db/access/DbDataversions;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbDataversions.java"


# instance fields
.field private final mMainTable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 41
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbDataversions;->getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbDataversions;->mMainTable:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getDataVersion(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 54
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v9

    const-string v2, "name"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string/jumbo v5, "timestamp"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "datetime(max(timestamp), \'+1 seconds\') timestamp_adjusted"

    aput-object v5, v1, v2

    .line 61
    .local v1, "sqlSelect":[Ljava/lang/String;
    iget-object v7, p0, Lcom/genie_connect/android/db/access/DbDataversions;->mMainTable:Ljava/lang/String;

    .line 62
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "name=?"

    .line 63
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v9

    .line 65
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 66
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 67
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 68
    const-string v2, "name=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbDataversions;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DATAVERSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
