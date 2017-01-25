.class public Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;
.source "GridCachePartitionExchangeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$MessageHandler;,
        Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;,
        Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;,
        Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXCHANGE_HISTORY_SIZE:I = 0x3e8

.field public static final EXCH_FUT_CLEANUP_HISTORY_SIZE:I = 0xa


# instance fields
.field private final busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final clientTops:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private exchFuts:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

.field private exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager",
            "<TK;TV;>.ExchangeWorker;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private volatile lastInitializedFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

.field private final lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

.field private locExchFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field private final partResendTimeout:J

.field private final pendingExchangeFuts:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;",
            ">;"
        }
    .end annotation
.end field

.field private pendingResend:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager",
            "<TK;TV;>.ResendTimeoutObject;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->pendingResend:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    const-string v0, "IGNITE_PRELOAD_RESEND_TIMEOUT"

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v2, v3}, Lorg/apache/ignite/IgniteSystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->partResendTimeout:J

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->pendingExchangeFuts:Ljava/util/Queue;

    .line 87
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTops:Ljava/util/concurrent/ConcurrentMap;

    .line 100
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchFuts:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    .line 103
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 1106
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->enterBusy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->processSinglePartitionUpdate(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->processFullPartitionUpdate(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->processSinglePartitionRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;J)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->refreshPartitions(J)V

    return-void
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Ljava/util/concurrent/BlockingQueue;JLorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # Ljava/util/concurrent/BlockingQueue;
    .param p2, "x2"    # J
    .param p4, "x3"    # Lorg/apache/ignite/internal/util/worker/GridWorker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->poll(Ljava/util/concurrent/BlockingQueue;JLorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1802(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastInitializedFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchFuts:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->partResendTimeout:J

    return-wide v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->pendingResend:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/events/DiscoveryEvent;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->affinityTopologyVersion(Lorg/apache/ignite/events/DiscoveryEvent;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchangeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->pendingExchangeFuts:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->locExchFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    return-object v0
.end method

.method private addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Z
    .locals 1
    .param p1, "fut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 674
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->onAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V

    .line 677
    const/4 v0, 0x1

    .line 680
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private affinityTopologyVersion(Lorg/apache/ignite/events/DiscoveryEvent;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 4
    .param p1, "evt"    # Lorg/apache/ignite/events/DiscoveryEvent;

    .prologue
    .line 441
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->type()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 442
    check-cast p1, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;

    .end local p1    # "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/events/DiscoveryCustomEvent;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .restart local p1    # "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p1}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    goto :goto_0
.end method

.method private enterBusy()Z
    .locals 3

    .prologue
    .line 389
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    .line 392
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enter to busy state (exchange manager is stopping): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 395
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private exchangeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "evt"    # I

    .prologue
    .line 619
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    invoke-direct {v0, p1, p3, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;-><init>(Ljava/util/UUID;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-object v0
.end method

.method private leaveBusy()V
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 403
    return-void
.end method

.method private poll(Ljava/util/concurrent/BlockingQueue;JLorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;
    .locals 2
    .param p2, "time"    # J
    .param p4, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TT;>;J",
            "Lorg/apache/ignite/internal/util/worker/GridWorker;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 799
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    .local p1, "deque":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 807
    :cond_0
    invoke-virtual {p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 810
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private processFullPartitionUpdate(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;)V
    .locals 9
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    .prologue
    .line 688
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->enterBusy()Z

    move-result v6

    if-nez v6, :cond_0

    .line 724
    :goto_0
    return-void

    .line 692
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v6

    if-nez v6, :cond_8

    .line 693
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 694
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received full partition update [node="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 696
    :cond_1
    const/4 v5, 0x0

    .line 698
    .local v5, "updated":Z
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->partitions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 699
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 701
    .local v1, "cacheId":Ljava/lang/Integer;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 703
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v4, 0x0

    .line 705
    .local v4, "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    if-nez v0, :cond_4

    .line 706
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 710
    .restart local v4    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    :cond_3
    :goto_2
    if-eqz v4, :cond_2

    .line 711
    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-interface {v4, v7, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->update(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    or-int/2addr v5, v6

    goto :goto_1

    .line 707
    :cond_4
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v6

    if-nez v6, :cond_3

    .line 708
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    goto :goto_2

    .line 711
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 715
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v1    # "cacheId":Ljava/lang/Integer;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;>;"
    .end local v4    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    :cond_6
    if-eqz v5, :cond_7

    .line 716
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->refreshPartitions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "updated":Z
    :cond_7
    :goto_4
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    goto/16 :goto_0

    .line 719
    :cond_8
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/events/DiscoveryEvent;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->onReceive(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 722
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    throw v6
.end method

.method private processSinglePartitionRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;

    .prologue
    .line 774
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    :goto_0
    return-void

    .line 779
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->sendLocalPartitions(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    goto :goto_0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send local partition map to node [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exchId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 787
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    throw v1
.end method

.method private processSinglePartitionUpdate(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;)V
    .locals 9
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;

    .prologue
    .line 731
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->enterBusy()Z

    move-result v6

    if-nez v6, :cond_0

    .line 767
    :goto_0
    return-void

    .line 735
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v6

    if-nez v6, :cond_8

    .line 736
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 737
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received local partition update [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", parts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 740
    :cond_1
    const/4 v5, 0x0

    .line 742
    .local v5, "updated":Z
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;->partitions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 743
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 745
    .local v1, "cacheId":Ljava/lang/Integer;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 747
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/4 v4, 0x0

    .line 749
    .local v4, "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    if-nez v0, :cond_4

    .line 750
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 754
    .restart local v4    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    :cond_3
    :goto_2
    if-eqz v4, :cond_2

    .line 755
    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    invoke-interface {v4, v7, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->update(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_3
    or-int/2addr v5, v6

    goto :goto_1

    .line 751
    :cond_4
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v6

    if-nez v6, :cond_3

    .line 752
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    goto :goto_2

    .line 755
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 758
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .end local v1    # "cacheId":Ljava/lang/Integer;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;"
    .end local v4    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    :cond_6
    if-eqz v5, :cond_7

    .line 759
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->scheduleResendPartitions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "updated":Z
    :cond_7
    :goto_4
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    goto/16 :goto_0

    .line 762
    :cond_8
    :try_start_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/events/DiscoveryEvent;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->onReceive(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 765
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    throw v6
.end method

.method private refreshPartitions(J)V
    .locals 9
    .param p1, "timeout"    # J

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    const/16 v8, 0x5d

    .line 529
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 531
    .local v0, "last":J
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 533
    .local v2, "now":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    sub-long v4, v2, v0

    cmp-long v4, v4, p1

    if-ltz v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 534
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refreshing partitions [last="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delta="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastRefresh="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->refreshPartitions()V

    .line 543
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Partitions were not refreshed [last="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delta="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lastRefresh="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendAllPartitions(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 552
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v2, v8, v8, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 554
    .local v2, "m":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 555
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->started()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 556
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v5

    invoke-interface {v5, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->partitionMap(Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->addFullPartitionsMap(ILorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)V

    goto :goto_0

    .line 560
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTopologies()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;

    .line 561
    .local v3, "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;->cacheId()I

    move-result v4

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;->partitionMap(Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;->addFullPartitionsMap(ILorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)V

    goto :goto_1

    .line 563
    .end local v3    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 564
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending all partitions [nodeIds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 566
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v4, p1, v2, v5, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->safeSend(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/lang/IgnitePredicate;)Z

    .line 568
    return v7
.end method

.method private sendLocalPartitions(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;)Z
    .locals 10
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "id"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    const/16 v9, 0x5d

    .line 579
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-direct {v4, p2, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 581
    .local v4, "m":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 582
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v6

    if-nez v6, :cond_0

    .line 583
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartitionMap()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    move-result-object v3

    .line 585
    .local v3, "locMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;->addLocalPartitionMap(ILorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)V

    goto :goto_0

    .line 589
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "locMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    :cond_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;

    .line 590
    .local v5, "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;->localPartitionMap()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    move-result-object v3

    .line 592
    .restart local v3    # "locMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;->cacheId()I

    move-result v6

    invoke-virtual {v4, v6, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;->addLocalPartitionMap(ILorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)V

    goto :goto_1

    .line 595
    .end local v3    # "locMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .end local v5    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 596
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending local partitions [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 599
    :cond_3
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v6, p1, v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    const/4 v6, 0x1

    .line 608
    :goto_2
    return v6

    .line 603
    :catch_0
    move-exception v2

    .line 604
    .local v2, "ignore":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 605
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send partition update to node because it left grid (will ignore) [node="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 608
    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public clearClientTopology(I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    .locals 2
    .param p1, "cacheId"    # I

    .prologue
    .line 366
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;

    return-object v0
.end method

.method public clientTopologies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clientTopology(ILorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    .locals 5
    .param p1, "cacheId"    # I
    .param p2, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 344
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;

    .line 346
    .local v1, "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->clientTops:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;

    .end local v1    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-direct {v1, v4, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ILorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V

    .restart local v1    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;

    .line 352
    .local v0, "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridClientPartitionTopology;
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method exchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/events/DiscoveryEvent;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .locals 5
    .param p1, "exchId"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    .param p2, "discoEvt"    # Lorg/apache/ignite/events/DiscoveryEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;",
            "Lorg/apache/ignite/events/DiscoveryEvent;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    .local p3, "reqs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchFuts:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-direct {v0, v3, v4, p1, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/concurrent/locks/ReadWriteLock;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Ljava/util/Collection;)V

    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->addx(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-result-object v1

    .line 634
    .local v1, "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    if-eqz v1, :cond_0

    .line 635
    move-object v0, v1

    .line 637
    :cond_0
    if-eqz p2, :cond_1

    .line 638
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->onEvent(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 640
    :cond_1
    return-object v0
.end method

.method public exchangeFutures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchFuts:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->values()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public forceDummyExchange(ZLorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .locals 5
    .param p1, "reassign"    # Z
    .param p2, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 460
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZLorg/apache/ignite/events/DiscoveryEvent;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V

    .line 462
    return-void
.end method

.method public forcePreloadExchange(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .locals 5
    .param p1, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 470
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->discoveryEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/events/DiscoveryEvent;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V

    .line 472
    return-void
.end method

.method public hasPendingExchange()Z
    .locals 1

    .prologue
    .line 417
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->access$1400(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastTopologyFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    .locals 1

    .prologue
    .line 382
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastInitializedFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    return-object v0
.end method

.method onDiscoveryEvent(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "fut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .prologue
    .line 425
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 429
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->leaveBusy()V

    throw v0
.end method

.method public onExchangeDone(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "exchFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .param p2, "err"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    const/16 v8, 0xa

    .line 647
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchFuts:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    .line 649
    .local v1, "exchFuts0":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;
    if-eqz v1, :cond_3

    .line 650
    const/4 v5, 0x0

    .line 652
    .local v5, "skipped":I
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->values()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .line 653
    .local v2, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    add-int/lit8 v5, v5, 0x1

    .line 655
    if-ne v5, v8, :cond_2

    .line 656
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 657
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    if-nez p2, :cond_1

    .line 658
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v6

    if-nez v6, :cond_1

    .line 659
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->cleanUpCache(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_1

    .line 663
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    if-le v5, v8, :cond_0

    .line 664
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->cleanUp()V

    goto :goto_0

    .line 667
    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    .end local v5    # "skipped":I
    :cond_3
    return-void
.end method

.method protected onKernalStart0()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-super/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;->onKernalStart0()V

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    .line 241
    .local v11, "loc":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/ignite/cluster/ClusterMetrics;->getStartTime()J

    move-result-wide v12

    .line 243
    .local v12, "startTime":J
    sget-boolean v15, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->$assertionsDisabled:Z

    if-nez v15, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-gtz v15, :cond_0

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 246
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localJoinEvent()Lorg/apache/ignite/events/DiscoveryEvent;

    move-result-object v3

    .line 248
    .local v3, "discoEvt":Lorg/apache/ignite/events/DiscoveryEvent;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->affinityTopologyVersion(Lorg/apache/ignite/events/DiscoveryEvent;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v14

    .line 250
    .local v14, "startTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v15

    const/16 v16, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v14, v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchangeId(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v6

    .line 252
    .local v6, "exchId":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;
    sget-boolean v15, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->$assertionsDisabled:Z

    if-nez v15, :cond_1

    if-nez v3, :cond_1

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 254
    :cond_1
    sget-boolean v15, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->$assertionsDisabled:Z

    if-nez v15, :cond_2

    invoke-virtual {v3}, Lorg/apache/ignite/events/DiscoveryEvent;->topologyVersion()J

    move-result-wide v16

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 256
    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v15}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchangeFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;Lorg/apache/ignite/events/DiscoveryEvent;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    move-result-object v8

    .line 258
    .local v8, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    new-instance v15, Lorg/apache/ignite/thread/IgniteThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "exchange-worker"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    move-object/from16 v18, v0

    invoke-direct/range {v15 .. v18}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->onDiscoveryEvent(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->locExchFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Beginning to wait on local exchange future: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 269
    :cond_3
    const/4 v7, 0x1

    .line 273
    .local v7, "first":Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->preloadExchangeTimeout()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->get(J)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 293
    .local v2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->onInitialExchangeComplete(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 295
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 296
    .local v4, "e":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Timed out waiting for exchange future: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .local v5, "err":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContexts()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 299
    .restart local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v15

    invoke-interface {v15, v5}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->onInitialExchangeComplete(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 277
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v4    # "e":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    .end local v5    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v10

    .line 278
    .local v10, "ignored":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    if-eqz v7, :cond_4

    .line 279
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to wait for initial partition map exchange. Possible reasons are: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  ^-- Transactions in deadlock."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  ^-- Long running transactions (ignore if this is the case)."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  ^-- Unreleased explicit locks."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 285
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 288
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Still waiting for initial partition map exchange [fut="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 301
    .end local v10    # "ignored":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    .restart local v4    # "e":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    .restart local v5    # "err":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_5
    throw v5

    .line 304
    .end local v4    # "e":Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;
    .end local v5    # "err":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Finished waiting on local exchange: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 306
    :cond_7
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 6
    .param p1, "cancel"    # Z

    .prologue
    .line 311
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchFuts:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;->values()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    .line 312
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    new-instance v3, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Grid is stopping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 314
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 316
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before joining on exchange worker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 319
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    .line 321
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->pendingResend:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;

    .line 323
    .local v2, "resendTimeoutObj":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    if-eqz v2, :cond_2

    .line 324
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 325
    :cond_2
    return-void
.end method

.method refreshPartitions()V
    .locals 7

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    const/16 v6, 0x5d

    .line 492
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->oldest(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 494
    .local v1, "oldest":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refreshing partitions [oldest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", loc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 497
    :cond_0
    const/4 v2, 0x0

    .line 501
    .local v2, "rmts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_0
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/Collection;

    move-result-object v2

    .line 504
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refreshing partitions from oldest node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 507
    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->sendAllPartitions(Ljava/util/Collection;)Z

    .line 521
    :goto_0
    return-void

    .line 510
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 511
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refreshing local partitions from non-oldest node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 514
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->sendLocalPartitions(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to refresh partition map [oldest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rmts="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", loc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public scheduleResendPartitions()V
    .locals 3

    .prologue
    .line 478
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->pendingResend:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;

    .line 480
    .local v0, "timeout":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->started()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V

    .line 483
    .local v1, "update":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->pendingResend:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 486
    .end local v1    # "update":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    :cond_1
    return-void
.end method

.method protected start0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    const/4 v4, 0x0

    .line 204
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;->start0()V

    .line 206
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->locExchFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 208
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    .line 210
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v2, 0xa

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 213
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleMessage;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$2;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsFullMessage;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsSingleRequest;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$4;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 233
    return-void

    .line 210
    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0x12
    .end array-data
.end method

.method protected stop0(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 330
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;->stop0(Z)V

    .line 333
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchFuts:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeFutureSet;

    .line 336
    return-void
.end method

.method public topologyChanged()Z
    .locals 1

    .prologue
    .line 451
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->exchWorker:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ExchangeWorker;->topologyChanged()Z

    move-result v0

    return v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->lastInitializedFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->exchangeId()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionExchangeId;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    return-object v0
.end method
