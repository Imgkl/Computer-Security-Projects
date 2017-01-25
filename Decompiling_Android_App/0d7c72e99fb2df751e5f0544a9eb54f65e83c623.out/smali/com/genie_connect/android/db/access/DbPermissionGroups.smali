.class public final Lcom/genie_connect/android/db/access/DbPermissionGroups;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbPermissionGroups.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getPermissionGroupFor(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Ljava/lang/Long;
    .locals 12
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "entityId"    # J

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->isPermissionsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "sqlTable":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "permissionGroup"

    aput-object v3, v2, v1

    .line 66
    .local v2, "sqlSelectDetail":[Ljava/lang/String;
    const-string v11, "id=?"

    .line 67
    .local v11, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    .line 69
    .local v4, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 72
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :try_start_0
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPermissionGroups;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 74
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    const-string v1, "permissionGroup"

    invoke-static {v8, v1}, Lcom/genie_connect/android/db/DbHelper;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 77
    .end local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 78
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DB: getPermissionGroupFor() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPermissionGroups()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    const-string v8, "permissiongroups"

    .line 90
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v7, "id ASC"

    .line 92
    .local v7, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 93
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v3}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 94
    const-string v1, "permissiongroups"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 95
    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "*"

    aput-object v4, v1, v3

    const-string v6, "id ASC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPermissionGroups;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getPermissionSets()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    const-string v8, "permissiongroups_visitorgrouppermissionsets"

    .line 106
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v7, "permissiongroups_id ASC"

    .line 108
    .local v7, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 109
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v3}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 110
    const-string v1, "permissiongroups_visitorgrouppermissionsets"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 111
    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "*"

    aput-object v4, v1, v3

    const-string v6, "permissiongroups_id ASC"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbPermissionGroups;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PERMISSIONGROUP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
