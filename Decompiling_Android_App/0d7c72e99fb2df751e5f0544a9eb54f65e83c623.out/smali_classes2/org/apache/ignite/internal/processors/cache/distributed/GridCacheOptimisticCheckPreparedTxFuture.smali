.class public Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridCacheOptimisticCheckPreparedTxFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$1;,
        Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final failedNodeId:Ljava/util/UUID;

.field private final futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private trackable:Z

.field private final tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

.field private final txNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->$assertionsDisabled:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/UUID;Ljava/util/Map;)V
    .locals 9
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p3, "failedNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    .local p4, "txNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->boolReducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 52
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->trackable:Z

    .line 58
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 83
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 84
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 85
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->txNodes:Ljava/util/Map;

    .line 86
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->failedNodeId:Ljava/util/UUID;

    .line 88
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v6, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v8, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;

    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v6

    sput-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 91
    :cond_0
    new-instance v6, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V

    iput-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodes:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    .line 95
    .local v3, "locNodeId":Ljava/util/UUID;
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->transactionNodes()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 97
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 99
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v4, :cond_4

    .line 100
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodes:Ljava/util/Map;

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 106
    .local v5, "nodeId":Ljava/util/UUID;
    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodes:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 107
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 109
    .restart local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v4, :cond_5

    .line 110
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodes:Ljava/util/Map;

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 101
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "nodeId":Ljava/util/UUID;
    :cond_4
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction node left (will ignore) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "nodeId":Ljava/util/UUID;
    :cond_5
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction node left (will ignore) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v5    # "nodeId":Ljava/util/UUID;
    :cond_6
    return-void
.end method

.method static synthetic access$600()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private nodeTransactions(Ljava/util/UUID;)I
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->txNodes:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    .line 206
    .local v2, "cnt":I
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->txNodes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 207
    .local v1, "backups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 208
    .local v0, "backup":Ljava/util/UUID;
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 211
    goto :goto_1

    .line 204
    .end local v0    # "backup":Ljava/util/UUID;
    .end local v1    # "backups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v2    # "cnt":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    .restart local v2    # "cnt":I
    :cond_3
    return v2
.end method


# virtual methods
.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->trackable:Z

    .line 280
    return-void
.end method

.method public nodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "res"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 287
    if-nez p2, :cond_2

    .line 288
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->finishOptimisticTxOnRecovery(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    .line 301
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_2
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check prepared transactions, invalidating transaction [err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 297
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->salvageTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    goto :goto_0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 258
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->futures()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 259
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 260
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    .line 262
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->nodeId()Ljava/util/UUID;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onNodeLeft()V
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)V

    .line 265
    const/4 v3, 0x1

    .line 269
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->pending()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 226
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 227
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    .line 229
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->nodeId()Ljava/util/UUID;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 232
    :cond_1
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;)V
    invoke-static {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxResponse;)V

    .line 239
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public prepare()V
    .locals 15

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    const/4 v14, 0x0

    .line 124
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodeTransactions(Ljava/util/UUID;)I

    move-result v7

    .line 126
    .local v7, "locTxNum":I
    const/4 v10, 0x1

    if-le v7, v10, :cond_0

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txsPreparedOrCommitted(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 127
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->onDone(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->markInitialized()V

    .line 197
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->txNodes:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/UUID;

    .line 138
    .local v8, "nodeId":Ljava/util/UUID;
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodes:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 146
    :cond_2
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->failedNodeId:Ljava/util/UUID;

    invoke-virtual {v8, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 149
    .local v5, "id":Ljava/util/UUID;
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->txNodes:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 152
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    invoke-direct {v2, p0, v5, v14}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$1;)V

    .line 154
    .local v2, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 156
    new-instance v9, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-direct {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodeTransactions(Ljava/util/UUID;)I

    move-result v11

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 162
    .local v9, "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;
    :try_start_0
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v11

    invoke-virtual {v10, v5, v9, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 164
    :catch_0
    move-exception v6

    .line 165
    .local v6, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onNodeLeft()V
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)V

    goto :goto_2

    .line 167
    .end local v6    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onError(Ljava/lang/Throwable;)V
    invoke-static {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 175
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "id":Ljava/util/UUID;
    .end local v9    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;
    :cond_4
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;

    invoke-direct {v2, p0, v8, v14}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$1;)V

    .line 177
    .restart local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 179
    new-instance v9, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-direct {p0, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->nodeTransactions(Ljava/util/UUID;)I

    move-result v11

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 183
    .restart local v9    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;
    :try_start_1
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v11

    invoke-virtual {v10, v8, v9, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 185
    :catch_2
    move-exception v6

    .line 186
    .restart local v6    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onNodeLeft()V
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;)V

    goto/16 :goto_1

    .line 188
    .end local v6    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_3
    move-exception v0

    .line 189
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->onError(Ljava/lang/Throwable;)V
    invoke-static {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;Ljava/lang/Throwable;)V

    .line 196
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>.MiniFuture;"
    .end local v8    # "nodeId":Ljava/util/UUID;
    .end local v9    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxRequest;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->markInitialized()V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheOptimisticCheckPreparedTxFuture;->tx:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method
