.class Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;
.super Ljava/lang/Object;
.source "GridTaskProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskCancelMessageListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1243
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V
    .locals 0

    .prologue
    .line 1243
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;

    .prologue
    .line 1243
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1246
    sget-boolean v3, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1248
    :cond_0
    instance-of v3, p2, Lorg/apache/ignite/internal/GridTaskCancelRequest;

    if-nez v3, :cond_1

    .line 1249
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$3200(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unexpected message instead of task cancel request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1279
    :goto_0
    return-void

    :cond_1
    move-object v2, p2

    .line 1254
    check-cast v2, Lorg/apache/ignite/internal/GridTaskCancelRequest;

    .line 1256
    .local v2, "req":Lorg/apache/ignite/internal/GridTaskCancelRequest;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 1259
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2200(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->waiting:Z
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2300(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1260
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$3300(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received task cancel request while stopping grid (will ignore): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 1265
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$1000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskCancelRequest;->sessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1267
    .local v1, "gridTaskWorker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    if-eqz v1, :cond_3

    .line 1269
    :try_start_2
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskFuture()Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->cancel()Z
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1277
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$3400(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to cancel task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTask()Lorg/apache/ignite/compute/ComputeTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1277
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "gridTaskWorker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v3
.end method
