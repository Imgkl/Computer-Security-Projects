.class public abstract Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.source "GridDistributedCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
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
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;-><init>()V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 0
    .param p2, "startSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V
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
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    .line 73
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->removeAllAsync(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private removeAllAsync(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 7
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    .local p1, "opFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Void;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v0

    .line 187
    .local v0, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, p2, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v0, v5}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 191
    .local v1, "rmvFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;

    invoke-direct {v2, p0, p2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 222
    .end local v1    # "rmvFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .param p4    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/apache/ignite/transactions/TransactionIsolation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
.end method

.method public varargs lockAllAsync(Ljava/util/Collection;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 12
    .param p2, "timeout"    # J
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    move-result-object v4

    .line 98
    .local v4, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-wide v2, p2

    move-object/from16 v11, p4

    invoke-virtual/range {v0 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAll()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    .line 154
    .local v2, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forDataNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v1

    .line 156
    .local v1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v2, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$GlobalRemoveAllCallable;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter$1;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v1, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsyncNoFailover(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 161
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_0

    .line 167
    .end local v1    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v2    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_2
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ignore":Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All remote nodes left while cache remove [cacheName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 173
    .local v0, "opFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Ljava/lang/Void;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    .line 175
    .local v1, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->removeAllAsync(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 177
    return-object v0
.end method

.method public removeVersionedEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 138
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-interface {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public txLockAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZLorg/apache/ignite/transactions/TransactionIsolation;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 12
    .param p2, "timeout"    # J
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .param p5, "isRead"    # Z
    .param p6, "retval"    # Z
    .param p7, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p8, "isInvalidate"    # Z
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
            "ZZ",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "ZJ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p8

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    .line 89
    invoke-virtual/range {v0 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method
