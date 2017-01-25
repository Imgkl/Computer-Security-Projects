.class public final Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridDhtTxFinishFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;
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

.field private dhtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;"
        }
    .end annotation
.end field

.field private err:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nearMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;"
        }
    .end annotation
.end field

.field private trackable:Z

.field private tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->$assertionsDisabled:Z

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Z)V
    .locals 3
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .param p3, "commit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->identityReducer(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->trackable:Z

    .line 89
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 90
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    .line 91
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->commit:Z

    .line 93
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->dhtMap:Ljava/util/Map;

    .line 94
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->nearMap:Ljava/util/Map;

    .line 96
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 98
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    return-object v0
.end method

.method private finish(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    .local p1, "dhtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .local p2, "nearMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 280
    const/16 v35, 0x0

    .line 400
    :cond_0
    return v35

    .line 282
    :cond_1
    const/16 v35, 0x0

    .line 284
    .local v35, "res":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->commit:Z

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->syncCommit()Z

    move-result v36

    .line 287
    .local v36, "sync":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 288
    .local v4, "dhtMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v33

    .line 290
    .local v33, "n":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    invoke-interface/range {v33 .. v33}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 284
    .end local v4    # "dhtMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v33    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v36    # "sync":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->syncRollback()Z

    move-result v36

    goto :goto_0

    .line 292
    .restart local v4    # "dhtMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .restart local v32    # "i$":Ljava/util/Iterator;
    .restart local v33    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v36    # "sync":Z
    :cond_4
    invoke-interface/range {v33 .. v33}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 294
    .local v34, "nearMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v34, :cond_5

    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 298
    :cond_5
    new-instance v31, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V

    .line 300
    .local v31, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>.MiniFuture;"
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 302
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->commitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->threadId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->commit:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isInvalidate()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->system()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isSystemInvalidate()Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->syncCommit()Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->syncRollback()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->completedBase()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->committedVersions()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->rolledbackVersions()Ljava/util/Collection;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->pendingVersions()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->taskNameHash()I

    move-result v29

    invoke-direct/range {v5 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/transactions/TransactionIsolation;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 328
    .local v5, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v6, v0, v5, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 330
    if-eqz v36, :cond_6

    .line 331
    const/16 v35, 0x1

    goto/16 :goto_1

    .line 333
    :cond_6
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->onDone()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 335
    :catch_0
    move-exception v30

    .line 337
    .local v30, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v30

    instance-of v6, v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-eqz v6, :cond_7

    .line 338
    check-cast v30, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .end local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto/16 :goto_1

    .line 340
    .restart local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_7
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 344
    .end local v4    # "dhtMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v5    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;
    .end local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v31    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>.MiniFuture;"
    .end local v33    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v34    # "nearMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    :cond_8
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_9
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 345
    .restart local v34    # "nearMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 346
    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 350
    new-instance v31, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;

    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V

    .line 352
    .restart local v31    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>.MiniFuture;"
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 354
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->commitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->threadId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->commit:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isInvalidate()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->system()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isSystemInvalidate()Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->syncCommit()Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->syncRollback()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->completedBase()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->committedVersions()Ljava/util/Collection;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->rolledbackVersions()Ljava/util/Collection;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->pendingVersions()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->taskNameHash()I

    move-result v29

    invoke-direct/range {v5 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/transactions/TransactionIsolation;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;ZZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V

    .line 379
    .restart local v5    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 380
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishRequest;->writeVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 383
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v6

    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 385
    if-eqz v36, :cond_b

    .line 386
    const/16 v35, 0x1

    goto/16 :goto_2

    .line 388
    :cond_b
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->onDone()Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 390
    :catch_1
    move-exception v30

    .line 392
    .restart local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v30

    instance-of v6, v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    if-eqz v6, :cond_c

    .line 393
    check-cast v30, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    .end local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto/16 :goto_2

    .line 395
    .restart local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_c
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto/16 :goto_2
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
    .line 235
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onComplete()V
    .locals 2

    .prologue
    .line 242
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z

    .line 243
    return-void
.end method


# virtual methods
.method complete()V
    .locals 0

    .prologue
    .line 249
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onComplete()V

    .line 250
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 256
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->dhtMap:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->nearMap:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->dhtMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->nearMap:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->finish(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    .line 259
    .local v0, "sync":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->markInitialized()V

    .line 261
    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onComplete()V

    .line 270
    .end local v0    # "sync":Z
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->markInitialized()V

    .line 268
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onComplete()V

    goto :goto_0
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->trackable:Z

    .line 151
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;)V

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
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 210
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->initialized()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_3

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v1, v2, :cond_1

    .line 212
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->tmCommit()V

    .line 214
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 216
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0, p1, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->commit:Z

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->error()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->sendFinishReply(ZLjava/lang/Throwable;)V

    .line 221
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 223
    const/4 v1, 0x1

    .line 227
    :goto_1
    return v1

    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    move-object v0, p2

    .line 216
    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 157
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->setRollbackOnly()Z

    move-result v2

    .line 160
    .local v2, "marked":Z
    instance-of v3, p1, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    if-eqz v3, :cond_2

    .line 161
    if-eqz v2, :cond_0

    .line 163
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->rollback()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->onComplete()V

    .line 186
    .end local v2    # "marked":Z
    :cond_1
    return-void

    .line 165
    .restart local v2    # "marked":Z
    :catch_0
    move-exception v1

    .line 166
    .local v1, "ex":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to automatically rollback transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    .end local v1    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isSystemInvalidate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->finish()V

    .line 174
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxHeuristicCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 176
    :catch_1
    move-exception v3

    goto :goto_0

    .line 179
    :catch_2
    move-exception v0

    .line 180
    .local v0, "err":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to invalidate transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->futures()Ljava/util/Collection;

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
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 131
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;

    .line 133
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    new-instance v3, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote node left grid (will retry): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 136
    const/4 v3, 0x1

    .line 140
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 194
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->futures()Ljava/util/Collection;

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

    .line 195
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 196
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;

    .line 198
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 201
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishResponse;)V

    goto :goto_0

    .line 206
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 405
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxFinishFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method
