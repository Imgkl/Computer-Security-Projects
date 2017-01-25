.class public abstract Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
.source "GridDhtTxLocalAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field protected dhtMap:Ljava/util/Map;
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

.field private dhtThreadId:J

.field private mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected nearMap:Ljava/util/Map;
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

.field private needsCompletedVers:Z

.field private pendingVers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;-><init>()V

    .line 54
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    .line 58
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;I)V
    .locals 3
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "implicit"    # Z
    .param p4, "implicitSingle"    # Z
    .param p5, "sys"    # Z
    .param p6, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p7, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p8, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p9, "timeout"    # J
    .param p11, "invalidate"    # Z
    .param p12, "storeEnabled"    # Z
    .param p13, "txSize"    # I
    .param p14, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15, "partLock"    # Z
    .param p16, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17, "taskNameHash"    # I

    .prologue
    .line 111
    invoke-direct/range {p0 .. p17}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;I)V

    .line 54
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    .line 58
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->threadId:J

    .line 117
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->threadId:J

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtThreadId:J

    .line 118
    return-void
.end method

.method static synthetic access$000()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$100()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;ZZZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/util/Set;
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "x2"    # Ljava/lang/Iterable;
    .param p3, "x3"    # Ljava/util/Set;
    .param p4, "x4"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # J
    .param p10, "x9"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p11, "x10"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual/range {p0 .. p11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->postLockWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;ZZZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private addMapping(Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .local p2, "dst":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 380
    .local v5, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 382
    .local v6, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 384
    .local v4, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 386
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 387
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 389
    .local v7, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v7, :cond_1

    .line 390
    if-nez v4, :cond_2

    .line 391
    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .end local v4    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-direct {v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;)V

    .restart local v4    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    invoke-interface {p2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_2
    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    goto :goto_0

    .line 397
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v5    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .end local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v7    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_3
    return-void
.end method

.method private addMapping0(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .local p2, "dst":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 408
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 410
    .local v3, "targetMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-nez v3, :cond_1

    .line 411
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 413
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 414
    .local v4, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->add(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)V

    goto :goto_1

    .line 417
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "targetMapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_2
    return-void
.end method

.method private obtainLockAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;ZZLjava/util/Set;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 15
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "ret"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p4, "read"    # Z
    .param p5, "needRetVal"    # Z
    .param p7, "accessTtl"    # J
    .param p9, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZ",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    .local p3, "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p6, "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before acquiring transaction lock on keys [passedKeys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", skipped="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 625
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 626
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 640
    :goto_0
    return-object v3

    .line 628
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nearTx()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCache;

    move-result-object v2

    .line 630
    .local v2, "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<**>;"
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->lockTimeout()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isInvalidate()Z

    move-result v7

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v13

    move-object/from16 v3, p3

    move-object v6, p0

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-virtual/range {v2 .. v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->lockAllAsyncInternal(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v14

    .line 640
    .local v14, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    new-instance v13, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;

    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    move/from16 v9, p4

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-direct/range {v3 .. v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Set;ZJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    invoke-direct {v13, v14, v3}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    move-object v3, v13

    goto :goto_0

    .line 628
    .end local v2    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<**>;"
    .end local v14    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dhtTx()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    move-result-object v2

    goto :goto_1
.end method

.method private removeMapping(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/Map;)Z
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 349
    if-eqz p2, :cond_4

    .line 350
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing mapping for entry [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 353
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 355
    .local v2, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v2, :cond_1

    .line 368
    .end local v2    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_0
    return v4

    .line 358
    .restart local v2    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 360
    .local v0, "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->removeEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 362
    .local v1, "ret":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->empty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v4, v1

    .line 365
    goto :goto_0

    .end local v1    # "ret":Z
    :cond_3
    move v1, v4

    .line 360
    goto :goto_1

    .line 368
    .end local v0    # "m":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .end local v2    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_4
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public addDhtMapping(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addMapping0(Ljava/util/Map;Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method addDhtNodeEntryMapping(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addMapping(Ljava/util/Map;Ljava/util/Map;)V

    .line 293
    return-void
.end method

.method public addEntry(JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 15
    .param p1, "msgId"    # J
    .param p3, "e"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->init()Z

    .line 433
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v14

    .line 435
    .local v14, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v14, v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid tx state for adding entry [msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 438
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZLjava/lang/ClassLoader;)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->checkInternal(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z

    .line 442
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 444
    .local v2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v10

    .line 447
    .local v10, "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 449
    .local v7, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v7, :cond_3

    .line 450
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasWriteValue()Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasReadValue()Z

    move-result v5

    invoke-virtual {v7, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZ)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors(Ljava/util/Collection;)V

    .line 453
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->expiry(Ljavax/cache/expiry/ExpiryPolicy;)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime(J)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 486
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v8

    move-object v3, p0

    move-wide/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addReader(JLorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 491
    .end local v7    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_2
    return-object v3

    .line 444
    .end local v10    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    :cond_2
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v10

    goto :goto_0

    .line 461
    .restart local v7    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v10    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    :cond_3
    move-object/from16 v7, p3

    .line 463
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addActiveCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 465
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v9

    .line 467
    .local v9, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual {v7, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 469
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v13

    .line 471
    .local v13, "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v13, :cond_5

    .line 472
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->mappedVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    .line 474
    .local v11, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v11, :cond_4

    .line 475
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find dht mapping for explicit entry version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    .end local v7    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v9    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v11    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v13    # "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_0
    move-exception v12

    .line 489
    .local v12, "ex":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 491
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 477
    .end local v12    # "ex":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .restart local v7    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v9    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v11    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v13    # "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_4
    :try_start_2
    invoke-virtual {v7, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 480
    .end local v11    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added entry to transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method protected addGroupTxMapping(Ljava/util/Collection;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    sget-boolean v15, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->groupLock()Z

    move-result v15

    if-nez v15, :cond_0

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 668
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    .line 669
    .local v10, "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->txMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;->entries(Ljava/util/Collection;Z)V

    goto :goto_0

    .line 674
    .end local v10    # "mapping":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 676
    .local v1, "backupIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/4 v8, 0x0

    .line 678
    .local v8, "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 679
    .local v7, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v14

    .line 681
    .local v14, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v15

    if-nez v15, :cond_2

    .line 684
    sget-boolean v15, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v15, :cond_3

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v15

    instance-of v15, v15, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    if-nez v15, :cond_3

    new-instance v15, Ljava/lang/AssertionError;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid entry type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15

    .line 715
    :catch_0
    move-exception v6

    .line 717
    .local v6, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_2
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v15

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 688
    .end local v6    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_3
    :try_start_0
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 690
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v13

    .line 692
    .local v13, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/util/F0;->notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v12

    .line 696
    .local v12, "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-object v15, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 697
    sget-object v15, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Mapping entry to near nodes [nodes="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", entry="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 700
    :cond_4
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    move-object v9, v8

    .end local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .local v9, "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :goto_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/cluster/ClusterNode;

    .line 701
    .local v11, "n":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v9, :cond_8

    .line 702
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 704
    .end local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :goto_4
    :try_start_2
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 706
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    if-nez v2, :cond_5

    .line 707
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .restart local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    invoke-interface {v8, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v8

    .line 710
    .end local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto :goto_3

    .line 722
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .end local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .end local v11    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v12    # "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v13    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v14    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :cond_6
    if-eqz v8, :cond_7

    .line 723
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addNearNodeEntryMapping(Ljava/util/Map;)V

    .line 724
    :cond_7
    return-void

    .line 715
    .end local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .restart local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v12    # "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v13    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v14    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :catch_1
    move-exception v6

    move-object v8, v9

    .end local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto/16 :goto_2

    .end local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v11    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    move-object v8, v9

    .end local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto :goto_4

    .end local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .end local v11    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :cond_9
    move-object v8, v9

    .end local v9    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v8    # "locNearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto/16 :goto_1
.end method

.method public addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "part"    # I

    .prologue
    .line 421
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DHT transaction encountered invalid partition [part="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 422
    :cond_0
    return-void
.end method

.method public addNearMapping(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addMapping0(Ljava/util/Map;Ljava/util/Map;)V

    .line 314
    return-void
.end method

.method addNearNodeEntryMapping(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addMapping(Ljava/util/Map;Ljava/util/Map;)V

    .line 300
    return-void
.end method

.method protected abstract addReader(JLorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method protected abstract clearPrepareFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxPrepareFuture;)V
.end method

.method dhtMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->mapExplicitLocks()V

    .line 260
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    return-object v0
.end method

.method dhtMapping(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    return-object v0
.end method

.method dhtThreadId()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtThreadId:J

    return-wide v0
.end method

.method public finish(Z)Z
    .locals 9
    .param p1, "commit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v8, 0x5d

    .line 729
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 730
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing dht local tx [tx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", commit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 732
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->optimistic()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 733
    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 735
    :cond_1
    if-eqz p1, :cond_4

    .line 736
    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 737
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    .line 739
    .local v2, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v4, :cond_2

    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v4, :cond_2

    .line 740
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transaction state for commit [state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 743
    :cond_2
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 744
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transaction state for commit (another thread is committing): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 808
    .end local v2    # "state":Lorg/apache/ignite/transactions/TransactionState;
    :cond_3
    :goto_0
    return v3

    .line 751
    :cond_4
    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 752
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 753
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transaction state for rollback [state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_5
    const/4 v1, 0x0

    .line 764
    .local v1, "err":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isRollbackOnly()Z

    move-result v3

    if-nez v3, :cond_7

    .line 765
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->userCommit()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 784
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 786
    throw v1

    .line 767
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->userRollback()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object v1, v0

    .line 772
    const/4 p1, 0x0

    .line 775
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isRollbackOnly()Z

    move-result v3

    if-nez v3, :cond_6

    .line 776
    invoke-virtual {p0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->systemInvalidate(Z)V

    .line 778
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set transaction invalidation flag to true due to error [tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_1

    .line 790
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_8
    if-eqz p1, :cond_9

    .line 791
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v3

    if-nez v3, :cond_a

    .line 792
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 793
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 795
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transaction state for commit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 800
    :cond_9
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 801
    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    .line 803
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transaction state for rollback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    move v3, v4

    .line 808
    goto/16 :goto_0
.end method

.method lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/List;ZJZZJ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 30
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "onePhaseCommit"    # Z
    .param p4, "msgId"    # J
    .param p6, "read"    # Z
    .param p7, "needRetVal"    # Z
    .param p8, "accessTtl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;ZJZZJ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->checkValid()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    new-instance v26, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->localResult()Z

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(ZZ)V

    .line 523
    .local v26, "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 598
    .end local v26    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_0
    return-object v3

    .line 517
    :catch_0
    move-exception v21

    .line 518
    .local v21, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 526
    .end local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v26    # "ret":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->init()Z

    .line 528
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit(Z)V

    .line 531
    const/16 v17, 0x0

    .line 533
    .local v17, "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v28

    .line 535
    .local v28, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    .line 538
    .local v2, "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    :goto_1
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_6

    .line 539
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 541
    .local v22, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v24

    .line 543
    .local v24, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v9

    .line 546
    .local v9, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v9, :cond_4

    .line 547
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v8

    .line 549
    .local v8, "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addActiveCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 551
    if-nez p6, :cond_3

    const/4 v3, 0x1

    :goto_3
    move/from16 v0, p6

    invoke-virtual {v8, v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 553
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .end local v9    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    move-result-object v10

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v9

    .line 565
    .restart local v9    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz p6, :cond_1

    .line 566
    move-wide/from16 v0, p8

    invoke-virtual {v9, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 568
    :cond_1
    invoke-virtual {v9, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    move-object/from16 v5, p0

    move-wide/from16 v6, p4

    move-object/from16 v10, v28

    .line 570
    invoke-virtual/range {v5 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addReader(JLorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 538
    .end local v8    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 535
    .end local v2    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v9    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v22    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v23    # "i":I
    .end local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v2

    goto :goto_1

    .line 551
    .restart local v2    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .restart local v8    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v9    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v22    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v23    # "i":I
    .restart local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    .line 573
    .end local v8    # "cached":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :cond_4
    if-nez v17, :cond_5

    .line 574
    new-instance v27, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct/range {v27 .. v27}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    .end local v17    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local v27, "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    move-object/from16 v17, v27

    .line 576
    .end local v27    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .restart local v17    # "skipped":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 595
    .end local v2    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v9    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v22    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v23    # "i":I
    .end local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v28    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catch_1
    move-exception v21

    .line 596
    .restart local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->setRollbackOnly()Z

    .line 598
    new-instance v3, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 580
    .end local v21    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "dhtCache":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .restart local v23    # "i":I
    .restart local v28    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_6
    :try_start_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->pessimistic()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 582
    :cond_7
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->entry2Key()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v25

    .line 588
    .local v25, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-eqz v17, :cond_9

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/F0;->notIn(Ljava/util/Collection;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v14

    .line 590
    .local v14, "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :goto_5
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 591
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock keys: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 593
    :cond_8
    const/16 v20, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v26

    move/from16 v15, p6

    move/from16 v16, p7

    move-wide/from16 v18, p8

    invoke-direct/range {v11 .. v20}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->obtainLockAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;ZZLjava/util/Set;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .end local v14    # "passedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_9
    move-object/from16 v14, v25

    .line 588
    goto :goto_5
.end method

.method protected mapExplicitLocks()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 192
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->implicit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const/4 v5, 0x0

    .line 201
    .local v5, "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    const/4 v6, 0x0

    .line 203
    .local v6, "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->allEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 204
    .local v9, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 206
    :cond_3
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 208
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v7

    .line 214
    .local v7, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual {v9, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 217
    .end local v7    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_4
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isLocal()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v12, v6

    .end local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .local v12, "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    move-object v8, v5

    .line 223
    .end local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .local v8, "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :goto_2
    :try_start_0
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 224
    if-nez v8, :cond_9

    .line 225
    new-instance v5, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v5}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .end local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :goto_3
    if-nez v12, :cond_8

    .line 228
    :try_start_1
    new-instance v6, Lorg/apache/ignite/internal/util/GridLeanMap;

    invoke-direct {v6}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>()V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 230
    .end local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dhtMap(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/IgniteLogger;Ljava/util/Map;Ljava/util/Map;)Z
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 236
    :catch_0
    move-exception v11

    .line 237
    .local v11, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_5
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v7

    .line 239
    .restart local v7    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual {v9, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    move-object v12, v6

    .end local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    move-object v8, v5

    .line 240
    .end local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto :goto_2

    .line 244
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v7    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .end local v9    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v11    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :cond_5
    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 245
    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addDhtNodeEntryMapping(Ljava/util/Map;)V

    .line 247
    :cond_6
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 248
    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->addNearNodeEntryMapping(Ljava/util/Map;)V

    .line 250
    :cond_7
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->mapped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 236
    .end local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .end local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v9    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :catch_1
    move-exception v11

    move-object v6, v12

    .end local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    move-object v5, v8

    .end local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto :goto_5

    .end local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :catch_2
    move-exception v11

    move-object v6, v12

    .end local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto :goto_5

    .end local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :cond_8
    move-object v6, v12

    .end local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto :goto_4

    .end local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .end local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :cond_9
    move-object v5, v8

    .end local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto :goto_3

    .end local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    :cond_a
    move-object v6, v12

    .end local v12    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v6    # "nearEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    move-object v5, v8

    .end local v8    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    .restart local v5    # "dhtEntryMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;>;"
    goto/16 :goto_1
.end method

.method protected abstract nearFutureId()Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method nearMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->mapExplicitLocks()V

    .line 269
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    return-object v0
.end method

.method nearMapping(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxMapping;

    return-object v0
.end method

.method protected abstract nearMiniId()Lorg/apache/ignite/lang/IgniteUuid;
.end method

.method protected abstract nearNodeId()Ljava/util/UUID;
.end method

.method public needsCompletedVersions(Z)V
    .locals 1
    .param p1, "needsCompletedVers"    # Z

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->needsCompletedVers:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->needsCompletedVers:Z

    .line 160
    return-void
.end method

.method public needsCompletedVersions()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->needsCompletedVers:Z

    return v0
.end method

.method public pendingVersions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->pendingVers:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->pendingVers:Ljava/util/Collection;

    goto :goto_0
.end method

.method public pendingVersions(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "pendingVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->pendingVers:Ljava/util/Collection;

    .line 179
    return-void
.end method

.method removeDhtMapping(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->removeMapping(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public removeMapping(Ljava/util/UUID;)Z
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->removeMapping(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/Map;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->removeMapping(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/Map;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method removeNearMapping(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->removeMapping(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 821
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 826
    return-void

    .line 824
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    throw v0
.end method

.method protected abstract sendFinishReply(ZLjava/lang/Throwable;)V
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 830
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    const-string v2, "nearNodes"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "dhtNodes"

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->dhtMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    const-string v6, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
