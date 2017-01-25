.class abstract Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CachedResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
        "<TR;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private pruned:I

.field private queue:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final recipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult",
            "<TR;>.QueueIterator;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2571
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "recipient"    # Ljava/lang/Object;

    .prologue
    .line 2584
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 2579
    new-instance v1, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    .line 2585
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->addRecipient(Ljava/lang/Object;)Z

    move-result v0

    .line 2587
    .local v0, "res":Z
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2588
    :cond_0
    return-void
.end method

.method static synthetic access$3500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    .prologue
    .line 2571
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    .prologue
    .line 2571
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->pruned:I

    return v0
.end method

.method static synthetic access$3700(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    .prologue
    .line 2571
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->queue:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;

    .prologue
    .line 2571
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->pruneQueue()V

    return-void
.end method

.method private pruneQueue()V
    .locals 3

    .prologue
    .line 2648
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2649
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2651
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->pos:I
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->access$3400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;)I

    move-result v0

    .line 2653
    .local v0, "minPos":I
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->pruned:I

    if-le v0, v1, :cond_2

    .line 2654
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->queue:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->pruned:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;->remove(I)V

    .line 2656
    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->pruned:I

    .line 2658
    :cond_2
    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "recipient"    # Ljava/lang/Object;

    .prologue
    .line 2616
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    monitor-enter v1

    .line 2617
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2618
    const/4 v0, 0x0

    monitor-exit v1

    .line 2625
    :goto_0
    return v0

    .line 2620
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2622
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2623
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2625
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeIfNotShared(Ljava/lang/Object;)V
    .locals 2
    .param p1, "recipient"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2598
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2600
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    monitor-enter v1

    .line 2601
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2602
    monitor-exit v1

    .line 2609
    :goto_0
    return-void

    .line 2604
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2607
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    invoke-interface {v0}, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;->close()V

    .line 2608
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator(Ljava/lang/Object;)Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .locals 3
    .param p1, "recipient"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 2665
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2667
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    .line 2669
    .local v0, "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TR;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2671
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    monitor-enter v2

    .line 2672
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->queue:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;

    if-nez v1, :cond_2

    .end local v0    # "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TR;>;"
    :goto_0
    monitor-exit v2

    return-object v0

    .restart local v0    # "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TR;>;"
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    move-object v0, v1

    goto :goto_0

    .line 2673
    .end local v0    # "it":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TR;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 2571
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>;"
    check-cast p1, Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->onDone(Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<TR;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2630
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>;"
    .local p1, "res":Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;, "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator<TR;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2632
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    monitor-enter v3

    .line 2633
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 2634
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;

    const/16 v4, 0x80

    invoke-direct {v2, v4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;-><init>(I)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->queue:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CircularQueue;

    .line 2636
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult;->recipients:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;

    .line 2637
    .local v1, "it":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;->init()V

    goto :goto_0

    .line 2641
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "it":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult$QueueIterator;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CachedResult<TR;>.QueueIterator;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2640
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method
