.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;
.super Ljava/lang/Object;
.source "GridDhtPartitionSupplyPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final depEnabled:Z

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;",
            ">;"
        }
    .end annotation
.end field

.field private top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

.field private final workers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool",
            "<TK;TV;>.SupplyWorker;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/concurrent/locks/ReadWriteLock;)V
    .locals 6
    .param p2, "busyLock"    # Ljava/util/concurrent/locks/ReadWriteLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->workers:Ljava/util/Collection;

    .line 63
    new-instance v2, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 76
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 77
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 79
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 80
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;

    .line 84
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 86
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceThreadPoolSize()I

    move-result v1

    .line 88
    .local v1, "poolSize":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 89
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->workers:Ljava/util/Collection;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "i":I
    .end local v1    # "poolSize":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    .restart local v0    # "i":I
    .restart local v1    # "poolSize":I
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    const-class v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;

    invoke-direct {v5, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)V

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 97
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->depEnabled:Z

    .line 98
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->processDemandMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;Ljava/util/concurrent/BlockingQueue;Lorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;
    .param p1, "x1"    # Ljava/util/concurrent/BlockingQueue;
    .param p2, "x2"    # Lorg/apache/ignite/internal/util/worker/GridWorker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->poll(Ljava/util/concurrent/BlockingQueue;Lorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;

    .prologue
    .line 46
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->depEnabled:Z

    return v0
.end method

.method private enterBusy()Z
    .locals 3

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to enter to busy state (supplier is stopping): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveBusy()V
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->busyLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 175
    return-void
.end method

.method private poll(Ljava/util/concurrent/BlockingQueue;Lorg/apache/ignite/internal/util/worker/GridWorker;)Ljava/lang/Object;
    .locals 3
    .param p2, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue",
            "<TT;>;",
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
    .line 184
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    .local p1, "deque":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/util/worker/GridWorker;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 195
    :cond_1
    const-wide/16 v0, 0x7d0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private processDemandMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "d"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->enterBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 156
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received partition demand [node="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", demand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;

    invoke-direct {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$DemandMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandMessage;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->leaveBusy()V

    goto :goto_0

    .line 163
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received partition demand message when rebalancing is disabled (will ignore): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 166
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->leaveBusy()V

    throw v0
.end method


# virtual methods
.method poolSize()I
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceThreadPoolSize()I

    move-result v0

    return v0
.end method

.method preloadPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0
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
    .line 124
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    .local p1, "preloadPred":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->preloadPred:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 125
    return-void
.end method

.method start()V
    .locals 5

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->workers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;

    .line 105
    .local v1, "w":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>.SupplyWorker;"
    new-instance v2, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "preloader-supply-worker"

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    goto :goto_0

    .line 106
    .end local v1    # "w":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool$SupplyWorker;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>.SupplyWorker;"
    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->workers:Ljava/util/Collection;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cancel(Ljava/lang/Iterable;)V

    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->workers:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionSupplyPool;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 116
    return-void
.end method
