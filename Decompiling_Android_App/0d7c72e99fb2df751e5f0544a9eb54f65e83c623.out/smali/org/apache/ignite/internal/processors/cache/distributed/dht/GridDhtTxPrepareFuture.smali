.class public final Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;
.super Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;
.source "GridDhtTxPrepareFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;
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

.field private completeCb:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;",
            ">;"
        }
    .end annotation
.end field

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

.field private dhtVerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
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
.end field

.field private filterFailedKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation
.end field

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private invoke:Z

.field private last:Z

.field private lastBackups:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private lockKeys:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridConcurrentHashSet",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;"
        }
    .end annotation
.end field

.field private volatile locksReady:Z

.field private mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.field private nearMiniId:Lorg/apache/ignite/lang/IgniteUuid;

.field private reads:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end field

.field private replied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

.field private retVal:Z

.field private trackable:Z

.field private tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private txNodes:Ljava/util/Map;
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

.field private writes:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;ZZLjava/util/Collection;Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 3
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .param p3, "nearMiniId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5, "last"    # Z
    .param p6, "retVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;ZZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    .local p4, "dhtVerMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p7, "lastBackups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p8, "completeCb":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;>;"
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$1;

    invoke-direct {v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->replied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->trackable:Z

    .line 123
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->lockKeys:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    .line 163
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 164
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    .line 165
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->dhtVerMap:Ljava/util/Map;

    .line 166
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->last:Z

    .line 167
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->lastBackups:Ljava/util/Collection;

    .line 169
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 171
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->nearMiniId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 173
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    .line 176
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->dhtMap:Ljava/util/Map;

    .line 177
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->nearMap:Ljava/util/Map;

    .line 179
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z

    .line 181
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->completeCb:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 183
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->dhtMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 184
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->nearMap:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 185
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;Lorg/apache/ignite/internal/IgniteInternalFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/IgniteInternalFuture;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->replied:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->sendPrepareResponse(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V

    return-void
.end method

.method static synthetic access$400()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->dhtMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->invoke:Z

    return v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method private addDhtValues(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 12
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    .prologue
    .line 611
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->writes:Ljava/lang/Iterable;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 612
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->writes:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 613
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v6

    .line 615
    .local v6, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 617
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    if-nez v6, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing tx entry for key [tx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 632
    :catch_0
    move-exception v5

    .line 634
    .local v5, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 621
    .end local v5    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 623
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    .line 625
    .local v1, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->valueBytes()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 627
    .local v7, "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v7, :cond_0

    .line 628
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v9

    invoke-virtual {p1, v9, v1, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->addOwnedValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v7    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_2
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->dhtVerMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 641
    .local v8, "ver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {v10, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v6

    .line 643
    .restart local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    invoke-virtual {p1, v9}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->hasOwnedValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 646
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 650
    .restart local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :goto_2
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 652
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    .line 654
    .restart local v1    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v9, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 655
    :cond_4
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->valueBytes()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    .line 657
    .restart local v7    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v9

    invoke-virtual {p1, v9, v1, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->addOwnedValue(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 662
    .end local v1    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v7    # "val0":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_1
    move-exception v5

    .line 664
    .restart local v5    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v9

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_2

    .line 668
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v5    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v8    # "ver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_5
    return-void
.end method

.method private checkLocks()Z
    .locals 1

    .prologue
    .line 250
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->locksReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->lockKeys:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createPrepareResponse()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    .locals 9

    .prologue
    .line 578
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    .line 580
    .local v7, "prepErr":Ljava/lang/Throwable;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->colocated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->nearMiniId:Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->invalidPartitions()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-direct/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/lang/Throwable;)V

    .line 589
    .local v0, "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    if-nez v7, :cond_0

    .line 590
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->addDhtValues(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V

    .line 592
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->minVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    .line 594
    .local v8, "min":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rolledbackVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->completedVersions(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 596
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->writeEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->localDhtPendingVersions(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->pending(Ljava/util/Collection;)V

    .line 598
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->implicitSingleResult(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    .line 601
    .end local v8    # "min":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->filterFailedKeys:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;->filterFailedKeys(Ljava/util/Collection;)V

    .line 603
    return-object v0

    .line 580
    .end local v0    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearFutureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->nearMiniId:Lorg/apache/ignite/lang/IgniteUuid;

    goto :goto_1
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
    .line 675
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private lastBackup(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "backupId"    # Ljava/util/UUID;

    .prologue
    .line 733
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->lastBackups:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->lastBackups:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private localDhtPendingVersions(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 7
    .param p2, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1065
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    new-instance v4, Lorg/apache/ignite/internal/util/GridLeanSet;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>(I)V

    .line 1067
    .local v4, "lessPending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1069
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1070
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v5, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1071
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1074
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1079
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    return-object v4
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Ljava/lang/Iterable;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
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
    .line 1031
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    .local p2, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p3, "globalMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .local p4, "locMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    const/4 v4, 0x0

    .line 1033
    .local v4, "ret":Z
    if-eqz p2, :cond_2

    .line 1034
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1035
    .local v3, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 1037
    .local v0, "global":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-nez v0, :cond_0

    .line 1038
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .end local v0    # "global":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    .restart local v0    # "global":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-interface {p3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    .line 1042
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 1044
    .local v2, "loc":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-nez v2, :cond_1

    .line 1045
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .end local v2    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    .restart local v2    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-interface {p4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :cond_1
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    .line 1049
    const/4 v4, 0x1

    .line 1050
    goto :goto_0

    .line 1053
    .end local v0    # "global":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "loc":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v3    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return v4
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 19
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
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
    .line 963
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    .local p2, "futDhtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .local p3, "futNearMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isLocal()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 964
    const/4 v12, 0x0

    .line 1019
    :goto_0
    return v12

    .line 966
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 968
    .local v5, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    .line 970
    .local v4, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v6

    .line 972
    .local v6, "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v8

    .line 974
    .local v8, "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v13

    sget-object v14, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->READ:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v13, v14, :cond_1

    .line 975
    sget-object v13, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 977
    invoke-interface {v8}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 984
    :cond_1
    :goto_2
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v13

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->partition()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v7

    .line 986
    .local v7, "dhtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-object v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 987
    sget-object v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mapping entry to DHT nodes [nodes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", entry="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x5d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 990
    :cond_2
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v11

    .line 992
    .local v11, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/4 v10, 0x0

    .line 994
    .local v10, "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 995
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/util/typedef/F;->idForNodeId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/F0;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v11, v14}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v10

    .line 997
    sget-object v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 998
    sget-object v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mapping entry to near nodes [nodes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", entry="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x5d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1005
    :cond_3
    :goto_3
    const/4 v13, 0x1

    new-array v13, v13, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v7, v13}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->dhtMap:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v14, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Ljava/lang/Iterable;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v12

    .line 1008
    .local v12, "ret":Z
    const/4 v13, 0x1

    new-array v13, v13, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v14, 0x0

    invoke-static {v7}, Lorg/apache/ignite/internal/util/F0;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v13}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->nearMap:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v13, v14, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Ljava/lang/Iterable;Ljava/util/Map;Ljava/util/Map;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    or-int/2addr v12, v13

    goto/16 :goto_0

    .line 970
    .end local v6    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .end local v7    # "dhtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v8    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v10    # "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v11    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v12    # "ret":Z
    :cond_4
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v6

    goto/16 :goto_1

    .line 1001
    .restart local v6    # "dht":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .restart local v7    # "dhtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v8    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v10    # "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v11    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_5
    :try_start_1
    sget-object v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1002
    sget-object v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Entry has no near readers: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1012
    .end local v7    # "dhtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v10    # "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v11    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :catch_0
    move-exception v9

    .line 1013
    .local v9, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v5

    .line 1015
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto/16 :goto_2
.end method

.method private mapIfLocked()Z
    .locals 1

    .prologue
    .line 468
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->checkLocks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->prepare0()V

    .line 471
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onComplete()Z
    .locals 2

    .prologue
    .line 684
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->last:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isSystemInvalidate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 687
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-super {p0, v1, v0}, Lorg/apache/ignite/internal/util/future/GridCompoundIdentityFuture;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->removeFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 691
    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEntriesLocked()V
    .locals 28

    .prologue
    .line 273
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->localResult()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-direct {v3, v4, v6, v7, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/lang/Object;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->optimisticLockEntries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 276
    .local v26, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v15

    .line 278
    .local v15, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    .line 280
    .local v2, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v18

    .line 283
    .local v18, "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v3, v4, :cond_1

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v6

    const-wide/16 v10, -0x1

    cmp-long v3, v6, v10

    if-nez v3, :cond_2

    .line 285
    if-eqz v18, :cond_2

    .line 286
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v18 .. v18}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForUpdate()Ljavax/cache/expiry/Duration;

    move-result-object v16

    .line 289
    .local v16, "duration":Ljavax/cache/expiry/Duration;
    :goto_1
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 293
    .end local v16    # "duration":Ljavax/cache/expiry/Duration;
    :cond_2
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmptyOrNulls([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isAlwaysTrue([Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v19, 0x1

    .line 295
    .local v19, "hasFilters":Z
    :goto_2
    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z

    if-nez v3, :cond_3

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v4, :cond_0

    .line 296
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z

    if-nez v6, :cond_4

    if-eqz v19, :cond_7

    :cond_4
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->isLoadPreviousValue()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x1

    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v27

    .line 312
    .local v27, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->retVal:Z

    if-eqz v3, :cond_9

    .line 313
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 314
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->invoke:Z

    .line 316
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    .line 318
    .local v5, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    const/16 v23, 0x0

    .line 319
    .local v23, "procRes":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 321
    .local v8, "err":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .end local v23    # "procRes":Ljava/lang/Object;
    .local v21, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/ignite/internal/util/typedef/T2;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 323
    .local v25, "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    :try_start_1
    new-instance v22, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v3, v5, v1}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 326
    .local v22, "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavax/cache/processor/EntryProcessor;

    .line 328
    .local v24, "processor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v3}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .line 330
    .restart local v23    # "procRes":Ljava/lang/Object;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v27

    goto :goto_4

    .line 286
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v8    # "err":Ljava/lang/Exception;
    .end local v19    # "hasFilters":Z
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v23    # "procRes":Ljava/lang/Object;
    .end local v24    # "processor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v25    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    .end local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_5
    :try_start_2
    invoke-interface/range {v18 .. v18}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v16

    goto/16 :goto_1

    .line 293
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 298
    .restart local v19    # "hasFilters":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 332
    .restart local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v8    # "err":Ljava/lang/Exception;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v25    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    .restart local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v17

    .line 333
    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v8, v17

    move-object/from16 v7, v23

    .line 339
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v25    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    :goto_5
    if-nez v8, :cond_8

    if-eqz v7, :cond_c

    .line 340
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->addEntryProcessResult(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 348
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v8    # "err":Ljava/lang/Exception;
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_6
    if-eqz v19, :cond_e

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 349
    if-eqz v18, :cond_a

    .line 350
    invoke-interface/range {v18 .. v18}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 352
    :cond_a
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->filterFailedKeys:Ljava/util/Collection;

    if-nez v3, :cond_b

    .line 355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->filterFailedKeys:Ljava/util/Collection;

    .line 357
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->filterFailedKeys:Ljava/util/Collection;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 365
    .end local v19    # "hasFilters":Z
    .end local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_1
    move-exception v17

    .line 366
    .local v17, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get result value for cache entry: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 342
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v8    # "err":Ljava/lang/Exception;
    .restart local v19    # "hasFilters":Z
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->invokeResult(Z)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 368
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v8    # "err":Ljava/lang/Exception;
    .end local v19    # "hasFilters":Z
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_2
    move-exception v17

    .line 369
    .local v17, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got entry removed exception while holding transactional lock on entry: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 345
    .end local v17    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v19    # "hasFilters":Z
    .restart local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-object/from16 v0, v27

    invoke-virtual {v3, v15, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->value(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/CacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_6

    .line 371
    .end local v19    # "hasFilters":Z
    .end local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_3
    move-exception v17

    .line 372
    .local v17, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got filter failed exception with fail fast false "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 362
    .end local v17    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    .restart local v19    # "hasFilters":Z
    .restart local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->ret:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v6, :cond_f

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->success(Z)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :cond_10
    const/4 v3, 0x0

    goto :goto_7

    .line 375
    .end local v2    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v15    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v18    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v19    # "hasFilters":Z
    .end local v26    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_11
    return-void

    .restart local v2    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v8    # "err":Ljava/lang/Exception;
    .restart local v15    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v18    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .restart local v19    # "hasFilters":Z
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v26    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v27    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_12
    move-object/from16 v7, v23

    goto/16 :goto_5
.end method

.method private prepare0()V
    .locals 45

    .prologue
    .line 740
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 951
    :goto_0
    return-void

    .line 745
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onEntriesLocked()V

    .line 747
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->writeVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 750
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 751
    .local v33, "futDhtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v34, "futNearMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    const/16 v35, 0x0

    .line 756
    .local v35, "hasRemoteNodes":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->writes:Ljava/lang/Iterable;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 757
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->writes:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 758
    .local v44, "write":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual/range {v44 .. v44}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v5

    or-int v35, v35, v5

    goto :goto_1

    .line 761
    .end local v36    # "i$":Ljava/util/Iterator;
    .end local v44    # "write":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->reads:Ljava/lang/Iterable;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 762
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->reads:Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .restart local v36    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 763
    .local v43, "read":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->map(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v5

    or-int v35, v35, v5

    goto :goto_2

    .line 766
    .end local v36    # "i$":Ljava/util/Iterator;
    .end local v43    # "read":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->needsCompletedVersions(Z)V

    .line 769
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 949
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->markInitialized()V

    goto/16 :goto_0

    .line 772
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->last:Z

    if-eqz v5, :cond_20

    .line 773
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->transactionNodes()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    .end local v33    # "futDhtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .end local v34    # "futNearMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .end local v35    # "hasRemoteNodes":Z
    :catchall_0
    move-exception v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->markInitialized()V

    throw v5

    .line 776
    .restart local v33    # "futDhtMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .restart local v34    # "futNearMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .restart local v35    # "hasRemoteNodes":Z
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_5
    :goto_3
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 777
    .local v29, "dhtMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 779
    :cond_6
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v40

    .line 781
    .local v40, "n":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    invoke-interface/range {v40 .. v40}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 783
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v40 .. v40}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 785
    .local v41, "nearMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-nez v41, :cond_9

    const/4 v10, 0x0

    .line 787
    .local v10, "nearWrites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :goto_4
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v9

    .line 789
    .local v9, "dhtWrites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 792
    :cond_8
    new-instance v32, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;

    invoke-interface/range {v40 .. v40}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V

    .line 794
    .local v32, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 796
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->txNodes:Ljava/util/Map;

    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 785
    .end local v9    # "dhtWrites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .end local v10    # "nearWrites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .end local v32    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    :cond_9
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v10

    goto :goto_4

    .line 798
    .restart local v9    # "dhtWrites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .restart local v10    # "nearWrites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .restart local v32    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    :cond_a
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->partitionLock()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->txNodes:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->taskNameHash()I

    move-result v18

    invoke-direct/range {v4 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/Map;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLjava/util/UUID;I)V

    .line 814
    .local v4, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;
    const/16 v38, 0x0

    .line 816
    .local v38, "idx":I
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 818
    .local v31, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_start_3
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v28

    check-cast v28, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 820
    .local v28, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v27

    .line 822
    .local v27, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    if-nez v5, :cond_d

    .line 823
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v26

    .line 825
    .local v26, "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_b

    if-nez v26, :cond_b

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Null candidate for non-group-lock entry [added="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 849
    .end local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v27    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v28    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :catch_0
    move-exception v39

    .line 850
    .local v39, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_4
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_12

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed exception on entry with dht local candidate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 827
    .end local v39    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v27    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .restart local v28    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :cond_b
    :try_start_5
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_c

    if-eqz v26, :cond_c

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v5

    if-nez v5, :cond_c

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got non-dht-local candidate for prepare future[added="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 830
    :cond_c
    if-eqz v26, :cond_d

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 831
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->owned(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 835
    .end local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-interface/range {v40 .. v40}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-interface/range {v40 .. v40}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readerId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    move-result-object v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    :goto_6
    move/from16 v0, v38

    invoke-virtual {v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->invalidateNearEntry(IZ)V

    .line 838
    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->isNewLocked()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 839
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->partition()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    :goto_7
    invoke-interface {v6, v7, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->owners(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v42

    .line 843
    .local v42, "owners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 844
    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->markKeyForPreload(I)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 856
    .end local v27    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v28    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v31    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v42    # "owners":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_e
    :try_start_6
    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 857
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_f
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 859
    .restart local v31    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_start_7
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v26

    .line 861
    .restart local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_13

    if-nez v26, :cond_13

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_7
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 869
    .end local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catch_1
    move-exception v39

    .line 870
    .restart local v39    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_8
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed exception on entry with dht local candidate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 835
    .end local v39    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v27    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .restart local v28    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 839
    :cond_11
    :try_start_9
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_end_9
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v5

    goto :goto_7

    .line 853
    .end local v27    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v28    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v39    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_12
    add-int/lit8 v38, v38, 0x1

    .line 854
    goto/16 :goto_5

    .line 862
    .end local v39    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_13
    :try_start_a
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_14

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v5

    if-nez v5, :cond_14

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 864
    :cond_14
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 865
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->owned(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_a
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 875
    .end local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v31    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_15
    :try_start_b
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_16

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->transactionNodes()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_16

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 879
    :cond_16
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_c
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 881
    :catch_2
    move-exception v30

    .line 882
    .local v30, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_d
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    goto/16 :goto_3

    .line 884
    .end local v30    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_3
    move-exception v30

    .line 885
    .local v30, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 889
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;
    .end local v9    # "dhtWrites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .end local v10    # "nearWrites":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .end local v29    # "dhtMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v32    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v38    # "idx":I
    .end local v40    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v41    # "nearMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_18
    :goto_8
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 890
    .restart local v41    # "nearMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 891
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_19

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v5

    if-nez v5, :cond_19

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 893
    :cond_19
    new-instance v32, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v5, v6, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;)V

    .line 895
    .restart local v32    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 897
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual/range {v32 .. v32}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    const/16 v16, 0x0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->partitionLock()Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->transactionNodes()Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->subjectId()Ljava/util/UUID;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->taskNameHash()I

    move-result v25

    move-object v11, v4

    invoke-direct/range {v11 .. v25}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/Map;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLjava/util/UUID;I)V

    .line 913
    .restart local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;
    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->writes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37    # "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 915
    .restart local v31    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_start_e
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v26

    .line 917
    .restart local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1b

    if-nez v26, :cond_1b

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v5

    if-nez v5, :cond_1b

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Null candidate for non-group-lock entry [added="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_e
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 927
    .end local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :catch_4
    move-exception v39

    .line 928
    .restart local v39    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_f
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1a

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed exception on entry with dht local candidate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 919
    .end local v39    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    :cond_1b
    :try_start_10
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1c

    if-eqz v26, :cond_1c

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->dhtLocal()Z

    move-result v5

    if-nez v5, :cond_1c

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got non-dht-local candidate for prepare future[added="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 922
    :cond_1c
    if-eqz v26, :cond_1d

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 923
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->ownerVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->owned(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_10
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 932
    .end local v26    # "added":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v31    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1d
    :try_start_11
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1e

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;->transactionNodes()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_1e

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 936
    :cond_1e
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v6

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->system()Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v5, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->UTILITY_CACHE_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    :goto_9
    invoke-virtual {v6, v7, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_12
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_8

    .line 938
    :catch_5
    move-exception v30

    .line 939
    .local v30, "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_13
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_8

    .line 936
    .end local v30    # "e":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :cond_1f
    :try_start_14
    sget-object v5, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    :try_end_14
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_9

    .line 941
    :catch_6
    move-exception v30

    .line 942
    .local v30, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_15
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onResult(Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_8

    .line 949
    .end local v4    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareRequest;
    .end local v30    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v32    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v41    # "nearMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->markInitialized()V

    goto/16 :goto_0
.end method

.method private readyLocks()V
    .locals 10

    .prologue
    .line 411
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 412
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Marking all local candidates as ready: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 414
    :cond_0
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLock()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLockEntry()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 417
    .local v2, "checkEntries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 418
    .local v6, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 420
    .local v1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v7

    if-nez v7, :cond_1

    .line 423
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 425
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    if-nez v3, :cond_2

    .line 426
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 428
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 431
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->optimistic()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    if-nez v7, :cond_4

    .line 432
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLock()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 433
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->lockKeys:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_4
    :goto_2
    :try_start_0
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->lockedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :catch_0
    move-exception v5

    .line 449
    .local v5, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 450
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got removed entry in future onAllReplies method (will retry): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 452
    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .line 454
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_2

    .line 414
    .end local v1    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v2    # "checkEntries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->writes:Ljava/lang/Iterable;

    goto/16 :goto_0

    .line 440
    .restart local v1    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v2    # "checkEntries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_7
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->readyLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v0

    .line 442
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 443
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current lock owner for entry [owner="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 459
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v6    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_8
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->locksReady:Z

    .line 460
    return-void
.end method

.method private sendPrepareResponse(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    .locals 3
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->completeCb:Lorg/apache/ignite/lang/IgniteInClosure;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 569
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->completeCb:Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public complete()V
    .locals 0

    .prologue
    .line 701
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onComplete()Z

    .line 702
    return-void
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public markNotTrackable()V
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->trackable:Z

    .line 237
    return-void
.end method

.method public nearMiniId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->nearMiniId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
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
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->futures()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)V

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
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z
    .locals 7
    .param p1, "tx0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "err"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 479
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->initialized()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->hasPending()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On done called for prepare future that has pending mini futures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 482
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 485
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->optimistic()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 486
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->clearPrepareFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)V

    .line 488
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 489
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->last:Z

    if-nez v4, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 492
    :cond_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->createPrepareResponse()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    move-result-object v2

    .line 494
    .local v2, "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onComplete()Z

    .line 496
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->near()Z

    move-result v4

    if-nez v4, :cond_6

    .line 497
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 498
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->err:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 501
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :goto_0
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;

    invoke-direct {v4, p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V

    invoke-interface {v1, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 555
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    :cond_4
    :goto_1
    return v3

    .line 498
    .restart local v2    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_0

    .line 517
    :cond_6
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->replied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 518
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->sendPrepareResponse(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send prepare response for transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 528
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;
    :cond_7
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->replied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 530
    :try_start_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->createPrepareResponse()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->sendPrepareResponse(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxPrepareResponse;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onComplete()Z

    goto :goto_1

    .line 532
    :catch_1
    move-exception v0

    .line 533
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send prepare response for transaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onComplete()Z

    goto :goto_1

    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onComplete()Z

    throw v3

    .line 545
    :cond_8
    if-eqz p2, :cond_9

    .line 546
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->get()Ljava/lang/Object;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteInterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_9
    :goto_2
    move v3, v4

    .line 555
    goto :goto_1

    .line 548
    :catch_2
    move-exception v0

    .line 549
    .local v0, "e":Lorg/apache/ignite/IgniteInterruptedException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v5, "Got interrupted while waiting for replies to be sent."

    invoke-direct {v3, v5, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 551
    .end local v0    # "e":Lorg/apache/ignite/IgniteInterruptedException;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 381
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onDone(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Throwable;)Z

    .line 382
    return-void
.end method

.method public onNodeLeft(Ljava/util/UUID;)Z
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 255
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->futures()Ljava/util/Collection;

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

    .line 256
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 257
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;

    .line 259
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
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

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;)V

    .line 262
    const/4 v3, 0x1

    .line 266
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 4
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    .line 221
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction future received owner changed callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->lockKeys:Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 226
    .local v0, "rmv":Z
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->mapIfLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;

    .prologue
    .line 389
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 390
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->pending()Ljava/util/Collection;

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

    .line 391
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->isMini(Lorg/apache/ignite/internal/IgniteInternalFuture;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 392
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;

    .line 394
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 397
    :cond_1
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;->onResult(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareResponse;)V

    .line 404
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture$MiniFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>.MiniFuture;"
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public prepare(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Map;)V
    .locals 1
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
            ">;",
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
    .line 713
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    .local p1, "reads":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p2, "writes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p3, "txNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->setRollbackOnly()Z

    .line 716
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->onDone(Ljava/lang/Object;)Z

    .line 719
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->reads:Ljava/lang/Iterable;

    .line 720
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->writes:Ljava/lang/Iterable;

    .line 721
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->txNodes:Ljava/util/Map;

    .line 723
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->readyLocks()V

    .line 725
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->mapIfLocked()Z

    .line 726
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1084
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;

    const-string/jumbo v2, "xid"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

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
    .line 231
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->trackable:Z

    return v0
.end method

.method tx()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .locals 1

    .prologue
    .line 243
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    return-object v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;->tx:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method
