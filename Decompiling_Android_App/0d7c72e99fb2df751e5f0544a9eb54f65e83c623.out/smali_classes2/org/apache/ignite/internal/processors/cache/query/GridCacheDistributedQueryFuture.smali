.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
.source "GridCacheDistributedQueryFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter",
        "<TK;TV;TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private firstPageLatch:Ljava/util/concurrent/CountDownLatch;

.field private final rcvd:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private reqId:J

.field private final subgrid:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/lang/Iterable;)V
    .locals 6
    .param p2, "reqId"    # J
    .param p4, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;J",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p5, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v3, 0x0

    invoke-direct {p0, p1, p4, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Z)V

    .line 41
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    .line 44
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->rcvd:Ljava/util/Collection;

    .line 47
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->firstPageLatch:Ljava/util/concurrent/CountDownLatch;

    .line 60
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 62
    :cond_0
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->reqId:J

    .line 64
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v1

    .line 66
    .local v1, "mgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 68
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    monitor-enter v4

    .line 69
    :try_start_0
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 70
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    return-object v0
.end method

.method private nodes()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 210
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 213
    .local v2, "nodeId":Ljava/util/UUID;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 215
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v1, :cond_1

    .line 216
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v2    # "nodeId":Ljava/util/UUID;
    :cond_2
    return-object v3
.end method


# virtual methods
.method protected cancelQuery()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v3

    .line 78
    .local v3, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 81
    :cond_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v0

    .line 84
    .local v0, "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const/4 v5, 0x1

    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v8, 0x0

    new-instance v9, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;

    invoke-direct {v9, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)V

    aput-object v9, v7, v8

    invoke-static {v0, v5, v7}, Lorg/apache/ignite/internal/util/typedef/F;->retain(Ljava/util/Collection;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v2

    .line 93
    .local v2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->clear()V

    .line 94
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v5

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->reqId:J

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->fields()Z

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;-><init>(IJZ)V

    .line 99
    .local v4, "req":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v5

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;

    invoke-direct {v6, p0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;)V

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 107
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$3;

    invoke-direct {v7, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;)V

    invoke-virtual {v5, v2, v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->safeSend(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgnitePredicate;)Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    .end local v0    # "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v2    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryRequest;
    :cond_1
    :goto_0
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->reqId:J

    invoke-virtual {v3, v6, v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onQueryFutureCanceled(J)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->clear()V

    .line 125
    return-void

    .line 94
    .restart local v0    # "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 118
    .end local v0    # "allNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to send cancel request (will cancel query in any case)."

    invoke-static {v5, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method clear()V
    .locals 4

    .prologue
    .line 245
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;

    .line 247
    .local v0, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 249
    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->reqId:J

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryManager;->removeQueryFuture(J)V

    .line 250
    return-void
.end method

.method protected loadAllPages()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->firstPageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->await(Ljava/util/concurrent/CountDownLatch;)V

    .line 193
    const/4 v5, 0x0

    .line 195
    .local v5, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->nodes()Ljava/util/Collection;

    move-result-object v5

    .line 198
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v5, :cond_2

    .line 201
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->reqId:J

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->loadPage(JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Ljava/util/Collection;Z)V

    .line 202
    :cond_2
    return-void

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected loadPage()V
    .locals 7

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_0
    const/4 v5, 0x0

    .line 174
    .local v5, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->rcvd:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->rcvd:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 178
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->nodes()Ljava/util/Collection;

    move-result-object v5

    .line 180
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-eqz v5, :cond_2

    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->reqId:J

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->loadPage(JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Ljava/util/Collection;Z)V

    .line 184
    :cond_2
    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCancelled()Z
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->firstPageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 233
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z
    .locals 1
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TR;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->firstPageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 226
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method protected onNodeLeft(Ljava/util/UUID;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    const/4 v1, 0x1

    .line 132
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    :try_start_0
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->loc:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 134
    .local v0, "callOnPage":Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    .line 140
    :cond_0
    return-void

    .line 133
    .end local v0    # "callOnPage":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onPage(Ljava/util/UUID;Z)Z
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "last"    # Z

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->mux:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 146
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->loc:Z

    if-nez v1, :cond_1

    .line 147
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->rcvd:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->rcvd:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->firstPageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 155
    :cond_1
    if-eqz p2, :cond_5

    .line 156
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->loc:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->subgrid:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 158
    .local v0, "futFinish":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 159
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->firstPageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 164
    :cond_3
    :goto_1
    return v0

    .line 156
    .end local v0    # "futFinish":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "futFinish":Z
    goto :goto_1
.end method

.method public onTimeout()V
    .locals 1

    .prologue
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture<TK;TV;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->firstPageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 240
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onTimeout()V

    .line 241
    return-void
.end method
