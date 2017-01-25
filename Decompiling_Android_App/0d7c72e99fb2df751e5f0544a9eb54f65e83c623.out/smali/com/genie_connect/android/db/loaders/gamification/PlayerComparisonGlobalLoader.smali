.class public Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "PlayerComparisonGlobalLoader.java"


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

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mCacheGroup:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mGson:Lcom/google/gson/Gson;

    .line 84
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntity:Ljava/lang/String;

    .line 85
    iput-wide p5, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntityId:J

    .line 86
    iput-wide p2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mNamespace:J

    .line 87
    iput-boolean p11, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPreferCache:Z

    .line 88
    iput-wide p7, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPlayerId1:J

    .line 89
    iput-wide p9, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPlayerId2:J

    .line 90
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkGamification;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkGamification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

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
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, "_entity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntityId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "_pOne"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPlayerId1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, "_pTwo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPlayerId2:J

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
            "Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v6

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mCacheGroup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->cacheGetKey()Ljava/lang/String;

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
    .local v5, "model":Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;
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
    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mGson:Lcom/google/gson/Gson;

    const-class v7, Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;

    invoke-virtual {v6, v4, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 128
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;->getData()Ljava/util/ArrayList;

    move-result-object v6

    .line 133
    :goto_1
    return-object v6

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ GLOBALPLAYERCOMPARELOADER: Error loading cached response - "

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

    .line 125
    invoke-static {v3}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v3}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .line 133
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 125
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 122
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method private cacheWrite(Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;)V
    .locals 4
    .param p1, "model"    # Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mCacheGroup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    return-void
.end method

.method private static calculateScoreForGame(Lcom/genie_connect/android/db/access/GenieConnectDatabase;JLjava/util/List;)J
    .locals 9
    .param p0, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p1, "gameId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/db/access/GenieConnectDatabase;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 242
    .local p3, "trophies":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v0

    .line 244
    .local v0, "gameStore":Lcom/genie_connect/android/db/access/GameStore;
    const-wide/16 v4, 0x0

    .line 245
    .local v4, "score":J
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;

    .line 246
    .local v2, "pt":Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->getTrophyId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, p1, p2}, Lcom/genie_connect/android/db/access/GameStore;->isTrophyOfGame(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;->getTotalTrophyPoints()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    goto :goto_0

    .line 251
    .end local v2    # "pt":Lcom/genie_connect/android/net/container/gson/objects/PlayerTrophyGsonModel;
    :cond_1
    return-wide v4
.end method

.method private convertData(Ljava/util/List;)Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v19, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    .line 144
    .local v5, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-object v19

    .line 146
    :cond_0
    const-string v23, "apps"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntity:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 147
    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getGames()Lcom/genie_connect/android/db/access/DbGames;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/genie_connect/android/db/access/DbGames;->getAll()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 149
    .local v4, "c":Luk/co/alt236/easycursor/EasyCursor;
    :goto_1
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v23

    if-nez v23, :cond_6

    .line 150
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 151
    .local v8, "gameId":J
    const-string v23, "isVisible"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v4, v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 152
    .local v12, "isVisible":Z
    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 153
    .local v16, "name":Ljava/lang/String;
    const-string/jumbo v23, "thumbUrl"

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, "iconUrl":Ljava/lang/String;
    const-string v23, "featured"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v4, v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 156
    .local v11, "isFeatured":Z
    if-eqz v12, :cond_1

    .line 157
    new-instance v20, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;

    sget-object v23, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v8, v9}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;-><init>(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)V

    .line 158
    .local v20, "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;->getAppPlayerCompareItemForGame(Ljava/util/List;J)Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;

    move-result-object v13

    .line 159
    .local v13, "item":Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRowTitle(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRowImage(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setFeatured(Z)V

    .line 163
    if-nez v13, :cond_2

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v23

    sget v24, Lcom/eventgenie/android/R$string;->overall_score_formatter:I

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "desc1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v23

    sget v24, Lcom/eventgenie/android/R$string;->overall_score_formatter:I

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "desc2":Ljava/lang/String;
    const-string v23, "** BLANK **"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerName(Ljava/lang/String;)V

    .line 168
    const-wide/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerId(J)V

    .line 169
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftDescription(Ljava/lang/String;)V

    .line 170
    const-wide/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftProgressValue(J)V

    .line 171
    const-wide/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftMaxValue(J)V

    .line 173
    const-string v23, "** BLANK **"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerName(Ljava/lang/String;)V

    .line 174
    const-wide/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerId(J)V

    .line 175
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightDescription(Ljava/lang/String;)V

    .line 176
    const-wide/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightProgressValue(J)V

    .line 177
    const-wide/16 v24, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightMaxValue(J)V

    .line 228
    :goto_2
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v6    # "desc1":Ljava/lang/String;
    .end local v7    # "desc2":Ljava/lang/String;
    .end local v13    # "item":Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;
    .end local v20    # "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    :cond_1
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto/16 :goto_1

    .line 179
    .restart local v13    # "item":Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;
    .restart local v20    # "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getVisitorId()J

    move-result-wide v14

    .line 183
    .local v14, "myVisitorId":J
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-virtual/range {v23 .. v23}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v24

    cmp-long v23, v24, v14

    if-nez v23, :cond_3

    .line 184
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 185
    .local v17, "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 205
    .local v18, "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v21

    .line 206
    .local v21, "visitor1":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v22

    .line 208
    .local v22, "visitor2":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v23

    sget v24, Lcom/eventgenie/android/R$string;->overall_score_formatter:I

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getTotalGamePoints()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .restart local v6    # "desc1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v23

    sget v24, Lcom/eventgenie/android/R$string;->overall_score_formatter:I

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getTotalGamePoints()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 215
    .restart local v7    # "desc2":Ljava/lang/String;
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerName(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {v21 .. v21}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerId(J)V

    .line 217
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftDescription(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {v17 .. v17}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getPlayerTrophies()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v5, v8, v9, v0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->calculateScoreForGame(Lcom/genie_connect/android/db/access/GenieConnectDatabase;JLjava/util/List;)J

    move-result-wide v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightProgressValue(J)V

    .line 219
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setLeftPlayerGameObject(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V

    .line 221
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerName(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {v22 .. v22}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerId(J)V

    .line 223
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightDescription(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {v18 .. v18}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getPlayerTrophies()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v5, v8, v9, v0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->calculateScoreForGame(Lcom/genie_connect/android/db/access/GenieConnectDatabase;JLjava/util/List;)J

    move-result-wide v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightProgressValue(J)V

    .line 225
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;->setRightPlayerGameObject(Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;)V

    goto/16 :goto_2

    .line 186
    .end local v6    # "desc1":Ljava/lang/String;
    .end local v7    # "desc2":Ljava/lang/String;
    .end local v17    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v18    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v21    # "visitor1":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .end local v22    # "visitor2":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_3
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-virtual/range {v23 .. v23}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v24

    cmp-long v23, v24, v14

    if-nez v23, :cond_4

    .line 187
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 188
    .restart local v17    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .restart local v18    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    goto/16 :goto_3

    .line 190
    .end local v17    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v18    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    :cond_4
    const-string v23, "^ PLAYERCOMPAREGLOBALLOADER: Could not find current visitor in result."

    invoke-static/range {v23 .. v23}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    invoke-virtual/range {v23 .. v23}, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;->getVisitor()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_5

    .line 196
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 197
    .restart local v17    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .restart local v18    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    goto/16 :goto_3

    .line 199
    .end local v17    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v18    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    :cond_5
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .line 200
    .restart local v17    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;->getComparison()Ljava/util/ArrayList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;

    .restart local v18    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    goto/16 :goto_3

    .line 234
    .end local v8    # "gameId":J
    .end local v10    # "iconUrl":Ljava/lang/String;
    .end local v11    # "isFeatured":Z
    .end local v12    # "isVisible":Z
    .end local v13    # "item":Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;
    .end local v14    # "myVisitorId":J
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "pg1":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v18    # "pg2":Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;
    .end local v20    # "row":Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonRow;
    :cond_6
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 237
    .end local v4    # "c":Luk/co/alt236/easycursor/EasyCursor;
    :cond_7
    invoke-static/range {v19 .. v19}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;->sortList(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0
.end method

.method private getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method

.method private getVisitorId()J
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    .line 262
    .local v0, "creds":Lcom/genie_connect/android/net/container/LoginCredentials;
    if-nez v0, :cond_0

    .line 263
    const-wide/16 v2, 0x0

    .line 265
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUserId()J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->loadInBackground()Ljava/util/List;

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
    .line 271
    const/4 v11, 0x0

    .line 274
    .local v11, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    iget-boolean v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPreferCache:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->cacheRead()Ljava/util/ArrayList;

    move-result-object v11

    .line 276
    if-eqz v11, :cond_0

    .line 277
    invoke-direct {p0, v11}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->convertData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->cacheRead()Ljava/util/ArrayList;

    move-result-object v11

    .line 284
    if-eqz v11, :cond_1

    .line 285
    invoke-direct {p0, v11}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->convertData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 291
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntity:Ljava/lang/String;

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntityId:J

    iget-wide v4, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPlayerId1:J

    iget-wide v6, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPlayerId2:J

    invoke-virtual/range {v0 .. v7}, Lcom/genie_connect/android/net/providers/NetworkGamification;->getComparison(Ljava/lang/String;JJJ)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v10

    .line 293
    .local v10, "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;

    .line 296
    .local v9, "model":Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    invoke-direct {p0, v9}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->cacheWrite(Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;)V

    .line 298
    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;->getData()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v12, v11

    .line 302
    .end local v9    # "model":Lcom/genie_connect/android/net/container/gson/rpc/AppPlayerComparisonRpcModel;
    .end local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    .local v12, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    :goto_1
    if-nez v12, :cond_3

    .line 303
    :try_start_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    .end local v12    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    .restart local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    :goto_2
    :try_start_2
    invoke-direct {p0, v11}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->convertData(Ljava/util/List;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 307
    .end local v10    # "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :catch_0
    move-exception v8

    .line 308
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ GLOBALPLAYERCOMPARELOADER: Exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 307
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    .restart local v10    # "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .restart local v12    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    .restart local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    goto :goto_3

    .end local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    .restart local v12    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    :cond_3
    move-object v11, v12

    .end local v12    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    .restart local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    goto :goto_2

    :cond_4
    move-object v12, v11

    .end local v11    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    .restart local v12    # "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/AppPlayerComparisonGsonModel;>;"
    goto :goto_1
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->cancelLoad()Z

    .line 317
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerComparisonScopedLoader [mEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mEntityId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNamespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreferCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPreferCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlayerId1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPlayerId1:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPlayerId2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/PlayerComparisonGlobalLoader;->mPlayerId2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
