.class Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "IgfsServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptWorker"
.end annotation


# instance fields
.field private acceptCnt:I

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)V
    .locals 3

    .prologue
    .line 428
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    .line 429
    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "igfs-accept-worker"

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 430
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 435
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 436
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->accept()Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    move-result-object v0

    .line 438
    .local v0, "client":Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 439
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IGFS client connected [igfsName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 442
    :cond_0
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    iget v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->acceptCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->acceptCnt:I

    invoke-direct {v3, v5, v0, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;I)V

    .line 444
    .local v3, "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;
    new-instance v4, Lorg/apache/ignite/thread/IgniteThread;

    invoke-direct {v4, v3}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 446
    .local v4, "workerThread":Lorg/apache/ignite/thread/IgniteThread;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->clientWorkers:Lorg/jsr166/ConcurrentLinkedDeque8;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/jsr166/ConcurrentLinkedDeque8;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->addx(Ljava/lang/Object;)Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    move-result-object v2

    .line 448
    .local v2, "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;>;"
    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;->node(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V

    .line 450
    invoke-virtual {v4}, Lorg/apache/ignite/thread/IgniteThread;->start()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 453
    .end local v0    # "client":Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .end local v2    # "node":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;>;"
    .end local v3    # "worker":Lorg/apache/ignite/internal/processors/igfs/IgfsServer$ClientWorker;
    .end local v4    # "workerThread":Lorg/apache/ignite/thread/IgniteThread;
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 455
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to accept client IPC connection (will shutdown accept thread)."

    invoke-static {v5, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->close()V

    .line 460
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_1
    return-void

    .line 458
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->close()V

    throw v5
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 464
    invoke-super {p0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cancel()V

    .line 466
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsServer$AcceptWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsServer;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->srvEndpoint:Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsServer;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsServer;)Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;->close()V

    .line 467
    return-void
.end method
