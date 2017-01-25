.class public Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "GridCacheEvictionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private volatile activeFutsCnt:I

.field private backupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

.field private backupWorkerThread:Lorg/apache/ignite/thread/IgniteThread;

.field private final bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

.field private final curEvictFut:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;",
            ">;"
        }
    .end annotation
.end field

.field private evictSync:Z

.field private evictSyncAgr:Z

.field private filter:Lorg/apache/ignite/cache/eviction/EvictionFilter;

.field private volatile firstEvictWarn:Z

.field private final futs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final futsCntCond:Ljava/util/concurrent/locks/Condition;

.field private final futsCntLock:Ljava/util/concurrent/locks/Lock;

.field private final idGen:Ljava/util/concurrent/atomic/AtomicLong;

.field private maxActiveFuts:I

.field private memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

.field private final meta:Ljava/util/UUID;

.field private nearSync:Z

.field private plc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

.field private plcEnabled:Z

.field private volatile stopping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    .line 64
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unsafe:Lsun/misc/Unsafe;

    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    .line 73
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 76
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->meta:Ljava/util/UUID;

    .line 79
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futs:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntCond:Ljava/util/concurrent/locks/Condition;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 118
    new-instance v0, Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridBusyLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->curEvictFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1524
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touchOnTopologyChange(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->maxQueueSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$1608(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)I
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->activeFutsCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->activeFutsCnt:I

    return v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->meta:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/jsr166/ConcurrentLinkedDeque8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->processEvictionRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->versionFilter(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "x4"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p5, "x5"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evict0(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch0(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->processEvictionResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/util/GridBusyLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->lockTopology()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->onFutureCompleted(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unlockTopology()V

    return-void
.end method

.method private addToCurrentFuture(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "evictInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    const/4 v4, 0x0

    .line 1062
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1065
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->curEvictFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    .line 1067
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    if-nez v1, :cond_1

    .line 1068
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->curEvictFut:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    invoke-direct {v3, p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1073
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepareLock()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1077
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->add(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1080
    .local v0, "added":Z
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepareUnlock()V

    .line 1083
    if-eqz v0, :cond_3

    .line 1084
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepare()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1086
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->curEvictFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1088
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$5;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 1125
    :cond_2
    return-void

    .line 1080
    .end local v0    # "added":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->prepareUnlock()V

    throw v2

    .line 1119
    .restart local v0    # "added":Z
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->curEvictFut:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    invoke-direct {v3, p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1123
    .end local v0    # "added":Z
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->curEvictFut:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    invoke-direct {v3, p0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkEvictionQueue()V
    .locals 8

    .prologue
    .line 1020
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->maxQueueSize()I

    move-result v4

    .line 1022
    .local v4, "maxSize":I
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v5}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v0

    .line 1024
    .local v0, "bufSize":I
    if-lt v0, v4, :cond_2

    .line 1025
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1026
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing eviction queue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1028
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1030
    .local v1, "evictInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1031
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v5}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1033
    .local v3, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    if-nez v3, :cond_3

    .line 1039
    .end local v3    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1040
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->addToCurrentFuture(Ljava/util/Collection;)V

    .line 1042
    .end local v1    # "evictInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 1036
    .restart local v1    # "evictInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    .restart local v2    # "i":I
    .restart local v3    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1030
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private enqueue(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->meta:Ljava/util/UUID;

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->meta(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 1005
    .local v0, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    if-nez v0, :cond_0

    .line 1006
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-virtual {v1, v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->addLastx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->meta:Ljava/util/UUID;

    invoke-interface {p1, v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->putMetaIfAbsent(Ljava/util/UUID;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1010
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v1, v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->unlinkx(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added entry to eviction queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private evict0(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z
    .locals 19
    .param p1, "cache"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p3, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "explicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 663
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 664
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 665
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 667
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v18

    .line 669
    .local v18, "recordable":Z
    if-eqz v18, :cond_7

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v12

    .line 671
    .local v12, "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_0
    if-eqz v18, :cond_8

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v13, 0x1

    .line 673
    .local v13, "hasVal":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->evictInternal(ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v17

    .line 675
    .local v17, "evicted":Z
    if-eqz v17, :cond_9

    .line 677
    if-eqz p5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v3, :cond_3

    .line 678
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->notifyPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 680
    :cond_3
    invoke-virtual/range {p1 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 682
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 683
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onEvict()V

    .line 685
    :cond_4
    if-eqz v18, :cond_5

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v4

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    check-cast v7, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v3 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry was evicted [entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", localNode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 695
    :cond_6
    :goto_2
    return v17

    .line 669
    .end local v12    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v13    # "hasVal":Z
    .end local v17    # "evicted":Z
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 671
    .restart local v12    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 692
    .restart local v13    # "hasVal":Z
    .restart local v17    # "evicted":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry was not evicted [entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", localNode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private evictLocally(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 9
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "near"    # Z
    .param p4, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    const/16 v8, 0x5d

    const/4 v7, 0x0

    .line 616
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 617
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 618
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 619
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 620
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 622
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evicting key locally [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ver="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", obsoleteVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localNode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 626
    :cond_5
    if-eqz p3, :cond_6

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v1

    .line 628
    .local v1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    :goto_0
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    .line 630
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v2, :cond_7

    .line 631
    const/4 v0, 0x1

    .line 643
    :goto_1
    return v0

    .line 626
    .end local v1    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    goto :goto_0

    .line 638
    .restart local v1    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .restart local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evict0(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 640
    :catch_0
    move-exception v6

    .line 641
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to evict entry on remote node [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localNode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move v0, v7

    .line 643
    goto :goto_1
.end method

.method private lockPartition(I)Z
    .locals 6
    .param p1, "p"    # I

    .prologue
    const/4 v2, 0x0

    .line 522
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v2

    .line 525
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-nez v3, :cond_0

    .line 527
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v1

    .line 530
    .local v1, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->reserve()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->lock()V

    .line 533
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v3, v4, :cond_2

    .line 534
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->unlock()V

    .line 536
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    .end local v1    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catch_0
    move-exception v0

    .line 545
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Partition does not belong to local node [part="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nodeId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    .end local v0    # "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .restart local v1    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private lockTopology()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readLock()V

    .line 590
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    goto :goto_0
.end method

.method private maxQueueSize()I
    .locals 3

    .prologue
    .line 1048
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictMaxOverflowRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v0, v1, 0x64

    .line 1050
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 1051
    const/16 v0, 0x1f4

    .line 1053
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedKeyBufferSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private notifyPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 1327
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1328
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1329
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid entry for policy notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1331
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1332
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying eviction policy with entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1334
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->filter:Lorg/apache/ignite/cache/eviction/EvictionFilter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->filter:Lorg/apache/ignite/cache/eviction/EvictionFilter;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->wrapLazyValue()Ljavax/cache/Cache$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/cache/eviction/EvictionFilter;->evictAllowed(Ljavax/cache/Cache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1335
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsoleteOrDeleted()Z

    move-result v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->wrapEviction()Lorg/apache/ignite/cache/eviction/EvictableEntry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/cache/eviction/EvictionPolicy;->onEntryAccessed(ZLorg/apache/ignite/cache/eviction/EvictableEntry;)V

    .line 1336
    :cond_5
    return-void
.end method

.method private onFutureCompleted(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 19
    .param p1, "fut"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->enterBusy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1219
    :goto_0
    return-void

    .line 1139
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    .local v18, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;>;"
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Topology has changed, all entries will be touched: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1162
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v2, :cond_4

    .line 1163
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1164
    .local v13, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch0(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1214
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    .end local v18    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;>;"
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    .line 1217
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->signal()V

    throw v2

    .line 1141
    :catch_0
    move-exception v12

    .line 1142
    .local v12, "ignored":Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;
    :try_start_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Future has been cancelled, but manager is not stopping: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1214
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    .line 1217
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->signal()V

    goto/16 :goto_0

    .line 1146
    .end local v12    # "ignored":Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;
    :catch_1
    move-exception v8

    .line 1147
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eviction future finished with error (all entries will be touched): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1149
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v2, :cond_3

    .line 1150
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->entries()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1151
    .restart local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch0(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1214
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    .line 1217
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->signal()V

    goto/16 :goto_0

    .line 1214
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v18    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    .line 1217
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->signal()V

    goto/16 :goto_0

    .line 1171
    :cond_5
    const/4 v5, 0x0

    .line 1173
    .local v5, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    .line 1175
    .local v9, "evictedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1176
    .restart local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 1180
    .local v4, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_5
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->evictedReaders(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1181
    .local v15, "r":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Long;>;"
    invoke-virtual {v15}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v16

    .line 1182
    .local v16, "readerId":Ljava/util/UUID;
    invoke-virtual {v15}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 1184
    .local v14, "msgId":Ljava/lang/Long;
    move-object v0, v4

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-object v2, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->removeReader(Ljava/util/UUID;J)Z
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1194
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "msgId":Ljava/lang/Long;
    .end local v15    # "r":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Long;>;"
    .end local v16    # "readerId":Ljava/util/UUID;
    :catch_2
    move-exception v8

    .line 1195
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to evict entry [entry="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", localNode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1187
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_7
    if-nez v5, :cond_8

    .line 1188
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    .line 1192
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->versionFilter(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evict0(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 1198
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_3
    move-exception v12

    .line 1199
    .local v12, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry was concurrently removed while evicting [entry="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", localNode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1205
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v12    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Collection;

    .line 1208
    .local v17, "rejectedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v2, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1209
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .line 1210
    .restart local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;->entry()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch0(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 1214
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    .line 1217
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->signal()V

    goto/16 :goto_0
.end method

.method private processEvictionRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .prologue
    .line 334
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 335
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 337
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_2

    .line 373
    :goto_0
    return-void

    .line 341
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->classError()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class got undeployed during eviction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->classError()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 345
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->futureId()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;-><init>(IJZ)V

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->sendEvictionResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    goto :goto_0

    .line 350
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->lockTopology()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 353
    .local v0, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 354
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Topology version is different [locTopVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rmtTopVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 358
    :cond_5
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->futureId()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v5, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;-><init>(IJZ)V

    invoke-direct {p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->sendEvictionResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    :try_start_3
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unlockTopology()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    goto/16 :goto_0

    .line 364
    :cond_6
    :try_start_4
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->processEvictionRequest0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 367
    :try_start_5
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unlockTopology()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 371
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    goto/16 :goto_0

    .line 367
    :catchall_0
    move-exception v1

    :try_start_6
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unlockTopology()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 371
    .end local v0    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    throw v1
.end method

.method private processEvictionRequest0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;)V
    .locals 24
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Processing eviction request [node="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", localNode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", reqSize="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->entries()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 386
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 388
    .local v5, "dhtEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;>;>;"
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 390
    .local v14, "nearEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->entries()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;

    .line 391
    .local v6, "e":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->near()Z

    move-result v13

    .line 393
    .local v13, "near":Z
    if-nez v13, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v20

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v5, v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 399
    .local v4, "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;>;"
    sget-boolean v20, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v20, :cond_1

    if-nez v4, :cond_1

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 401
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v4    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;>;"
    :cond_2
    invoke-interface {v14, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    .end local v6    # "e":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    .end local v13    # "near":Z
    :cond_3
    new-instance v17, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;->futureId()J

    move-result-wide v22

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;-><init>(IJ)V

    .line 409
    .local v17, "res":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v15

    .line 412
    .local v15, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 413
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 415
    .local v16, "part":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->lockPartition(I)Z

    move-result v12

    .line 418
    .local v12, "locked":Z
    :try_start_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;

    .line 419
    .local v18, "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v11

    .line 420
    .local v11, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v19

    .line 421
    .local v19, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->near()Z

    move-result v13

    .line 423
    .restart local v13    # "near":Z
    sget-boolean v20, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v20, :cond_7

    if-eqz v13, :cond_7

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v13    # "near":Z
    .end local v18    # "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    .end local v19    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catchall_0
    move-exception v20

    if-eqz v12, :cond_6

    .line 441
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unlockPartition(I)V

    :cond_6
    throw v20

    .line 425
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v13    # "near":Z
    .restart local v18    # "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    .restart local v19    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1, v13, v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictLocally(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v8

    .line 427
    .local v8, "evicted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Evicted key [key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ver="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", near="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", evicted="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 431
    :cond_8
    if-eqz v12, :cond_9

    if-eqz v8, :cond_9

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->saveEvictionInfo(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V

    .line 435
    :cond_9
    if-nez v8, :cond_5

    .line 436
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->addRejected(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 440
    .end local v8    # "evicted":Z
    .end local v11    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v13    # "near":Z
    .end local v18    # "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    .end local v19    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_a
    if-eqz v12, :cond_4

    .line 441
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unlockPartition(I)V

    goto/16 :goto_1

    .line 446
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;>;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "locked":Z
    .end local v16    # "part":I
    :cond_b
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;

    .line 447
    .restart local v18    # "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v11

    .line 448
    .restart local v11    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v19

    .line 449
    .restart local v19    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;->near()Z

    move-result v13

    .line 451
    .restart local v13    # "near":Z
    sget-boolean v20, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v20, :cond_d

    if-nez v13, :cond_d

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 453
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1, v13, v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictLocally(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v8

    .line 455
    .restart local v8    # "evicted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Evicted key [key="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ver="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", near="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", evicted="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 459
    :cond_e
    if-nez v8, :cond_c

    .line 460
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->addRejected(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    goto/16 :goto_3

    .line 463
    .end local v8    # "evicted":Z
    .end local v11    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v13    # "near":Z
    .end local v18    # "t":Lorg/apache/ignite/internal/processors/cache/CacheEvictionEntry;
    .end local v19    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->sendEvictionResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V

    .line 464
    return-void
.end method

.method private processEvictionResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .prologue
    const/16 v4, 0x5d

    .line 305
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 306
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 308
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing eviction response [node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localNode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 312
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_3

    .line 327
    :goto_0
    return-void

    .line 316
    :cond_3
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futs:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->futureId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    .line 318
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    if-eqz v0, :cond_5

    .line 319
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->onResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    goto :goto_0

    .line 320
    :cond_5
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eviction future for response is not found [res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localNode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 325
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    throw v1
.end method

.method private remoteNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 6
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1278
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1280
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1284
    :cond_1
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-eqz v2, :cond_2

    .line 1285
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/F0;->notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    .line 1291
    .local v0, "backups":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_0
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->nearSync:Z

    if-eqz v2, :cond_3

    .line 1292
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .end local p1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$7;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$7;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v1

    .line 1301
    .local v1, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/util/lang/IgnitePair;

    invoke-direct {v2, v0, v1}, Lorg/apache/ignite/internal/util/lang/IgnitePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1287
    .end local v0    # "backups":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v1    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local p1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .restart local v0    # "backups":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    goto :goto_0

    .line 1299
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .restart local v1    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    goto :goto_1
.end method

.method private reportConfigurationProblems()V
    .locals 5

    .prologue
    .line 231
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    .line 233
    .local v0, "mode":Lorg/apache/ignite/cache/CacheMode;
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v0, v1, :cond_1

    .line 234
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Evictions are not synchronized with other nodes in topology which provides 2x-3x better performance but may cause data inconsistency if cache store is not configured (consider changing \'evictSynchronized\' configuration property)."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evictions are not synchronized for cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->nearSync:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Evictions on primary node are not synchronized with near caches on other nodes which provides 2x-3x better performance but may cause data inconsistency (consider changing \'nearEvictSynchronized\' configuration property)."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Evictions are not synchronized with near caches on other nodes for cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    :cond_1
    return-void
.end method

.method private saveEvictionInfo(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)V
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "p"    # I

    .prologue
    .line 495
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 497
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-nez v2, :cond_3

    .line 499
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x0

    invoke-interface {v2, p3, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v1

    .line 502
    .local v1, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v1    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catch_0
    move-exception v0

    .line 507
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Partition does not belong to local node [part="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 514
    .end local v0    # "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :cond_1
    :goto_0
    return-void

    .line 504
    .restart local v1    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_2
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->onEntryEvicted(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 513
    .end local v1    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_3
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save eviction info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private sendEvictionResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .prologue
    const/16 v5, 0x5d

    .line 472
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 474
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent eviction response [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localNode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res"

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
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send eviction response since initiating node left grid [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localNode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    .end local v1    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v0

    .line 484
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send eviction response to node [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localNode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private signal()V
    .locals 4

    .prologue
    .line 1226
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1230
    :try_start_0
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->activeFutsCnt:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->activeFutsCnt:I

    .line 1232
    .local v0, "cnt":I
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid futures count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    .end local v0    # "cnt":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 1234
    .restart local v0    # "cnt":I
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->maxActiveFuts:I

    if-ge v0, v1, :cond_1

    .line 1235
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1238
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1240
    return-void
.end method

.method private touch0(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 798
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 799
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 803
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->notifyPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 804
    return-void
.end method

.method private touchOnTopologyChange(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 811
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 813
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 814
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touching entries [entries="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localNode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 816
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 817
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-nez v2, :cond_3

    .line 823
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->notifyPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_0

    .line 825
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_4
    return-void
.end method

.method private unlockPartition(I)V
    .locals 5
    .param p1, "p"    # I

    .prologue
    .line 559
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->rebalanceEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-nez v2, :cond_0

    .line 564
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v1

    .line 567
    .local v1, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->unlock()V

    .line 570
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    .end local v1    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catch_0
    move-exception v0

    .line 574
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Partition does not belong to local node [part="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unlockTopology()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    .line 602
    :cond_0
    return-void
.end method

.method private versionFilter(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .locals 3
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;

    .prologue
    .line 1249
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$6;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$6;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionInfo;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method private waitForEvictionFutures()V
    .locals 6

    .prologue
    .line 1343
    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->activeFutsCnt:I

    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->maxActiveFuts:I

    if-lt v2, v3, :cond_1

    .line 1344
    const/4 v1, 0x0

    .line 1346
    .local v1, "interrupted":Z
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1349
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->stopping:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->activeFutsCnt:I

    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->maxActiveFuts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    .line 1351
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 1355
    goto :goto_0

    .line 1359
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1361
    if-eqz v1, :cond_1

    .line 1362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1365
    .end local v1    # "interrupted":Z
    :cond_1
    return-void

    .line 1359
    .restart local v1    # "interrupted":Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futsCntLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1361
    if-eqz v1, :cond_2

    .line 1362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v2
.end method

.method private warnFirstEvict()V
    .locals 4

    .prologue
    .line 832
    monitor-enter p0

    .line 833
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->firstEvictWarn:Z

    if-eqz v0, :cond_0

    .line 834
    monitor-exit p0

    .line 842
    :goto_0
    return-void

    .line 836
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->firstEvictWarn:Z

    .line 837
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evictions started (cache may have reached its capacity). You may wish to increase \'maxSize\' on eviction policy being used for cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evictions started (cache may have reached its capacity): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 837
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public batchEvict(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 30
    .param p2, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 917
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 918
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 920
    :cond_1
    new-instance v25, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 922
    .local v25, "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 924
    .local v28, "swapped":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v26

    .line 926
    .local v26, "recordable":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v17

    .line 928
    .local v17, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v19

    .line 931
    .local v19, "cached":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 932
    .local v24, "k":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v18

    .line 934
    .local v18, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual/range {v17 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v20

    .line 936
    .local v20, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v20, :cond_2

    .line 937
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 941
    .end local v18    # "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v20    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v24    # "k":Ljava/lang/Object;
    :cond_3
    :try_start_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_4
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 943
    .local v21, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->internal()Z

    move-result v3

    if-nez v3, :cond_4

    .line 947
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unsafe:Lsun/misc/Unsafe;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->monitorEnter(Ljava/lang/Object;)V

    .line 949
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    if-nez p2, :cond_5

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object p2

    .line 954
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->evictInBatchInternal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;

    move-result-object v27

    .line 956
    .local v27, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    if-eqz v27, :cond_4

    .line 957
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 960
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry was evicted [entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", localNode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 970
    .end local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v27    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    :catchall_0
    move-exception v3

    move-object/from16 v29, v3

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v23

    .local v23, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 971
    invoke-interface/range {v23 .. v23}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 973
    .restart local v20    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unsafe:Lsun/misc/Unsafe;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->monitorExit(Ljava/lang/Object;)V

    goto :goto_2

    .line 965
    .end local v20    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v23    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :cond_6
    :try_start_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 966
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->writeAll(Ljava/lang/Iterable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 970
    :cond_7
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v23

    .restart local v23    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 971
    invoke-interface/range {v23 .. v23}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 973
    .restart local v20    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->unsafe:Lsun/misc/Unsafe;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->monitorExit(Ljava/lang/Object;)V

    goto :goto_3

    .line 977
    .end local v20    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_9
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 978
    .restart local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 979
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->onMarkedObsolete()V

    .line 981
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 983
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v3, :cond_a

    .line 984
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->notifyPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 986
    :cond_a
    if-eqz v26, :cond_9

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v4

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    check-cast v7, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v12

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasValue()Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v3 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 977
    .end local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_b
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_c
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 978
    .restart local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 979
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->onMarkedObsolete()V

    .line 981
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 983
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v3, :cond_d

    .line 984
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->notifyPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 986
    :cond_d
    if-eqz v26, :cond_c

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v4

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    check-cast v7, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v12

    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasValue()Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v3 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 990
    .end local v21    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_e
    throw v29

    .line 992
    :cond_f
    return-void
.end method

.method public evict(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 7
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "obsoleteVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "explicit"    # Z
    .param p4, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 862
    if-nez p1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return v0

    .line 866
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    if-eqz v2, :cond_2

    move v0, v1

    .line 867
    goto :goto_0

    .line 869
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p3, :cond_3

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->firstEvictWarn:Z

    if-nez v2, :cond_3

    .line 870
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->warnFirstEvict()V

    .line 872
    :cond_3
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    if-eqz v2, :cond_8

    .line 873
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 875
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backups(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-eqz v2, :cond_5

    .line 880
    if-eqz p3, :cond_0

    move v0, v1

    goto :goto_0

    .line 883
    :cond_5
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, p1, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAll(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 884
    goto :goto_0

    .line 886
    :cond_6
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByAny([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v0, v1

    .line 887
    goto :goto_0

    .line 890
    :cond_7
    invoke-direct {p0, p1, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->enqueue(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v6

    .line 893
    .local v6, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry got removed while evicting [entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localNode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 899
    .end local v6    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_8
    if-nez p2, :cond_9

    .line 900
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object p2

    .line 905
    :cond_9
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evict0(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public evictQueueSize()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v0

    return v0
.end method

.method public evictSyncOrNearSync()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    return v0
.end method

.method protected onKernalStart0()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->onKernalStart0()V

    .line 254
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 258
    .local v1, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    new-instance v0, Lorg/apache/ignite/events/DiscoveryEvent;

    const-string v2, "Dummy event."

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v1}, Lorg/apache/ignite/events/DiscoveryEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/cluster/ClusterNode;)V

    .line 260
    .local v0, "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topology(J)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/ignite/events/DiscoveryEvent;->topologySnapshot(JLjava/util/Collection;)V

    .line 262
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->addEvent(Lorg/apache/ignite/events/DiscoveryEvent;)V

    .line 264
    new-instance v2, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

    invoke-direct {v2, v3}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorkerThread:Lorg/apache/ignite/thread/IgniteThread;

    .line 265
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorkerThread:Lorg/apache/ignite/thread/IgniteThread;

    invoke-virtual {v2}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 267
    .end local v0    # "evt":Lorg/apache/ignite/events/DiscoveryEvent;
    .end local v1    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 5
    .param p1, "cancel"    # Z

    .prologue
    .line 271
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;->onKernalStop0(Z)V

    .line 274
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->stopping:Z

    .line 276
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridBusyLock;->block()V

    .line 279
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;->cancel()V

    .line 282
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorkerThread:Lorg/apache/ignite/thread/IgniteThread;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 286
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    .line 287
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->cancel()Z

    goto :goto_0

    .line 289
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eviction manager stopped on node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 291
    :cond_2
    return-void
.end method

.method public printMemoryStats()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1377
    const-string v0, ">>> "

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Eviction manager memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   buffEvictQ size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   futsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->futs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   futsCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->idGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1382
    return-void
.end method

.method public printStats()V
    .locals 2

    .prologue
    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Eviction stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buffEvictQ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->bufEvictQ:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->sizex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1373
    return-void
.end method

.method public start0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 131
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    .line 133
    .local v0, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/NearCacheConfiguration;->getNearEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    .line 135
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    .line 137
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plc:Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    sget-object v4, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-eq v1, v4, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    .line 139
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->filter:Lorg/apache/ignite/cache/eviction/EvictionFilter;

    .line 141
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictMaxOverflowRatio()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 142
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Configuration parameter \'maxEvictOverflowRatio\' cannot be negative."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 137
    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedKeyBufferSize()I

    move-result v1

    if-gez v1, :cond_3

    .line 145
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Configuration parameter \'evictSynchronizedKeyBufferSize\' cannot be negative."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v1

    if-nez v1, :cond_7

    .line 148
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEvictSynchronized()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    .line 150
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEvictSynchronized()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->nearSync:Z

    .line 160
    :cond_4
    :goto_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->nearSync:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Illegal configuration (may lead to data inconsistency) [evictSync=true, evictNearSync=false]"

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move v1, v3

    .line 148
    goto :goto_2

    :cond_6
    move v1, v3

    .line 150
    goto :goto_3

    .line 153
    :cond_7
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEvictSynchronized()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 154
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored \'evictSynchronized\' configuration property for LOCAL cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 156
    :cond_8
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getNearConfiguration()Lorg/apache/ignite/configuration/NearCacheConfiguration;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEvictSynchronized()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored \'evictNearSynchronized\' configuration property for LOCAL cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_4

    .line 164
    :cond_9
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->reportConfigurationProblems()V

    .line 166
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->nearSync:Z

    if-eqz v1, :cond_b

    :cond_a
    move v3, v2

    :cond_b
    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    .line 168
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v1, :cond_c

    .line 169
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->backupWorker:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$BackupWorker;

    .line 171
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 187
    :cond_c
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    if-eqz v1, :cond_f

    .line 188
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_d

    .line 189
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Configuration parameter \'evictSynchronousTimeout\' should be positive."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_d
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedConcurrencyLevel()I

    move-result v1

    if-gtz v1, :cond_e

    .line 192
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "Configuration parameter \'evictSynchronousConcurrencyLevel\' should be positive."

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_e
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedConcurrencyLevel()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->maxActiveFuts:I

    .line 197
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionRequest;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$2;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 203
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$3;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 209
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$4;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$4;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)V

    .line 223
    :cond_f
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 224
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eviction manager started on node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 225
    :cond_10
    return-void

    .line 171
    nop

    :array_0
    .array-data 4
        0xc
        0xb
        0xa
    .end array-data

    .line 209
    :array_1
    .array-data 4
        0xc
        0xb
    .end array-data
.end method

.method public touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 7
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 747
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    :cond_2
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 758
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-ne v0, v1, :cond_4

    .line 760
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evict0(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 762
    :catch_0
    move-exception v6

    .line 763
    .local v6, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to evict entry from on heap memory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 754
    .end local v6    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v6

    .line 755
    .restart local v6    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to evict entry from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 769
    .end local v6    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_4
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    :cond_5
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    :try_start_2
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    if-eqz v0, :cond_6

    .line 782
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->waitForEvictionFutures()V

    .line 784
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 785
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touching entry [entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", localNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 787
    :cond_7
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->notifyPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 790
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    throw v0
.end method

.method public touch(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)V
    .locals 7
    .param p1, "txEntry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "loc"    # Z

    .prologue
    .line 702
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->plcEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-eq v0, v1, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    if-nez p2, :cond_2

    .line 706
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSync:Z

    if-nez v0, :cond_0

    .line 713
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    .line 715
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isInternal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 720
    :cond_3
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 726
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->memoryMode:Lorg/apache/ignite/cache/CacheMemoryMode;

    sget-object v1, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-ne v0, v1, :cond_5

    .line 728
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evict0(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 730
    :catch_0
    move-exception v6

    .line 731
    .local v6, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to evict entry from on heap memory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 722
    .end local v6    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v6

    .line 723
    .restart local v6    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to evict entry from cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 735
    .end local v6    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    :cond_5
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->notifyPolicy(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 737
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    if-eqz v0, :cond_0

    .line 738
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->waitForEvictionFutures()V

    goto/16 :goto_0
.end method

.method public unwind()V
    .locals 2

    .prologue
    .line 1308
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictSyncAgr:Z

    if-nez v0, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridBusyLock;->enterBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->checkEvictionQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->busyLock:Lorg/apache/ignite/internal/util/GridBusyLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridBusyLock;->leaveBusy()V

    throw v0
.end method
