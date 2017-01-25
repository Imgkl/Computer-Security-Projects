.class public Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;
.super Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;
.source "GridCacheQueryCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$2;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SUPPORTED_COMMANDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final qryIdGen:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->$assertionsDisabled:Z

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_EXECUTE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v2

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_FETCH:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_QUERY_REBUILD_INDEXES:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->qryIdGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 64
    return-void
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->qryIdGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->instance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;Ljava/util/concurrent/ConcurrentMap;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
    .param p3, "x2"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "x3"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->fetchQueryResults(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;Ljava/util/concurrent/ConcurrentMap;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v0

    return-object v0
.end method

.method private broadcast(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 142
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/GridClosureCallMode;->BROADCAST:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-array v3, v4, [Ljava/util/concurrent/Callable;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forCacheNodes(Ljava/lang/String;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    .line 148
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Ljava/lang/Object;>;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1
.end method

.method private execute(Ljava/util/UUID;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "destId"    # Ljava/util/UUID;
    .param p2, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    if-eqz p1, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->replicatedCacheAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 123
    .local v0, "locExec":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 124
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v2

    invoke-virtual {v2, p3, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 132
    :goto_1
    return-object v1

    .end local v0    # "locExec":Z
    :cond_1
    move v0, v1

    .line 121
    goto :goto_0

    .line 126
    .restart local v0    # "locExec":Z
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    if-nez v3, :cond_3

    .line 127
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destination node ID has left the grid (retry the query): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 130
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v4

    new-array v1, v1, [Ljava/util/UUID;

    invoke-interface {v4, p1, v1}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forNodeId(Ljava/util/UUID;[Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v3, p3, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    goto :goto_1
.end method

.method private static fetchQueryResults(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;Ljava/util/concurrent/ConcurrentMap;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 6
    .param p0, "qryId"    # J
    .param p2, "wrapper"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;
    .param p4, "locNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;",
            "Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 176
    .local p3, "locMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;>;"
    if-nez p2, :cond_0

    .line 177
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Failed to find query future (query has been expired)."

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_0
    # invokes: Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;->future()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;->access$300(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryFutureWrapper;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;

    move-result-object v1

    .line 181
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter<***>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->nextPage()Ljava/util/Collection;

    move-result-object v0

    .line 183
    .local v0, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v3, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;

    invoke-direct {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;-><init>()V

    .line 185
    .local v3, "res":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;
    new-instance v2, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;

    invoke-direct {v2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;-><init>()V

    .line 187
    .local v2, "qryRes":Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;
    if-nez v0, :cond_1

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 190
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->last(Z)V

    .line 192
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$QueryExecutionKey;-><init>(JLorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V

    invoke-interface {p3, v4, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    :cond_1
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->items(Ljava/util/Collection;)V

    .line 196
    invoke-virtual {v2, p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->queryId(J)V

    .line 197
    invoke-virtual {v2, p4}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheClientQueryResult;->nodeId(Ljava/util/UUID;)V

    .line 199
    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestResponse;->setResponse(Ljava/lang/Object;)V

    .line 201
    return-object v3
.end method

.method private static instance(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/16 v6, 0x5d

    .line 214
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 216
    .local v2, "implCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create instance (target class does not extend or implement required class or interface) [cls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clsName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 224
    .end local v2    # "implCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find target class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 220
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "implCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 222
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    return-object v3

    .line 227
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "implCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find constructor for provided arguments [clsName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 231
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate target class [clsName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 235
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate class (constructor is not available) [clsName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 239
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to instantiate class (constructor threw an exception) [clsName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private replicatedCacheAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 106
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 73
    sget-boolean v3, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    instance-of v3, p1, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 74
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    move-object v2, p1

    .line 76
    check-cast v2, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;

    .line 78
    .local v2, "qryReq":Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->destinationId()Ljava/util/UUID;

    move-result-object v1

    .line 79
    .local v1, "destId":Ljava/util/UUID;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->cacheName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "cacheName":Ljava/lang/String;
    sget-object v3, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$2;->$SwitchMap$org$apache$ignite$internal$processors$rest$GridRestCommand:[I

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 95
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported query command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object v3

    .line 83
    :pswitch_0
    new-instance v3, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;

    invoke-direct {v3, v2, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$ExecuteQuery;-><init>(Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V

    invoke-direct {p0, v1, v0, v3}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->execute(Ljava/util/UUID;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance v3, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;

    invoke-direct {v3, v2, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$FetchQueryResults;-><init>(Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V

    invoke-direct {p0, v1, v0, v3}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->execute(Ljava/util/UUID;Ljava/lang/String;Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->cacheName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->cacheName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheQueryRequest;->className()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V

    invoke-direct {p0, v3, v4}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->broadcast(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public supportedCommands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-object v0
.end method
