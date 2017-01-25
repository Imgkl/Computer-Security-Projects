.class public Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;
.super Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;
.source "FavQueueDatabase.java"


# static fields
.field private static final DATABASE_FORCE_UPGRADE_VERSION:I = 0x1

.field private static final DATABASE_NAME_PRIMARY:Ljava/lang/String; = "favqueue.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_QUEUE:Ljava/lang/String; = "queue"

.field private static sInstance:Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

.field private static final sSqlSelect:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "attemptEvery"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "attemptLast"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "attemptNext"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "attemptTtl"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "requestBody"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "createdDate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "requestHeaders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "requestMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "requestNamespace"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "requestType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "requestTargetUrl"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "requestUserAgent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->sSqlSelect:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const-string v0, "favqueue.db"

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/readystatesoftware/sqliteasset/SQLiteAssetHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->setForcedUpgradeVersion(I)V

    .line 82
    return-void
.end method

.method private static attemptToSend(Landroid/content/Context;Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .prologue
    .line 255
    if-nez p1, :cond_1

    .line 274
    .end local p1    # "item":Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    :cond_0
    :goto_0
    return-object p1

    .line 257
    .restart local p1    # "item":Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    :cond_1
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/net/ReachabilityManager;->tryCurrentServer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    :try_start_0
    new-instance v1, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;

    invoke-direct {v1, p0, p1}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V

    .line 260
    .local v1, "net":Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;
    invoke-virtual {v1}, Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;->send()Z

    move-result v2

    .line 262
    .local v2, "res":Z
    if-eqz v2, :cond_2

    .line 263
    const/4 p1, 0x0

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->decreaseTtl()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v1    # "net":Lcom/genie_connect/android/db/favqueue/FavQueueNetwork;
    .end local v2    # "res":Z
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->decreaseTtl()J

    goto :goto_0
.end method

.method private static close(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 278
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    sget-object v0, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->sInstance:Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    if-nez v0, :cond_1

    .line 291
    const-class v1, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-object v0, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->sInstance:Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->sInstance:Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    .line 295
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_1
    sget-object v0, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->sInstance:Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private queueItemAdd(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)Z
    .locals 14
    .param p1, "item"    # Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 160
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v12, "queue"

    .line 161
    .local v12, "sqlTable":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    .line 162
    .local v2, "sqlSelect":[Ljava/lang/String;
    const-string v13, "id =?"

    .line 163
    .local v13, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 165
    .local v4, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 166
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "queue"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ FAVQ: addQueueItem - About to add: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 170
    const-string v3, "id =?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 172
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_1

    .line 173
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 176
    .restart local v0    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :try_start_0
    const-string v3, "queue"

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v1, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 178
    .local v10, "res":J
    const-wide/16 v6, -0x1

    cmp-long v3, v10, v6

    if-eqz v3, :cond_0

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ FAVQ: addQueueItem - Item inserted. row: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 180
    invoke-static {v8}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->close(Landroid/database/Cursor;)V

    .line 181
    const/4 v3, 0x1

    .line 197
    .end local v10    # "res":J
    :goto_0
    return v3

    .line 183
    .restart local v10    # "res":J
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ FAVQ: addQueueItem - Item NOT inserted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 184
    invoke-static {v8}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->close(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v3, 0x0

    goto :goto_0

    .line 188
    .end local v10    # "res":J
    :catch_0
    move-exception v9

    .line 189
    .local v9, "e":Ljava/lang/Exception;
    const-string v3, "^ FAVQ: addQueueItem - Item NOT inserted!"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 196
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v8}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->close(Landroid/database/Cursor;)V

    .line 197
    const/4 v3, 0x0

    goto :goto_0

    .line 192
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ FAVQ: addQueueItem - Item NOT inserted as it exists!: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private queueItemUpdate(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V
    .locals 8
    .param p1, "item"    # Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .prologue
    .line 223
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 226
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "id=?"

    .line 227
    .local v1, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 229
    .local v2, "whereArgs":[Ljava/lang/String;
    const-string v3, "queue"

    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "id=?"

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static validateItem(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)Z
    .locals 3
    .param p0, "item"    # Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 301
    if-nez p0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getRequestTargetUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    move v0, v1

    .line 304
    goto :goto_0
.end method


# virtual methods
.method public clearQueue()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "queue"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public fireQueue(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v3, "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getQueueItems()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 97
    .local v0, "cur":Luk/co/alt236/easycursor/EasyCursor;
    if-nez v0, :cond_1

    .line 98
    const-string v8, "^ FAVQ: fireQueue() cursor is null!"

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return v5

    .line 102
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FAVQ: FavouritesQueue: queued items: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 103
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v8

    if-eqz v8, :cond_0

    .line 105
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 106
    :goto_1
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_4

    .line 107
    new-instance v4, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-direct {v4, v0}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    .line 108
    .local v4, "item":Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    invoke-virtual {v4}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v6

    .line 110
    .local v6, "tmpId":J
    invoke-static {p1}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/net/ReachabilityManager;->tryCurrentServer()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 111
    invoke-virtual {v4}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->isFireable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    invoke-static {p1, v4}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->attemptToSend(Landroid/content/Context;Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    move-result-object v4

    .line 114
    if-nez v4, :cond_3

    .line 115
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    :goto_2
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {p0, v4}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->updateQueue(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V

    goto :goto_2

    .line 126
    .end local v4    # "item":Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .end local v6    # "tmpId":J
    :cond_4
    invoke-static {v0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->close(Landroid/database/Cursor;)V

    .line 129
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 130
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->queueItemRemove(J)Z

    goto :goto_3

    .line 133
    .end local v2    # "id":Ljava/lang/Long;
    :cond_5
    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getQueueItems()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v5

    .line 135
    .local v5, "res":I
    invoke-static {v0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->close(Landroid/database/Cursor;)V

    .line 136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^ FAVQ: FavouritesQueue: queued items after run: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getQueueItems()Luk/co/alt236/easycursor/EasyCursor;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 142
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 143
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v11, "queue"

    .line 144
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v10, "attemptNext"

    .line 146
    .local v10, "orderBy":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 147
    const-string v1, "queue"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->sSqlSelect:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "attemptNext"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v1, v8}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 153
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v1, v12

    .line 154
    goto :goto_0
.end method

.method protected queueItemRemove(J)Z
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "queue"

    const-string v5, "id= ?"

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, "res":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ FAVQ: removeQueueItem - Items removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 218
    :goto_0
    return v2

    .line 217
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ FAVQ: removeQueueItem - Items NOT removed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move v2, v3

    .line 218
    goto :goto_0
.end method

.method protected queueItemRemove(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 202
    :cond_0
    const-string v0, "^ FAVQ: removeQueueItem - Item invalid."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->queueItemRemove(J)Z

    move-result v0

    goto :goto_0
.end method

.method public updateQueue(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V
    .locals 6
    .param p1, "item"    # Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    .prologue
    const-wide/16 v4, 0x0

    .line 233
    invoke-static {p1}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->validateItem(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 236
    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getAttemptTtl()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 237
    invoke-direct {p0, p1}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->queueItemAdd(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)Z

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;->getAttemptTtl()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 241
    invoke-direct {p0, p1}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->queueItemUpdate(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)V

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/favqueue/FavQueueDatabase;->queueItemRemove(Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;)Z

    goto :goto_0
.end method
