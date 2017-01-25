.class public Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "LeaderboardScopedLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
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
.method public constructor <init>(Landroid/app/Activity;JLjava/lang/String;JZ)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "namespace"    # J
    .param p4, "entity"    # Ljava/lang/String;
    .param p5, "id"    # J
    .param p7, "preferCache"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mCacheGroup:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mEntity:Ljava/lang/String;

    .line 66
    iput-wide p5, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mId:J

    .line 67
    iput-wide p2, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mNamespace:J

    .line 68
    iput-boolean p7, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mPreferCache:Z

    .line 69
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mGson:Lcom/google/gson/Gson;

    .line 70
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkGamification;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkGamification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

    .line 71
    return-void
.end method

.method private cacheGetKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "gamification_leaderboard_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mNamespace:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "_entity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
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
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v6

    iget-object v7, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mCacheGroup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 89
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 90
    .local v3, "isr":Ljava/io/InputStreamReader;
    const/4 v5, 0x0

    .line 92
    .local v5, "model":Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
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

    .line 96
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .local v4, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mGson:Lcom/google/gson/Gson;

    const-class v7, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    invoke-virtual {v6, v4, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    invoke-static {v4}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 104
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;->isValid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    invoke-virtual {v5}, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;->getData()Ljava/util/ArrayList;

    move-result-object v6

    .line 109
    :goto_1
    return-object v6

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ LEADERBOARDSCOPEDLOADER: Error loading cached response - "

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

    .line 101
    invoke-static {v3}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v3}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .line 109
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 101
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 98
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
    .line 113
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mCacheGroup:Ljava/lang/String;

    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->cacheGetKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    return-void
.end method

.method private getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->loadInBackground()Ljava/util/List;

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
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 125
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    iget-boolean v5, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mPreferCache:Z

    if-eqz v5, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->cacheRead()Ljava/util/List;

    move-result-object v3

    .line 127
    if-eqz v3, :cond_0

    .line 128
    invoke-static {v3}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;->sanitiseList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 163
    :goto_0
    return-object v5

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->cacheRead()Ljava/util/List;

    move-result-object v3

    .line 136
    if-eqz v3, :cond_4

    .line 137
    invoke-static {v3}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;->sanitiseList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 141
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mNetwork:Lcom/genie_connect/android/net/providers/NetworkGamification;

    iget-object v6, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mEntity:Ljava/lang/String;

    iget-wide v8, p0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->mId:J

    invoke-virtual {v5, v6, v8, v9}, Lcom/genie_connect/android/net/providers/NetworkGamification;->getLeaderboard(Ljava/lang/String;J)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    .line 143
    .local v2, "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    invoke-virtual {v2}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;

    .line 146
    .local v1, "model":Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 147
    invoke-direct {p0, v1}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->cacheWrite(Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;)V

    .line 148
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;->getData()Ljava/util/ArrayList;

    move-result-object v3

    .line 157
    .end local v1    # "model":Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/genie_connect/android/db/loaders/gamification/ComparisonLoaderUtils;->sanitiseList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_0

    .line 150
    .restart local v1    # "model":Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;
    :cond_3
    invoke-direct {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->cacheRead()Ljava/util/List;

    move-result-object v3

    .line 151
    if-nez v3, :cond_2

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    move-object v3, v4

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    goto :goto_1

    .line 158
    .end local v1    # "model":Lcom/genie_connect/android/net/container/gson/rpc/PlayerGameArrayRpcModel;
    .end local v2    # "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ LEADERBOARDSCOPEDLOADER: Exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;->cancelLoad()Z

    .line 169
    return-void
.end method
