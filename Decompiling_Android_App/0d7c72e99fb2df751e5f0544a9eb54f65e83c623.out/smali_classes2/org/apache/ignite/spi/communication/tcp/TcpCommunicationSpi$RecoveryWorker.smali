.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoveryWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2427
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 3

    .prologue
    .line 2434
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .line 2435
    invoke-static {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-comm-recovery-worker"

    invoke-static {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 2429
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->q:Ljava/util/concurrent/BlockingQueue;

    .line 2436
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
    .param p2, "x1"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;

    .prologue
    .line 2427
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V

    return-void
.end method


# virtual methods
.method addReconnectRequest(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;)V
    .locals 2
    .param p1, "recoverySnd"    # Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .prologue
    .line 2486
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 2488
    .local v0, "add":Z
    sget-boolean v1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2489
    :cond_0
    return-void
.end method

.method protected body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5d

    .line 2440
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2441
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    const-string v5, "Recovery worker has been started."

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2443
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2444
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 2446
    .local v3, "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    sget-boolean v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 2448
    :cond_1
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    .line 2450
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->nodeAlive(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2454
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2455
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery reconnect [rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2457
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3700(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    move-result-object v0

    .line 2459
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->release()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2461
    .end local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :catch_0
    move-exception v1

    .line 2462
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->nodeAlive(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2463
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2464
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery reconnect failed, will retry [rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2467
    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->addReconnectRequest(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;)V

    goto/16 :goto_0

    .line 2470
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2471
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery reconnect failed, node left [rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", err="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2474
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recovery reconnect failed, node left [rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3600(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 2480
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v3    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :cond_6
    return-void
.end method
