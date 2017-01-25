.class public final Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridNearTxFinishFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;
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
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
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
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private commit:Z

.field private err:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;"
        }
    .end annotation
.end field

.field private trackable:Z

.field private tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->$assertionsDisabled:Z

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Z)V
    .locals 3
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .param p3, "commit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->identityReducer(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->trackable:Z

    .line 88
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 91
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .line 92
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->commit:Z

    .line 94
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->mappings()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 96
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 98
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 100
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    return-object v0
.end method

.method private finish(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    .local p1, "mappings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 329
    .local v1, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->finish(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V

    goto :goto_0

    .line 330
    .end local v1    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    :cond_0
    return-void
.end method

.method private finish(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V
    .locals 28
    .param p1, "m"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .prologue
    .line 336
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v27

    .line 338
    .local v27, "n":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 340
    :cond_0
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->threadId()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->commit:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isInvalidate()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->system()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->syncCommit()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->syncRollback()Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->explicitLock()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->storeEnabled()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->size()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->subjectId()Ljava/util/UUID;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->taskNameHash()I

    move-result v24

    invoke-direct/range {v5 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;ILjava/util/UUID;I)V

    .line 362
    .local v5, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;
    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 363
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txHandler()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    move-result-object v6

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6, v7, v8, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finish(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v25

    .line 368
    .local v25, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-eqz v25, :cond_1

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 399
    .end local v25    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    new-instance v26, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V

    .line 374
    .local v26, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishRequest;->miniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->pessimistic()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 379
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v6

    invoke-interface/range {v27 .. v27}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->threadId()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->beforeFinishRemote(Ljava/util/UUID;J)V

    .line 382
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v5, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 385
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->isSync()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->explicitLock()Z

    move-result v6

    if-nez v6, :cond_1

    .line 386
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onDone()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 388
    :catch_0
    move-exception v4

    .line 390
    .local v4, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto :goto_0

    .line 394
    .end local v4    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v4

    .line 396
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto :goto_0
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
    .line 253
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSync()Z
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->commit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->syncCommit()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->syncRollback()Z

    move-result v0

    goto :goto_0
.end method

.method private onComplete()V
    .locals 2

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z

    .line 261
    return-void
.end method


# virtual methods
.method finish()V
    .locals 9

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->onePhaseCommit()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 277
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 278
    .local v5, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txHandler()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    move-result-object v6

    iget-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->commit:Z

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->finishColocatedLocal(ZLorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    .line 282
    .local v3, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 287
    .end local v3    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v5    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->markInitialized()V

    .line 321
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 292
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v6, :cond_6

    .line 293
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->finish(Ljava/lang/Iterable;)V

    .line 295
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->markInitialized()V

    .line 297
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->isSync()Z

    move-result v6

    if-nez v6, :cond_2

    .line 298
    const/4 v0, 0x1

    .line 300
    .local v0, "complete":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->pending()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 302
    .local v2, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v6

    if-nez v6, :cond_4

    .line 303
    const/4 v0, 0x0

    goto :goto_2

    .line 305
    .end local v2    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_5
    if-eqz v0, :cond_2

    .line 306
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onComplete()V

    goto :goto_1

    .line 310
    .end local v0    # "complete":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->commit:Z

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 313
    :cond_7
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollback()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->markInitialized()V

    goto :goto_1

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to rollback empty transaction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->trackable:Z

    .line 156
    return-void
.end method

.method public nodes()Ljava/util/Collection;
    .locals 3
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
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z
    .locals 9
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->initialized()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_5

    .line 212
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->onePhaseCommit()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v7, v8, :cond_1

    .line 213
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->tmCommit()V

    .line 215
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Throwable;

    .line 217
    .local v5, "th":Ljava/lang/Throwable;
    if-eqz v5, :cond_3

    .end local v5    # "th":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0, p1, v5}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 218
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->error()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException;

    if-eqz v7, :cond_4

    .line 219
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    .line 221
    .local v6, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->writeMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 222
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 225
    .local v1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v7, v8, :cond_2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 226
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 228
    .local v0, "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_2

    .line 229
    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->invalidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    .end local v0    # "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v4

    .line 233
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v8, "Failed to invalidate entry."

    invoke-static {v7, v8, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v1    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v6    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v5    # "th":Ljava/lang/Throwable;
    :cond_3
    move-object v5, p2

    .line 217
    goto :goto_0

    .line 239
    .end local v5    # "th":Ljava/lang/Throwable;
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 241
    const/4 v7, 0x1

    .line 245
    :goto_2
    return v7

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->commitError(Ljava/lang/Throwable;)V

    .line 164
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    move-result v1

    .line 167
    .local v1, "marked":Z
    instance-of v2, p1, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    if-eqz v2, :cond_2

    .line 168
    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollback()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->onComplete()V

    .line 188
    .end local v1    # "marked":Z
    :cond_1
    return-void

    .line 172
    .restart local v1    # "marked":Z
    :catch_0
    move-exception v0

    .line 173
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to automatically rollback transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    .end local v0    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicit()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isSystemInvalidate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->close()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    .restart local v0    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invalidate transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->futures()Ljava/util/Collection;

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

    .line 130
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 131
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;

    .line 133
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote node left grid (will fail): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 139
    const/4 v3, 0x1

    .line 143
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->futures()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 197
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 198
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;

    .line 200
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 203
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishResponse;)V

    goto :goto_0

    .line 207
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method
