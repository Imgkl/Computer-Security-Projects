.class public Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "CacheDataStructuresManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;,
        Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;,
        Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

.field private initFlag:Z

.field private final initLatch:Ljava/util/concurrent/CountDownLatch;

.field private queueHdrView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final queueQryGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private queueQryId:Ljava/util/UUID;

.field private final queuesMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;",
            ">;"
        }
    .end annotation
.end field

.field private setDataMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/util/GridConcurrentHashSet",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private final setsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 79
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    .line 52
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setDataMap:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queueQryGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    .line 71
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 80
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queuesMap:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0, v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queuesMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->blockSet(Lorg/apache/ignite/lang/IgniteUuid;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->removeSetData(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method

.method private blockSet(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 2
    .param p1, "setId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 492
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

    .line 494
    .local v0, "set":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;->blockOnRemove()V

    .line 496
    :cond_0
    return-void
.end method

.method private onSetItemUpdated(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;Z)V
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    .param p2, "rmv"    # Z

    .prologue
    .line 468
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setDataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 470
    .local v1, "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    if-nez v1, :cond_1

    .line 471
    if-eqz p2, :cond_0

    .line 485
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setDataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->setId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    new-instance v1, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .end local v1    # "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    .restart local v1    # "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 477
    .local v0, "old":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    if-eqz v0, :cond_1

    .line 478
    move-object v1, v0

    .line 481
    .end local v0    # "old":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 482
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private removeSetData(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 10
    .param p1, "setId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x64

    .line 364
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v6

    .line 366
    .local v6, "loc":Z
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    .line 368
    .local v1, "aff":Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
    if-nez v6, :cond_0

    .line 369
    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 371
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 374
    :cond_0
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setDataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 376
    .local v7, "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    if-nez v7, :cond_1

    .line 402
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    .line 381
    .local v2, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;
    const/16 v0, 0x64

    .line 383
    .local v0, "BATCH_SIZE":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v5, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    .line 386
    .local v4, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    if-nez v6, :cond_3

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    invoke-virtual {v1, v8, v4, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 389
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 392
    invoke-direct {p0, v2, v5}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->retryRemoveAll(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/util/Collection;)V

    .line 394
    invoke-interface {v5}, Ljava/util/Collection;->clear()V

    goto :goto_1

    .line 398
    .end local v4    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    :cond_4
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 399
    invoke-direct {p0, v2, v5}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->retryRemoveAll(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/util/Collection;)V

    .line 401
    :cond_5
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setDataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private retryPutIfAbsent(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "cache"    # Lorg/apache/ignite/internal/processors/cache/GridCache;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCache;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 508
    .local p3, "val":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->retry(Lorg/apache/ignite/IgniteLogger;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private retryRemoveAll(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/util/Collection;)V
    .locals 2
    .param p1, "cache"    # Lorg/apache/ignite/internal/processors/cache/GridCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCache;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 523
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->retry(Lorg/apache/ignite/IgniteLogger;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 530
    return-void
.end method

.method private set0(Ljava/lang/String;ZZ)Lorg/apache/ignite/IgniteSet;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "collocated"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/ignite/IgniteSet",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 309
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 312
    :try_start_0
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;

    invoke-direct {v2, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 318
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    if-eqz p3, :cond_1

    .line 319
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;

    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-direct {v1, v6, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Z)V

    .line 321
    .local v1, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
    invoke-direct {p0, v0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->retryPutIfAbsent(Lorg/apache/ignite/internal/processors/cache/GridCache;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .local v3, "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
    if-eqz v3, :cond_0

    .line 324
    move-object v1, v3

    .line 329
    .end local v3    # "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 330
    const/4 v5, 0x0

    .line 345
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_1
    return-object v5

    .line 327
    .end local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
    :cond_1
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;

    .restart local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
    goto :goto_0

    .line 332
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

    .line 334
    .local v5, "set":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    if-nez v5, :cond_3

    .line 335
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    new-instance v5, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;

    .end local v5    # "set":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    new-instance v9, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v9, v10, p1, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;)V

    invoke-direct {v5, v8, v9}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)V

    .restart local v5    # "set":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    invoke-interface {v6, v7, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    .local v4, "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    if-eqz v4, :cond_3

    .line 339
    move-object v5, v4

    .line 345
    .end local v4    # "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_1

    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .end local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;
    .end local v5    # "set":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetProxy<TT;>;"
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v6
.end method

.method private waitInitialization()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V

    .line 116
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->initFlag:Z

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "DataStructures manager was not properly initialized."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public onEntryUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)V
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "rmv"    # Z

    .prologue
    .line 251
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "key0":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    .end local v0    # "key0":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->onSetItemUpdated(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;Z)V

    .line 255
    :cond_0
    return-void
.end method

.method protected onKernalStart0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    const-class v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->projection(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queueHdrView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->initFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected onKernalStop0(Z)V
    .locals 4
    .param p1, "cancel"    # Z

    .prologue
    .line 99
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->block()V

    .line 101
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queueQryId:Ljava/util/UUID;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queueQryId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->cancelInternalQuery(Ljava/util/UUID;)V

    .line 104
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queuesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    .line 105
    .local v1, "q":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;->delegate()Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->onKernalStop()V

    goto :goto_0

    .line 106
    .end local v1    # "q":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    :cond_1
    return-void
.end method

.method public onPartitionEvicted(I)V
    .locals 6
    .param p1, "part"    # I

    .prologue
    .line 263
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    .line 265
    .local v0, "aff":Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setDataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 266
    .local v4, "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 268
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    .line 271
    .local v3, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 272
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 275
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    .end local v4    # "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :cond_2
    return-void
.end method

.method public queue(Ljava/lang/String;IZZ)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cap"    # I
    .param p3, "colloc"    # Z
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "IZZ)",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->waitInitialization()V

    .line 138
    if-eqz p4, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 140
    .local v0, "colloc0":Z
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queue0(Ljava/lang/String;IZZ)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    move-result-object v1

    return-object v1

    .line 138
    .end local v0    # "colloc0":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queue0(Ljava/lang/String;IZZ)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cap"    # I
    .param p3, "colloc"    # Z
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "IZZ)",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->enter()V

    .line 161
    :try_start_0
    new-instance v9, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    invoke-direct {v9, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;-><init>(Ljava/lang/String;)V

    .line 165
    .local v9, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;
    if-eqz p4, :cond_3

    .line 166
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V

    .line 168
    .local v0, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queueHdrView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v1, v9, v0}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 170
    .local v10, "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    if-eqz v10, :cond_2

    .line 171
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v1

    if-eq v1, p3, :cond_1

    .line 172
    :cond_0
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create queue, queue with the same name but different configuration already exists [name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v0    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .end local v9    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;
    .end local v10    # "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    throw v1

    .line 175
    .restart local v0    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .restart local v9    # "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;
    .restart local v10    # "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_1
    move-object v0, v10

    .line 181
    .end local v10    # "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 182
    const/4 v11, 0x0

    .line 240
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    :goto_1
    return-object v11

    .line 179
    .end local v0    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queueHdrView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    invoke-interface {v1, v9}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .restart local v0    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    goto :goto_0

    .line 184
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queueQryGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;)V

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate;

    invoke-direct {v4}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$QueueHeaderPredicate;-><init>()V

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const/4 v1, 0x1

    :goto_2
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->executeInternalQuery(Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;ZZ)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queueQryId:Ljava/util/UUID;

    .line 225
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queuesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    .line 227
    .local v11, "queue":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    if-nez v11, :cond_7

    .line 228
    new-instance v11, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;

    .end local v11    # "queue":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->atomic()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, p1, v0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridAtomicCacheQueueImpl;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    :goto_3
    invoke-direct {v11, v2, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;)V

    .line 231
    .restart local v11    # "queue":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->queuesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .local v10, "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    if-eqz v10, :cond_7

    .line 234
    move-object v11, v10

    .line 240
    .end local v10    # "old":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    :cond_7
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gate()Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheGateway;->leave()V

    goto :goto_1

    .line 185
    .end local v11    # "queue":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueProxy;
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 228
    :cond_9
    :try_start_2
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, p1, v0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridTransactionalCacheQueueImpl;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public removeSetData(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 10
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 410
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 412
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v3

    if-nez v3, :cond_4

    .line 414
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 416
    .local v2, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v3, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v1

    .line 419
    .local v1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, p1, v7}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$BlockSetCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v1, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, p1, v2, v7}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$RemoveSetDataCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager$1;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v1, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    .end local v1    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_1
    return-void

    .line 424
    .restart local v1    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lorg/apache/ignite/cluster/ClusterTopologyException;

    aput-object v4, v3, v9

    invoke-virtual {v0, v3}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveSetData job failed, will retry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_2
    throw v0

    .line 441
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v0

    .line 442
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Lorg/apache/ignite/cluster/ClusterTopologyException;

    aput-object v4, v3, v9

    invoke-virtual {v0, v3}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 443
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveSetData job failed, will retry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_3
    throw v0

    .line 457
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->blockSet(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 459
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v3, p1, v4}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->removeSetData(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_1
.end method

.method public set(Ljava/lang/String;ZZ)Lorg/apache/ignite/IgniteSet;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "colloc"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/ignite/IgniteSet",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 290
    if-eqz p3, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 293
    .local v0, "colloc0":Z
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->set0(Ljava/lang/String;ZZ)Lorg/apache/ignite/IgniteSet;

    move-result-object v1

    return-object v1

    .line 290
    .end local v0    # "colloc0":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
    .locals 1
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")",
            "Lorg/apache/ignite/internal/util/GridConcurrentHashSet",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setDataMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    return-object v0
.end method
