.class public Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final enabled:Z

.field private final itQ:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final itSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/GridWeakIterator",
            "<",
            "Ljava/util/Map$Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

.field private offheapEnabled:Z

.field private final offheapLsnrs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private spaceName:Ljava/lang/String;

.field private swapEnabled:Z

.field private final swapLsnrs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheManagerAdapter;-><init>()V

    .line 65
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itQ:Ljava/lang/ref/ReferenceQueue;

    .line 79
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itSet:Ljava/util/Collection;

    .line 86
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->enabled:Z

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "x3"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->writeToSwap(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;[B)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Ljava/util/Iterator;

    .prologue
    .line 48
    invoke-static {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cacheEntryIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;[B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .param p1, "x1"    # [B

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onUnswapped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->keyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    return-object v0
.end method

.method private addListener(ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    .locals 4
    .param p1, "part"    # I
    .param p3, "lsnr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;",
            ">;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 311
    .local v0, "lsnrs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 312
    monitor-enter v0

    .line 313
    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 316
    monitor-exit v0

    .line 339
    :cond_0
    return-void

    .line 318
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    .line 318
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 320
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v0, v2

    goto :goto_1

    .line 323
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$2;

    .end local v0    # "lsnrs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;"
    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)V

    .line 329
    .restart local v0    # "lsnrs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;"
    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 333
    .local v1, "old":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;"
    if-eqz v1, :cond_0

    .line 336
    move-object v0, v1

    .line 337
    goto :goto_0
.end method

.method private static cacheEntryIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1801
    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$17;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$17;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->iterator(Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private checkIteratorQueue()V
    .locals 4

    .prologue
    .line 374
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itQ:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/GridWeakIterator;

    .line 377
    .local v1, "it":Lorg/apache/ignite/internal/util/GridWeakIterator;, "Lorg/apache/ignite/internal/util/GridWeakIterator<Ljava/util/Map$Entry;>;"
    if-eqz v1, :cond_1

    .line 378
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridWeakIterator;->close()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_1
    if-eqz v1, :cond_2

    .line 385
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itSet:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 388
    :cond_2
    :goto_0
    if-nez v1, :cond_0

    .line 389
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to close iterator."

    invoke-interface {v2, v3, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    if-eqz v1, :cond_2

    .line 385
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itSet:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 385
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itSet:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_3
    throw v2
.end method

.method private initOffHeap()V
    .locals 9

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v6

    .line 111
    .local v6, "max":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x400

    div-long v4, v6, v0

    .line 113
    .local v4, "init":J
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partitions()I

    move-result v3

    .line 115
    .local v3, "parts":I
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v0, :cond_1

    const/4 v8, 0x0

    .line 145
    .local v8, "lsnr":Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->create(Ljava/lang/String;IJJLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    .line 146
    return-void

    .line 111
    .end local v3    # "parts":I
    .end local v4    # "init":J
    .end local v8    # "lsnr":Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
    :cond_0
    const-wide/32 v4, 0x800000

    goto :goto_0

    .line 115
    .restart local v3    # "parts":I
    .restart local v4    # "init":J
    :cond_1
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$1;

    invoke-direct {v8, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)V

    goto :goto_1
.end method

.method private keyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1497
    .local p1, "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<+Ljava/util/Map$Entry<[B[B>;>;"
    if-nez p1, :cond_0

    .line 1498
    new-instance v1, Lorg/apache/ignite/internal/util/GridEmptyIterator;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridEmptyIterator;-><init>()V

    .line 1547
    :goto_0
    return-object v1

    .line 1500
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1503
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$12;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V

    .line 1531
    .local v0, "iter":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$13;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;)V

    .line 1545
    .local v1, "ret":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itSet:Ljava/util/Collection;

    new-instance v3, Lorg/apache/ignite/internal/util/GridWeakIterator;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itQ:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v1, v0, v4}, Lorg/apache/ignite/internal/util/GridWeakIterator;-><init>(Ljava/util/Iterator;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private lazyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1399
    .local p1, "it":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<+Ljava/util/Map$Entry<[B[B>;>;"
    if-nez p1, :cond_0

    .line 1400
    new-instance v1, Lorg/apache/ignite/internal/util/GridEmptyIterator;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/GridEmptyIterator;-><init>()V

    .line 1486
    :goto_0
    return-object v1

    .line 1402
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1405
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$10;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)V

    .line 1470
    .local v0, "iter":Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;, "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$11;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$11;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;)V

    .line 1484
    .local v1, "ret":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itSet:Ljava/util/Collection;

    new-instance v3, Lorg/apache/ignite/internal/util/GridWeakIterator;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itQ:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, v1, v0, v4}, Lorg/apache/ignite/internal/util/GridWeakIterator;-><init>(Ljava/util/Iterator;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onEntryUnswapped(Ljava/util/concurrent/ConcurrentMap;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V
    .locals 6
    .param p2, "part"    # I
    .param p3, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p4, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;",
            ">;>;I",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 257
    .local v2, "lsnrs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;"
    if-nez v2, :cond_1

    .line 258
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unswapped notification [key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", part="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 266
    :cond_0
    return-void

    .line 264
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;

    .line 265
    .local v1, "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;
    invoke-interface {v1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;->onEntryUnswapped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V

    goto :goto_0
.end method

.method private onOffHeaped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V
    .locals 1
    .param p1, "part"    # I
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onEntryUnswapped(Ljava/util/concurrent/ConcurrentMap;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V

    .line 244
    return-void
.end method

.method private onUnswapped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V
    .locals 1
    .param p1, "part"    # I
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onEntryUnswapped(Ljava/util/concurrent/ConcurrentMap;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V

    .line 234
    return-void
.end method

.method private read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;[BIZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 9
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "keyBytes"    # [B
    .param p3, "part"    # I
    .param p4, "entryLocked"    # Z
    .param p5, "readOffheap"    # Z
    .param p6, "readSwap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 464
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 466
    :cond_0
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v4, :cond_2

    .line 504
    :cond_1
    :goto_0
    return-object v3

    .line 469
    :cond_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 471
    const/4 v1, 0x0

    .line 474
    .local v1, "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    :try_start_0
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-eqz v4, :cond_3

    if-nez p4, :cond_3

    .line 475
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;

    invoke-direct {v2, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .end local v1    # "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    .local v2, "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    :try_start_1
    invoke-virtual {p0, p3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->addSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 481
    .end local v2    # "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    .restart local v1    # "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    :cond_3
    if-eqz p5, :cond_4

    :try_start_2
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v4, :cond_4

    .line 482
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v4, v5, p3, p1, p2}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->get(Ljava/lang/String;ILjava/lang/Object;[B)[B

    move-result-object v0

    .line 484
    .local v0, "bytes":[B
    if-eqz v0, :cond_4

    .line 485
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 503
    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    goto :goto_0

    .line 488
    .end local v0    # "bytes":[B
    :cond_4
    :try_start_3
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_5

    if-nez p6, :cond_6

    .line 503
    :cond_5
    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    goto :goto_0

    .line 491
    :cond_6
    :try_start_4
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v4, :cond_8

    if-nez p1, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 503
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_7

    .line 504
    invoke-virtual {p0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    :cond_7
    throw v3

    .line 493
    :cond_8
    :try_start_5
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    new-instance v6, Lorg/apache/ignite/spi/swapspace/SwapKey;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {p1, v7, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7, p3, p2}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->read(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)[B

    move-result-object v0

    .line 497
    .restart local v0    # "bytes":[B
    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    .line 498
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->entry:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 503
    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    goto/16 :goto_0

    .line 500
    :cond_9
    if-eqz v0, :cond_a

    :try_start_6
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 503
    :cond_a
    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p0, p3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    goto/16 :goto_0

    .line 503
    .end local v0    # "bytes":[B
    .end local v1    # "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    .restart local v2    # "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    .restart local v1    # "lsnr":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$KeySwapListener;
    goto :goto_1
.end method

.method private readAndRemoveSwap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;I)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 9
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "part"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 576
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v0, :cond_0

    .line 577
    const/4 v0, 0x0

    .line 638
    :goto_0
    return-object v0

    .line 579
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t1()Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v2

    .line 580
    .local v2, "t":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t1()Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v5

    .line 582
    .local v5, "err":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/IgniteCheckedException;>;"
    new-instance v6, Lorg/apache/ignite/spi/swapspace/SwapKey;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v1

    invoke-direct {v6, v0, p2, v1}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    .line 586
    .local v6, "swapKey":Lorg/apache/ignite/spi/swapspace/SwapKey;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridTuple;ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/util/lang/GridTuple;)V

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v7, v8, v6, v0, v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->remove(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/ClassLoader;)V

    .line 635
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCheckedException;

    throw v0

    .line 638
    :cond_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    goto :goto_0
.end method

.method private removeListener(ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    .locals 3
    .param p1, "part"    # I
    .param p3, "lsnr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;",
            ">;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 349
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Integer;Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 351
    .local v1, "lsnrs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;>;"
    if-eqz v1, :cond_0

    .line 354
    monitor-enter v1

    .line 355
    :try_start_0
    invoke-interface {v1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 357
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 358
    .local v0, "empty":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    if-eqz v0, :cond_0

    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .end local v0    # "empty":Z
    :cond_0
    return-void

    .line 358
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X::",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ">(TX;)TX;"
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
    .line 400
    .local p1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;, "TX;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 402
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 404
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->type()B

    move-result v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unswapCacheObject(B[BLorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 406
    .local v0, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v0, :cond_1

    .line 407
    const/4 p1, 0x0

    .line 411
    .end local p1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;, "TX;"
    :goto_0
    return-object p1

    .line 409
    .restart local p1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;, "TX;"
    :cond_1
    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    goto :goto_0
.end method

.method private unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 1786
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->unmarshal([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;

    move-result-object v0

    return-object v0
.end method

.method private writeToSwap(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;[B)V
    .locals 15
    .param p1, "part"    # I
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "entry"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1103
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1105
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    new-instance v3, Lorg/apache/ignite/spi/swapspace/SwapKey;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v5

    move/from16 v0, p1

    invoke-direct {v3, v4, v0, v5}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v3, v0, v4}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->write(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;[BLjava/lang/ClassLoader;)V

    .line 1110
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x0

    check-cast v5, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v6, 0x0

    const/16 v7, 0x44

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :cond_0
    return-void
.end method


# virtual methods
.method public addOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    .locals 1
    .param p1, "part"    # I
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->addListener(ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 290
    return-void
.end method

.method public addSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    .locals 1
    .param p1, "part"    # I
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->addListener(ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 274
    return-void
.end method

.method public clearOffHeap()V
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v0, :cond_0

    .line 1120
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->initOffHeap()V

    .line 1121
    :cond_0
    return-void
.end method

.method public clearSwap()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1129
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->clear(Ljava/lang/String;)V

    .line 1131
    :cond_0
    return-void
.end method

.method public containsKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z
    .locals 9
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 420
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v3

    .line 423
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 425
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    .line 428
    .local v0, "part":I
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v4, :cond_2

    .line 429
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v0, p1, v6}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->contains(Ljava/lang/String;ILjava/lang/Object;[B)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    .line 430
    goto :goto_0

    .line 432
    :cond_2
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-eqz v4, :cond_0

    .line 433
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-nez p1, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 435
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    new-instance v6, Lorg/apache/ignite/spi/swapspace/SwapKey;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    invoke-interface {p1, v7, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v8

    invoke-direct {v6, v7, v0, v8}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->read(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Ljava/lang/ClassLoader;)[B

    move-result-object v1

    .line 439
    .local v1, "valBytes":[B
    if-eqz v1, :cond_4

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method enableOffheapEviction(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 911
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v1, :cond_0

    .line 919
    :goto_0
    return-void

    .line 914
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 916
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    .line 918
    .local v0, "part":I
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v0, p1, v3}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->enableEviction(Ljava/lang/String;ILjava/lang/Object;[B)V

    goto :goto_0
.end method

.method public iterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ">;>;"
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
    .line 1143
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    const/4 v0, 0x0

    .line 1155
    :goto_0
    return-object v0

    .line 1146
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1148
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    goto :goto_0

    .line 1151
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1152
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    goto :goto_0

    .line 1155
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$6;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;I)V

    goto :goto_0
.end method

.method iteratorSetSize()I
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->itSet:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public lazyOffHeapIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1367
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v0, :cond_0

    .line 1368
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    .line 1370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->iterator(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public lazySwapIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1308
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v0, :cond_0

    .line 1309
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyIterator;-><init>()V

    .line 1311
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridSwap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->rawIterator(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public offHeapAllocatedSize()J
    .locals 2

    .prologue
    .line 1388
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->allocatedSize(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public offHeapEnabled()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    return v0
.end method

.method public offHeapEntriesCount()J
    .locals 2

    .prologue
    .line 1379
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->entriesCount(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public offHeapIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 4
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ">;>;"
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
    const/4 v0, 0x0

    .line 1560
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v1, :cond_0

    .line 1565
    :goto_0
    return-object v0

    .line 1563
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1565
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->iterator(Ljava/lang/String;I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public offHeapKeyIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;
    .locals 3
    .param p1, "primary"    # Z
    .param p2, "backup"    # Z
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1318
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1320
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v1, :cond_1

    .line 1321
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v1

    .line 1329
    :goto_0
    return-object v1

    .line 1323
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1324
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->iterator(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->keyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 1326
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    .line 1329
    .local v0, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$8;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$8;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V

    goto :goto_0

    .line 1326
    .end local v0    # "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method public offheapEntriesCount(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I
    .locals 4
    .param p1, "primary"    # Z
    .param p2, "backup"    # Z
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 201
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 203
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v1, :cond_1

    .line 204
    const/4 v1, 0x0

    .line 213
    :goto_0
    return v1

    .line 206
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_4

    .line 207
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    .line 210
    .local v0, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->entriesCount(Ljava/lang/String;Ljava/util/Set;)J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 207
    .end local v0    # "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 213
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->entriesCount(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0
.end method

.method offheapEvictionEnabled()Z
    .locals 4

    .prologue
    .line 901
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offheapIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;
    .locals 3
    .param p1, "primary"    # Z
    .param p2, "backup"    # Z
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1688
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1690
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v1, :cond_1

    .line 1691
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v1

    .line 1699
    :goto_0
    return-object v1

    .line 1693
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1694
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazyOffHeapIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cacheEntryIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 1696
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    .line 1699
    .local v0, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$16;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$16;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V

    goto :goto_0

    .line 1696
    .end local v0    # "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method public onUndeploy(Ljava/lang/ClassLoader;)I
    .locals 14
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1711
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    .line 1713
    .local v5, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez v5, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 1715
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1718
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1720
    .local v4, "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[B[B>;>;"
    if-eqz v4, :cond_4

    .line 1721
    const/4 v7, 0x0

    .line 1724
    .local v7, "undeployCnt":I
    :try_start_1
    invoke-interface {v4}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1726
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[B[B>;"
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-direct {p0, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v6

    .line 1728
    .local v6, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    .line 1730
    .local v9, "valLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1731
    invoke-interface {v4}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->removeX()V

    .line 1733
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1736
    :cond_2
    if-nez v9, :cond_3

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v10

    if-nez v10, :cond_3

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->type()B

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    .line 1740
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v11

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v12

    iget-object v13, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v8

    .line 1744
    .local v8, "val":Ljava/lang/Object;
    if-eqz v8, :cond_3

    .line 1745
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    .line 1748
    .end local v8    # "val":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v5, v9}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1749
    invoke-interface {v4}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->removeX()V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1751
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1755
    .end local v6    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v9    # "valLdrId":Lorg/apache/ignite/lang/IgniteUuid;
    :catch_0
    move-exception v2

    .line 1756
    .local v2, "ex":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v11, "Failed to process swap entry."

    invoke-static {v10, v11, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1761
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[B[B>;"
    .end local v2    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    :try_start_4
    invoke-interface {v4}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V

    throw v10
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1767
    .end local v4    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[B[B>;>;"
    .end local v7    # "undeployCnt":I
    :catch_1
    move-exception v0

    .line 1768
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v11, "Failed to clear cache swap space on undeploy."

    invoke-static {v10, v11, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1771
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_4
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 1761
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "iter":Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;, "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator<Ljava/util/Map$Entry<[B[B>;>;"
    .restart local v7    # "undeployCnt":I
    :cond_5
    :try_start_5
    invoke-interface {v4}, Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;->close()V
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public rawIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
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
    .line 1221
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    .line 1233
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1226
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawOffHeapIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    goto :goto_0

    .line 1229
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1230
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->rawSwapIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    goto :goto_0

    .line 1233
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$7;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)V

    goto :goto_0
.end method

.method public rawOffHeapIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 1587
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v0, :cond_0

    .line 1588
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    .line 1590
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$14;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$14;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)V

    goto :goto_0
.end method

.method public rawOffHeapIterator(Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/typedef/CX2",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;TT;>;)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1573
    .local p1, "c":Lorg/apache/ignite/internal/util/typedef/CX2;, "Lorg/apache/ignite/internal/util/typedef/CX2<Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;Lorg/apache/ignite/internal/util/typedef/T2<Ljava/lang/Long;Ljava/lang/Integer;>;TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1575
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v0, :cond_1

    .line 1576
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    .line 1580
    :goto_0
    return-object v0

    .line 1578
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1580
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->iterator(Ljava/lang/String;Lorg/apache/ignite/internal/util/typedef/CX2;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public rawSwapIterator()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1640
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v0, :cond_0

    .line 1641
    new-instance v0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;-><init>()V

    .line 1645
    :goto_0
    return-object v0

    .line 1643
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1645
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->rawIterator(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    goto :goto_0
.end method

.method read(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 7
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "locked"    # Z
    .param p3, "readOffheap"    # Z
    .param p4, "readSwap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 655
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;[BIZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 7
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "readOffheap"    # Z
    .param p3, "readSwap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 704
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v0, :cond_0

    .line 705
    const/4 v0, 0x0

    .line 709
    :goto_0
    return-object v0

    .line 707
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v3

    .line 709
    .local v3, "part":I
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->read(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;[BIZZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public readAndRemove(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 731
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v4, :cond_1

    .line 732
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v25

    .line 879
    :cond_0
    return-object v25

    .line 734
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v24

    .line 738
    .local v24, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    const/16 v27, 0x0

    .line 739
    .local v27, "unprocessedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 742
    .local v25, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v4, :cond_9

    .line 743
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 744
    .local v6, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v5

    .line 746
    .local v5, "part":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v9

    invoke-virtual {v4, v7, v5, v6, v9}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->remove(Ljava/lang/String;ILjava/lang/Object;[B)[B

    move-result-object v21

    .line 749
    .local v21, "entryBytes":[B
    if-eqz v21, :cond_5

    .line 750
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v20

    .line 752
    .local v20, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-eqz v20, :cond_5

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v6, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onOffHeaped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v7, 0x4d

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 757
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v7

    const/4 v8, 0x0

    check-cast v8, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v9, 0x0

    const/16 v10, 0x4d

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v4 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_3
    if-eqz v24, :cond_4

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v7, v9}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onUnswap(Ljava/lang/Object;Ljava/lang/Object;[B)V

    .line 765
    :cond_4
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->type()B

    move-result v12

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v13

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->ttl()J

    move-result-wide v14

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->expireTime()J

    move-result-wide v16

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->keyClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v18

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueClassLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v19

    move-object v9, v6

    move v10, v5

    invoke-direct/range {v8 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILjava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 774
    .local v8, "unswapped":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 776
    move-object/from16 v0, v25

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 782
    .end local v8    # "unswapped":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .end local v20    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-eqz v4, :cond_2

    .line 783
    if-nez v27, :cond_6

    .line 784
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "unprocessedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 786
    .restart local v27    # "unprocessedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    :cond_6
    new-instance v26, Lorg/apache/ignite/spi/swapspace/SwapKey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v9

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v7, v9}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    .line 790
    .local v26, "swapKey":Lorg/apache/ignite/spi/swapspace/SwapKey;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 794
    .end local v5    # "part":I
    .end local v6    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v21    # "entryBytes":[B
    .end local v26    # "swapKey":Lorg/apache/ignite/spi/swapspace/SwapKey;
    :cond_7
    if-eqz v27, :cond_0

    .line 809
    :cond_8
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 798
    .end local v23    # "i$":Ljava/util/Iterator;
    :cond_9
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "unprocessedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 800
    .restart local v27    # "unprocessedKeys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/swapspace/SwapKey;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 801
    .restart local v6    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    new-instance v26, Lorg/apache/ignite/spi/swapspace/SwapKey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v9

    invoke-interface {v6, v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v9

    move-object/from16 v0, v26

    invoke-direct {v0, v4, v7, v9}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    .line 805
    .restart local v26    # "swapKey":Lorg/apache/ignite/spi/swapspace/SwapKey;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 810
    .end local v6    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v26    # "swapKey":Lorg/apache/ignite/spi/swapspace/SwapKey;
    :cond_a
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v4, :cond_b

    if-nez v27, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 813
    :cond_b
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t1()Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v22

    .line 815
    .local v22, "err":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<Lorg/apache/ignite/IgniteCheckedException;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    new-instance v9, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    invoke-direct {v9, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$4;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/lang/GridTuple;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object/from16 v0, v27

    invoke-virtual {v4, v7, v0, v9, v10}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->removeAll(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;Ljava/lang/ClassLoader;)V

    .line 876
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 877
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/IgniteCheckedException;

    throw v4
.end method

.method readAndRemove(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 1
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 718
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v0, :cond_0

    .line 719
    const/4 v0, 0x0

    .line 721
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readAndRemove(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v0

    goto :goto_0
.end method

.method readAndRemove(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 20
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 516
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v3, :cond_1

    .line 517
    const/16 v17, 0x0

    .line 564
    :cond_0
    :goto_0
    return-object v17

    .line 519
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v4

    .line 524
    .local v4, "part":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v3, :cond_4

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v3, v5, v4, v0, v6}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->remove(Ljava/lang/String;ILjava/lang/Object;[B)[B

    move-result-object v18

    .line 527
    .local v18, "entryBytes":[B
    if-eqz v18, :cond_4

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->unmarshalSwapEntry([B)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v17

    .line 530
    .local v17, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    if-nez v17, :cond_2

    .line 531
    const/16 v17, 0x0

    goto :goto_0

    .line 534
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onOffHeaped(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    const/16 v5, 0x4d

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    check-cast v7, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v8, 0x0

    const/16 v9, 0x4d

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v19

    .line 554
    .local v19, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    if-eqz v19, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;->valueBytes()[B

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5, v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onUnswap(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/16 :goto_0

    .line 564
    .end local v17    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .end local v18    # "entryBytes":[B
    .end local v19    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readAndRemoveSwap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;I)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v17

    goto/16 :goto_0
.end method

.method readOffheapPointer(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;
    .locals 8
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 672
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v3, :cond_0

    .line 673
    const/4 v3, 0x0

    .line 689
    :goto_0
    return-object v3

    .line 675
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 677
    .local v0, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v1

    .line 679
    .local v1, "part":I
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v1, v0, v5}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->valuePointer(Ljava/lang/String;ILjava/lang/Object;[B)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v2

    .line 682
    .local v2, "ptr":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    .line 683
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 684
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 686
    :cond_2
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v6, v7, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheOffheapSwapEntry;-><init>(JI)V

    move-object v3, v4

    goto :goto_0

    .line 689
    :cond_3
    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->readAndRemoveSwap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;I)Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;

    move-result-object v3

    goto :goto_0
.end method

.method public remove(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 10
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 926
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v5, :cond_1

    .line 981
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 931
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v2

    .line 933
    .local v2, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 954
    .local v0, "c":Lorg/apache/ignite/internal/util/typedef/CI1;, "Lorg/apache/ignite/internal/util/typedef/CI1<[B>;"
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v1

    .line 957
    .local v1, "part":I
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v5, :cond_3

    .line 958
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    invoke-interface {p1, v7, v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v8

    invoke-virtual {v5, v6, v1, v7, v8}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->remove(Ljava/lang/String;ILjava/lang/Object;[B)[B

    move-result-object v4

    .line 963
    .local v4, "val":[B
    if-eqz v4, :cond_3

    .line 964
    if-eqz v0, :cond_0

    .line 965
    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/util/typedef/CI1;->apply(Ljava/lang/Object;)V

    goto :goto_0

    .line 933
    .end local v0    # "c":Lorg/apache/ignite/internal/util/typedef/CI1;, "Lorg/apache/ignite/internal/util/typedef/CI1<[B>;"
    .end local v1    # "part":I
    .end local v4    # "val":[B
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;

    invoke-direct {v0, p0, v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$5;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    goto :goto_1

    .line 971
    .restart local v0    # "c":Lorg/apache/ignite/internal/util/typedef/CI1;, "Lorg/apache/ignite/internal/util/typedef/CI1<[B>;"
    .restart local v1    # "part":I
    :cond_3
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-eqz v5, :cond_0

    .line 972
    new-instance v3, Lorg/apache/ignite/spi/swapspace/SwapKey;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    invoke-interface {p1, v5, v9}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v6

    invoke-direct {v3, v5, v1, v6}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    .line 976
    .local v3, "swapKey":Lorg/apache/ignite/spi/swapspace/SwapKey;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v0, v7}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->remove(Ljava/lang/String;Lorg/apache/ignite/spi/swapspace/SwapKey;Lorg/apache/ignite/lang/IgniteInClosure;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public removeOffHeapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    .locals 1
    .param p1, "part"    # I
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeListener(ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 298
    return-void
.end method

.method removeOffheap(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Z
    .locals 4
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 888
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 890
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 892
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v0

    .line 894
    .local v0, "part":I
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v0, p1, v3}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->removex(Ljava/lang/String;ILjava/lang/Object;[B)Z

    move-result v1

    return v1
.end method

.method public removeSwapListener(ILorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V
    .locals 1
    .param p1, "part"    # I
    .param p2, "lsnr"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapLsnrs:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->removeListener(ILjava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapListener;)V

    .line 282
    return-void
.end method

.method public spaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    return-object v0
.end method

.method public start0()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->swapSpaceName(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridSwap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->offheap()Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    .line 96
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isSwapEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->enabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    .line 97
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->enabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    sget-object v3, Lorg/apache/ignite/cache/CacheMemoryMode;->ONHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v0

    sget-object v3, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_TIERED:Lorg/apache/ignite/cache/CacheMemoryMode;

    if-ne v0, v3, :cond_3

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    .line 100
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->initOffHeap()V

    .line 102
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 96
    goto :goto_0

    :cond_3
    move v1, v2

    .line 97
    goto :goto_1
.end method

.method public swapEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    return v0
.end method

.method public swapEntriesCount(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I
    .locals 4
    .param p1, "primary"    # Z
    .param p2, "backup"    # Z
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 178
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 180
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v1, :cond_1

    .line 181
    const/4 v1, 0x0

    .line 190
    :goto_0
    return v1

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_4

    .line 184
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    .line 187
    .local v0, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->swapKeys(Ljava/lang/String;Ljava/util/Set;)J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 184
    .end local v0    # "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 190
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->swapKeys(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0
.end method

.method public swapIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;
    .locals 3
    .param p1, "primary"    # Z
    .param p2, "backup"    # Z
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1658
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1660
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v1, :cond_1

    .line 1661
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v1

    .line 1669
    :goto_0
    return-object v1

    .line 1663
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1664
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->lazySwapIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cacheEntryIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 1666
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    .line 1669
    .local v0, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$15;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$15;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V

    goto :goto_0

    .line 1666
    .end local v0    # "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method public swapIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 4
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<[B",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntry;",
            ">;>;"
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
    const/4 v0, 0x0

    .line 1627
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v1, :cond_0

    .line 1632
    :goto_0
    return-object v0

    .line 1630
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1632
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->rawIterator(Ljava/lang/String;I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$IteratorWrapper;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public swapKeyIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;
    .locals 3
    .param p1, "primary"    # Z
    .param p2, "backup"    # Z
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1343
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1345
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v1, :cond_1

    .line 1346
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->emptyIterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v1

    .line 1354
    :goto_0
    return-object v1

    .line 1348
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1349
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->gridSwap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->rawIterator(Ljava/lang/String;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->keyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 1351
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primaryPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    .line 1354
    .local v0, "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$9;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$9;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V

    goto :goto_0

    .line 1351
    .end local v0    # "parts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->backupPartitions(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1
.end method

.method public swapKeys()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 223
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->swapKeys(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public swapSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 167
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->swapSize(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method write(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 21
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/nio/ByteBuffer;
    .param p3, "type"    # B
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "ttl"    # J
    .param p7, "expireTime"    # J
    .param p9, "keyClsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "valClsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1005
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v5, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1008
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1010
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v19

    .line 1012
    .local v19, "part":I
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v4 .. v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;-><init>(Ljava/nio/ByteBuffer;BLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 1020
    .local v4, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v5, :cond_3

    .line 1021
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v9

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->marshal()[B

    move-result-object v10

    move/from16 v7, v19

    move-object/from16 v8, p1

    invoke-virtual/range {v5 .. v10}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->put(Ljava/lang/String;ILjava/lang/Object;[B[B)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v5

    const/16 v6, 0x4c

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1024
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v8

    const/4 v9, 0x0

    check-cast v9, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v10, 0x0

    const/16 v11, 0x4c

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v6, v19

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v20

    .line 1032
    .local v20, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    if-eqz v20, :cond_0

    .line 1033
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onSwap(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1027
    .end local v20    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-eqz v5, :cond_2

    .line 1028
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapEntryImpl;->marshal()[B

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->writeToSwap(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;[B)V

    goto :goto_1
.end method

.method writeAll(Ljava/lang/Iterable;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, "swapped":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapEnabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1045
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->checkIteratorQueue()V

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v19

    .line 1049
    .local v19, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapEnabled:Z

    if-eqz v1, :cond_3

    .line 1050
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;

    .line 1051
    .local v20, "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->partition()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->marshal()[B

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->put(Ljava/lang/String;ILjava/lang/Object;[B[B)V

    .line 1057
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->partition()I

    move-result v2

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x0

    check-cast v5, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v6, 0x0

    const/16 v7, 0x4c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v1 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :cond_2
    if-eqz v19, :cond_1

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onSwap(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1066
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "swapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    :cond_3
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1068
    .local v15, "batch":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;

    .line 1069
    .local v17, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    new-instance v21, Lorg/apache/ignite/spi/swapspace/SwapKey;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->partition()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B

    move-result-object v3

    move-object/from16 v0, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/spi/swapspace/SwapKey;-><init>(Ljava/lang/Object;I[B)V

    .line 1073
    .local v21, "swapKey":Lorg/apache/ignite/spi/swapspace/SwapKey;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->marshal()[B

    move-result-object v1

    move-object/from16 v0, v21

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1076
    .end local v17    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    .end local v21    # "swapKey":Lorg/apache/ignite/spi/swapspace/SwapKey;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->swapMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v2, v15, v3}, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;->writeAll(Ljava/lang/String;Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1079
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;

    .line 1080
    .local v16, "batchSwapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->partition()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    const/4 v5, 0x0

    check-cast v5, Lorg/apache/ignite/lang/IgniteUuid;

    const/4 v6, 0x0

    const/16 v7, 0x44

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v1 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    if-eqz v19, :cond_5

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onSwap(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1088
    .end local v15    # "batch":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/spi/swapspace/SwapKey;[B>;"
    .end local v16    # "batchSwapEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheBatchSwapEntry;
    :cond_6
    return-void
.end method
