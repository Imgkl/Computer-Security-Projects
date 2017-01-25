.class public Lcom/genie_connect/android/db/access/DbEventDays;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbEventDays.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getEventDays()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 56
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "0 _id"

    aput-object v6, v1, v3

    const-string v3, "a.name name"

    aput-object v3, v1, v11

    const/4 v3, 0x2

    const-string v6, "a.runningTime_from runningTime_from"

    aput-object v6, v1, v3

    const/4 v3, 0x3

    const-string v6, "a.runningTime_to runningTime_to"

    aput-object v6, v1, v3

    .line 63
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v10, "eventdays a"

    .line 64
    .local v10, "sqlTables":Ljava/lang/String;
    const-string v8, "a.runningTime_from"

    .line 65
    .local v8, "orderBy":Ljava/lang/String;
    const/4 v4, 0x0

    .line 66
    .local v4, "groupBy":Ljava/lang/String;
    const/4 v5, 0x0

    .line 67
    .local v5, "having":Ljava/lang/String;
    const/4 v2, 0x0

    .line 69
    .local v2, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 70
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v11}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 71
    const-string v3, "eventdays a"

    invoke-virtual {v0, v3}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 72
    const/4 v3, 0x0

    const-string v6, "a.runningTime_from"

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbEventDays;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v3, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 74
    .local v7, "c":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;>;"
    :goto_0
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    new-instance v3, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    invoke-direct {v3, v7}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {v7}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 83
    return-object v9
.end method

.method public getEventDays(Z)Luk/co/alt236/easycursor/EasyCursor;
    .locals 10
    .param p1, "favourite"    # Z

    .prologue
    const/4 v9, 0x1

    .line 94
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "0 _id"

    aput-object v6, v1, v3

    const-string v3, "a.name name"

    aput-object v3, v1, v9

    const/4 v3, 0x2

    const-string v6, "a.runningTime_from runningTime_from"

    aput-object v6, v1, v3

    const/4 v3, 0x3

    const-string v6, "a.runningTime_to runningTime_to"

    aput-object v6, v1, v3

    .line 101
    .local v1, "sqlSelect":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventdays a LEFT OUTER JOIN sessions b ON (a.name = b.eventDay) LEFT OUTER JOIN subsessions c ON (b.id = c.session) LEFT OUTER JOIN agendaitems f ON (b.id = f.relatedSession "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "f"

    invoke-virtual {p0, v6}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " LEFT OUTER JOIN agendaitems fs ON (c.id = fs.relatedSubSession "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "fs"

    invoke-virtual {p0, v6}, Lcom/genie_connect/android/db/access/DbEventDays;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " LEFT OUTER JOIN meetings m ON (a.name = m.eventDay)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v7, "a.runningTime_from"

    .line 108
    .local v7, "orderBy":Ljava/lang/String;
    const/4 v4, 0x0

    .line 109
    .local v4, "groupBy":Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, "having":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 112
    const-string v4, "a.name, a.runningTime_from"

    .line 113
    const-string v5, "(max(f.relatedSession)>0 OR max(fs.relatedSubSession)>0 OR max(m.id)>0)"

    .line 116
    :cond_0
    const/4 v2, 0x0

    .line 118
    .local v2, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 119
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 120
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x0

    const-string v6, "a.runningTime_from"

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbEventDays;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v3, v6}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    return-object v3
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EVENTDAY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
