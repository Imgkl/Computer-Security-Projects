.class Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$IsolatedUpdater;
.super Ljava/lang/Object;
.source "DataStreamerImpl.java"

# interfaces
.implements Lorg/apache/ignite/stream/StreamReceiver;
.implements Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$InternalUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsolatedUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/stream/StreamReceiver",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
        ">;",
        "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$InternalUpdater;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$1;

    .prologue
    .line 1369
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl$IsolatedUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Lorg/apache/ignite/IgniteCache;Ljava/util/Collection;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/IgniteCache",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1377
    .local p1, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .local p2, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    move-object/from16 v18, p1

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .line 1379
    .local v18, "proxy":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 1382
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v16

    .line 1384
    .local v16, "internalCache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isNear()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1385
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v16

    .line 1387
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 1389
    .local v2, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v11

    .line 1391
    .local v11, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    .line 1393
    .local v5, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    .local v13, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :try_start_1
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 1397
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 1399
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1401
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_LOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    invoke-interface/range {v3 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->initialValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)Z

    .line 1409
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    invoke-virtual {v4, v3, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1411
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1414
    :catch_1
    move-exception v14

    .line 1415
    .local v14, "ex":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    const-class v4, Lorg/apache/ignite/Ignite;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/apache/ignite/IgniteCache;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v17

    .line 1417
    .local v17, "log":Lorg/apache/ignite/IgniteLogger;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set initial value for cache entry: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v0, v4, v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1422
    .end local v2    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v5    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v11    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v14    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "internalCache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v17    # "log":Lorg/apache/ignite/IgniteLogger;
    :catchall_0
    move-exception v4

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v4

    .restart local v2    # "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v5    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v11    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "internalCache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    .line 1424
    return-void

    .line 1411
    .restart local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method
