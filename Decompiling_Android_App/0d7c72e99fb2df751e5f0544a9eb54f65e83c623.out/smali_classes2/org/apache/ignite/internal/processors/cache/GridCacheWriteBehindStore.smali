.class public Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;
.super Ljava/lang/Object;
.source "GridCacheWriteBehindStore.java"

# interfaces
.implements Lorg/apache/ignite/cache/store/CacheStore;
.implements Lorg/apache/ignite/lifecycle/LifecycleAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$1;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/store/CacheStore",
        "<TK;TV;>;",
        "Lorg/apache/ignite/lifecycle/LifecycleAware;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CACHE_OVERFLOW_RATIO:F = 1.5f

.field public static final DFLT_CONCUR_LVL:I = 0x40

.field public static final DFLT_INITIAL_CAPACITY:I = 0x400


# instance fields
.field private batchSize:I

.field private cacheCriticalSize:I

.field private cacheFlushFreq:J

.field private cacheMaxSize:I

.field private cacheName:Ljava/lang/String;

.field private cacheOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private cacheTotalOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private canFlush:Ljava/util/concurrent/locks/Condition;

.field private concurLvl:I

.field private flushLock:Ljava/util/concurrent/locks/Lock;

.field private flushThreadCnt:I

.field private flushThreads:[Lorg/apache/ignite/internal/util/worker/GridWorker;

.field private gridName:Ljava/lang/String;

.field private initCap:I

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private store:Lorg/apache/ignite/cache/store/CacheStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

.field private writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedHashMap",
            "<TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/cache/store/CacheStore;)V
    .locals 3
    .param p1, "storeMgr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .param p2, "gridName"    # Ljava/lang/String;
    .param p3, "cacheName"    # Ljava/lang/String;
    .param p4, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/IgniteLogger;",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p5, "store":Lorg/apache/ignite/cache/store/CacheStore;, "Lorg/apache/ignite/cache/store/CacheStore<TK;TV;>;"
    const/4 v2, 0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->initCap:I

    .line 72
    const/16 v0, 0x40

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->concurLvl:I

    .line 75
    const/16 v0, 0x2800

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I

    .line 81
    iput v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreadCnt:I

    .line 84
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheFlushFreq:J

    .line 87
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;

    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->canFlush:Ljava/util/concurrent/locks/Condition;

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheTotalOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    .line 144
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->gridName:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheName:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    .line 147
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->store:Lorg/apache/ignite/cache/store/CacheStore;

    .line 148
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .prologue
    .line 58
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheFlushFreq:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->canFlush:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .prologue
    .line 58
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->acquired(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;Ljava/util/Map;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->applyBatch(Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;)Lorg/jsr166/ConcurrentLinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    return-object v0
.end method

.method private acquired(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)Z
    .locals 1
    .param p1, "status"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    .prologue
    .line 887
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->PENDING:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->FLUSHED:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyBatch(Ljava/util/Map;Z)V
    .locals 9
    .param p2, "initSes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue",
            "<TK;TV;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p1, "valMap":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    iget v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I

    if-le v6, v7, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 591
    :cond_0
    const/4 v3, 0x0

    .line 594
    .local v3, "operation":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 596
    .local v0, "batch":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 597
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    if-nez v3, :cond_1

    .line 598
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v3

    .line 600
    :cond_1
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v6

    if-eq v3, v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 602
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->PENDING:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-eq v6, v7, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 604
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Ljavax/cache/Cache$Entry;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 607
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    :cond_4
    invoke-direct {p0, v3, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->updateStore(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;Ljava/util/Map;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 608
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 609
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .line 611
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 614
    :try_start_0
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->FLUSHED:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V

    .line 616
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/jsr166/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .line 619
    .local v4, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    if-eq v4, v5, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Map value for key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was updated during flush"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    .end local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v6

    .line 621
    .restart local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :cond_5
    :try_start_1
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    .line 630
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    .end local v4    # "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :cond_6
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .line 631
    .restart local v5    # "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 634
    :try_start_2
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->RETRY:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V

    .line 636
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 638
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 641
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v6

    .line 645
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :cond_7
    return-void
.end method

.method private flushSingleValue()V
    .locals 7

    .prologue
    .line 538
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, "batch":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v5}, Lorg/jsr166/ConcurrentLinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 544
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .line 546
    .local v4, "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :try_start_1
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v3

    .line 551
    .local v3, "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->acquired(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_1

    .line 565
    :try_start_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 578
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v5

    .line 555
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .restart local v4    # "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :cond_1
    :try_start_3
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->RETRY:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-ne v5, v6, :cond_2

    .line 556
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 558
    :cond_2
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 565
    .end local v3    # "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 560
    .restart local v3    # "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    :cond_3
    :try_start_5
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->PENDING:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V

    .line 562
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 565
    :try_start_6
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 568
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 569
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->applyBatch(Ljava/util/Map;Z)V

    .line 571
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheTotalOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 578
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 580
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;>;"
    .end local v3    # "status":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :goto_1
    return-void

    .line 578
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1
.end method

.method private updateCache(Ljava/lang/Object;Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;)V
    .locals 4
    .param p2    # Ljavax/cache/Cache$Entry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "operation"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;-><init>(Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$1;)V

    .line 496
    .local v0, "newVal":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v2, p1, v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .local v1, "prev":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    if-eqz v1, :cond_4

    .line 497
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 500
    :try_start_0
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->PENDING:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-ne v2, v3, :cond_0

    .line 502
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 506
    :cond_0
    :try_start_1
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->FLUSHED:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_1

    .line 520
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 509
    :cond_1
    :try_start_2
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->RETRY:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-ne v2, v3, :cond_2

    .line 511
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 513
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->NEW:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-eq v2, v3, :cond_3

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->RETRY:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2

    .line 515
    :cond_3
    :try_start_3
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;->NEW:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    invoke-static {v1, p2, p3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 525
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheCriticalSize:I

    if-le v2, v3, :cond_6

    .line 527
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushSingleValue()V

    .line 530
    :cond_5
    :goto_1
    return-void

    .line 528
    :cond_6
    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I

    if-le v2, v3, :cond_5

    .line 529
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->wakeUp()V

    goto :goto_1
.end method

.method private updateStore(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;Ljava/util/Map;Z)Z
    .locals 10
    .param p1, "operation"    # Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;
    .param p3, "initSes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p2, "vals":Ljava/util/Map;, "Ljava/util/Map<TK;Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 665
    if-eqz p3, :cond_0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    if-eqz v5, :cond_0

    .line 666
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->initSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 669
    :cond_0
    const/4 v3, 0x1

    .line 672
    .local v3, "threwEx":Z
    :try_start_0
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$1;->$SwitchMap$org$apache$ignite$internal$processors$cache$GridCacheWriteBehindStore$StoreOperation:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 684
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected operation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :catchall_0
    move-exception v5

    if-eqz p3, :cond_1

    :try_start_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    if-eqz v8, :cond_1

    .line 693
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V

    :cond_1
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to update underlying store: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v0, v8}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 699
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v5}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v5

    iget v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheCriticalSize:I

    if-gt v5, v8, :cond_2

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 700
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 701
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/cache/Cache$Entry;

    invoke-interface {v5}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 703
    .local v4, "val":Ljava/lang/Object;
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update store (value will be lost as current buffer size is greater than \'cacheCriticalSize\' or node has been stopped before store was repaired) [key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", val="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", op="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "val":Ljava/lang/Object;
    :pswitch_0
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/ignite/cache/store/CacheStore;->writeAll(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 687
    :cond_3
    :goto_2
    const/4 v3, 0x0

    .line 692
    if-eqz p3, :cond_4

    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    if-eqz v5, :cond_4

    .line 693
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->storeMgr:Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->endSession(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move v5, v7

    .line 711
    :goto_3
    return v5

    .line 679
    :pswitch_1
    :try_start_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/ignite/cache/store/CacheStore;->deleteAll(Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object v4, v6

    .line 701
    goto :goto_1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    :cond_6
    move v5, v7

    .line 708
    goto :goto_3

    .line 711
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 672
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private wakeUp()V
    .locals 2

    .prologue
    .line 719
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 722
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->canFlush:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 460
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store remove [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 463
    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->RMV:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->updateCache(Ljava/lang/Object;Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v1, Ljavax/cache/integration/CacheWriterException;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertExceptionNoWrap(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 453
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 454
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public forceFlush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->wakeUp()V

    .line 354
    return-void
.end method

.method public getWriteBehindBufferSize()I
    .locals 1

    .prologue
    .line 258
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->sizex()I

    move-result v0

    return v0
.end method

.method public getWriteBehindCriticalOverflowCount()I
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getWriteBehindErrorRetryCount()I
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->retryEntriesCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getWriteBehindFlushFrequency()J
    .locals 2

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheFlushFreq:J

    return-wide v0
.end method

.method public getWriteBehindFlushSize()I
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I

    return v0
.end method

.method public getWriteBehindFlushThreadCount()I
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreadCnt:I

    return v0
.end method

.method public getWriteBehindStoreBatchSize()I
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I

    return v0
.end method

.method public getWriteBehindTotalCriticalOverflowCount()I
    .locals 1

    .prologue
    .line 303
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheTotalOverflowCntr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store load [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 406
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v1, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .line 408
    .local v0, "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 412
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$1;->$SwitchMap$org$apache$ignite$internal$processors$cache$GridCacheWriteBehindStore$StoreOperation:[I

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 420
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$ValueStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 414
    :pswitch_0
    :try_start_1
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Ljavax/cache/Cache$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 424
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 428
    :goto_0
    return-object v1

    .line 417
    :pswitch_1
    const/4 v1, 0x0

    .line 424
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 428
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v1, p1}, Lorg/apache/ignite/cache/store/CacheStore;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Store load all [keys="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 366
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 368
    .local v2, "loaded":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 370
    .local v4, "remaining":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 371
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v6, v1}, Lorg/jsr166/ConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;

    .line 373
    .local v5, "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    if-eqz v5, :cond_3

    .line 374
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 377
    :try_start_0
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->PUT:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    if-ne v6, v7, :cond_2

    .line 378
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Ljavax/cache/Cache$Entry;

    move-result-object v6

    invoke-interface {v6}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_1
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 380
    :cond_2
    :try_start_1
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->RMV:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;)Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6

    .line 387
    :cond_3
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "val":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue<TK;TV;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 392
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v6, v4}, Lorg/apache/ignite/cache/store/CacheStore;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    .line 394
    .local v3, "loaded0":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v3, :cond_5

    .line 395
    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 398
    .end local v3    # "loaded0":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_5
    return-object v2
.end method

.method public varargs loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p1, "clo":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->store:Lorg/apache/ignite/cache/store/CacheStore;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/cache/store/CacheStore;->loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V

    .line 359
    return-void
.end method

.method public sessionEnd(Z)V
    .locals 0
    .param p1, "commit"    # Z

    .prologue
    .line 473
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    return-void
.end method

.method public setBatchSize(I)V
    .locals 0
    .param p1, "batchSize"    # I

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->batchSize:I

    .line 240
    return-void
.end method

.method public setConcurrencyLevel(I)V
    .locals 0
    .param p1, "concurLvl"    # I

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->concurLvl:I

    .line 167
    return-void
.end method

.method public setFlushFrequency(J)V
    .locals 1
    .param p1, "cacheFlushFreq"    # J

    .prologue
    .line 218
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheFlushFreq:J

    .line 219
    return-void
.end method

.method public setFlushSize(I)V
    .locals 0
    .param p1, "cacheMaxSize"    # I

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I

    .line 177
    return-void
.end method

.method public setFlushThreadCount(I)V
    .locals 0
    .param p1, "flushThreadCnt"    # I

    .prologue
    .line 199
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreadCnt:I

    .line 200
    return-void
.end method

.method public setInitialCapacity(I)V
    .locals 0
    .param p1, "initCap"    # I

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->initCap:I

    .line 157
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 273
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheFlushFreq:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 275
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting write-behind store for cache \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 279
    :cond_1
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheMaxSize:I

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheCriticalSize:I

    .line 281
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheCriticalSize:I

    if-nez v1, :cond_2

    .line 282
    const/16 v1, 0x4000

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheCriticalSize:I

    .line 284
    :cond_2
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreadCnt:I

    new-array v1, v1, [Lorg/apache/ignite/internal/util/worker/GridWorker;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreads:[Lorg/apache/ignite/internal/util/worker/GridWorker;

    .line 286
    new-instance v1, Lorg/jsr166/ConcurrentLinkedHashMap;

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->initCap:I

    const/high16 v3, 0x3f400000    # 0.75f

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->concurLvl:I

    invoke-direct {v1, v2, v3, v4}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(IFI)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreads:[Lorg/apache/ignite/internal/util/worker/GridWorker;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 289
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreads:[Lorg/apache/ignite/internal/util/worker/GridWorker;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->gridName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flusher-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v2, p0, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$Flusher;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    aput-object v2, v1, v0

    .line 291
    new-instance v1, Lorg/apache/ignite/thread/IgniteThread;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreads:[Lorg/apache/ignite/internal/util/worker/GridWorker;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    invoke-virtual {v1}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public stop()V
    .locals 8

    .prologue
    .line 332
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->stopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 334
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping write-behind store for cache \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->cacheName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 336
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->wakeUp()V

    .line 338
    const/4 v1, 0x1

    .line 340
    .local v1, "graceful":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->flushThreads:[Lorg/apache/ignite/internal/util/worker/GridWorker;

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/worker/GridWorker;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 341
    .local v4, "worker":Lorg/apache/ignite/internal/util/worker/GridWorker;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;Lorg/apache/ignite/IgniteLogger;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v4    # "worker":Lorg/apache/ignite/internal/util/worker/GridWorker;
    :cond_1
    if-nez v1, :cond_2

    .line 344
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Shutdown was aborted"

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;)V

    .line 346
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/util/worker/GridWorker;
    .end local v1    # "graceful":Z
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    return-void
.end method

.method public store()Lorg/apache/ignite/cache/store/CacheStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/store/CacheStore",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->store:Lorg/apache/ignite/cache/store/CacheStore;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljavax/cache/Cache$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store put [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 443
    :cond_0
    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;->PUT:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->updateCache(Ljava/lang/Object;Ljavax/cache/Cache$Entry;Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StoreOperation;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    new-instance v1, Ljavax/cache/integration/CacheWriterException;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertExceptionNoWrap(Lorg/apache/ignite/IgniteCheckedException;)Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/cache/integration/CacheWriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 434
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->write(Ljavax/cache/Cache$Entry;)V

    goto :goto_0

    .line 435
    .end local v0    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method writeCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore$StatefulValue",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->writeCache:Lorg/jsr166/ConcurrentLinkedHashMap;

    return-object v0
.end method
