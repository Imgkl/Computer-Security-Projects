.class public final Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridNearTxPrepareFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;
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
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture",
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

.field private lockKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation
.end field

.field private trackable:Z

.field private tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V
    .locals 3
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;

    invoke-direct {v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->trackable:Z

    .line 85
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->lockKeys:Ljava/util/Collection;

    .line 103
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 107
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .line 109
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 111
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_2

    .line 112
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 113
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;
    .param p1, "x1"    # Lorg/jsr166/ConcurrentLinkedDeque8;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->proceedPrepare(Lorg/jsr166/ConcurrentLinkedDeque8;)V

    return-void
.end method

.method private checkLocks()Z
    .locals 4

    .prologue
    .line 220
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->lockKeys:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 222
    .local v0, "locked":Z
    if-eqz v0, :cond_1

    .line 223
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All locks are acquired for near prepare future: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still waiting for locks [fut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", keys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->lockKeys:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkOnePhase()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    const/4 v4, 0x1

    .line 635
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->storeUsed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->transactionNodes()Ljava/util/Map;

    move-result-object v2

    .line 640
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 641
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->firstEntry(Ljava/util/Map;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 643
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 645
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 647
    .local v0, "backups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-gt v3, v4, :cond_0

    .line 648
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->onePhaseCommit(Z)V

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
    .line 287
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .locals 10
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "cur"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .param p4, "waitLock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    const/16 v9, 0x5d

    .line 749
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 751
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v3

    .line 753
    .local v3, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->addMapping(Ljava/util/List;)V

    .line 755
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 757
    .local v4, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 759
    :cond_0
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 760
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mapped key to primary node [key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", part="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", primary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", topVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 765
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLock()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v5

    if-nez v5, :cond_2

    .line 766
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to prepare group lock transaction (local node is not primary for  key)[key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", primaryNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 770
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 771
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearTx()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 777
    :goto_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 778
    :cond_3
    if-eqz p4, :cond_5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    if-nez v5, :cond_5

    .line 779
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLock()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 780
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->lockKeys:Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near()Z

    move-result v5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v6

    if-eq v5, v6, :cond_7

    .line 785
    :cond_6
    new-instance p3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .end local p3    # "cur":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-direct {p3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 788
    .restart local p3    # "cur":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    invoke-virtual {p3, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near(Z)V

    .line 791
    :cond_7
    invoke-virtual {p3, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    .line 793
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId(Ljava/util/UUID;)V

    .line 795
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 798
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    .line 800
    .local v1, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->dhtNodeId(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    .end local v1    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :cond_8
    return-object p3

    .line 772
    :cond_9
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v5

    if-nez v5, :cond_a

    .line 773
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, p2, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_0

    .line 775
    :cond_a
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->local()Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/apache/ignite/internal/processors/cache/local/GridLocalCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_0

    .line 804
    :catch_0
    move-exception v2

    .line 805
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_1
.end method

.method private onComplete()V
    .locals 2

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-super {p0, v1, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 297
    :cond_0
    return-void
.end method

.method private prepare(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    .local p1, "reads":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p2, "writes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 456
    :cond_0
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    .line 458
    .local v6, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 460
    :cond_1
    new-instance v9, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-direct {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;-><init>()V

    iput-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    .line 462
    new-instance v4, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v4}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    .line 465
    .local v4, "mappings":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 466
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->activeCacheIds()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 467
    .local v1, "cacheId":I
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v9, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 469
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 470
    new-instance v9, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to map keys for cache (all partition nodes left the grid): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 533
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v1    # "cacheId":I
    :cond_4
    :goto_0
    return-void

    .line 479
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v2, 0x0

    .line 481
    .local v2, "cur":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 482
    .local v5, "read":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    const/4 v9, 0x0

    invoke-direct {p0, v5, v6, v2, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    move-result-object v7

    .line 484
    .local v7, "updated":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-eq v2, v7, :cond_6

    .line 485
    invoke-virtual {v4, v7}, Lorg/jsr166/ConcurrentLinkedDeque8;->offer(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 488
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 489
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->nearLocallyMapped(Z)V

    .line 494
    :cond_7
    :goto_2
    move-object v2, v7

    goto :goto_1

    .line 490
    :cond_8
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 491
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->colocatedLocallyMapped(Z)V

    goto :goto_2

    .line 498
    .end local v5    # "read":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v7    # "updated":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 499
    .local v8, "write":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    const/4 v9, 0x1

    invoke-direct {p0, v8, v6, v2, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    move-result-object v7

    .line 501
    .restart local v7    # "updated":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-eq v2, v7, :cond_a

    .line 502
    invoke-virtual {v4, v7}, Lorg/jsr166/ConcurrentLinkedDeque8;->offer(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 505
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 506
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->nearLocallyMapped(Z)V

    .line 511
    :cond_b
    :goto_4
    move-object v2, v7

    goto :goto_3

    .line 507
    :cond_c
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isColocated()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 508
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->colocatedLocallyMapped(Z)V

    goto :goto_4

    .line 515
    .end local v7    # "updated":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v8    # "write":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_d
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->isDone()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 516
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 517
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Abandoning (re)map because future is done: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 522
    :cond_e
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v9, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->addEntryMapping(Ljava/util/Collection;)V

    .line 524
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->recheckPendingLocks()V

    .line 526
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v9, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->initLast(Ljava/util/Collection;)V

    .line 528
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->transactionNodes()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->transactionNodes(Ljava/util/Map;)V

    .line 530
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->checkOnePhase()V

    .line 532
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->proceedPrepare(Lorg/jsr166/ConcurrentLinkedDeque8;)V

    goto/16 :goto_0
.end method

.method private prepare0()V
    .locals 3

    .prologue
    .line 431
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 434
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->serializable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->readEntries()Ljava/util/Collection;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->writeEntries()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->prepare(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 438
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->markInitialized()V

    .line 443
    :goto_1
    return-void

    .line 434
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_1
.end method

.method private preparePessimistic()V
    .locals 35

    .prologue
    .line 539
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 541
    .local v27, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Boolean;>;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v33

    .line 543
    .local v33, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-direct {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->allEntries()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 546
    .local v34, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v20

    .line 548
    .local v20, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v31

    .line 550
    .local v31, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static/range {v31 .. v31}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/apache/ignite/cluster/ClusterNode;

    .line 552
    .local v32, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v28

    .line 554
    .local v28, "near":Z
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v25

    .line 556
    .local v25, "key":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Boolean;>;"
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 558
    .local v30, "nodeMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-nez v30, :cond_0

    .line 559
    new-instance v30, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .end local v30    # "nodeMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 561
    .restart local v30    # "nodeMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near(Z)V

    .line 563
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_0
    invoke-interface/range {v32 .. v32}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId(Ljava/util/UUID;)V

    .line 568
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->addMapping(Ljava/util/List;)V

    goto :goto_0

    .line 573
    .end local v20    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v25    # "key":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Boolean;>;"
    .end local v28    # "near":Z
    .end local v30    # "nodeMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v31    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v32    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v34    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->transactionNodes()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->transactionNodes(Ljava/util/Map;)V

    .line 575
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->checkOnePhase()V

    .line 577
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .end local v23    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 578
    .local v26, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v29

    .line 580
    .local v29, "node":Lorg/apache/ignite/cluster/ClusterNode;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->reads()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->transactionNodes()Ljava/util/Map;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->transactionNodes()Ljava/util/Map;

    move-result-object v14

    invoke-interface/range {v29 .. v29}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->onePhaseCommit()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->needReturnValue()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicit()Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicitSingle()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->subjectId()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->taskNameHash()I

    move-result v19

    invoke-direct/range {v3 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZZLjava/util/Map;ZLjava/util/Collection;ZZZLjava/util/UUID;I)V

    .line 598
    .local v3, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 599
    .restart local v34    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v4, v5, :cond_2

    .line 600
    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->addDhtVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_3

    .line 580
    .end local v3    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v34    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 603
    .restart local v3    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Lorg/jsr166/ConcurrentLinkedDeque8;)V

    .line 605
    .local v22, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->miniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 607
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 609
    invoke-interface/range {v29 .. v29}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txHandler()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    move-result-object v4

    invoke-interface/range {v29 .. v29}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v7, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;Lorg/apache/ignite/cluster/ClusterNode;)V

    invoke-virtual {v4, v5, v6, v3, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->prepareTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto/16 :goto_1

    .line 618
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 620
    :catch_0
    move-exception v21

    .line 622
    .local v21, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 627
    .end local v3    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .end local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v22    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v26    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v29    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->markInitialized()V

    .line 628
    return-void
.end method

.method private proceedPrepare(Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    .local p1, "mappings":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 663
    .local v24, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-eqz v24, :cond_0

    .line 666
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 668
    :cond_2
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v25

    .line 670
    .local v25, "n":Lorg/apache/ignite/cluster/ClusterNode;
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->serializable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->reads()Ljava/util/Collection;

    move-result-object v8

    :goto_1
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->partitionLock()Z

    move-result v11

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->txMapping:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;->transactionNodes()Ljava/util/Map;

    move-result-object v13

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->last()Z

    move-result v14

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->lastBackups()Ljava/util/Collection;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->onePhaseCommit()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->needReturnValue()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicit()Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicitSingle()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->subjectId()Ljava/util/UUID;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->taskNameHash()I

    move-result v20

    invoke-direct/range {v4 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZZLjava/util/Map;ZLjava/util/Collection;ZZZLjava/util/UUID;I)V

    .line 688
    .local v4, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 689
    .local v26, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v5, v6, :cond_3

    .line 690
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->addDhtVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_3

    .line 670
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v26    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 694
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;
    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->near()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 696
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->writes()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimisticLockEntries(Ljava/util/Collection;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->userPrepare()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :cond_7
    :goto_4
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Lorg/jsr166/ConcurrentLinkedDeque8;)V

    .line 707
    .local v22, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;->miniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 712
    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 716
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txHandler()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    move-result-object v5

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v8, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$5;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;Lorg/apache/ignite/cluster/ClusterNode;)V

    invoke-virtual {v5, v6, v7, v4, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;->prepareTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareRequest;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto/16 :goto_0

    .line 700
    .end local v22    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    :catch_0
    move-exception v21

    .line 701
    .local v21, "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v6, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 723
    .end local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v22    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    :cond_8
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLock()Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got group lock transaction that is mapped on remote node [tx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 727
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 729
    :catch_1
    move-exception v21

    .line 731
    .restart local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private topologyReadLock()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    .locals 7

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->activeCacheIds()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastTopologyFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v4

    .line 402
    :goto_0
    return-object v4

    .line 378
    :cond_0
    const/4 v3, 0x0

    .line 380
    .local v3, "nonLocCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->activeCacheIds()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 381
    .local v1, "cacheId":I
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 383
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v4

    if-nez v4, :cond_1

    .line 384
    move-object v3, v0

    .line 390
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v1    # "cacheId":I
    :cond_2
    if-nez v3, :cond_3

    .line 391
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastTopologyFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v4

    goto :goto_0

    .line 393
    :cond_3
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readLock()V

    .line 395
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->stopping()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 396
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to perform cache operation (cache is stopped): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 399
    const/4 v4, 0x0

    goto :goto_0

    .line 402
    :cond_4
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v4

    goto :goto_0
.end method

.method private topologyReadUnlock()V
    .locals 5

    .prologue
    .line 409
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->activeCacheIds()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 410
    const/4 v3, 0x0

    .line 412
    .local v3, "nonLocalCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->activeCacheIds()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 413
    .local v1, "cacheId":I
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 415
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v4

    if-nez v4, :cond_0

    .line 416
    move-object v3, v0

    .line 422
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v1    # "cacheId":I
    :cond_1
    if-eqz v3, :cond_2

    .line 423
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    .line 425
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "nonLocalCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method complete()V
    .locals 0

    .prologue
    .line 303
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onComplete()V

    .line 304
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->trackable:Z

    .line 167
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
    .line 148
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)V

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
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "t"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "err"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->checkLocks()Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    if-nez p2, :cond_2

    .line 270
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 272
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-super {p0, v1, p2}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 276
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V

    .line 239
    return-void
.end method

.method onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    .local p2, "mappings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    move-result v1

    .line 196
    .local v1, "marked":Z
    instance-of v2, p3, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;

    if-eqz v2, :cond_1

    .line 197
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing node ID for optimistic failure exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 199
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->removeKeysMapping(Ljava/util/UUID;Ljava/lang/Iterable;)V

    .line 201
    :cond_1
    instance-of v2, p3, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    if-eqz v2, :cond_2

    .line 202
    if-eqz v1, :cond_2

    .line 204
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->rollback()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onComplete()V

    .line 214
    .end local v1    # "marked":Z
    :cond_3
    return-void

    .line 206
    .restart local v1    # "marked":Z
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to automatically rollback transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    const/4 v1, 0x0

    .line 173
    .local v1, "found":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->futures()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 174
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 175
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

    .line 177
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    new-instance v4, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote node left grid (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 180
    const/4 v1, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_1
    return v1
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 3
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 127
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction future received owner changed callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->hasWriteKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->lockKeys:Ljava/util/Collection;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onDone()Z

    .line 137
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    .prologue
    .line 246
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->pending()Ljava/util/Collection;

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

    .line 248
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 249
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;

    .line 251
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 254
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V

    goto :goto_0

    .line 259
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public prepare()V
    .locals 7

    .prologue
    .line 310
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->optimistic()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 311
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->topologyReadLock()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v1

    .line 314
    .local v1, "topFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    if-nez v1, :cond_1

    .line 315
    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->topologyReadUnlock()V

    throw v2

    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->topologyReadUnlock()V

    .line 367
    .end local v1    # "topFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :goto_0
    return-void

    .line 320
    .restart local v1    # "topFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->isDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 322
    :try_start_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 323
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->timedOut()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction timed out and was rolled back: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/apache/ignite/transactions/TransactionTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/transactions/TransactionOptimisticException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->topologyReadUnlock()V

    goto :goto_0

    .line 328
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_3
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transaction state for prepare [state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/apache/ignite/transactions/TransactionTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/transactions/TransactionOptimisticException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 345
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 346
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    :goto_2
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    :goto_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->topologyReadUnlock()V

    goto/16 :goto_0

    .line 332
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_5
    new-instance v4, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transaction state for prepare [state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->onError(Ljava/util/UUID;Ljava/lang/Iterable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 345
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_2

    .line 338
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 341
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 343
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->prepare0()V
    :try_end_5
    .catch Lorg/apache/ignite/transactions/TransactionTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/ignite/transactions/TransactionOptimisticException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 350
    :cond_5
    :try_start_6
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 366
    .end local v1    # "topFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :cond_6
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->preparePessimistic()V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 815
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 161
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method
