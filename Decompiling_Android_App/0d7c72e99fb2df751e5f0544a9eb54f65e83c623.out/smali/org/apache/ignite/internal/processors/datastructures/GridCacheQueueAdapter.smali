.class public abstract Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
.super Ljava/util/AbstractCollection;
.source "GridCacheQueueAdapter.java"

# interfaces
.implements Lorg/apache/ignite/IgniteQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$1;,
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$RemoveProcessor;,
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$AddProcessor;,
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$PollProcessor;,
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;,
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$CollocatedItemKey;,
        Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TT;>;",
        "Lorg/apache/ignite/IgniteQueue",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_CLEAR_BATCH_SIZE:I = 0x64

.field protected static final MAX_UPDATE_RETRIES:I = 0x64

.field protected static final QUEUE_REMOVED_IDX:J = -0x8000000000000000L

.field protected static final RETRY_DELAY:J = 0x1L


# instance fields
.field protected final cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field private final cap:I

.field protected final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation
.end field

.field private final collocated:Z

.field protected final id:Lorg/apache/ignite/lang/IgniteUuid;

.field protected final log:Lorg/apache/ignite/IgniteLogger;

.field protected final queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

.field protected final queueName:Ljava/lang/String;

.field private final readSem:Ljava/util/concurrent/Semaphore;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private volatile rmvd:Z

.field private final writeSem:Ljava/util/concurrent/Semaphore;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .param p1, "queueName"    # Ljava/lang/String;
    .param p2, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    .local p3, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    const/4 v3, 0x1

    .line 93
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 94
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 95
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueName:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 97
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cap:I

    .line 98
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->collocated:Z

    .line 99
    new-instance v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    .line 100
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 104
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->size()I

    move-result v1

    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->readSem:Ljava/util/concurrent/Semaphore;

    .line 106
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->bounded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {v0, v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->writeSem:Ljava/util/concurrent/Semaphore;

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueRemoved(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    return v0
.end method

.method private checkStopping()V
    .locals 2

    .prologue
    .line 496
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Ignite is stopping"

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    return-void
.end method

.method private static itemKey(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;ZJ)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    .locals 7
    .param p0, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p1, "queueName"    # Ljava/lang/String;
    .param p2, "collocated"    # Z
    .param p3, "idx"    # J

    .prologue
    .line 546
    if-eqz p2, :cond_0

    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$CollocatedItemKey;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$CollocatedItemKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JLorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$1;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    invoke-direct {v1, p0, p1, p3, p4}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private static queueRemoved(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 1
    .param p0, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 555
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseSemaphores()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    const v1, 0xf4240

    .line 459
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->bounded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->writeSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 461
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->writeSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->readSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 465
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->readSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 466
    return-void
.end method

.method static removeKeys(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;ZJJI)V
    .locals 10
    .param p0, "cache"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "collocated"    # Z
    .param p4, "startIdx"    # J
    .param p6, "endIdx"    # J
    .param p8, "batchSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 404
    new-instance v4, Ljava/util/HashSet;

    if-lez p8, :cond_1

    move/from16 v5, p8

    :goto_0
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 406
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;>;"
    move-wide v2, p4

    .local v2, "idx":J
    :goto_1
    cmp-long v5, v2, p6

    if-gez v5, :cond_2

    .line 407
    invoke-static {p1, p2, p3, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->itemKey(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;ZJ)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    if-lez p8, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_0

    .line 410
    new-array v5, v8, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 412
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 406
    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_1

    .line 404
    .end local v2    # "idx":J
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;>;"
    :cond_1
    const/16 v5, 0xa

    goto :goto_0

    .line 416
    .restart local v2    # "idx":J
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 417
    new-array v5, v8, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 418
    :cond_3
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const-string v0, "item"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bounded()Z
    .locals 2

    .prologue
    .line 133
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cap:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cap:I

    return v0
.end method

.method protected final checkRemoved(Ljava/lang/Long;)V
    .locals 4
    .param p1, "idx"    # Ljava/lang/Long;

    .prologue
    .line 427
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->onRemoved(Z)V

    .line 429
    :cond_0
    return-void
.end method

.method protected final checkRemoved(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V
    .locals 1
    .param p1, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 437
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueRemoved(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->onRemoved(Z)V

    .line 439
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 333
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->clear(I)V

    .line 334
    return-void
.end method

.method public clear(I)V
    .locals 11
    .param p1, "batchSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    const/4 v0, 0x0

    .line 339
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Batch size cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 342
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$ClearProcessor;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    move-result-object v0

    invoke-interface {v0}, Ljavax/cache/processor/EntryProcessorResult;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 345
    .local v10, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-nez v10, :cond_1

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {v10}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->checkRemoved(Ljava/lang/Long;)V

    .line 350
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueName:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->collocated:Z

    invoke-virtual {v10}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v10}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move v8, p1

    invoke-static/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->removeKeys(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;ZJJI)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v10    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_0
    move-exception v9

    .line 353
    .local v9, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v0

    throw v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 527
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->rmvd:Z

    if-eqz v1, :cond_0

    .line 536
    :goto_0
    return-void

    .line 531
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->removeQueue(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public collocated()Z
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->collocated:Z

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;I)I"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 366
    .local v2, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 367
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 369
    .local v0, "el":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 375
    .end local v0    # "el":Ljava/lang/Object;, "TT;"
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 372
    .restart local v0    # "el":Ljava/lang/Object;, "TT;"
    .restart local v1    # "i":I
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "el":Ljava/lang/Object;, "TT;"
    :cond_1
    move v1, v2

    .line 375
    goto :goto_1
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, "el":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 184
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 186
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1016
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    if-ne p0, p1, :cond_0

    .line 1017
    const/4 v1, 0x1

    .line 1024
    :goto_0
    return v1

    .line 1019
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1020
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1022
    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    .line 1024
    .local v0, "that":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1030
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 504
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method protected itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    .locals 6
    .param p1, "idx"    # Ljava/lang/Long;

    .prologue
    .line 521
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->id:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->collocated()Z

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->itemKey(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;ZJ)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 195
    .local v1, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->checkRemoved(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V

    .line 197
    new-instance v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$QueueIterator;-><init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter$1;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 199
    .end local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    throw v2
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueName:Ljava/lang/String;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 10
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const-string v5, "item"

    invoke-static {p1, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout cannot be negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->bounded()Z

    move-result v5

    if-nez v5, :cond_2

    .line 239
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 241
    .local v1, "offer":Z
    sget-boolean v5, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 236
    .end local v1    # "offer":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 243
    .restart local v1    # "offer":Z
    :cond_1
    const/4 v5, 0x1

    .line 268
    .end local v1    # "offer":Z
    :goto_1
    return v5

    .line 246
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    add-long v2, v6, v8

    .line 248
    .local v2, "end":J
    :cond_3
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_5

    .line 249
    const/4 v4, 0x0

    .line 252
    .local v4, "retVal":Z
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->writeSem:Ljava/util/concurrent/Semaphore;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 253
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->checkStopping()V

    .line 255
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 264
    :cond_4
    if-eqz v4, :cond_3

    .line 265
    const/4 v5, 0x1

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 261
    new-instance v5, Lorg/apache/ignite/IgniteInterruptedException;

    const-string v6, "Queue put interrupted."

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/IgniteInterruptedException;-><init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V

    throw v5

    .line 268
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "retVal":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onHeaderChanged(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V
    .locals 3
    .param p1, "hdr"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .prologue
    .line 472
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->readSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 474
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->readSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 477
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->bounded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->writeSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 480
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->full()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->writeSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 483
    :cond_1
    return-void
.end method

.method public onKernalStop()V
    .locals 0

    .prologue
    .line 489
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->releaseSemaphores()V

    .line 490
    return-void
.end method

.method public onRemoved(Z)V
    .locals 3
    .param p1, "throw0"    # Z

    .prologue
    .line 447
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->rmvd:Z

    .line 449
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->releaseSemaphores()V

    .line 451
    if-eqz p1, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue has been removed from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 157
    .local v1, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->checkRemoved(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V

    .line 159
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const/4 v2, 0x0

    .line 162
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->itemKey(Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 164
    .end local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout cannot be negative: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 296
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 298
    .local v2, "end":J
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_3

    .line 299
    const/4 v1, 0x0

    .line 302
    .local v1, "retVal":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->readSem:Ljava/util/concurrent/Semaphore;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->checkStopping()V

    .line 305
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 314
    .end local v1    # "retVal":Ljava/lang/Object;, "TT;"
    :cond_1
    if-eqz v1, :cond_0

    .line 318
    :goto_1
    return-object v1

    .line 294
    .end local v2    # "end":J
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 308
    .restart local v1    # "retVal":Ljava/lang/Object;, "TT;"
    .restart local v2    # "end":J
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 311
    new-instance v4, Lorg/apache/ignite/IgniteInterruptedException;

    const-string v5, "Queue poll interrupted."

    invoke-direct {v4, v5, v0}, Lorg/apache/ignite/IgniteInterruptedException;-><init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V

    throw v4

    .line 318
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "retVal":Ljava/lang/Object;, "TT;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    const-string v2, "item"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->bounded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 211
    .local v1, "offer":Z
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 218
    .end local v1    # "offer":Z
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->writeSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->checkStopping()V

    .line 228
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    :cond_1
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 223
    new-instance v2, Lorg/apache/ignite/IgniteInterruptedException;

    const-string v3, "Queue put interrupted."

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteInterruptedException;-><init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V

    throw v2
.end method

.method public remainingCapacity()I
    .locals 3

    .prologue
    .line 323
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->bounded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    const v0, 0x7fffffff

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    iget v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cap:I

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->size()I

    move-result v2

    sub-int v0, v1, v2

    .line 328
    .local v0, "remaining":I
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "res":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 174
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 176
    :cond_0
    return-object v0
.end method

.method protected abstract removeItem(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public removed()Z
    .locals 1

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->rmvd:Z

    return v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->cache:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->queueKey:Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeaderKey;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    .line 142
    .local v1, "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->checkRemoved(Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;)V

    .line 144
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->size()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 146
    .end local v1    # "hdr":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v2

    throw v2
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->readSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->checkStopping()V

    .line 285
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 287
    .local v1, "e":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    .line 288
    return-object v1

    .line 277
    .end local v1    # "e":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 280
    new-instance v2, Lorg/apache/ignite/IgniteInterruptedException;

    const-string v3, "Queue take interrupted."

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteInterruptedException;-><init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
