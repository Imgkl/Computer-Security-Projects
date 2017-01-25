.class Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;
.super Ljava/lang/Object;
.source "GridCachePartitionExchangeManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResendTimeoutObject"
.end annotation


# instance fields
.field private final createTime:J

.field private started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

.field private final timeoutId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V
    .locals 2

    .prologue
    .line 994
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 996
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 999
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->createTime:J

    .line 1002
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$1;

    .prologue
    .line 994
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)V

    return-void
.end method


# virtual methods
.method public endTime()J
    .locals 4

    .prologue
    .line 1011
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->createTime:J

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$2000(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    const/4 v3, 0x0

    .line 1016
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$2100(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1020
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->refreshPartitions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$2100(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1026
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1028
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$2200(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1024
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$2100(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1026
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1028
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->access$2200(Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method

.method public started()Z
    .locals 1

    .prologue
    .line 1036
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1006
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;, "Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager<TK;TV;>.ResendTimeoutObject;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager$ResendTimeoutObject;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method
