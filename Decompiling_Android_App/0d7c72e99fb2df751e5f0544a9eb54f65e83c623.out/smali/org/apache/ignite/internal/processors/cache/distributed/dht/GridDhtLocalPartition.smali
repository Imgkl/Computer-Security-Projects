.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
.super Ljava/lang/Object;
.source "GridDhtLocalPartition.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_DELETE_QUEUE_SIZE:I

.field private static volatile log:Lorg/apache/ignite/IgniteLogger;

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


# instance fields
.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

.field private final createTime:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private volatile evictHist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mapPubSize:Lorg/jsr166/LongAdder8;

.field private final rent:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<*>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private rmvQueue:Lorg/apache/ignite/internal/util/GridCircularBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridCircularBuffer",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;"
        }
    .end annotation
.end field

.field private state:Ljava/util/concurrent/atomic/AtomicStampedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicStampedReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    .line 52
    const-string v0, "IGNITE_ATOMIC_CACHE_DELETE_HISTORY_SIZE"

    const v1, 0x30d40

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->MAX_DELETE_QUEUE_SIZE:I

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 4
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "id"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicStampedReference;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicStampedReference;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    .line 80
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->createTime:J

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->evictHist:Ljava/util/Map;

    .line 87
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 90
    new-instance v1, Lorg/jsr166/LongAdder8;

    invoke-direct {v1}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->mapPubSize:Lorg/jsr166/LongAdder8;

    .line 101
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 103
    :cond_0
    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    .line 104
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 106
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v2, p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    sput-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    .line 108
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 114
    new-instance v1, Lorg/jsr166/ConcurrentHashMap8;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getStartSize()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partitions()I

    move-result v3

    div-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/jsr166/ConcurrentHashMap8;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 117
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isSystemCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x64

    .line 120
    .local v0, "delQueueSize":I
    :goto_0
    new-instance v1, Lorg/apache/ignite/internal/util/GridCircularBuffer;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->ceilPow2(I)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridCircularBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rmvQueue:Lorg/apache/ignite/internal/util/GridCircularBuffer;

    .line 121
    return-void

    .line 117
    .end local v0    # "delQueueSize":I
    :cond_1
    sget v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->MAX_DELETE_QUEUE_SIZE:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partitions()I

    move-result v2

    div-int/2addr v1, v2

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Z)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->tryEvict(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method private clearAll()V
    .locals 25

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v18

    .line 541
    .local v18, "clearVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v22

    .line 543
    .local v22, "swap":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    const/16 v4, 0x55

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v21

    .line 545
    .local v21, "rec":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 547
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    const/16 v23, 0x0

    .line 549
    .local v23, "swapIt":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    const/16 v24, 0x0

    .line 553
    .local v24, "unswapIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->iterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v23

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->unswapIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v24

    .line 560
    :goto_0
    if-eqz v24, :cond_0

    .line 561
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/Iterator;

    const/4 v4, 0x0

    aput-object v20, v3, v4

    const/4 v4, 0x1

    aput-object v24, v3, v4

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->concat([Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v20

    .line 565
    .end local v24    # "unswapIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    .local v17, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->clearInternal(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v3, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 572
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->isInternal()Z

    move-result v3

    if-nez v3, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v3}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 575
    if-eqz v21, :cond_0

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->partition()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    check-cast v7, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v8, 0x0

    const/16 v9, 0x55

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v12

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->hasValue()Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v3 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 582
    :catch_0
    move-exception v19

    .line 583
    .local v19, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear cache entry for evicted partition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 588
    .end local v17    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v19    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    throw v3

    .line 556
    .restart local v24    # "unswapIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :catch_1
    move-exception v19

    .line 557
    .local v19, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear swap for evicted partition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 588
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v24    # "unswapIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :cond_1
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->close(Ljava/lang/AutoCloseable;Lorg/apache/ignite/IgniteLogger;)V

    .line 590
    return-void
.end method

.method private clearDeferredDeletes()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rmvQueue:Lorg/apache/ignite/internal/util/GridCircularBuffer;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$4;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/GridCircularBuffer;->forEach(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 643
    return-void
.end method

.method private clearSwap()V
    .locals 10

    .prologue
    .line 491
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 492
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Indexing needs to have unswapped values."

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 495
    :cond_1
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v6

    iget v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->iterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v3

    .line 497
    .local v3, "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v2

    .line 499
    .local v2, "isLocStore":Z
    if-eqz v3, :cond_3

    .line 501
    :cond_2
    :goto_0
    invoke-interface {v3}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 502
    invoke-interface {v3}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 504
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 506
    .local v5, "keyBytes":[B
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    .line 508
    .local v4, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->remove(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    .line 510
    if-eqz v2, :cond_2

    .line 511
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 515
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    .end local v2    # "isLocStore":Z
    .end local v3    # "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    .end local v4    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v5    # "keyBytes":[B
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear swap for evicted partition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 518
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_3
    return-void
.end method

.method private tryEvict(Z)Z
    .locals 4
    .param p1, "updateSeq"    # Z

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getStamp()I

    move-result v1

    if-nez v1, :cond_0

    .line 461
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->clearAll()V

    .line 463
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-virtual {v1, v2, v3, v0, v0}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 464
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evicted partition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->clearSwap()V

    .line 470
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->partitionEvicted(I)V

    .line 473
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->onPartitionEvicted(I)V

    .line 475
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 477
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    invoke-virtual {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->onPartitionEvicted(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Z)V

    .line 479
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->clearDeferredDeletes()V

    .line 481
    const/4 v0, 0x1

    .line 484
    :cond_4
    return v0
.end method

.method private tryEvictAsync(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "updateSeq"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 426
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-virtual {v0, v1, v2, v3, v3}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evicted partition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 431
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->clearSwap()V

    .line 433
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->partitionEvicted(I)V

    .line 436
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dataStructures()Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/datastructures/CacheDataStructuresManager;->onPartitionEvicted(I)V

    .line 438
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 440
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    invoke-virtual {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->onPartitionEvicted(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Z)V

    .line 442
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->clearDeferredDeletes()V

    .line 444
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 447
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)V

    invoke-virtual {v0, v1, v4}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method private unswapIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ">;>;)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[BLorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;>;"
    if-nez p1, :cond_0

    .line 599
    const/4 v0, 0x0

    .line 601
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)I
    .locals 2
    .param p1, "part"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 658
    if-nez p1, :cond_0

    .line 659
    const/4 v0, 0x1

    .line 661
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0
.end method

.method createTime()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->createTime:J

    return-wide v0
.end method

.method public decrementPublicSize()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 184
    return-void
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 653
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_0

    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    return v0
.end method

.method public id()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    return v0
.end method

.method public incrementPublicSize()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->increment()V

    .line 177
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 260
    return-void
.end method

.method onAdded(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v0

    .line 208
    .local v0, "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding entry to invalid partition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->isInternal()Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->increment()V

    .line 214
    :cond_1
    return-void
.end method

.method public onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rmvQueue:Lorg/apache/ignite/internal/util/GridCircularBuffer;

    new-instance v3, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-direct {v3, p1, p2}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/util/GridCircularBuffer;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 244
    .local v1, "evicted":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    if-eqz v1, :cond_0

    .line 245
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->removeVersionedEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    return-void

    .line 247
    .end local v1    # "evicted":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 250
    new-instance v2, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v2
.end method

.method public onEntryEvicted(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 274
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 275
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 276
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 278
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v3, v4, :cond_4

    .line 292
    :cond_3
    return-void

    .line 281
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->evictHist:Ljava/util/Map;

    .line 283
    .local v0, "evictHist0":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    if-eqz v0, :cond_3

    .line 284
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 286
    .local v1, "ver0":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 287
    :cond_5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 289
    .local v2, "ver1":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method onRemoved(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .prologue
    .line 221
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->obsolete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_0
    monitor-enter p1

    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->isInternal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->deleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->decrement()V

    .line 229
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->tryEvict(Z)Z

    .line 233
    return-void

    .line 229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onUnlock()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->tryEvict(Z)Z

    .line 525
    return-void
.end method

.method own()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 369
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getStamp()I

    move-result v0

    .line 371
    .local v0, "reservations":I
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 373
    .local v1, "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v1, v3, :cond_1

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v1, v3, :cond_3

    .line 374
    :cond_1
    const/4 v2, 0x0

    .line 388
    :cond_2
    :goto_0
    return v2

    .line 376
    :cond_3
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v1, v3, :cond_2

    .line 379
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v1, v3, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 381
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-virtual {v3, v4, v5, v0, v0}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 383
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owned partition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 386
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->evictHist:Ljava/util/Map;

    goto :goto_0
.end method

.method public preloadingPermitted(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 5
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    const/4 v2, 0x0

    .line 302
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 303
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 304
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 306
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v3, v4, :cond_4

    .line 319
    :cond_3
    :goto_0
    return v2

    .line 309
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->evictHist:Ljava/util/Map;

    .line 311
    .local v0, "evictHist0":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    if-eqz v0, :cond_3

    .line 312
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 316
    .local v1, "ver0":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public primary(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 3
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 532
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id:I

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    return v0
.end method

.method public publicSize()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->mapPubSize:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 346
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getStamp()I

    move-result v0

    .line 348
    .local v0, "reservations":I
    if-nez v0, :cond_1

    .line 362
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getReference()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 353
    .local v2, "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v2, v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 356
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "reservations":I
    .local v1, "reservations":I
    invoke-virtual {v3, v2, v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->tryEvict(Z)Z

    move v0, v1

    .line 362
    .end local v1    # "reservations":I
    .restart local v0    # "reservations":I
    goto :goto_0
.end method

.method rent(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "updateSeq"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 399
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getStamp()I

    move-result v0

    .line 401
    .local v0, "reservations":I
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 403
    .local v1, "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v1, v2, :cond_2

    .line 404
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 418
    :goto_0
    return-object v2

    .line 406
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-virtual {v2, v1, v3, v0, v0}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moved partition to RENTING state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 412
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->tryEvictAsync(Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 418
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->rent:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    goto :goto_0
.end method

.method public reservations()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getStamp()I

    move-result v0

    return v0
.end method

.method public reserve()Z
    .locals 4

    .prologue
    .line 329
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getStamp()I

    move-result v0

    .line 331
    .local v0, "reservations":I
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 333
    .local v1, "s":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->EVICTED:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v1, v2, :cond_1

    .line 334
    const/4 v2, 0x0

    .line 337
    :goto_0
    return v2

    .line 336
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v1, v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicStampedReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state:Ljava/util/concurrent/atomic/AtomicStampedReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 666
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    const-string v2, "state"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v3

    const-string v4, "reservations"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->reservations()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "empty"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "createTime"

    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->createTime:J

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->format(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mapPubSize"

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->mapPubSize:Lorg/jsr166/LongAdder8;

    move-object v1, p0

    invoke-static/range {v0 .. v11}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 267
    return-void
.end method

.method public valid()Z
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v0

    .line 199
    .local v0, "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->MOVING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->OWNING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->RENTING:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
