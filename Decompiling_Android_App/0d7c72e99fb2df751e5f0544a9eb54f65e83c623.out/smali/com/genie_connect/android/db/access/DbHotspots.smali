.class public Lcom/genie_connect/android/db/access/DbHotspots;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbHotspots.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;


# static fields
.field private static final SQL_SELECT_DEFAULT:[Ljava/lang/String;

.field private static final SQL_SELECT_IDENTIFIERS:[Ljava/lang/String;


# instance fields
.field private final ENTITY_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id AS _id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "identifier"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbHotspots;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    .line 22
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "identifier AS _id"

    aput-object v1, v0, v3

    const-string v1, "identifier"

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/db/access/DbHotspots;->SQL_SELECT_IDENTIFIERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 13
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbHotspots;->getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbHotspots;->ENTITY_NAME:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v8, p0, Lcom/genie_connect/android/db/access/DbHotspots;->ENTITY_NAME:Ljava/lang/String;

    .line 33
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 34
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v7, "id"

    .line 35
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 36
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/genie_connect/android/db/access/DbHotspots;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    const-string v6, "id"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbHotspots;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getAllHotspotIdentifiers()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v8, p0, Lcom/genie_connect/android/db/access/DbHotspots;->ENTITY_NAME:Ljava/lang/String;

    .line 80
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 82
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v7, "identifier"

    .line 83
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 84
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/genie_connect/android/db/access/DbHotspots;->SQL_SELECT_IDENTIFIERS:[Ljava/lang/String;

    const-string v6, "identifier"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbHotspots;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getByHotspotIdentifier(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 61
    iget-object v8, p0, Lcom/genie_connect/android/db/access/DbHotspots;->ENTITY_NAME:Ljava/lang/String;

    .line 62
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 63
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v9, "identifier=?"

    .line 64
    .local v9, "sqlWhere":Ljava/lang/String;
    new-array v3, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v3, v1

    .line 65
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v7, "identifier"

    .line 66
    .local v7, "orderBy":Ljava/lang/String;
    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 67
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/genie_connect/android/db/access/DbHotspots;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    const-string v2, "identifier=?"

    const-string v6, "identifier"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbHotspots;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 43
    iget-object v8, p0, Lcom/genie_connect/android/db/access/DbHotspots;->ENTITY_NAME:Ljava/lang/String;

    .line 44
    .local v8, "sqlTables":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 45
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v9, "id=?"

    .line 46
    .local v9, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 47
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v7, "id"

    .line 48
    .local v7, "orderBy":Ljava/lang/String;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 49
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/genie_connect/android/db/access/DbHotspots;->SQL_SELECT_DEFAULT:[Ljava/lang/String;

    const-string v2, "id=?"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbHotspots;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hotspots do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->HOTSPOTS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
