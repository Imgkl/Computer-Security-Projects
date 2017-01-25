.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridNearTxPrepareFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private mappings:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;"
        }
    .end annotation
.end field

.field private rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 822
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 2
    .param p2, "m"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    .local p3, "mappings":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 827
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 834
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 847
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 848
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 849
    return-void
.end method


# virtual methods
.method futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 855
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public mapping()Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .locals 1

    .prologue
    .line 869
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 862
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method onResult(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    const/16 v3, 0x5d

    .line 876
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get future result [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 881
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_1
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error after another result has been processed [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mini="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 17
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    .prologue
    .line 910
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 914
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->error()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->error()Ljava/lang/Throwable;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 919
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->invalidPartitions()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 921
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->ownedValues()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 922
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v16

    .line 924
    .local v16, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    if-nez v16, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 926
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    .line 930
    .local v8, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :goto_2
    :try_start_0
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 931
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    .line 933
    .local v2, "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;

    .line 935
    .local v15, "tup":Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->resetFromPrimary(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    goto :goto_1

    .line 948
    .end local v2    # "nearEntry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v15    # "tup":Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 938
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 939
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;

    .line 941
    .local v9, "detachedEntry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;

    .line 943
    .restart local v15    # "tup":Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;->resetFromPrimary(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 951
    .end local v9    # "detachedEntry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;
    .end local v15    # "tup":Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;
    :catch_1
    move-exception v10

    .line 953
    .local v10, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 960
    .end local v8    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v10    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/distributed/near/CacheVersionedValue;>;"
    .end local v16    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->returnValue()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicitSingleResult(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 963
    .local v14, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v3

    invoke-virtual {v3, v14}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v16

    .line 965
    .restart local v16    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_9

    if-nez v16, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing tx entry for write key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 967
    :cond_9
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 969
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_a

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 971
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v12

    .line 973
    .local v12, "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v12, :cond_8

    .line 974
    invoke-interface {v12}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    goto :goto_3

    .line 977
    .end local v12    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v14    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v16    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 979
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->addDhtVersion(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->dhtVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->dhtVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 984
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->m:Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->pending()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->committedVersions()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->rolledbackVersions()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->readyNearLocks(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 988
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    if-eqz v3, :cond_d

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->proceedPrepare(Lorg/jsr166/ConcurrentLinkedDeque8;)V
    invoke-static {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/jsr166/ConcurrentLinkedDeque8;)V

    .line 992
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    const/4 v3, 0x0

    .line 892
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->rcvRes:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->access$200()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote node left grid while sending or waiting for reply (will not retry): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 901
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-virtual {v0, v3, v3, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 999
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

    const-string v2, "done"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->isDone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "cancelled"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->isCancelled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "err"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->error()Ljava/lang/Throwable;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
