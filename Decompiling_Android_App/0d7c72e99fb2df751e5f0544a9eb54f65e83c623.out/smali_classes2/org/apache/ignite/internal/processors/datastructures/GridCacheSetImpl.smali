.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;
.super Ljava/util/AbstractCollection;
.source "GridCacheSetImpl.java"

# interfaces
.implements Lorg/apache/ignite/IgniteSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;,
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$SumReducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TT;>;",
        "Lorg/apache/ignite/IgniteSet",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x64


# instance fields
.field private final cache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final collocated:Z

.field private final ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final hdrPart:I

.field private final id:Lorg/apache/ignite/lang/IgniteUuid;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final name:Ljava/lang/String;

.field private volatile rmvd:Z


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 78
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->name:Ljava/lang/String;

    .line 79
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 80
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeader;->collocated()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->collocated:Z

    .line 82
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    .line 84
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 86
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;

    invoke-direct {v1, p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetHeaderKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->hdrPart:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->cache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    return-object v0
.end method

.method private checkRemoved()V
    .locals 3

    .prologue
    .line 463
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->rmvd:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set has been removed from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    return-void
.end method

.method private dataNodes(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 427
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 443
    :cond_1
    return-object v0

    .line 431
    :cond_2
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->collocated:Z

    if-eqz v2, :cond_5

    .line 432
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->hdrPart:I

    invoke-virtual {v2, v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v1

    .line 434
    .local v1, "nodes0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 440
    .end local v1    # "nodes0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local v0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to get set data, all cache nodes left grid."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 434
    .end local v0    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v1    # "nodes0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_3
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 438
    .end local v1    # "nodes0":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v2, p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    .restart local v0    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    goto :goto_1
.end method

.method private itemKey(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 495
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->collocated:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$CollocatedItemKey;-><init>(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private iterator0()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SET:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->collocated:Z

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    .line 350
    .local v0, "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->dataNodes(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v11

    .line 352
    .local v11, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    invoke-interface {v1, v11}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forNodes(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    .line 354
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v9

    .line 356
    .local v9, "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TT;*>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->itHolder()Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)V

    invoke-virtual {v1, v9, v2}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->iterator(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;)Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;

    move-result-object v10

    .line 367
    .local v10, "it":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->rmvd:Z

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->itHolder()Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->removeIterator(Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;)V

    .line 370
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->checkRemoved()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    return-object v10

    .line 375
    .end local v0    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .end local v9    # "fut":Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture<Ljava/util/Map$Entry<TT;*>;>;"
    .end local v10    # "it":Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder$WeakQueryFutureIterator;
    .end local v11    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_0
    move-exception v8

    .line 376
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method private onAccess()V
    .locals 1

    .prologue
    .line 471
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->itHolder()Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->checkWeakQueue()V

    .line 473
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->checkRemoved()V

    .line 474
    return-void
.end method

.method private retry(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    .local p1, "call":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->retry(Lorg/apache/ignite/IgniteLogger;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method private retryPutAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    .local p1, "keys":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$6;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retry(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 417
    return-void
.end method

.method private retryRemoveAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$5;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retry(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 404
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 164
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->itemKey(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    move-result-object v0

    .line 166
    .local v0, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$2;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retry(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    const/16 v6, 0x64

    .line 198
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "add":Z
    const/4 v1, 0x0

    .line 204
    .local v1, "addKeys":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 205
    .local v3, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_2

    .line 206
    if-nez v1, :cond_1

    .line 207
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 209
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->itemKey(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 212
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryPutAll(Ljava/util/Map;)V

    .line 214
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0

    .line 221
    .end local v3    # "obj":Ljava/lang/Object;, "TT;"
    :cond_3
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 222
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryPutAll(Ljava/util/Map;)V

    .line 224
    :cond_4
    return v0
.end method

.method public clear()V
    .locals 10

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    const/16 v8, 0x64

    .line 299
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 301
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->iterator0()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<TT;>;"
    const/4 v7, 0x0

    .line 302
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0x64

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .local v3, "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 305
    .local v4, "val":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->itemKey(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 308
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryRemoveAll(Ljava/util/Collection;)V

    .line 310
    invoke-interface {v3}, Ljava/util/Collection;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 301
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    .end local v4    # "val":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v6

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_1
    if-eqz v2, :cond_1

    if-eqz v7, :cond_6

    :try_start_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    :try_start_4
    throw v6
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 318
    .end local v2    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<TT;>;"
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v6

    throw v6

    .line 314
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<TT;>;"
    .restart local v3    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :cond_2
    :try_start_5
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 315
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryRemoveAll(Ljava/util/Collection;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 316
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v7, :cond_5

    :try_start_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 321
    :cond_4
    :goto_3
    return-void

    .line 316
    :catch_2
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    goto :goto_3

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :catch_3
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public close()V
    .locals 4

    .prologue
    .line 333
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->rmvd:Z

    if-eqz v1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeSet(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public collocated()Z
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->collocated:Z

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 151
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->itemKey(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    move-result-object v0

    .line 153
    .local v0, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$1;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retry(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 189
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    const/4 v2, 0x0

    .line 193
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1

    .prologue
    .line 487
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 480
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 142
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setData(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    move-result-object v0

    .line 144
    .local v0, "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 327
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->iterator0()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 175
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 177
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->itemKey(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    move-result-object v0

    .line 179
    .local v0, "key":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$3;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retry(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/16 v5, 0x64

    .line 229
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "rmv":Z
    const/4 v3, 0x0

    .line 235
    .local v3, "rmvKeys":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 236
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 237
    if-nez v3, :cond_1

    .line 238
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v3

    .line 240
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->itemKey(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 243
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryRemoveAll(Ljava/util/Collection;)V

    .line 245
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    goto :goto_0

    .line 252
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_3
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 253
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryRemoveAll(Ljava/util/Collection;)V

    .line 255
    :cond_4
    return v2
.end method

.method removed(Z)V
    .locals 1
    .param p1, "rmvd"    # Z

    .prologue
    .line 450
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->rmvd:Z

    if-eqz v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->rmvd:Z

    .line 455
    if-eqz p1, :cond_0

    .line 456
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->itHolder()Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheWeakQueryIteratorsHolder;->clearQueries()V

    goto :goto_0
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->rmvd:Z

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/16 v9, 0x64

    .line 261
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 263
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->iterator0()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .local v2, "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<TT;>;"
    const/4 v8, 0x0

    .line 264
    const/4 v3, 0x0

    .line 266
    .local v3, "rmv":Z
    const/4 v4, 0x0

    .line 268
    .local v4, "rmvKeys":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :try_start_1
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 269
    .local v5, "val":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 270
    const/4 v3, 0x1

    .line 272
    if-nez v4, :cond_1

    .line 273
    const/16 v7, 0x64

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v4

    .line 275
    :cond_1
    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->itemKey(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 278
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryRemoveAll(Ljava/util/Collection;)V

    .line 280
    invoke-interface {v4}, Ljava/util/Set;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 263
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "val":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v7

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :catchall_0
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v8, :cond_7

    :try_start_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    :try_start_4
    throw v7
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 291
    .end local v2    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<TT;>;"
    .end local v3    # "rmv":Z
    .end local v4    # "rmvKeys":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :catch_1
    move-exception v0

    .line 292
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v7

    throw v7

    .line 285
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<TT;>;"
    .restart local v3    # "rmv":Z
    .restart local v4    # "rmvKeys":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :cond_3
    :try_start_5
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 286
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->retryRemoveAll(Ljava/util/Collection;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 289
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v8, :cond_6

    :try_start_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_3
    return v3

    :catch_2
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    goto :goto_3

    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-interface {v2}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v7

    goto :goto_1
.end method

.method public size()I
    .locals 15

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    const/4 v1, 0x0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->onAccess()V

    .line 110
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->setData(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    move-result-object v12

    .line 113
    .local v12, "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->size()I

    move-result v1

    :cond_1
    move v13, v1

    .line 130
    .end local v12    # "set":Lorg/apache/ignite/internal/util/GridConcurrentHashSet;, "Lorg/apache/ignite/internal/util/GridConcurrentHashSet<Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;>;"
    :cond_2
    return v13

    .line 116
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SET:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->id:Lorg/apache/ignite/lang/IgniteUuid;

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->collocated:Z

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V

    .line 119
    .local v0, "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->dataNodes(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v11

    .line 121
    .local v11, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    invoke-interface {v1, v11}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forNodes(Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;

    .line 123
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$SumReducer;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$SumReducer;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;->execute(Lorg/apache/ignite/lang/IgniteReducer;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 125
    .local v8, "col":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 127
    .local v13, "sum":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 128
    .local v14, "val":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v13, v1

    goto :goto_0

    .line 132
    .end local v0    # "qry":Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .end local v8    # "col":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v13    # "sum":I
    .end local v14    # "val":Ljava/lang/Integer;
    :catch_0
    move-exception v9

    .line 133
    .local v9, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
