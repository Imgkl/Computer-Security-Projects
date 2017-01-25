.class public Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
.super Ljava/lang/Object;
.source "CacheMetricsImpl.java"

# interfaces
.implements Lorg/apache/ignite/cache/CacheMetrics;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NANOS_IN_MICROSECOND:J = 0x3e8L


# instance fields
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation
.end field

.field private commitTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private transient delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation
.end field

.field private evictCnt:Ljava/util/concurrent/atomic/AtomicLong;

.field private getTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private hits:Ljava/util/concurrent/atomic/AtomicLong;

.field private misses:Ljava/util/concurrent/atomic/AtomicLong;

.field private putTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private reads:Ljava/util/concurrent/atomic/AtomicLong;

.field private removeTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private rmCnt:Ljava/util/concurrent/atomic/AtomicLong;

.field private rollbackTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

.field private txCommits:Ljava/util/concurrent/atomic/AtomicLong;

.field private txRollbacks:Ljava/util/concurrent/atomic/AtomicLong;

.field private writes:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->$assertionsDisabled:Z

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
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->hits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->misses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txCommits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txRollbacks:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->evictCnt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rmCnt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->putTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->removeTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->commitTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rollbackTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 96
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 99
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store()Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->store()Lorg/apache/ignite/cache/store/CacheStore;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    .line 102
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    .line 103
    return-void
.end method


# virtual methods
.method public addGetTimeNanos(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 495
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 497
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addGetTimeNanos(J)V

    .line 499
    :cond_0
    return-void
.end method

.method public addPutAndGetTimeNanos(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 544
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->putTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 545
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 547
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addPutAndGetTimeNanos(J)V

    .line 549
    :cond_0
    return-void
.end method

.method public addPutTimeNanos(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 507
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->putTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 509
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addPutTimeNanos(J)V

    .line 511
    :cond_0
    return-void
.end method

.method public addRemoveAndGetTimeNanos(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->removeTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 532
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 534
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addRemoveAndGetTimeNanos(J)V

    .line 536
    :cond_0
    return-void
.end method

.method public addRemoveTimeNanos(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 519
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->removeTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 521
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addRemoveTimeNanos(J)V

    .line 523
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 311
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 312
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 313
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rmCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 314
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->hits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 315
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->misses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 316
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->evictCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 317
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txCommits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 318
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txRollbacks:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 319
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->putTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 320
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->removeTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 321
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 322
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->commitTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 323
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rollbackTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 325
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->clear()V

    .line 327
    :cond_0
    return-void
.end method

.method public delegate(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;)V
    .locals 0
    .param p1, "delegate"    # Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    .line 110
    return-void
.end method

.method public getAverageGetTime()F
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 384
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->getTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 385
    .local v2, "timeNanos":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 387
    .local v0, "readsCnt":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 388
    :cond_0
    const/4 v4, 0x0

    .line 390
    :goto_0
    return v4

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    goto :goto_0
.end method

.method public getAveragePutTime()F
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 395
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->putTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 396
    .local v2, "timeNanos":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 398
    .local v0, "putsCnt":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 399
    :cond_0
    const/4 v4, 0x0

    .line 401
    :goto_0
    return v4

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    goto :goto_0
.end method

.method public getAverageRemoveTime()F
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 406
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->removeTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 407
    .local v2, "timeNanos":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rmCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 409
    .local v0, "removesCnt":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 410
    :cond_0
    const/4 v4, 0x0

    .line 412
    :goto_0
    return v4

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    goto :goto_0
.end method

.method public getAverageTxCommitTime()F
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 277
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->commitTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 278
    .local v2, "timeNanos":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txCommits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 280
    .local v0, "commitsCnt":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 281
    :cond_0
    const/4 v4, 0x0

    .line 283
    :goto_0
    return v4

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    goto :goto_0
.end method

.method public getAverageTxRollbackTime()F
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 288
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rollbackTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 289
    .local v2, "timeNanos":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txRollbacks:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 291
    .local v0, "rollbacksCnt":J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    cmp-long v4, v0, v6

    if-nez v4, :cond_1

    .line 292
    :cond_0
    const/4 v4, 0x0

    .line 294
    :goto_0
    return v4

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v5, v2

    mul-float/2addr v4, v5

    long-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    goto :goto_0
.end method

.method public getCacheEvictions()J
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->evictCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheGets()J
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheHitPercentage()F
    .locals 6

    .prologue
    .line 336
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->hits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 337
    .local v2, "hits0":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 339
    .local v0, "gets0":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 340
    const/4 v4, 0x0

    .line 342
    :goto_0
    return v4

    :cond_0
    long-to-float v4, v2

    long-to-float v5, v0

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    goto :goto_0
.end method

.method public getCacheHits()J
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->hits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheMissPercentage()F
    .locals 6

    .prologue
    .line 352
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->misses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 353
    .local v0, "misses0":J
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 355
    .local v2, "reads0":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 356
    const/4 v4, 0x0

    .line 359
    :goto_0
    return v4

    :cond_0
    long-to-float v4, v0

    long-to-float v5, v2

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    goto :goto_0
.end method

.method public getCacheMisses()J
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->misses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCachePuts()J
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheRemovals()J
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rmCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheTxCommits()J
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txCommits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheTxRollbacks()J
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txRollbacks:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDhtEvictQueueCurrentSize()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictQueueSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->evictQueueSize()I

    move-result v0

    goto :goto_0
.end method

.method public getKeySize()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v0

    return v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getKeyType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOffHeapAllocatedSize()J
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->offHeapAllocatedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffHeapEntriesCount()J
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->offHeapEntriesCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOverflowSize()J
    .locals 4

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->overflowSize()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 124
    :goto_0
    return-wide v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ignored":Lorg/apache/ignite/IgniteCheckedException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v0

    return v0
.end method

.method public getTxCommitQueueSize()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->commitQueueSize()I

    move-result v0

    return v0
.end method

.method public getTxCommittedVersionsSize()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVersionsSize()I

    move-result v0

    return v0
.end method

.method public getTxDhtCommitQueueSize()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->commitQueueSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTxDhtCommittedVersionsSize()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVersionsSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTxDhtPrepareQueueSize()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareQueueSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTxDhtRolledbackVersionsSize()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVersionsSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTxDhtStartVersionCountsSize()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVersionCountsSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTxDhtThreadMapSize()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadMapSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTxDhtXidMapSize()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->dhtCtx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMapSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTxPrepareQueueSize()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareQueueSize()I

    move-result v0

    return v0
.end method

.method public getTxRolledbackVersionsSize()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVersionsSize()I

    move-result v0

    return v0
.end method

.method public getTxStartVersionCountsSize()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVersionCountsSize()I

    move-result v0

    return v0
.end method

.method public getTxThreadMapSize()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadMapSize()I

    move-result v0

    return v0
.end method

.method public getTxXidMapSize()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMapSize()I

    move-result v0

    return v0
.end method

.method public getValueType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getValueType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWriteBehindBufferSize()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->getWriteBehindBufferSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWriteBehindCriticalOverflowCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->getWriteBehindCriticalOverflowCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWriteBehindErrorRetryCount()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->getWriteBehindErrorRetryCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWriteBehindFlushFrequency()J
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->getWriteBehindFlushFrequency()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getWriteBehindFlushSize()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->getWriteBehindFlushSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWriteBehindFlushThreadCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->getWriteBehindFlushThreadCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWriteBehindStoreBatchSize()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->getWriteBehindStoreBatchSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getWriteBehindTotalCriticalOverflowCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;->getWriteBehindTotalCriticalOverflowCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isManagementEnabled()Z
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isManagementEnabled()Z

    move-result v0

    return v0
.end method

.method public isReadThrough()Z
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isReadThrough()Z

    move-result v0

    return v0
.end method

.method public isStatisticsEnabled()Z
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v0

    return v0
.end method

.method public isStoreByValue()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStoreByValue()Z

    move-result v0

    return v0
.end method

.method public isWriteBehindEnabled()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->store:Lorg/apache/ignite/internal/processors/cache/GridCacheWriteBehindStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriteThrough()Z
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isWriteThrough()Z

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEvict()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->evictCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 457
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onEvict()V

    .line 459
    :cond_0
    return-void
.end method

.method public onRead(Z)V
    .locals 1
    .param p1, "isHit"    # Z

    .prologue
    .line 420
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->reads:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 422
    if-eqz p1, :cond_1

    .line 423
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->hits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 427
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 429
    :cond_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->misses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0
.end method

.method public onRemove()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rmCnt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 447
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRemove()V

    .line 449
    :cond_0
    return-void
.end method

.method public onTxCommit(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 467
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txCommits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 468
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->commitTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 470
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onTxCommit(J)V

    .line 473
    :cond_0
    return-void
.end method

.method public onTxRollback(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->txRollbacks:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 482
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->rollbackTimeNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 484
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onTxRollback(J)V

    .line 486
    :cond_0
    return-void
.end method

.method public onWrite()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->writes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 437
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onWrite()V

    .line 439
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
