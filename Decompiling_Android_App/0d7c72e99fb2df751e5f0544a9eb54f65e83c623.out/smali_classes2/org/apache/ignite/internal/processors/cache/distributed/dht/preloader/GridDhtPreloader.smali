.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
.super Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;
.source "GridDhtPreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$MessageHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_PRELOAD_RESEND_TIMEOUT:J = 0x5dcL


# instance fields
.field private final busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final forceKeyFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private pendingAssignmentFetchFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final startFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private supplyPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

.field private final topVer:Lorg/apache/ignite/internal/util/GridAtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 57
    new-instance v0, Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridAtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->topVer:Lorg/apache/ignite/internal/util/GridAtomicLong;

    .line 60
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->forceKeyFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 72
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 75
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->pendingAssignmentFetchFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 79
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 123
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 125
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->startFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->enterBusy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->processAffinityAssignmentResponse(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->processForceKeysRequest0(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->forceKeyFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/util/GridAtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->topVer:Lorg/apache/ignite/internal/util/GridAtomicLong;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->pendingAssignmentFetchFuts:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->processForceKeysRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->processForceKeyResponse(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->processAffinityAssignmentRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;)V

    return-void
.end method

.method private enterBusy()Z
    .locals 3

    .prologue
    .line 301
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enter busy state on node (exchanger is stopping): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 307
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveBusy()V
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 315
    return-void
.end method

.method private processAffinityAssignmentRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;

    .prologue
    .line 428
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    .line 430
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing affinity assignment request [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 433
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$8;

    invoke-direct {v2, p0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$8;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/cluster/ClusterNode;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 450
    return-void
.end method

.method private processAffinityAssignmentResponse(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;)V
    .locals 5
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;

    .prologue
    .line 457
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing affinity assignment response [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 460
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->pendingAssignmentFetchFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;

    .line 461
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;->onResponse(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;)V

    goto :goto_0

    .line 462
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;
    :cond_1
    return-void
.end method

.method private processForceKeyResponse(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    .prologue
    .line 405
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    :goto_0
    return-void

    .line 409
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->forceKeyFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    .line 411
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 412
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    goto :goto_0

    .line 413
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive force key response for unknown future (is it duplicate?) [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 418
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    throw v1
.end method

.method private processForceKeysRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;

    .prologue
    .line 322
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;->keys()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->finishKeys(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 324
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->processForceKeysRequest0(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;)V

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$7;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$7;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method

.method private processForceKeysRequest0(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;)V
    .locals 13
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;

    .prologue
    .line 339
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->enterBusy()Z

    move-result v10

    if-nez v10, :cond_0

    .line 398
    :goto_0
    return-void

    .line 343
    :cond_0
    :try_start_0
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    .line 345
    .local v6, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    new-instance v9, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v10

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;-><init>(ILorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 350
    .local v9, "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;->keys()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 351
    .local v5, "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v8

    .line 353
    .local v8, "p":I
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    sget-object v11, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v12, 0x0

    invoke-interface {v10, v8, v11, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v7

    .line 356
    .local v7, "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-nez v7, :cond_2

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v10, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->owners(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 357
    invoke-virtual {v9, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;->addMissed(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 361
    :cond_2
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 362
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 364
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 372
    :goto_2
    if-eqz v1, :cond_5

    .line 373
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->info()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    move-result-object v4

    .line 375
    .local v4, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isNew()Z

    move-result v10

    if-nez v10, :cond_1

    .line 376
    invoke-virtual {v9, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;->addInfo(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 387
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v5    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v6    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v7    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v8    # "p":I
    .end local v9    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;
    :catch_0
    move-exception v3

    .line 388
    .local v3, "ignore":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :try_start_1
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 389
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received force key request form failed node (will ignore) [nodeId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :cond_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    goto/16 :goto_0

    .line 367
    .end local v3    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v6    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v7    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v8    # "p":I
    .restart local v9    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;
    :cond_4
    :try_start_2
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .restart local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    goto :goto_2

    .line 378
    :cond_5
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 379
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Key is not present in DHT cache: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 392
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v6    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v7    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v8    # "p":I
    .end local v9    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;
    :catch_1
    move-exception v0

    .line 393
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to reply to force key request [nodeId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    goto/16 :goto_0

    .line 382
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v9    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;
    :cond_6
    :try_start_4
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 383
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending force key response [node="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", res="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 385
    :cond_7
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v11

    invoke-virtual {v10, p1, v9, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 396
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    goto/16 :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "loc":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v9    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;
    :catchall_0
    move-exception v10

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    throw v10
.end method


# virtual methods
.method public addAssignments(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;Z)V
    .locals 1
    .param p2, "forcePreload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    .local p1, "assignments":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->addAssignments(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;Z)V

    .line 263
    return-void
.end method

.method public addDhtAssignmentFetchFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;)V
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "fut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->pendingAssignmentFetchFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;

    .line 284
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "More than one thread is trying to fetch partition assignments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 285
    :cond_0
    return-void
.end method

.method addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->forceKeyFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-void
.end method

.method public assign(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;
    .locals 1
    .param p1, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->assign(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;

    move-result-object v0

    return-object v0
.end method

.method public forcePreload()V
    .locals 1

    .prologue
    .line 533
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->forcePreload()V

    .line 534
    return-void
.end method

.method public onExchangeFutureAdded()V
    .locals 1

    .prologue
    .line 247
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->onExchangeFutureAdded()V

    .line 248
    return-void
.end method

.method public onInitialExchangeComplete(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    if-nez p1, :cond_1

    .line 226
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->startFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 228
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 230
    .local v0, "start":J
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 231
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting rebalancing in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;

    invoke-direct {v3, p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;J)V

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 243
    .end local v0    # "start":J
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->startFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public onKernalStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v7, "DHT rebalancer onKernalStart callback."

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 174
    .local v1, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterMetrics;->getStartTime()J

    move-result-wide v2

    .line 176
    .local v2, "startTime":J
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 178
    :cond_1
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    .line 180
    .local v4, "startTopVer":J
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->topVer:Lorg/apache/ignite/internal/util/GridAtomicLong;

    invoke-virtual {v6, v4, v5}, Lorg/apache/ignite/internal/util/GridAtomicLong;->setIfGreater(J)Z

    .line 183
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localJoinEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v0

    .line 185
    .local v0, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez v0, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 187
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 189
    :cond_3
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->supplyPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->start()V

    .line 190
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->start()V

    .line 191
    return-void
.end method

.method public onKernalStop()V
    .locals 2

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "DHT rebalancer onKernalStop callback."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->removeListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;)V

    .line 212
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->supplyPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->supplyPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->stop()V

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->stop()V

    .line 220
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 221
    return-void
.end method

.method public onPartitionEvicted(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Z)V
    .locals 2
    .param p1, "part"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .param p2, "updateSeq"    # Z

    .prologue
    .line 471
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    :goto_0
    return-void

    .line 475
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->onEvicted(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Z)V

    .line 477
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addUnloadEvent(I)V

    .line 480
    :cond_1
    if-eqz p2, :cond_2

    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->scheduleResendPartitions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->leaveBusy()V

    throw v0
.end method

.method public preloadPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    .local p1, "preloadPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloaderAdapter;->preloadPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 197
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->supplyPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "preloadPredicate may be called only after start()"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 199
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->supplyPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 200
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->preloadPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 201
    return-void
.end method

.method remoteFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->forceKeyFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 557
    return-void
.end method

.method public removeDhtAssignmentFetchFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;)V
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p2, "fut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAssignmentFetchFuture;

    .prologue
    .line 292
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->pendingAssignmentFetchFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 294
    .local v0, "rmv":Z
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove assignment fetch future: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 295
    :cond_0
    return-void
.end method

.method public bridge synthetic request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;
    .locals 5
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v3, p2, p1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V

    .line 496
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityReadyFuturex(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 498
    .local v2, "topReadyFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->startFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 499
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->init()V

    .line 528
    :goto_0
    return-object v1

    .line 501
    :cond_0
    if-nez v2, :cond_1

    .line 502
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->startFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9;

    invoke-direct {v4, p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$9;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)V

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0

    .line 513
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 515
    .local v0, "compound":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->startFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 516
    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 518
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 520
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;

    invoke-direct {v3, p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)V

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Starting DHT rebalancer..."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$2;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 154
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentResponse;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$5;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$5;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 161
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/concurrent/locks/ReadWriteLock;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->supplyPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    .line 162
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/concurrent/locks/ReadWriteLock;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    .line 164
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 165
    return-void

    .line 164
    nop

    :array_0
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->startFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    return-object v0
.end method

.method public syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->syncFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public unwindUndeploys()V
    .locals 1

    .prologue
    .line 538
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->unwindUndeploys()V

    .line 539
    return-void
.end method

.method public updateLastExchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .locals 1
    .param p1, "lastFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 252
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->demandPool:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->updateLastExchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V

    .line 253
    return-void
.end method
