.class public Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PlayerComparisonScopedLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCacheGroup:Ljava/lang/String;

.field private final mEntity:Ljava/lang/String;

.field private final mEntityId:J

.field private final mGson:Lcom/google/gson/Gson;

.field private final mNamespace:J

.field private final mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

.field private final mPlayerId1:J

.field private final mPlayerId2:J

.field private final mPreferCache:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;JLjava/lang/String;JJJZ)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "namespace"    # J
    .param p4, "entity"    # Ljava/lang/String;
    .param p5, "entityId"    # J
    .param p7, "player1"    # J
    .param p9, "player2"    # J
    .param p11, "preferCache"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mCacheGroup:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mGson:Lcom/google/gson/Gson;

    .line 84
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntity:Ljava/lang/String;

    .line 85
    iput-wide p5, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntityId:J

    .line 86
    iput-wide p2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mNamespace:J

    .line 87
    iput-wide p7, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPlayerId1:J

    .line 88
    iput-wide p9, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPlayerId2:J

    .line 89
    iput-boolean p11, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPreferCache:Z

    .line 90
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkGamification;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkGamification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

    .line 91
    return-void
.end method

.method private cacheGetKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "player_comparison_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "_entity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntityId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "_pOne"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPlayerId1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "_pTwo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPlayerId2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private cacheRead()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v6

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mCacheGroup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 113
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 114
    .local v3, "isr":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 116
    .local v5, "model":Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/genie_connect/common/utils/StreamUtils;->getDecompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .local v4, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mGson:Lcom/google/gson/Gson;

    const-class v7, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    invoke-virtual {v6, v4, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 124
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 127
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;->getData()Ljava/util/ArrayList;

    move-result-object v6

    .line 132
    :goto_1
    return-object v6

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ PLAYERCOMPARELOADER: Error loading cached response - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    invoke-static {v3}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v3}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .line 132
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 124
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 121
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method private cacheWrite(Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;)V
    .locals 4
    .param p1, "model"    # Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mCacheGroup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    return-void
.end method

.method private static calculateThresholdSpecificPoints([IJ)[I
    .locals 13
    .param p0, "thresholdLimits"    # [I
    .param p1, "score"    # J

    .prologue
    .line 333
    array-length v10, p0

    new-array v6, v10, [I

    .line 335
    .local v6, "res":[I
    array-length v10, p0

    if-nez v10, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-object v6

    .line 339
    :cond_1
    const-wide/16 v8, 0x0

    .line 340
    .local v8, "sum":J
    const/4 v4, 0x0

    .line 342
    .local v4, "index":I
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v5, :cond_0

    aget v10, v0, v1

    int-to-long v2, v10

    .line 344
    .local v2, "currentThreshLimit":J
    add-long/2addr v8, v2

    .line 346
    cmp-long v10, p1, v8

    if-nez v10, :cond_2

    .line 348
    aget v10, p0, v4

    aput v10, v6, v4

    goto :goto_0

    .line 353
    :cond_2
    cmp-long v10, p1, v8

    if-ltz v10, :cond_3

    .line 355
    aget v10, p0, v4

    aput v10, v6, v4

    .line 369
    add-int/lit8 v4, v4, 0x1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 358
    :cond_3
    aget v10, p0, v4

    int-to-long v10, v10

    cmp-long v10, v10, p1

    if-nez v10, :cond_5

    .line 359
    aget v7, p0, v4

    .line 363
    .local v7, "tmp":I
    :goto_2
    if-gtz v7, :cond_4

    const/4 v7, 0x0

    .end local v7    # "tmp":I
    :cond_4
    aput v7, v6, v4

    goto :goto_0

    .line 361
    :cond_5
    aget v10, p0, v4

    int-to-long v10, v10

    sub-long/2addr v10, p1

    long-to-int v7, v10

    .restart local v7    # "tmp":I
    goto :goto_2
.end method

.method private convertData(Ljava/util/List;)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    .line 143
    .local v6, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v17

    .line 144
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 145
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ PLAYERCOMPARESCOPEDLOADER: Unsupported result size: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getVisitorId()J

    move-result-wide v10

    .line 153
    .local v10, "myVisitorId":J
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v28

    cmp-long v28, v28, v10

    if-nez v28, :cond_4

    .line 154
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 155
    .local v13, "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 165
    .local v14, "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    :goto_1
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v15

    .line 166
    .local v15, "player1Name":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v16

    .line 168
    .local v16, "player2Name":Ljava/lang/String;
    const-string v28, "games"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntity:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 169
    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTrophies()Lcom/genie_connect/android/db/access/DbTrophies;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntityId:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/DbTrophies;->getTrophiesForGame(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    .line 171
    .local v5, "cTrophies":Luk/co/alt236/easycursor/EasyCursor;
    :goto_2
    invoke-interface {v5}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v28

    if-nez v28, :cond_6

    .line 172
    const-string v28, "id"

    move-object/from16 v0, v28

    invoke-interface {v5, v0}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 173
    .local v22, "trophyId":J
    const-string v28, "isVisible"

    sget-object v29, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v5, v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 174
    .local v8, "isVisible":Z
    const-string v28, "name"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v5, v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, "name":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 177
    new-instance v18, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntity:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)V

    .line 178
    .local v18, "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;->calcHighestThreshold(Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;

    move-result-object v9

    .line 180
    .local v9, "maxThreshold":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRowTitle(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getIcon()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRowImage(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getColour()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRowImageColour(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v28

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerId(J)V

    .line 186
    const-string v28, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftDescription(Ljava/lang/String;)V

    .line 187
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v13}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getTrophyScore(JLcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)J

    move-result-wide v28

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftProgressValue(J)V

    .line 188
    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getThresholdValue()J

    move-result-wide v28

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftMaxValue(J)V

    .line 189
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerGameObject(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V

    .line 191
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v14}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v28

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerId(J)V

    .line 193
    const-string v28, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightDescription(Ljava/lang/String;)V

    .line 194
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getTrophyScore(JLcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)J

    move-result-wide v28

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightProgressValue(J)V

    .line 195
    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;->getThresholdValue()J

    move-result-wide v28

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightMaxValue(J)V

    .line 196
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerGameObject(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V

    .line 198
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v9    # "maxThreshold":Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;
    .end local v18    # "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    :cond_3
    invoke-interface {v5}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto/16 :goto_2

    .line 156
    .end local v5    # "cTrophies":Luk/co/alt236/easycursor/EasyCursor;
    .end local v8    # "isVisible":Z
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v14    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v15    # "player1Name":Ljava/lang/String;
    .end local v16    # "player2Name":Ljava/lang/String;
    .end local v22    # "trophyId":J
    :cond_4
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v28

    cmp-long v28, v28, v10

    if-nez v28, :cond_5

    .line 157
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 158
    .restart local v13    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .restart local v14    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    goto/16 :goto_1

    .line 160
    .end local v13    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v14    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    :cond_5
    const-string v28, "^ PLAYERCOMPARESCOPEDLOADER: Could not find current visitor in result."

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 161
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 162
    .restart local v13    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .restart local v14    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    goto/16 :goto_1

    .line 204
    .restart local v5    # "cTrophies":Luk/co/alt236/easycursor/EasyCursor;
    .restart local v15    # "player1Name":Ljava/lang/String;
    .restart local v16    # "player2Name":Ljava/lang/String;
    :cond_6
    invoke-static {v5}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 205
    invoke-static/range {v17 .. v17}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;->sortList(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 207
    .end local v5    # "cTrophies":Luk/co/alt236/easycursor/EasyCursor;
    :cond_7
    const-string/jumbo v28, "trophies"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntity:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntityId:J

    move-wide/from16 v22, v0

    .line 209
    .restart local v22    # "trophyId":J
    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTrophies()Lcom/genie_connect/android/db/access/DbTrophies;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/DbTrophies;->getThresholdsForTrophy(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 210
    .local v4, "cThresholds":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 212
    .local v19, "thresholdLimits":[I
    const/4 v7, 0x0

    .line 213
    .local v7, "index":I
    :goto_3
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v28

    if-nez v28, :cond_8

    .line 214
    const-string/jumbo v28, "thresholdValue"

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;)I

    move-result v28

    aput v28, v19, v7

    .line 215
    add-int/lit8 v7, v7, 0x1

    .line 216
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_3

    .line 219
    :cond_8
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v13}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getTrophyScore(JLcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)J

    move-result-wide v24

    .line 220
    .local v24, "trophyScore1":J
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getTrophyScore(JLcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)J

    move-result-wide v26

    .line 221
    .local v26, "trophyScore2":J
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->calculateThresholdSpecificPoints([IJ)[I

    move-result-object v20

    .line 222
    .local v20, "thresholdScores1":[I
    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->calculateThresholdSpecificPoints([IJ)[I

    move-result-object v21

    .line 224
    .local v21, "thresholdScores2":[I
    const/4 v7, 0x0

    .line 225
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 226
    :goto_4
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v28

    if-nez v28, :cond_9

    .line 227
    new-instance v18, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntity:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)V

    .line 229
    .restart local v18    # "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    const-string v28, "name"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v4, v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRowTitle(Ljava/lang/String;)V

    .line 230
    const-string v28, "icon"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v4, v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRowImage(Ljava/lang/String;)V

    .line 231
    const-string v28, "colour"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v4, v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRowImageColour(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerName(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v28

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerId(J)V

    .line 235
    const-string v28, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftDescription(Ljava/lang/String;)V

    .line 236
    aget v28, v20, v7

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftProgressValue(J)V

    .line 237
    aget v28, v19, v7

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftMaxValue(J)V

    .line 238
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerGameObject(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V

    .line 240
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerName(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v14}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v28

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerId(J)V

    .line 242
    const-string v28, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightDescription(Ljava/lang/String;)V

    .line 243
    aget v28, v21, v7

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightProgressValue(J)V

    .line 244
    aget v28, v19, v7

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightMaxValue(J)V

    .line 245
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerGameObject(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V

    .line 247
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v7, v7, 0x1

    .line 250
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto/16 :goto_4

    .line 253
    .end local v18    # "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    :cond_9
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method

.method private static getTrophyScore(JLcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)J
    .locals 4
    .param p0, "trophyId"    # J
    .param p2, "pg"    # Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .prologue
    .line 377
    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getPlayerTrophies()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;

    .line 378
    .local v1, "pt":Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->getTrophyId()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 379
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->getTotalTrophyPoints()I

    move-result v2

    int-to-long v2, v2

    .line 383
    .end local v1    # "pt":Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getVisitorId()J
    .locals 4

    .prologue
    .line 265
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 266
    .local v0, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-nez v0, :cond_0

    .line 267
    const-wide/16 v2, 0x0

    .line 269
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    const/4 v11, 0x0

    .line 279
    .local v11, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    iget-boolean v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPreferCache:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->cacheRead()Ljava/util/ArrayList;

    move-result-object v11

    .line 281
    if-eqz v11, :cond_0

    .line 282
    invoke-direct {p0, v11}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->convertData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->cacheRead()Ljava/util/ArrayList;

    move-result-object v11

    .line 289
    if-eqz v11, :cond_1

    .line 290
    invoke-direct {p0, v11}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->convertData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 296
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntity:Ljava/lang/String;

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntityId:J

    iget-wide v4, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPlayerId1:J

    iget-wide v6, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPlayerId2:J

    invoke-virtual/range {v0 .. v7}, Lcom/genie_connect/android/net/providers/NetworkGamification;->getComparison(Ljava/lang/String;JJJ)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v10

    .line 298
    .local v10, "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    .line 301
    .local v9, "model":Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-direct {p0, v9}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->cacheWrite(Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;)V

    .line 303
    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;->getData()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v12, v11

    .line 307
    .end local v9    # "model":Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;
    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .local v12, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    :goto_1
    if-nez v12, :cond_3

    .line 308
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    .end local v12    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .restart local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    :goto_2
    :try_start_2
    invoke-direct {p0, v11}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->convertData(Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 312
    .end local v10    # "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :catch_0
    move-exception v8

    .line 313
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ PLAYERCOMPARELOADER: Exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 312
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .restart local v10    # "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .restart local v12    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .restart local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    goto :goto_3

    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .restart local v12    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    :cond_3
    move-object v11, v12

    .end local v12    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .restart local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    goto :goto_2

    :cond_4
    move-object v12, v11

    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .restart local v12    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    goto :goto_1
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->cancelLoad()Z

    .line 322
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerComparisonScopedLoader [mEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mEntityId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreferCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPreferCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlayerId1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPlayerId1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlayerId2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonScopedLoader;->mPlayerId2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
