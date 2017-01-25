.class public Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;
.super Ljava/lang/Object;
.source "IgniteDrDataStreamerCacheUpdater.java"

# interfaces
.implements Lorg/apache/ignite/stream/StreamReceiver;
.implements Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters$InternalUpdater;


# annotations
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
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receive(Lorg/apache/ignite/IgniteCache;Ljava/util/Collection;)V
    .locals 20
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
    .line 45
    .local p1, "cache0":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .local p2, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;>;"
    :try_start_0
    const-class v3, Lorg/apache/ignite/configuration/CacheConfiguration;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteCache;->getConfiguration(Ljava/lang/Class;)Ljavax/cache/configuration/Configuration;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v10

    .line 47
    .local v10, "cacheName":Ljava/lang/String;
    const-class v3, Lorg/apache/ignite/Ignite;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteCache;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v12

    .line 48
    .local v12, "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    const-class v3, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;

    invoke-interface {v12, v3}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v18

    .line 49
    .local v18, "log":Lorg/apache/ignite/IgniteLogger;
    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    .line 51
    .local v2, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v2    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .end local v10    # "cacheName":Ljava/lang/String;
    .end local v12    # "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    .end local v18    # "log":Lorg/apache/ignite/IgniteLogger;
    :catch_0
    move-exception v13

    .line 87
    .local v13, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v3

    throw v3

    .line 53
    .end local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .restart local v10    # "cacheName":Ljava/lang/String;
    .restart local v12    # "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    .restart local v18    # "log":Lorg/apache/ignite/IgniteLogger;
    :cond_0
    :try_start_1
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running DR put job [nodeId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", cacheName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->awaitStarted()V

    .line 58
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v11

    .line 60
    .local v11, "cacheObjCtx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 61
    .local v15, "entry0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object v0, v15

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;

    move-object v14, v0

    .line 63
    .local v14, "entry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;
    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    invoke-virtual {v14, v11, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 65
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->getKey()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v17

    .line 68
    .local v17, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl()J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 69
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/processors/dr/IgniteDrDataStreamerCacheUpdater;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->expireTime()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_4

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->expireTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 71
    :cond_5
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->getValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 73
    .local v4, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v4, :cond_7

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_6

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->ttl()J

    move-result-wide v6

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->expireTime()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    move-object/from16 v19, v3

    .line 77
    .local v19, "val":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    :goto_1
    if-nez v19, :cond_8

    .line 78
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAllConflict(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 73
    .end local v19    # "val":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    :cond_6
    new-instance v19, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v3}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_1

    :cond_7
    const/16 v19, 0x0

    goto :goto_1

    .line 80
    .restart local v19    # "val":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    :cond_8
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->putAllConflict(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 83
    .end local v4    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v14    # "entry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheRawVersionedEntry;
    .end local v15    # "entry0":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v17    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v19    # "val":Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
    :cond_9
    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DR put job finished [nodeId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", cacheName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :cond_a
    return-void
.end method
