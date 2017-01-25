.class public final Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridDhtColocatedLockFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$LockTimeoutObject;
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
.field private accessTtl:J

.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
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
.end field

.field private filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field private lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

.field private read:Z

.field private retval:Z

.field private threadId:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private timeout:J

.field private timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$LockTimeoutObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture",
            "<TK;TV;>.",
            "LockTimeoutObject;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private topVer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ">;"
        }
    .end annotation
.end field

.field private trackable:Z

.field private tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private valMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 4
    .param p3, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "read"    # Z
    .param p5, "retval"    # Z
    .param p6, "timeout"    # J
    .param p8, "accessTtl"    # J
    .param p10, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;",
            "ZZJJ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->boolReducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 133
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 136
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->keys:Ljava/util/Collection;

    .line 137
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .line 138
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->read:Z

    .line 139
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->retval:Z

    .line 140
    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeout:J

    .line 141
    iput-wide p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->accessTtl:J

    .line 142
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 144
    if-nez p3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    .line 146
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 148
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 150
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_1

    .line 151
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 153
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    .line 154
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$LockTimeoutObject;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$LockTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$LockTimeoutObject;

    .line 156
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$LockTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 159
    :cond_2
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->valMap:Ljava/util/Map;

    .line 160
    return-void

    .line 144
    :cond_3
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->threadId()J

    move-result-wide v0

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onComplete(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Ljava/util/UUID;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->valMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .prologue
    .line 49
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->retval:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->mapOnTopology()V

    return-void
.end method

.method static synthetic access$300()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    return-wide v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Ljava/util/Deque;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;
    .param p1, "x1"    # Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->proceedMapping(Ljava/util/Deque;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeout:J

    return-wide v0
.end method

.method private addEntry(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 19
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->explicitLock(JLorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    .line 259
    .local v2, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v18

    .line 262
    .local v18, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 264
    if-eqz v2, :cond_1

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot access key within transaction if lock is externally held [key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 269
    :cond_0
    const/4 v3, 0x0

    .line 314
    .end local v18    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_0
    return-object v3

    .line 273
    .restart local v18    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .end local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeout:J

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->locked()Z

    move-result v13

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v14

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicitSingle()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v15, 0x1

    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZZZ)V

    .line 287
    .restart local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    new-instance v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .end local v18    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_2
    move-object v3, v2

    .line 314
    goto :goto_0

    .line 273
    .end local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v18    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 291
    .end local v18    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_3
    if-nez v2, :cond_5

    .line 292
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .end local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeout:J

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v14

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicitSingle()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v15, 0x1

    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZZZZ)V

    .line 306
    .restart local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    new-instance v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 311
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v4, v6, v7, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addExplicitLock(JLorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_2

    .line 292
    .end local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    .line 309
    .restart local v2    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_5
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reenter()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v2

    goto :goto_4
.end method

.method private addLocalKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;)Z
    .locals 6
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    .local p3, "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v2, 0x0

    .line 990
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move-result-object v1

    .line 992
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->detached()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 994
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v3, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 995
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 996
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry being locked did not pass filter (will not lock): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 998
    :cond_1
    invoke-direct {p0, v2, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onComplete(ZZ)Z

    .line 1008
    :cond_2
    :goto_0
    return v2

    .line 1003
    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->addEntry(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 1005
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1006
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1008
    :cond_4
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private implicitSingleTx()Z
    .locals 1

    .prologue
    .line 209
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicitSingle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private implicitTx()Z
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->implicit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inTx()Z
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInvalidate()Z
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isInvalidate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 506
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    goto :goto_0
.end method

.method private lockLocally(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Deque;)V
    .locals 20
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3    # Ljava/util/Deque;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p3, "mappings":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 867
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before locally locking keys : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 869
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->read:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->retval:Z

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeout:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->accessTtl:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v18, v0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    invoke-virtual/range {v4 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;ZZJJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v19

    .line 882
    .local v19, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Exception;>;"
    new-instance v4, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Ljava/util/Collection;Ljava/util/Deque;)V

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 929
    return-void
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "mapping"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1025
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 1027
    .local v0, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1029
    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    move-result-object v1

    throw v1

    .line 1031
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLock()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1032
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start group lock transaction (local node is not primary for  key) [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", primaryNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1035
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1036
    :cond_3
    new-instance p2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    .end local p2    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    invoke-direct {p2, v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 1040
    .restart local p2    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    :goto_0
    return-object p2

    .line 1038
    :cond_4
    invoke-virtual {p2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    goto :goto_0
.end method

.method private map(Ljava/util/Collection;)V
    .locals 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 592
    .local v6, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .end local v6    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catch_0
    move-exception v34

    .line 778
    .local v34, "ex":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z

    .line 780
    .end local v34    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    :goto_0
    return-void

    .line 594
    .restart local v6    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    :try_start_1
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 596
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 597
    new-instance v5, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to map keys for cache (all partition nodes left the grid): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 604
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->mapAsPrimary(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 607
    new-instance v45, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct/range {v45 .. v45}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    .line 610
    .local v45, "mappings":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    const/16 v42, 0x0

    .line 612
    .local v42, "map":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 613
    .local v40, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    move-result-object v50

    .line 616
    .local v50, "updated":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    move-object/from16 v0, v50

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_4

    .line 617
    move-object/from16 v0, v45

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 619
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_4

    invoke-virtual/range {v50 .. v50}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->colocatedLocallyMapped(Z)V

    .line 623
    :cond_4
    move-object/from16 v42, v50

    .line 624
    goto :goto_1

    .line 626
    .end local v40    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v50    # "updated":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 627
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 628
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Abandoning (re)map because future is done: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_6
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 634
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting (re)map for mappings [mappings="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fut="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 636
    :cond_7
    const/16 v36, 0x0

    .line 639
    .local v36, "hasRmtNodes":Z
    invoke-interface/range {v45 .. v45}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 640
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    .line 642
    .local v44, "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v47

    .line 643
    .local v47, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->mappedKeys()Ljava/util/Collection;

    move-result-object v43

    .line 645
    .local v43, "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v41

    .line 647
    .local v41, "loc":Z
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    invoke-interface/range {v43 .. v43}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 649
    :cond_8
    const/4 v4, 0x0

    .line 651
    .local v4, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    new-instance v32, Ljava/util/ArrayList;

    invoke-interface/range {v43 .. v43}, Ljava/util/Collection;->size()I

    move-result v5

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 653
    .local v32, "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_9
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 656
    .restart local v40    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v49

    .local v49, "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v48, v4

    .line 659
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .local v48, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :goto_3
    const/16 v33, 0x0

    .line 662
    .local v33, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move-result-object v33

    .line 664
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v0, v33

    invoke-virtual {v5, v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 665
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 666
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry being locked did not pass filter (will not lock): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 668
    :cond_a
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onComplete(ZZ)Z
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 737
    :catch_1
    move-exception v38

    move-object/from16 v4, v48

    .line 738
    .end local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .local v38, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_4
    :try_start_3
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 739
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry in lockAsync(..) method (will retry): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_b
    move-object/from16 v48, v4

    .line 741
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    goto :goto_3

    .line 673
    .end local v38    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_c
    :try_start_4
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_d

    invoke-virtual/range {v33 .. v33}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->detached()Z

    move-result v5

    xor-int v5, v5, v41

    if-nez v5, :cond_d

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid entry [loc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 675
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->addEntry(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v30

    .line 678
    .local v30, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual/range {v33 .. v33}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->detached()Z

    move-result v5

    if-eqz v5, :cond_11

    const/16 v51, 0x0

    .line 681
    .local v51, "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :goto_5
    const/16 v31, 0x0

    .line 683
    .local v31, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v51, :cond_e

    .line 684
    invoke-virtual/range {v51 .. v51}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    check-cast v31, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 686
    .restart local v31    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->valMap:Ljava/util/Map;

    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_e
    if-eqz v30, :cond_24

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v5

    if-nez v5, :cond_24

    .line 690
    if-nez v48, :cond_23

    .line 691
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v12

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->implicitTx()Z

    move-result v13

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->implicitSingleTx()Z

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->read:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->retval:Z

    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isInvalidate()Z

    move-result v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeout:J

    move-wide/from16 v19, v0

    invoke-interface/range {v43 .. v43}, Ljava/util/Collection;->size()I

    move-result v21

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->size()I

    move-result v22

    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v23

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->syncCommit()Z

    move-result v23

    if-eqz v23, :cond_13

    const/16 v23, 0x1

    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v24

    if-eqz v24, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v24

    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v25

    if-eqz v25, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->partitionLock()Z

    move-result v25

    if-eqz v25, :cond_15

    const/16 v25, 0x1

    :goto_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v26

    if-eqz v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->subjectId()Ljava/util/UUID;

    move-result-object v26

    :goto_a
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v27

    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->taskNameHash()I

    move-result v27

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->read:Z

    move/from16 v28, v0

    if-eqz v28, :cond_18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->accessTtl:J

    move-wide/from16 v28, v0

    :goto_c
    invoke-direct/range {v4 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;-><init>(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZZZLorg/apache/ignite/transactions/TransactionIsolation;ZJIIZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;IJ)V
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 715
    .end local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :try_start_5
    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->request(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;)V

    .line 718
    :goto_d
    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 720
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_f

    .line 721
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v5, v0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->addKeyMapping(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 723
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->retval:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v5, v1, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->addKeyBytes(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 730
    :goto_e
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v5

    if-eqz v5, :cond_19

    if-nez v30, :cond_19

    const/16 v35, 0x1

    .line 732
    .local v35, "explicit":Z
    :goto_f
    if-eqz v35, :cond_10

    .line 733
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    move-object/from16 v0, v49

    invoke-virtual {v5, v0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->addKeyMapping(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/cluster/ClusterNode;)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 744
    :cond_10
    if-eqz v35, :cond_9

    .line 745
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-interface/range {v47 .. v47}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->markExplicit(Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v46, 0x1

    .line 747
    .local v46, "marked":Z
    :goto_10
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_9

    if-nez v46, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 678
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .end local v31    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v35    # "explicit":Z
    .end local v46    # "marked":Z
    .end local v51    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_11
    :try_start_7
    move-object/from16 v0, v33

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->versionedValue(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v51

    goto/16 :goto_5

    .line 691
    .restart local v31    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v51    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_12
    invoke-interface/range {v43 .. v43}, Ljava/util/Collection;->size()I
    :try_end_7
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v22

    goto/16 :goto_6

    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_8

    :cond_15
    const/16 v25, 0x0

    goto/16 :goto_9

    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_a

    :cond_17
    const/16 v27, 0x0

    goto/16 :goto_b

    :cond_18
    const-wide/16 v28, -0x1

    goto/16 :goto_c

    .line 730
    .end local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_19
    const/16 v35, 0x0

    goto :goto_f

    .line 745
    .restart local v35    # "explicit":Z
    :cond_1a
    const/16 v46, 0x0

    goto :goto_10

    .line 751
    .end local v30    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v31    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v33    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v35    # "explicit":Z
    .end local v40    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v49    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v51    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_1b
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v5

    if-eqz v5, :cond_1c

    if-eqz v4, :cond_1c

    .line 752
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->hasTransforms()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->hasTransforms(Z)V

    .line 754
    :cond_1c
    invoke-interface/range {v32 .. v32}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 755
    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->distributedKeys(Ljava/util/Collection;)V

    .line 757
    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v5

    if-nez v5, :cond_1d

    const/4 v5, 0x1

    :goto_11
    or-int v36, v36, v5

    goto/16 :goto_2

    :cond_1d
    const/4 v5, 0x0

    goto :goto_11

    .line 760
    :cond_1e
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->request()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    move-result-object v5

    if-eqz v5, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 762
    :cond_1f
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 766
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .end local v32    # "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v41    # "loc":Z
    .end local v43    # "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v44    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    .end local v47    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_20
    if-eqz v36, :cond_21

    .line 767
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->trackable:Z

    .line 769
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 770
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate future ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 773
    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->trackable:Z

    .line 775
    :cond_22
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->proceedMapping(Ljava/util/Deque;)V
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 737
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v30    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v31    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v32    # "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v33    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v40    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v41    # "loc":Z
    .restart local v43    # "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v44    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    .restart local v47    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v49    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .restart local v51    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :catch_2
    move-exception v38

    goto/16 :goto_4

    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_23
    move-object/from16 v4, v48

    .end local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    goto/16 :goto_d

    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_24
    move-object/from16 v4, v48

    .end local v48    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    goto/16 :goto_e
.end method

.method private mapAsPrimary(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 9
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 944
    .local v0, "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 945
    .local v3, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {v6, v7, v3, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 947
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 948
    .local v2, "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v5

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v5, v6, v7, v2, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeExplicitLock(JLorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    goto :goto_0

    .line 953
    .end local v2    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_1
    invoke-direct {p0, v3, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->addLocalKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;)Z

    .line 955
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isDone()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 973
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    :goto_1
    return v4

    .line 959
    :cond_3
    iput-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->trackable:Z

    .line 961
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v4, :cond_4

    .line 962
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->colocatedLocallyMapped(Z)V

    .line 964
    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 965
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v4, :cond_5

    .line 966
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 967
    .restart local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->addKeyMapping(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/cluster/ClusterNode;)V

    goto :goto_2

    .line 970
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_5
    const/4 v4, 0x0

    invoke-direct {p0, v0, p2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockLocally(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Deque;)V

    :cond_6
    move v4, v5

    .line 973
    goto :goto_1
.end method

.method private mapOnTopology()V
    .locals 5

    .prologue
    .line 544
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readLock()V

    .line 547
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->stopping()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 548
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to perform cache operation (cache is stopped): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    .line 579
    :goto_0
    return-void

    .line 554
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v0

    .line 556
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    .line 559
    .local v1, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v2, :cond_1

    .line 560
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 562
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 564
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->keys:Ljava/util/Collection;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->map(Ljava/util/Collection;)V

    .line 566
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->markInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    .end local v1    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    goto :goto_0

    .line 569
    :cond_2
    :try_start_2
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)V

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 577
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    throw v2
.end method

.method private newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .locals 3
    .param p1, "nested"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1051
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire lock for keys (primary node left grid, retry transaction if possible) [keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->keys:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private onComplete(ZZ)Z
    .locals 3
    .param p1, "success"    # Z
    .param p2, "distribute"    # Z

    .prologue
    .line 465
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received onComplete(..) callback [success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", distribute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 469
    :cond_0
    if-nez p1, :cond_1

    .line 470
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->undoLocks(Z)V

    .line 472
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContext(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 475
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-super {p0, v1, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 476
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completing future: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 480
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 482
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$LockTimeoutObject;

    if-eqz v0, :cond_4

    .line 483
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$LockTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 485
    :cond_4
    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    const/4 v0, 0x0

    .line 430
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    instance-of v2, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    if-eqz v2, :cond_0

    move-object p1, v0

    .end local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method private onFailed(Z)V
    .locals 1
    .param p1, "dist"    # Z

    .prologue
    .line 345
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->undoLocks(Z)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->complete(Z)V

    .line 348
    return-void
.end method

.method private proceedMapping(Ljava/util/Deque;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 791
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    .local p1, "mappings":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    invoke-interface {p1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    .line 794
    .local v2, "map":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    if-nez v2, :cond_0

    .line 852
    :goto_0
    return-void

    .line 797
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->request()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    move-result-object v5

    .line 798
    .local v5, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->distributedKeys()Ljava/util/Collection;

    move-result-object v3

    .line 799
    .local v3, "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 801
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    array-length v7, v7

    if-eqz v7, :cond_1

    .line 802
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5, v7, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 804
    :cond_1
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 805
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    invoke-direct {p0, v3, v7, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockLocally(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Deque;)V

    goto :goto_0

    .line 807
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;

    invoke-direct {v1, p0, v4, v3, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Deque;)V

    .line 809
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 811
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 813
    const/4 v6, 0x0

    .line 815
    .local v6, "txSync":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 816
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->threadId()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->awaitFinishAckAsync(Ljava/util/UUID;J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v6

    .line 818
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 820
    :cond_4
    :try_start_0
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 821
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending near lock request [node="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", req="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 823
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v8

    invoke-virtual {v7, v4, v5, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "ex":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 828
    :cond_6
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto/16 :goto_0

    .line 832
    .end local v0    # "ex":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :cond_7
    new-instance v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$3;

    invoke-direct {v7, p0, v4, v5, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;)V

    invoke-interface {v6, v7}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0
.end method

.method private syncCommit()Z
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->syncCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncRollback()Z
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->syncRollback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private undoLocks(Z)V
    .locals 5
    .param p1, "dist"    # Z

    .prologue
    .line 324
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->colocated()Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->keys:Ljava/util/Collection;

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedCache;->removeLocks(JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;)V

    .line 337
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->recheckPendingLocks()V

    .line 338
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked transaction as rollback only because locks could not be acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction was not marked rollback-only while locks were not acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 435
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onComplete(ZZ)Z

    .line 438
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public complete(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 354
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onComplete(ZZ)Z

    .line 355
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 493
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method map()V
    .locals 4

    .prologue
    .line 520
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersionSnapshot()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    .line 523
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_0
    if-eqz v0, :cond_1

    .line 525
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 527
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->keys:Ljava/util/Collection;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->map(Ljava/util/Collection;)V

    .line 529
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->markInitialized()V

    .line 536
    :goto_1
    return-void

    .line 520
    .end local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->threadId:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->lastExplicitLockTopologyVersion(J)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    goto :goto_0

    .line 535
    .restart local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->mapOnTopology()V

    goto :goto_1
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->trackable:Z

    .line 196
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
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;
    .param p2, "err"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 443
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received onDone(..) callback [success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 454
    :goto_0
    return v0

    .line 449
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    instance-of v0, p2, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_1
    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 451
    if-eqz p2, :cond_2

    .line 452
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 454
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onComplete(ZZ)Z

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 449
    goto :goto_1
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    const/16 v7, 0x5d

    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, "found":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->futures()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 365
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 366
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;

    .line 368
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 370
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found mini-future for left node [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mini="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 373
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 375
    const/4 v1, 0x1

    goto :goto_0

    .line 380
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_2
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 381
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Near lock future does not have mapping for left node (ignoring) [nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 384
    :cond_3
    return v1
.end method

.method onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    const/16 v6, 0x5d

    .line 392
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_6

    .line 393
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received lock response from node [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 397
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->pending()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 398
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 399
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;

    .line 401
    .local v2, "mini":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 404
    :cond_2
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found mini future for response [mini="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 407
    :cond_3
    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    .line 409
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 410
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Future after processed lock response [fut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mini="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 424
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mini":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>.MiniFuture;"
    :cond_4
    :goto_0
    return-void

    .line 418
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find mini future for response (perhaps due to stale message) [res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 422
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring lock response from node (future is done) [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 498
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;

    const-string v2, "inTx"

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->inTx()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackable()Z
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtColocatedLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
