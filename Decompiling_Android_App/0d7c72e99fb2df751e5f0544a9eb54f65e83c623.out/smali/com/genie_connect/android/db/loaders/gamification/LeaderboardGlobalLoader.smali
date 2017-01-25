.class public Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "LeaderboardGlobalLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCacheGroup:Ljava/lang/String;

.field private final mEntity:Ljava/lang/String;

.field private final mGson:Lcom/google/gson/Gson;

.field private final mId:J

.field private final mNamespace:J

.field private final mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

.field private final mPreferCache:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;JJZ)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "namespace"    # J
    .param p4, "id"    # J
    .param p6, "preferCache"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mCacheGroup:Ljava/lang/String;

    .line 66
    const-string v0, "apps"

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mEntity:Ljava/lang/String;

    .line 67
    iput-wide p4, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mId:J

    .line 68
    iput-wide p2, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mNamespace:J

    .line 69
    iput-boolean p6, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mPreferCache:Z

    .line 70
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mGson:Lcom/google/gson/Gson;

    .line 71
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkGamification;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkGamification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

    .line 72
    return-void
.end method

.method private cacheGetKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "gamification_leaderboard_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "_entity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private cacheRead()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v6

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mCacheGroup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 90
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 91
    .local v3, "isr":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 93
    .local v5, "model":Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
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

    .line 97
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .local v4, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mGson:Lcom/google/gson/Gson;

    const-class v7, Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;

    invoke-virtual {v6, v4, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 105
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;->getData()Ljava/util/ArrayList;

    move-result-object v6

    .line 110
    :goto_1
    return-object v6

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ LEADERBOARDGLOBALLOADER: Error loading cached response - "

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

    .line 102
    invoke-static {v3}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v3}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .line 110
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 102
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 99
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method private cacheWrite(Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;)V
    .locals 4
    .param p1, "model"    # Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mCacheGroup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    return-void
.end method

.method private getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v3, 0x0

    .line 126
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    iget-boolean v5, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mPreferCache:Z

    if-eqz v5, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->cacheRead()Ljava/util/List;

    move-result-object v3

    .line 128
    if-eqz v3, :cond_0

    move-object v5, v3

    .line 166
    :goto_0
    return-object v5

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->cacheRead()Ljava/util/List;

    move-result-object v3

    .line 136
    if-nez v3, :cond_1

    .line 137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 139
    goto :goto_0

    .line 143
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mEntity:Ljava/lang/String;

    iget-wide v8, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->mId:J

    invoke-virtual {v5, v6, v8, v9}, Lcom/genie_connect/android/net/providers/NetworkGamification;->getLeaderboard(Ljava/lang/String;J)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    .line 145
    .local v2, "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 146
    invoke-virtual {v2}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;

    .line 148
    .local v1, "model":Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 149
    invoke-direct {p0, v1}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->cacheWrite(Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;)V

    .line 150
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;->getData()Ljava/util/ArrayList;

    move-result-object v3

    .line 156
    .end local v1    # "model":Lcom/genie_connect/android/net/container/gson/rpc/VisitorArrayRpcModel;
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->cacheRead()Ljava/util/List;

    move-result-object v3

    .line 158
    if-nez v3, :cond_4

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    move-object v3, v4

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    :cond_4
    move-object v5, v3

    .line 163
    goto :goto_0

    .line 153
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LEADERBOARDGLOBALLOADER: Error getting leaderboard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 164
    .end local v2    # "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LEADERBOARDGLOBALLOADER: Exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;->cancelLoad()Z

    .line 174
    return-void
.end method
