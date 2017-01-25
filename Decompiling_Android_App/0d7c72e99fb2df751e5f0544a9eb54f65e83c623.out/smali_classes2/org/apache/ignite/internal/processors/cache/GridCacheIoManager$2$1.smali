.class Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;
.super Ljava/lang/Object;
.source "GridCacheIoManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

.field final synthetic val$f:Lorg/apache/ignite/internal/IgniteInternalFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->val$f:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 224
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 227
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->stopping:Z
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received cache communication message while stopping (will ignore) [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 253
    :goto_0
    return-void

    .line 235
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->val$f:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 237
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start future completed for message [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 241
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$nodeId:Ljava/util/UUID;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$c:Lorg/apache/ignite/lang/IgniteBiInClosure;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->processMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    invoke-static {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/lang/IgniteBiInClosure;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->startErr:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to complete preload start future (will ignore message) [fut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->val$f:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->val$cacheMsg:Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;

    iget-object v2, v2, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->access$400(Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v1
.end method
