.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;
.super Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
.source "GridDhtColocatedCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V
    .locals 0
    .param p2, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->processGetResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->processLockResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .param p3, "x3"    # J
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "x5"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p7, "x6"    # Ljava/util/Collection;
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # J
    .param p12, "x10"    # J
    .param p14, "x11"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 48
    invoke-direct/range {p0 .. p14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->lockAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method private lockAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 28
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "threadId"    # J
    .param p5, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p8, "txRead"    # Z
    .param p9, "retval"    # Z
    .param p10, "timeout"    # J
    .param p12, "accessTtl"    # J
    .param p14, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "J",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZJJ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p7, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/Collection;->size()I

    move-result v10

    .line 702
    .local v10, "cnt":I
    if-nez p2, :cond_6

    .line 703
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v13, p10

    move-object/from16 v15, p2

    move-wide/from16 v16, p3

    move-wide/from16 v18, p12

    move-object/from16 v20, p14

    invoke-direct/range {v5 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;IZZJLorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;JJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 717
    .local v5, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 718
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate future ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 720
    :cond_0
    const/16 v25, 0x0

    .line 722
    .local v25, "timedout":Z
    invoke-interface/range {p7 .. p7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 723
    .local v24, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    if-eqz v25, :cond_3

    .line 754
    .end local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->map()V

    .line 756
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v7, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$6;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    invoke-direct {v6, v7, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 782
    .end local v5    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v25    # "timedout":Z
    :goto_1
    return-object v6

    .line 737
    .restart local v5    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    .local v21, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v25    # "timedout":Z
    :catch_0
    move-exception v23

    .line 738
    .local v23, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 739
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry when adding lock (will retry): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 727
    .end local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v23    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v21

    .line 730
    .restart local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    if-nez v24, :cond_4

    const/4 v6, 0x0

    :goto_2
    :try_start_0
    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->addEntry(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 732
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isDone()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 733
    const/16 v25, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v6, v21

    .line 730
    goto :goto_2

    .line 741
    :catch_1
    move-exception v4

    .line 742
    .local v4, "e":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 743
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got lock request for cancelled lock (will ignore): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 746
    :cond_5
    invoke-virtual {v5, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onError(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;)V

    .line 748
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;

    invoke-direct {v6, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .line 771
    .end local v4    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    .end local v5    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    .end local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v25    # "timedout":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContext(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 774
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Performing colocated lock [tx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", keys="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 776
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicit()Z

    move-result v14

    move-object/from16 v11, p2

    move-object/from16 v12, p1

    move-object/from16 v13, p7

    move/from16 v15, p8

    move-wide/from16 v16, p12

    invoke-virtual/range {v11 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;ZZJ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v26

    .line 782
    .local v26, "txFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;>;"
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$7;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V

    move-object/from16 v0, v26

    invoke-direct {v6, v7, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto/16 :goto_1
.end method

.method private processGetResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .prologue
    .line 803
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    .line 806
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    if-nez v0, :cond_1

    .line 807
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find future for get response [sender="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V

    goto :goto_0
.end method

.method private processLockResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 821
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 822
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 824
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .line 827
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    .line 829
    :cond_2
    return-void
.end method


# virtual methods
.method public entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected entryExSafe(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 230
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    :cond_0
    :goto_0
    return-object v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    goto :goto_0
.end method

.method public entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .locals 9
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "allowDetached"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    const/4 v4, 0x0

    .line 133
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 14
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
    .line 181
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->LOCAL:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    .line 182
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 184
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 211
    :goto_0
    return-object v1

    .line 187
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->keyCheck:Z

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 190
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadLocalTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    .line 192
    .local v13, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->implicit()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    .line 193
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZ)V

    invoke-virtual {p0, v13, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->asyncOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$AsyncOp;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    .line 205
    :cond_2
    if-nez v13, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    .line 207
    .local v6, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v12

    .line 209
    .local v12, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object p5

    .line 211
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p8, :cond_4

    const/4 v10, 0x0

    :goto_2
    move-object v1, p0

    move/from16 v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->loadAsync(Ljava/util/Collection;ZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    .line 205
    .end local v6    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v12    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :cond_3
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    goto :goto_1

    .line 211
    .restart local v6    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v12    # "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v1

    :goto_3
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v10

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->setEntryFactory(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;)V

    .line 97
    return-void
.end method

.method public isColocated()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isLocked(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 160
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->isLockedByThread(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;J)Z

    move-result v1

    return v1
.end method

.method public isLockedByThread(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 167
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->isLockedByThread(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;J)Z

    move-result v1

    return v1
.end method

.method public loadAsync(Ljava/util/Collection;ZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 27
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "readThrough"    # Z
    .param p3, "reload"    # Z
    .param p4, "forcePrimary"    # Z
    .param p5, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p6, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "taskName"    # Ljava/lang/String;
    .param p8, "deserializePortable"    # Z
    .param p9, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZZ",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    :cond_0
    new-instance v7, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 368
    :cond_1
    :goto_0
    return-object v7

    .line 264
    :cond_2
    if-nez p9, :cond_3

    .line 265
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object p9

    .line 268
    :cond_3
    if-nez p3, :cond_f

    if-nez p4, :cond_f

    .line 269
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v24

    .line 271
    .local v24, "locVals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/16 v26, 0x1

    .line 274
    .local v26, "success":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 275
    .local v23, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    const/4 v2, 0x0

    .line 279
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_5
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    .line 282
    :goto_3
    if-eqz v2, :cond_c

    .line 283
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v22

    .line 285
    .local v22, "isNew":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p10, :cond_a

    const/4 v9, 0x1

    :goto_4
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v11, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p9

    invoke-interface/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    .line 299
    .local v6, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v6, :cond_b

    .line 300
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v25

    .line 302
    .local v25, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v22, :cond_6

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 303
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_6
    const/16 v26, 0x0

    .line 331
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v22    # "isNew":Z
    .end local v25    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_5
    if-eqz v2, :cond_7

    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 336
    :cond_7
    :goto_6
    if-nez v26, :cond_e

    .line 342
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v23    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_8
    if-eqz v26, :cond_f

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 345
    new-instance v7, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 279
    .restart local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v23    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    goto :goto_3

    .line 285
    .restart local v22    # "isNew":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 308
    .restart local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, v24

    move-object/from16 v5, v23

    move/from16 v7, p10

    move/from16 v9, p8

    invoke-virtual/range {v3 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 315
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v22    # "isNew":Z
    :catch_0
    move-exception v3

    .line 331
    if-eqz v2, :cond_5

    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_2

    .line 311
    :cond_c
    const/16 v26, 0x0

    goto :goto_5

    .line 318
    :catch_1
    move-exception v21

    .line 331
    .local v21, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    if-eqz v2, :cond_7

    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_6

    .line 322
    .end local v21    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catch_2
    move-exception v21

    .line 323
    .local v21, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    const/16 v26, 0x0

    .line 331
    if-eqz v2, :cond_7

    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_6

    .line 327
    .end local v21    # "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :catch_3
    move-exception v19

    .line 328
    .local v19, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    new-instance v7, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    if-eqz v2, :cond_1

    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_0

    .line 331
    .end local v19    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_d

    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_d
    throw v3

    .line 338
    :cond_e
    if-nez p10, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    goto/16 :goto_1

    .line 349
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v23    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v24    # "locVals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v26    # "success":Z
    :cond_f
    if-eqz p9, :cond_10

    .line 350
    invoke-interface/range {p9 .. p9}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->reset()V

    .line 353
    :cond_10
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v18, p10

    invoke-direct/range {v7 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)V

    .line 366
    .local v7, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->init()V

    goto/16 :goto_0
.end method

.method public lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
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
    .line 387
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    instance-of v1, p4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move-object v3, p4

    .line 389
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .line 391
    .local v3, "txx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object v2, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move-wide v6, p2

    move-wide/from16 v8, p9

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 401
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->map()V

    .line 403
    return-object v0
.end method

.method lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 22
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "threadId"    # J
    .param p5, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p8, "txRead"    # Z
    .param p9, "retval"    # Z
    .param p10, "timeout"    # J
    .param p12, "accessTtl"    # J
    .param p14, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "J",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZJJ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p7, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p7, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 627
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->dhtPreloader()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    move-result-object v3

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v19

    .line 630
    .local v19, "keyFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 633
    :try_start_0
    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 635
    invoke-direct/range {p0 .. p14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->lockAllAsync0(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 652
    :goto_0
    return-object v3

    .line 647
    :catch_0
    move-exception v2

    .line 648
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v3, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 652
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    new-instance v20, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    move-object/from16 v18, p14

    invoke-direct/range {v3 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$5;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    move-object/from16 v3, v20

    goto :goto_0
.end method

.method public bridge synthetic near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v0

    return-object v0
.end method

.method public near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Near cache is not available in colocated mode."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 410
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public peek(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 6
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    const/4 v2, 0x0

    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->NEAR_ONLY:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v4

    invoke-virtual {p0, v3, p1, p2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->peek0(ZLjava/lang/Object;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter validation failed for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeLocks(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;)V
    .locals 27
    .param p1, "threadId"    # J
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p4, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const/4 v11, -0x1

    .line 531
    .local v11, "keyCnt":I
    const/4 v14, 0x0

    .line 533
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    :try_start_0
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 535
    .local v12, "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 536
    .local v9, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v9, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeExplicitLock(JLorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v13

    .line 538
    .local v13, "lock":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v13, :cond_2

    .line 539
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v20

    .line 541
    .local v20, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    if-nez v14, :cond_3

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v4

    .line 544
    .local v4, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v11, v0

    .line 546
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v14

    .line 549
    .end local v4    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v17

    .line 551
    .local v17, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v21

    if-nez v21, :cond_6

    .line 553
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .line 555
    .local v18, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    if-nez v18, :cond_4

    .line 556
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;-><init>(II)V

    .restart local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 561
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v6

    .line 563
    .local v6, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v10

    .line 565
    .local v10, "key0":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 594
    .end local v6    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v10    # "key0":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v12    # "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v13    # "lock":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v17    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    .end local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catch_0
    move-exception v7

    .line 595
    .local v7, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to unlock the lock for keys: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v7    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v6    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v12    # "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v13    # "lock":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v17    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    .restart local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_5
    move-object v10, v9

    .line 563
    goto :goto_2

    .line 568
    .end local v6    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :cond_6
    :try_start_1
    invoke-interface {v12, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 572
    .end local v9    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v13    # "lock":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v17    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v20    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_7
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_8

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->removeLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Iterable;Z)V

    .line 575
    :cond_8
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v5

    .line 579
    .local v5, "committed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rolledbackVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v19

    .line 581
    .local v19, "rolledback":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 582
    .local v15, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/cluster/ClusterNode;

    .line 584
    .local v16, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;

    .line 586
    .local v18, "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->keys()Ljava/util/List;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 587
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->completedVersions(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->start()V

    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$2;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 833
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 26
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

    .prologue
    .line 421
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    const/16 v20, 0x0

    .line 427
    .local v20, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const/4 v11, -0x1

    .line 429
    .local v11, "keyCnt":I
    const/4 v14, 0x0

    .line 431
    .local v14, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v12, "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 434
    .local v9, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    .line 436
    .local v5, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v6

    .line 438
    .local v6, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 493
    .end local v5    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v6    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v9    # "key":Ljava/lang/Object;, "TK;"
    :cond_3
    if-eqz v20, :cond_0

    .line 496
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v12, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->removeLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Iterable;Z)V

    .line 499
    :cond_4
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 500
    .local v15, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/cluster/ClusterNode;

    .line 502
    .local v16, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;

    .line 504
    .local v18, "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;
    sget-boolean v21, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->$assertionsDisabled:Z

    if-nez v21, :cond_f

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v21

    if-eqz v21, :cond_f

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v15    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    .end local v16    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;
    :catch_0
    move-exception v7

    .line 512
    .local v7, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to unlock the lock for keys: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 441
    .end local v7    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v5    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v6    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "key":Ljava/lang/Object;, "TK;"
    .restart local v12    # "locKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->getId()J

    move-result-wide v22

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeExplicitLock(JLorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v13

    .line 444
    .local v13, "lock":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v13, :cond_2

    .line 445
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v19

    .line 447
    .local v19, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-boolean v21, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->$assertionsDisabled:Z

    if-nez v21, :cond_7

    sget-object v21, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v21

    if-gtz v21, :cond_7

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 449
    :cond_7
    if-nez v14, :cond_8

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v4

    .line 452
    .local v4, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v11, v0

    .line 454
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v14

    .line 457
    .end local v4    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_8
    if-nez v20, :cond_9

    .line 458
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v20

    .line 461
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v17

    .line 463
    .local v17, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v21

    if-nez v21, :cond_e

    .line 464
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 465
    new-instance v21, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to unlock (if keys were locked separately, then they need to be unlocked separately): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 468
    :cond_a
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v21

    if-nez v21, :cond_d

    .line 469
    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .line 471
    .local v18, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    if-nez v18, :cond_b

    .line 472
    new-instance v18, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;-><init>(II)V

    .restart local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 477
    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v10

    .line 479
    .local v10, "key0":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 484
    .end local v10    # "key0":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Removed lock (will distribute): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :cond_c
    move-object v10, v5

    .line 477
    goto :goto_3

    .line 482
    .end local v18    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;
    :cond_d
    invoke-interface {v12, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 487
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Current thread still owns lock (or there are no other nodes) [lock="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", curThreadId="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->getId()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x5d

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 506
    .end local v5    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v6    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v9    # "key":Ljava/lang/Object;, "TK;"
    .end local v13    # "lock":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v17    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v19    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v15    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;>;"
    .restart local v16    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .local v18, "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;
    :cond_f
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->keys()Ljava/util/List;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
