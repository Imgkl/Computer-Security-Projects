.class public final Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridNearLockFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;,
        Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;
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
        "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture",
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

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;",
            ">;"
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

.field private final mux:Ljava/lang/Object;

.field private read:Z

.field private retval:Z

.field private threadId:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private volatile timedOut:Z

.field private timeout:J

.field private timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture",
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
    .line 48
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 48
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
    .line 142
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->boolReducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->trackable:Z

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->mux:Ljava/lang/Object;

    .line 144
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 147
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->keys:Ljava/util/Collection;

    .line 148
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    .line 149
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->read:Z

    .line 150
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->retval:Z

    .line 151
    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeout:J

    .line 152
    iput-wide p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->accessTtl:J

    .line 153
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 155
    if-nez p3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->threadId:J

    .line 157
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 159
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;

    .line 163
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_1

    .line 164
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 166
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    .line 167
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;

    .line 169
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 172
    :cond_2
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->valMap:Ljava/util/Map;

    .line 173
    return-void

    .line 155
    :cond_3
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->threadId()J

    move-result-wide v0

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
    .param p1, "x1"    # Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->proceedMapping(Lorg/jsr166/ConcurrentLinkedDeque8;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeout:J

    return-wide v0
.end method

.method static synthetic access$1402(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timedOut:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onComplete(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Ljava/util/UUID;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->valMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->retval:Z

    return v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->implicitTx()Z

    move-result v0

    return v0
.end method

.method private addEntry(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .locals 12
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .param p3, "dhtNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timedOut:Z

    if-eqz v0, :cond_1

    .line 296
    const/4 v10, 0x0

    .line 338
    :cond_0
    :goto_0
    return-object v10

    .line 299
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->threadId:J

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeout:J

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v8

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->implicitSingleTx()Z

    move-result v9

    move-object v0, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->addNearLocal(Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v10

    .line 309
    .local v10, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v11

    .line 312
    .local v11, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v11, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 315
    .end local v11    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    if-eqz v10, :cond_3

    .line 316
    invoke-virtual {v10, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 318
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    if-nez v10, :cond_6

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 323
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 324
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire lock with negative timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 326
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onFailed(Z)V

    .line 328
    const/4 v10, 0x0

    goto :goto_0

    .line 299
    .end local v10    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 320
    .restart local v10    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 332
    :cond_6
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timedOut:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 335
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private checkLocks()Z
    .locals 8

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 525
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->initialized()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->hasPending()Z

    move-result v3

    if-nez v3, :cond_5

    .line 526
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 528
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 531
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->locked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 532
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lock is still not acquired for entry (will keep waiting) [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v3, v5

    .line 561
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "i":I
    :goto_2
    return v3

    .line 543
    .restart local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 544
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed entry in onOwnerChanged method (will retry): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 548
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    invoke-interface {v6, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 526
    .end local v2    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 553
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_3
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 554
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local lock acquired for entries [fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", entries="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 556
    :cond_4
    invoke-direct {p0, v4, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onComplete(ZZ)Z

    move v3, v4

    .line 558
    goto :goto_2

    .end local v1    # "i":I
    :cond_5
    move v3, v5

    .line 561
    goto :goto_2
.end method

.method private dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1169
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearTx()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    move-result-object v0

    return-object v0
.end method

.method private filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 5
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 488
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v3, p1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 489
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter didn\'t pass for entry (will fail lock): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 492
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onFailed(Z)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 497
    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private implicitSingleTx()Z
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

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
    .line 267
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

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
    .line 225
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

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
    .line 239
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

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
    .line 638
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    goto :goto_0
.end method

.method private locked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 4
    .param p1, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->threadId:J

    invoke-interface {p1, v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedLocallyByIdOrThread(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->filter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 1145
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1147
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    .line 1149
    .local v0, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1151
    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    move-result-object v1

    throw v1

    .line 1153
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLock()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1154
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

    .line 1157
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

    .line 1158
    :cond_3
    new-instance p2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    .end local p2    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    invoke-direct {p2, v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 1162
    .restart local p2    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    :goto_0
    return-object p2

    .line 1160
    :cond_4
    invoke-virtual {p2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    goto :goto_0
.end method

.method private map(Ljava/lang/Iterable;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 724
    .local v6, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v6    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catch_0
    move-exception v35

    .line 923
    .local v35, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onError(Ljava/lang/Throwable;)V

    .line 925
    .end local v35    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    :goto_0
    return-void

    .line 726
    .restart local v6    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    :try_start_1
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 728
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->affinityNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 729
    new-instance v5, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;

    const-string v7, "Failed to map keys for near-only cache (all partition nodes left the grid)."

    invoke-direct {v5, v7}, Lorg/apache/ignite/internal/cluster/ClusterTopologyServerNotFoundException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 735
    :cond_3
    new-instance v44, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct/range {v44 .. v44}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    .line 739
    .local v44, "mappings":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    const/16 v41, 0x0

    .line 741
    .local v41, "map":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 742
    .local v40, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->map(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    move-result-object v49

    .line 745
    .local v49, "updated":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    move-object/from16 v0, v49

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_4

    .line 746
    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->add(Ljava/lang/Object;)Z

    .line 748
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_4

    invoke-virtual/range {v49 .. v49}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 749
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->nearLocallyMapped(Z)V

    .line 752
    :cond_4
    move-object/from16 v41, v49

    .line 753
    goto :goto_1

    .line 755
    .end local v40    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v49    # "updated":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 756
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 757
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 762
    :cond_6
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 763
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting (re)map for mappings [mappings="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v44

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

    .line 766
    :cond_7
    invoke-virtual/range {v44 .. v44}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 767
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    .line 769
    .local v43, "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v46

    .line 770
    .local v46, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->mappedKeys()Ljava/util/Collection;

    move-result-object v42

    .line 772
    .local v42, "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    invoke-interface/range {v42 .. v42}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 774
    :cond_8
    const/4 v4, 0x0

    .line 776
    .local v4, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    new-instance v33, Ljava/util/ArrayList;

    invoke-interface/range {v42 .. v42}, Ljava/util/Collection;->size()I

    move-result v5

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 778
    .local v33, "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/16 v36, 0x0

    .line 780
    .local v36, "explicit":Z
    invoke-interface/range {v42 .. v42}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_9
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 781
    .restart local v40    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v48

    .local v48, "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v47, v4

    .line 784
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .local v47, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :goto_3
    const/16 v34, 0x0

    .line 787
    .local v34, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v34

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 790
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 791
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry being locked did not pass filter (will not lock): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 793
    :cond_a
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onComplete(ZZ)Z
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 893
    :catch_1
    move-exception v38

    move-object/from16 v4, v47

    .line 894
    .end local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .local v38, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_4
    :try_start_3
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->obsolete()Z

    move-result v5

    if-nez v5, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed exception on non-obsolete entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 799
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .end local v38    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_b
    :try_start_4
    invoke-interface/range {v46 .. v46}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->addEntry(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v30

    .line 801
    .local v30, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 802
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 803
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Abandoning (re)map because future is done after addEntry attempt [fut="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :cond_c
    if-eqz v30, :cond_1d

    .line 810
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-nez v5, :cond_d

    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v5

    if-nez v5, :cond_d

    .line 811
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->threadId:J

    move-object/from16 v0, v30

    invoke-virtual {v5, v8, v9, v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addExplicitLock(JLorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 813
    :cond_d
    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->versionedValue()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v50

    .line 815
    .local v50, "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-nez v50, :cond_e

    .line 816
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v31

    .line 819
    .local v31, "dhtEntry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    if-eqz v31, :cond_e

    .line 820
    :try_start_5
    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->versionedValue(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v50

    .line 832
    .end local v31    # "dhtEntry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :cond_e
    :goto_5
    const/16 v32, 0x0

    .line 834
    .local v32, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v50, :cond_f

    .line 835
    :try_start_6
    invoke-virtual/range {v50 .. v50}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    check-cast v32, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 837
    .restart local v32    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->valMap:Ljava/util/Map;

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    :cond_f
    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v5

    if-nez v5, :cond_27

    .line 841
    if-nez v47, :cond_26

    .line 842
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->threadId:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v12

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->implicitTx()Z

    move-result v13

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->implicitSingleTx()Z

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->read:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->retval:Z

    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isInvalidate()Z

    move-result v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeout:J

    move-wide/from16 v19, v0

    invoke-interface/range {v42 .. v42}, Ljava/util/Collection;->size()I

    move-result v21

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->size()I

    move-result v22

    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->syncCommit()Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v23, 0x1

    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v24

    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v24

    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v25

    if-eqz v25, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->partitionLock()Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x1

    :goto_9
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v26

    if-eqz v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->subjectId()Ljava/util/UUID;

    move-result-object v26

    :goto_a
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v27

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->taskNameHash()I

    move-result v27

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->read:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->accessTtl:J

    move-wide/from16 v28, v0

    :goto_c
    invoke-direct/range {v4 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;-><init>(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;JLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZZZLorg/apache/ignite/transactions/TransactionIsolation;ZJIIZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;IJ)V
    :try_end_6
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 866
    .end local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :try_start_7
    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->request(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;)V

    .line 869
    :goto_d
    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 871
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_10

    .line 872
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->addKeyMapping(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 874
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->retval:Z

    if-eqz v5, :cond_1b

    if-nez v32, :cond_1b

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v4, v0, v5, v1, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->addKeyBytes(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 881
    :goto_f
    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->reentry()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 882
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->hasLockCandidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-nez v5, :cond_1c

    const/16 v36, 0x1

    .line 888
    .end local v32    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v50    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_11
    :goto_10
    if-eqz v36, :cond_12

    .line 889
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->addKeyMapping(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/cluster/ClusterNode;)V
    :try_end_7
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 902
    :cond_12
    if-eqz v36, :cond_9

    .line 903
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-interface/range {v46 .. v46}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->markExplicit(Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/16 v45, 0x1

    .line 905
    .local v45, "marked":Z
    :goto_11
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_9

    if-nez v45, :cond_9

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 822
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .end local v45    # "marked":Z
    .restart local v31    # "dhtEntry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v50    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :catch_2
    move-exception v38

    .line 823
    .restart local v38    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_9
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_13

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->obsolete()Z

    move-result v5

    if-nez v5, :cond_13

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Got removed exception for non-obsolete entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 826
    :cond_13
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 827
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed exception for DHT entry in map (will ignore): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 842
    .end local v31    # "dhtEntry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v38    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v32    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_14
    invoke-interface/range {v42 .. v42}, Ljava/util/Collection;->size()I

    move-result v22

    goto/16 :goto_6

    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_16
    const/16 v24, 0x0

    goto/16 :goto_8

    :cond_17
    const/16 v25, 0x0

    goto/16 :goto_9

    :cond_18
    const/16 v26, 0x0

    goto/16 :goto_a

    :cond_19
    const/16 v27, 0x0

    goto/16 :goto_b

    :cond_1a
    const-wide/16 v28, -0x1

    goto/16 :goto_c

    .line 874
    .end local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 882
    :cond_1c
    const/16 v36, 0x0

    goto/16 :goto_10

    .line 886
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .end local v32    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v50    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->hasLockCandidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v5

    if-nez v5, :cond_1e

    const/16 v36, 0x1

    :goto_12
    move-object/from16 v4, v47

    .end local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    goto/16 :goto_10

    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_1e
    const/16 v36, 0x0

    goto :goto_12

    .line 896
    .end local v30    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v38    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_1f
    :try_start_a
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 897
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry in lockAsync(..) method (will retry): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_20
    move-object/from16 v47, v4

    .line 899
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    goto/16 :goto_3

    .line 903
    .end local v38    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v30    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_21
    const/16 v45, 0x0

    goto/16 :goto_11

    .line 909
    .end local v30    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v34    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v40    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v48    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_22
    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 910
    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->distributedKeys(Ljava/util/Collection;)V

    goto/16 :goto_2

    .line 912
    :cond_23
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_24

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->request()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    move-result-object v5

    if-eqz v5, :cond_24

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 914
    :cond_24
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    .line 918
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .end local v33    # "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v36    # "explicit":Z
    .end local v42    # "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v43    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    .end local v46    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->recheckPendingLocks()V

    .line 920
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->proceedMapping(Lorg/jsr166/ConcurrentLinkedDeque8;)V
    :try_end_a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 893
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v30    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v33    # "distributedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v34    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .restart local v36    # "explicit":Z
    .restart local v40    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v42    # "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v43    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    .restart local v46    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v48    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :catch_3
    move-exception v38

    goto/16 :goto_4

    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v32    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v50    # "val":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    :cond_26
    move-object/from16 v4, v47

    .end local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    goto/16 :goto_d

    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    :cond_27
    move-object/from16 v4, v47

    .end local v47    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    goto/16 :goto_f
.end method

.method private newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .locals 3
    .param p1, "nested"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 1180
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire lock for keys (primary node left grid, retry transaction if possible) [keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->keys:Ljava/util/Collection;

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
    .line 597
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 601
    :cond_0
    if-nez p1, :cond_1

    .line 602
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->undoLocks(Z)V

    .line 604
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContext(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 607
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-super {p0, v1, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 608
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 612
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 614
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;

    if-eqz v0, :cond_4

    .line 615
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$LockTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 617
    :cond_4
    const/4 v0, 0x1

    .line 620
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/4 v0, 0x0

    .line 479
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    instance-of v2, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    if-eqz v2, :cond_0

    move-object p1, v0

    .end local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method private onFailed(Z)V
    .locals 1
    .param p1, "dist"    # Z

    .prologue
    .line 392
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->undoLocks(Z)V

    .line 394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->complete(Z)V

    .line 395
    return-void
.end method

.method private proceedMapping(Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8",
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
    .line 937
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    .local p1, "mappings":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;>;"
    invoke-virtual {p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;

    .line 940
    .local v9, "map":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;
    if-nez v9, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->request()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    move-result-object v3

    .line 944
    .local v3, "req":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->distributedKeys()Ljava/util/Collection;

    move-result-object v2

    .line 945
    .local v2, "mappedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 947
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 950
    :cond_1
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 951
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 953
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before locally locking near request: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 956
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v0, v1, v5, v3, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v7

    .line 959
    .local v7, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;>;"
    new-instance v11, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/cluster/ClusterNode;Lorg/jsr166/ConcurrentLinkedDeque8;)V

    invoke-direct {v11, v0, v7}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/lang/IgniteBiClosure;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    invoke-virtual {p0, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 1086
    .end local v7    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;>;"
    :cond_3
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

    invoke-direct {v8, p0, v4, v2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Lorg/jsr166/ConcurrentLinkedDeque8;)V

    .line 1088
    .local v8, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1090
    invoke-virtual {p0, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 1092
    const/4 v10, 0x0

    .line 1094
    .local v10, "txSync":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1095
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->threadId()J

    move-result-wide v12

    invoke-virtual {v0, v1, v12, v13}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->awaitFinishAckAsync(Ljava/util/UUID;J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v10

    .line 1097
    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1099
    :cond_5
    :try_start_0
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1100
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending near lock request [node="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", req="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1102
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v1

    invoke-virtual {v0, v4, v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1104
    :catch_0
    move-exception v6

    .line 1105
    .local v6, "ex":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    if-nez v8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1107
    :cond_7
    invoke-virtual {v8, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto/16 :goto_0

    .line 1111
    .end local v6    # "ex":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :cond_8
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;

    invoke-direct {v0, p0, v4, v3, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;)V

    invoke-interface {v10, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0
.end method

.method private syncCommit()Z
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

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
    .line 253
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

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
    .locals 7
    .param p1, "dist"    # Z

    .prologue
    .line 348
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    if-eqz p1, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-nez v4, :cond_1

    .line 349
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearTx()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->keys:Ljava/util/Collection;

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->removeLocks(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;)V

    .line 384
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->recheckPendingLocks()V

    .line 385
    return-void

    .line 351
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v4, :cond_2

    .line 352
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->setRollbackOnly()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 353
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 354
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Marked transaction as rollback only because locks could not be acquired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 360
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entriesCopy()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 362
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 364
    :catch_0
    move-exception v3

    .line 367
    .local v3, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_4
    :goto_2
    :try_start_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_3

    .line 370
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 374
    :catch_1
    move-exception v2

    .line 375
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 376
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to remove lock on removed entry (will retry) [ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 356
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v3    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_5
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transaction was not marked rollback-only while locks were not acquired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 566
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onComplete(ZZ)Z

    .line 569
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public complete(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 401
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onComplete(ZZ)Z

    .line 402
    return-void
.end method

.method public entriesCopy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->entries:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 625
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method map()V
    .locals 4

    .prologue
    .line 652
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersionSnapshot()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    .line 655
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_0
    if-eqz v0, :cond_1

    .line 657
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 659
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->keys:Ljava/util/Collection;

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->map(Ljava/lang/Iterable;)V

    .line 661
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->markInitialized()V

    .line 668
    :goto_1
    return-void

    .line 652
    .end local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->lastExplicitLockTopologyVersion(J)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    goto :goto_0

    .line 667
    .restart local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->mapOnTopology()V

    goto :goto_1
.end method

.method mapOnTopology()V
    .locals 5

    .prologue
    .line 676
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readLock()V

    .line 679
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->stopping()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 680
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to perform cache operation (cache is stopped): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onDone(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    .line 711
    :goto_0
    return-void

    .line 686
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v0

    .line 688
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 689
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    .line 691
    .local v1, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    if-eqz v2, :cond_1

    .line 692
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 694
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 696
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->keys:Ljava/util/Collection;

    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->map(Ljava/lang/Iterable;)V

    .line 698
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->markInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    .end local v1    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    goto :goto_0

    .line 701
    :cond_2
    :try_start_2
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)V

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 709
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    throw v2
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->trackable:Z

    .line 219
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
    .line 179
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)V

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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 574
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 578
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->checkLocks()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 586
    :goto_0
    return v0

    .line 581
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    instance-of v0, p2, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_1
    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 583
    if-eqz p2, :cond_3

    .line 584
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 586
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onComplete(ZZ)Z

    move-result v0

    goto :goto_0

    :cond_4
    move-object v0, p2

    .line 581
    goto :goto_1
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onDone(Ljava/lang/Boolean;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/16 v7, 0x5d

    .line 410
    const/4 v1, 0x0

    .line 412
    .local v1, "found":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->futures()Ljava/util/Collection;

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

    .line 413
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 414
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

    .line 416
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 421
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->newTopologyException(Ljava/lang/Throwable;Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 423
    const/4 v1, 0x1

    goto :goto_0

    .line 428
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :cond_2
    if-nez v1, :cond_3

    .line 429
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 434
    :cond_3
    return v1
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 3
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/4 v0, 0x1

    .line 512
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->onDone(Ljava/lang/Object;)Z

    .line 518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const/16 v6, 0x5d

    .line 442
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_6

    .line 443
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 446
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->pending()Ljava/util/Collection;

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

    .line 447
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 448
    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;

    .line 450
    .local v2, "mini":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 453
    :cond_2
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 454
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 456
    :cond_3
    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    .line 458
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 473
    .end local v0    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mini":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>.MiniFuture;"
    :cond_4
    :goto_0
    return-void

    .line 467
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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

    .line 470
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 471
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->log:Lorg/apache/ignite/IgniteLogger;

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
    .line 630
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    const-string v2, "inTx"

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->inTx()Z

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
    .line 213
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->trackable:Z

    return v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->lockVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
