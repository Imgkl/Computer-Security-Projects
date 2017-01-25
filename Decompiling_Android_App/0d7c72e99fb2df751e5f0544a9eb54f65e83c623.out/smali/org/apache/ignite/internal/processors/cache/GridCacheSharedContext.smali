.class public Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
.super Ljava/lang/Object;
.source "GridCacheSharedContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ctxMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private depMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private exchMgr:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private ioMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

.field private kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

.field private mgrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private mvccMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

.field private preloadersStartFut:Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile txMetrics:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

.field private txMgr:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

.field private verMgr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)V
    .locals 1
    .param p1, "kernalCtx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "txMgr"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
    .param p3, "verMgr"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;
    .param p4, "mvccMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
    .param p7, "ioMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    .local p5, "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p6, "exchMgr":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mgrs:Ljava/util/List;

    .line 95
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 96
    invoke-direct {p0, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvccMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .line 97
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->verMgr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    .line 98
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txMgr:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .line 99
    invoke-direct {p0, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->depMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    .line 100
    invoke-direct {p0, p6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchMgr:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .line 101
    invoke-direct {p0, p7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->add(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ioMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    .line 103
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txMetrics:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ctxMap:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    return-void
.end method

.method private add(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager",
            "<TK;TV;>;>(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 540
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    .local p1, "mgr":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager;, "TT;"
    if-eqz p1, :cond_0

    .line 541
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mgrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_0
    return-object p1
.end method


# virtual methods
.method public addCacheContext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ctxMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ctxMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 134
    .local v0, "existing":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start cache due to conflicting cache ID (change cache name and restart grid) [cacheName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", conflictingCacheName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v0    # "existing":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ctxMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    return-object v0
.end method

.method public cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 2
    .param p1, "cacheId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ctxMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method public cacheContexts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ctxMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public checkTxFlags(Ljava/util/Collection;)V
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/CacheFlagException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    .local p1, "flags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 460
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    move-result-object v0

    .line 462
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    :cond_0
    return-void

    .line 465
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 467
    :cond_2
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isInvalidate()Z

    move-result v1

    if-nez v1, :cond_3

    .line 468
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;-><init>([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    throw v1

    .line 470
    :cond_3
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->syncCommit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;-><init>([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    throw v1
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 478
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvccMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    .line 480
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mgrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 481
    return-void
.end method

.method public closed(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ctxMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commitTxAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->activeCacheIds()Ljava/util/Collection;

    move-result-object v1

    .line 505
    .local v1, "cacheIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    .line 516
    :goto_0
    return-object v3

    .line 507
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 508
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 510
    .local v0, "cacheId":I
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->commitTxAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    goto :goto_0

    .line 513
    .end local v0    # "cacheId":I
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 514
    .local v0, "cacheId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->awaitLastFut()V

    goto :goto_1

    .line 516
    .end local v0    # "cacheId":Ljava/lang/Integer;
    :cond_2
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    goto :goto_0
.end method

.method public dataCenterId()B
    .locals 2

    .prologue
    .line 222
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 224
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataCenterId()B

    move-result v1

    return v1
.end method

.method public deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->depMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    return-object v0
.end method

.method public deploymentEnabled()Z
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v0

    return v0
.end method

.method public discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .locals 1

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    return-object v0
.end method

.method public endTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->activeCacheIds()Ljava/util/Collection;

    move-result-object v1

    .line 490
    .local v1, "cacheIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 491
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 492
    .local v0, "cacheId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->awaitLastFut()V

    goto :goto_0

    .line 495
    .end local v0    # "cacheId":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    .line 496
    return-void
.end method

.method public exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchMgr:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    return-object v0
.end method

.method public gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;
    .locals 1

    .prologue
    .line 345
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    return-object v0
.end method

.method public gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .locals 1

    .prologue
    .line 352
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    return-object v0
.end method

.method public gridIO()Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    .locals 1

    .prologue
    .line 338
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    return-object v0
.end method

.method public gridName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;
    .locals 1

    .prologue
    .line 303
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ioMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    return-object v0
.end method

.method public kernalContext()Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1

    .prologue
    .line 331
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public localNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/IgniteLogger;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    return-object v0
.end method

.method public logger(Ljava/lang/String;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 406
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    return-object v0
.end method

.method public managers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManager",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mgrs:Ljava/util/List;

    return-object v0
.end method

.method public marshaller()Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    return-object v0
.end method

.method public mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
    .locals 1

    .prologue
    .line 296
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvccMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    return-object v0
.end method

.method public node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 388
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public partitionReleaseFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 419
    .local v0, "f":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishExplicitLocks(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 420
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->finishTxs(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 421
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishAtomicUpdates(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 423
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 425
    return-object v0
.end method

.method public preloadExchangeTimeout()J
    .locals 10

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    mul-long v0, v6, v8

    .line 203
    .local v0, "t1":J
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v8

    array-length v8, v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x2

    mul-long v2, v6, v8

    .line 205
    .local v2, "t2":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 207
    .local v4, "timeout":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    .end local v4    # "timeout":J
    :cond_0
    return-wide v4
.end method

.method public preloadersStartFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->preloadersStartFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    if-nez v4, :cond_4

    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, "compound":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 235
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    .line 237
    .local v3, "startFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 238
    if-nez v1, :cond_1

    .line 239
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .end local v1    # "compound":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 241
    .restart local v1    # "compound":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 245
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v3    # "startFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 246
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 248
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->preloadersStartFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 254
    .end local v1    # "compound":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v1

    .line 251
    .restart local v1    # "compound":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    .end local v1    # "compound":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->preloadersStartFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto :goto_1

    .line 254
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->preloadersStartFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto :goto_1
.end method

.method public removeCacheContext(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 146
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v0

    .line 148
    .local v0, "cacheId":I
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ctxMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->ioMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->removeHandlers(I)V

    .line 152
    return-void
.end method

.method public resetTxMetrics()V
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txMetrics:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    .line 269
    return-void
.end method

.method public rollbackTxAsync(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->activeCacheIds()Ljava/util/Collection;

    move-result-object v1

    .line 527
    .local v1, "cacheIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 528
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 529
    .local v0, "cacheId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->awaitLastFut()V

    goto :goto_0

    .line 532
    .end local v0    # "cacheId":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    return-object v3
.end method

.method public time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;
    .locals 1

    .prologue
    .line 366
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    return-object v0
.end method

.method public tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txMgr:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    return-object v0
.end method

.method public txCompatible(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z
    .locals 6
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    .local p2, "activeCacheIds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    .local p3, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v3, 0x0

    .line 435
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v4

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->system()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v3

    .line 438
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 439
    .local v1, "cacheId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 442
    .local v0, "activeCacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 443
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v4

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 448
    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store()Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v4

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store()Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v5

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 452
    .end local v0    # "activeCacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v1    # "cacheId":Ljava/lang/Integer;
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public txConfig()Lorg/apache/ignite/configuration/TransactionConfiguration;
    .locals 1

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalCtx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public txMetrics()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txMetrics:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    return-object v0
.end method

.method public versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;
    .locals 1

    .prologue
    .line 289
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->verMgr:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    return-object v0
.end method
