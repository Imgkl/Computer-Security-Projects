.class Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "IgfsFragmentizerManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/communication/GridMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentizerWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private msgs:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 693
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)V
    .locals 3

    .prologue
    .line 700
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    .line 701
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fragmentizer-worker"

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 695
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->msgs:Ljava/util/concurrent/BlockingQueue;

    .line 702
    return-void
.end method

.method private sendResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;

    .prologue
    .line 795
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->sendWithRetries(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    invoke-static {v1, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send sync response to IGFS fragmentizer coordinator (originating node left the grid): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 804
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send sync response to IGFS fragmentizer coordinator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected body()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x5d

    .line 731
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_7

    .line 732
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->msgs:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 734
    .local v3, "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;>;"
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 736
    .local v2, "nodeId":Ljava/util/UUID;
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;

    if-eqz v6, :cond_4

    .line 737
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;

    .line 739
    .local v1, "fragmentizerReq":Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryReadLock()Z

    move-result v6

    if-nez v6, :cond_1

    .line 740
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 741
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received fragmentizing request while stopping grid (will ignore) [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", req="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_1
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->processFragmentizerRequest(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;)V
    invoke-static {v6, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 762
    :try_start_1
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    invoke-direct {p0, v2, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->sendResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    :goto_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v6, 0x1

    :try_start_2
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 753
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 754
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to process fragmentizer request (remote node left the grid) [req="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", err="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 762
    :cond_2
    :goto_2
    :try_start_3
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    invoke-direct {p0, v2, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->sendResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 766
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->rw:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    invoke-static {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v6

    .line 758
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_3
    :try_start_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to process fragmentizer request [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", req="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 762
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_1
    move-exception v6

    :try_start_5
    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerResponse;-><init>(Lorg/apache/ignite/lang/IgniteUuid;)V

    invoke-direct {p0, v2, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->sendResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 770
    .end local v1    # "fragmentizerReq":Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;
    :cond_4
    sget-boolean v6, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 772
    :cond_5
    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

    .line 774
    .local v5, "syncMsg":Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->response()Z

    move-result v6

    if-nez v6, :cond_0

    .line 775
    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;->order()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;-><init>(JZ)V

    .line 777
    .local v4, "res":Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 778
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending fragmentizer sync response to remote node [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", res="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 781
    :cond_6
    invoke-direct {p0, v2, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->sendResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;)V

    goto/16 :goto_0

    .line 785
    .end local v2    # "nodeId":Ljava/util/UUID;
    .end local v3    # "req":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;>;"
    .end local v4    # "res":Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;
    .end local v5    # "syncMsg":Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;
    :cond_7
    return-void
.end method

.method public onMessage(Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x5d

    .line 706
    instance-of v2, p2, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerRequest;

    if-nez v2, :cond_0

    instance-of v2, p2, Lorg/apache/ignite/internal/processors/igfs/IgfsSyncMessage;

    if-eqz v2, :cond_2

    .line 708
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received fragmentizer request from remote node [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_1
    move-object v2, p2

    .line 712
    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    .line 715
    .local v1, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->msgs:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 716
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to process fragmentizer communication message (will discard) [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v1    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;>;"
    :cond_2
    :goto_0
    return-void

    .line 720
    .restart local v1    # "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;>;"
    :catch_0
    move-exception v0

    .line 721
    .local v0, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 723
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to process fragmentizer communication message (thread was interrupted) [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method
