.class public Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;
.super Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
.source "GridNearAtomicCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private rmvQueue:Lorg/apache/ignite/internal/util/GridCircularBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridCircularBuffer",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 72
    const-string v1, "IGNITE_ATOMIC_CACHE_DELETE_HISTORY_SIZE"

    const v2, 0xf4240

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, "size":I
    new-instance v1, Lorg/apache/ignite/internal/util/GridCircularBuffer;

    div-int/lit8 v2, v0, 0xa

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->ceilPow2(I)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridCircularBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->rmvQueue:Lorg/apache/ignite/internal/util/GridCircularBuffer;

    .line 75
    return-void
.end method

.method private processNearAtomicUpdateResponse(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;[BJJLjava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 33
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "valBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "ttl"    # J
    .param p7, "expireTime"    # J
    .param p9, "nodeId"    # Ljava/util/UUID;
    .param p10, "subjId"    # Ljava/util/UUID;
    .param p11, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 210
    .local v5, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 213
    .local v19, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    .line 215
    if-nez p3, :cond_1

    if-eqz p4, :cond_4

    :cond_1
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 217
    .local v9, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v20

    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p9

    move-object/from16 v8, p9

    move-object/from16 v10, p3

    move-wide/from16 v22, p5

    move-wide/from16 v24, p7

    move-object/from16 v29, p10

    move-object/from16 v30, p11

    invoke-interface/range {v5 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerUpdate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    move-result-object v31

    .line 242
    .local v31, "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 243
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :cond_2
    if-eqz v5, :cond_3

    .line 255
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v19    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v31    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    :cond_3
    :goto_2
    return-void

    .line 215
    .restart local v19    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_4
    :try_start_3
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v4

    .line 248
    .local v4, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 249
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry while updating near cache value (will retry): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    :cond_5
    const/4 v5, 0x0

    .line 254
    if-eqz v5, :cond_0

    .line 255
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_0

    .line 259
    .end local v4    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v19    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 254
    .restart local v19    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_6

    .line 255
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_6
    throw v6
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    return-object v0
.end method

.method public dht(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .line 93
    return-void
.end method

.method protected getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 12
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "forcePrimary"    # Z
    .param p3, "skipTx"    # Z
    .param p4, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "taskName"    # Ljava/lang/String;
    .param p7, "deserializePortable"    # Z
    .param p8, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;ZZ",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 368
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 370
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 380
    :goto_0
    return-object v1

    .line 373
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->keyCheck:Z

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 376
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v11

    .line 378
    .local v11, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object p5

    .line 380
    const/4 v2, 0x0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz p8, :cond_2

    const/4 v9, 0x0

    :goto_1
    move-object v1, p0

    move v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->loadAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLjavax/cache/expiry/ExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public varargs invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public varargs invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public localRemoveAll(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "filter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->localRemoveAll(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public localRemoveAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->localRemoveAll()V

    .line 640
    return-void
.end method

.method protected lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "isInvalidate"    # Z
    .param p6, "isRead"    # Z
    .param p7, "retval"    # Z
    .param p8, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "accessTtl"    # J
    .param p11, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;J",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "ZZZ",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 5
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 680
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNear()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 683
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->rmvQueue:Lorg/apache/ignite/internal/util/GridCircularBuffer;

    new-instance v3, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridCircularBuffer;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 685
    .local v0, "evicted":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    if-eqz v0, :cond_1

    .line 686
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->removeVersionedEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v0    # "evicted":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_1
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v1

    .line 689
    .local v1, "ignore":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enqueue deleted entry [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 692
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public processDhtAtomicUpdateRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;)V
    .locals 36
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;
    .param p3, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    .line 276
    .local v4, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 278
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->keys()Ljava/util/Collection;

    move-result-object v2

    .line 280
    .local v2, "backupKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v5

    if-eqz v5, :cond_3

    const/16 v26, 0x1

    .line 282
    .local v26, "intercept":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->taskNameHash()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v28

    .line 284
    .local v28, "taskName":Ljava/lang/String;
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearSize()I

    move-result v5

    move/from16 v0, v31

    if-ge v0, v5, :cond_b

    .line 285
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearKey(I)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v33

    .line 290
    .local v33, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_1
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 292
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v3, :cond_4

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;->addNearEvicted(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 284
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_2
    :goto_3
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 280
    .end local v26    # "intercept":Z
    .end local v28    # "taskName":Ljava/lang/String;
    .end local v31    # "i":I
    .end local v33    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_3
    const/16 v26, 0x0

    goto :goto_0

    .line 298
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v26    # "intercept":Z
    .restart local v28    # "taskName":Ljava/lang/String;
    .restart local v31    # "i":I
    .restart local v33    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_4
    move-object/from16 v0, v33

    invoke-static {v2, v0}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 299
    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 344
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v32

    .line 345
    .local v32, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 346
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry while updating near value (will retry): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 350
    .end local v32    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v29

    .line 351
    .local v29, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update near cache key: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;->addFailedKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 305
    .end local v29    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_5
    :try_start_2
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearValue(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v35

    .line 306
    .local v35, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearEntryProcessor(I)Ljavax/cache/processor/EntryProcessor;

    move-result-object v30

    .line 308
    .local v30, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v30, :cond_6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 311
    .local v7, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearTtl(I)J

    move-result-wide v20

    .line 312
    .local v20, "ttl":J
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nearExpireTime(I)J

    move-result-wide v22

    .line 314
    .local v22, "expireTime":J
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v7, v5, :cond_8

    move-object/from16 v8, v30

    :goto_5
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v7, v5, :cond_9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArguments()[Ljava/lang/Object;

    move-result-object v9

    :goto_6
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups()Z

    move-result v5

    if-nez v5, :cond_a

    const/16 v16, 0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v17

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v18

    sget-object v19, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v27

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-interface/range {v3 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerUpdate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    move-result-object v34

    .line 339
    .local v34, "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 340
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto/16 :goto_3

    .line 308
    .end local v7    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v20    # "ttl":J
    .end local v22    # "expireTime":J
    .end local v34    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    :cond_6
    if-eqz v35, :cond_7

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_4

    :cond_7
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .restart local v7    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v20    # "ttl":J
    .restart local v22    # "expireTime":J
    :cond_8
    move-object/from16 v8, v35

    .line 314
    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    :cond_a
    const/16 v16, 0x0

    goto :goto_7

    .line 354
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v7    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v20    # "ttl":J
    .end local v22    # "expireTime":J
    .end local v30    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v33    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v35    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_b
    return-void
.end method

.method public processNearAtomicUpdateResponse(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V
    .locals 21
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->failedKeys()Ljava/util/Collection;

    move-result-object v16

    .line 114
    .local v16, "failed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearValuesIndexes()Ljava/util/List;

    move-result-object v19

    .line 115
    .local v19, "nearValsIdxs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->skippedIndexes()Ljava/util/List;

    move-result-object v20

    .line 117
    .local v20, "skipped":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->updateVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    .line 119
    .local v4, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v4, :cond_0

    .line 120
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    .line 122
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to find version [req="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ", res="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v12, 0x5d

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 124
    :cond_1
    const/16 v18, 0x0

    .line 126
    .local v18, "nearValIdx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->taskNameHash()I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v14

    .line 128
    .local v14, "taskName":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_9

    .line 129
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    :cond_2
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v3

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 134
    .local v5, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v12

    invoke-virtual {v3, v7, v5, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v15

    .line 140
    .local v15, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v15, :cond_2

    invoke-interface {v15, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_1

    .line 146
    .end local v15    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_4
    const/4 v6, 0x0

    .line 148
    .local v6, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 149
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearValue(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    .line 151
    add-int/lit8 v18, v18, 0x1

    .line 160
    :cond_5
    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearTtl(I)J

    move-result-wide v8

    .line 161
    .local v8, "ttl":J
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearExpireTime(I)J

    move-result-wide v10

    .line 163
    .local v10, "expireTime":J
    const-wide/16 v12, -0x1

    cmp-long v3, v8, v12

    if-eqz v3, :cond_6

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-nez v3, :cond_6

    .line 164
    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v10

    .line 167
    :cond_6
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v13

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v14}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->processNearAtomicUpdateResponse(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;[BJJLjava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to update key in near cache: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addFailedKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 154
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v8    # "ttl":J
    .end local v10    # "expireTime":J
    :cond_7
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v7, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 156
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v3, v7, :cond_5

    .line 157
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    goto :goto_2

    .line 181
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v6    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_9
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 8
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 514
    return-void
.end method

.method public putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putAllConflict(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putAllConflict(Ljava/util/Map;)V

    .line 525
    return-void
.end method

.method public putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 8
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 1
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public varargs putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 619
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeAll()V

    .line 630
    return-void
.end method

.method public varargs removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 594
    return-void
.end method

.method public removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAllConflict(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeAllConflict(Ljava/util/Map;)V

    .line 651
    return-void
.end method

.method public removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "drMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v0

    return-object v0
.end method

.method public varargs removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v0

    return v0
.end method

.method public removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v0

    return-object v0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->replacex(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->start()V

    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 86
    return-void
.end method

.method public varargs unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->dht:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 676
    return-void
.end method
