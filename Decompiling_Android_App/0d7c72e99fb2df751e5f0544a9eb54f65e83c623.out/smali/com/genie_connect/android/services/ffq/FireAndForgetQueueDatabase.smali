.class public Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;
.super Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;
.source "FireAndForgetQueueDatabase.java"


# static fields
.field private static final DATABASE_FORCE_UPGRADE_VERSION:I = 0x1

.field public static final DATABASE_NAME_PRIMARY:Ljava/lang/String; = "ffqueue.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_QUEUE:Ljava/lang/String; = "queue"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string v0, "ffqueue.db"

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->setForcedUpgradeVersion(I)V

    .line 49
    return-void
.end method

.method private static close(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 184
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_0
    return-void
.end method

.method private queueItemAdd(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Z
    .locals 14
    .param p1, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 95
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 97
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v12, "queue"

    .line 98
    .local v12, "sqlTable":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    .line 100
    .local v2, "sqlSelect":[Ljava/lang/String;
    const-string v3, "queue"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 102
    const-string v13, "id =?"

    .line 103
    .local v13, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 105
    .local v4, "sqlWhereArgs":[Ljava/lang/String;
    const-string v3, "id =?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_1

    .line 108
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 111
    .restart local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :try_start_0
    const-string v3, "queue"

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 113
    .local v10, "res":J
    const-wide/16 v6, -0x1

    cmp-long v3, v10, v6

    if-eqz v3, :cond_0

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ FFQ: addQueueItem - Item inserted. row: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 115
    invoke-static {v8}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->close(Landroid/database/Cursor;)V

    .line 116
    const/4 v3, 0x1

    .line 132
    .end local v10    # "res":J
    :goto_0
    return v3

    .line 118
    .restart local v10    # "res":J
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ FFQ: addQueueItem - Item NOT inserted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 119
    invoke-static {v8}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->close(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v3, 0x0

    goto :goto_0

    .line 123
    .end local v10    # "res":J
    :catch_0
    move-exception v9

    .line 124
    .local v9, "e":Ljava/lang/Exception;
    const-string v3, "^ FFQ: addQueueItem - Item NOT inserted!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 131
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v8}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->close(Landroid/database/Cursor;)V

    .line 132
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ FFQ: addQueueItem - Item NOT inserted as it exists!: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private queueItemUpdate(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V
    .locals 6
    .param p1, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    .line 159
    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 163
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "strFilter":Ljava/lang/String;
    const-string v2, "queue"

    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static validateItem(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Z
    .locals 3
    .param p0, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    if-nez p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    move v0, v1

    .line 193
    goto :goto_0
.end method


# virtual methods
.method protected getQueueItems()Landroid/database/Cursor;
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 60
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 62
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v1, 0xd

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "id _id"

    aput-object v3, v2, v1

    const-string v1, "id"

    aput-object v1, v2, v4

    const/4 v1, 0x2

    const-string v3, "requestBody"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "requestHeaders"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "requestMethod"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "requestTargetUrl"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "requestUserAgent"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "requestNamespace"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "createdDate"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    const-string v3, "attemptTtl"

    aput-object v3, v2, v1

    const/16 v1, 0xa

    const-string v3, "attemptEvery"

    aput-object v3, v2, v1

    const/16 v1, 0xb

    const-string v3, "attemptNext"

    aput-object v3, v2, v1

    const/16 v1, 0xc

    const-string v3, "attemptLast"

    aput-object v3, v2, v1

    .line 77
    .local v2, "sqlSelect":[Ljava/lang/String;
    const-string v10, "queue"

    .line 79
    .local v10, "sqlTables":Ljava/lang/String;
    const-string v7, "attemptNext"

    .line 81
    .local v7, "orderBy":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 82
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 86
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 88
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v8, v11

    .line 89
    goto :goto_0
.end method

.method protected queueItemRemove(J)Z
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 147
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "queue"

    const-string v5, "id= ?"

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "res":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ FFQ: removeQueueItem - Items removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 154
    :goto_0
    return v2

    .line 153
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ FFQ: removeQueueItem - Items NOT removed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v2, v3

    .line 154
    goto :goto_0
.end method

.method protected queueItemRemove(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 137
    :cond_0
    const-string v0, "^ FFQ: removeQueueItem - Item invalid."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->queueItemRemove(J)Z

    move-result v0

    goto :goto_0
.end method

.method protected updateQueue(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V
    .locals 6
    .param p1, "item"    # Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    .prologue
    const-wide/16 v4, 0x0

    .line 168
    invoke-static {p1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->validateItem(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 171
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getAttemptTtl()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->queueItemAdd(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Z

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;->getAttemptTtl()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 176
    invoke-direct {p0, p1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->queueItemUpdate(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/ffq/FireAndForgetQueueDatabase;->queueItemRemove(Lcom/genie_connect/android/services/ffq/container/FfQueueItem;)Z

    goto :goto_0
.end method
