.class public Lcom/genie_connect/android/db/access/DbAgendaItems;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbAgendaItems.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAgendaItem(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 54
    const/16 v2, 0xe

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "id AS _id"

    aput-object v2, v1, v9

    const-string v2, "id AS id"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v5, "name"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "eventDay"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "fullDescription"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v5, "type"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "relatedMeeting"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "relatedSession"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "relatedSubSession"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v5, "visitor"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "isDeletable"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "isWaitlisted"

    aput-object v5, v1, v2

    const/16 v2, 0xc

    const-string v5, "runningTime_from AS runningTime_from"

    aput-object v5, v1, v2

    const/16 v2, 0xd

    const-string v5, "runningTime_to AS runningTime_to"

    aput-object v5, v1, v2

    .line 71
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "agendaitems"

    .line 72
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "id=?"

    .line 73
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    .line 75
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 76
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 77
    const-string v2, "agendaitems"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 78
    const-string v2, "id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbAgendaItems;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
