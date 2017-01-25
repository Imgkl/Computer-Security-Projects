.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->apply(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 539
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "msgFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->recoveryDesc:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    invoke-static {v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$1700(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;
    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$1800(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/nio/GridNioSession;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$1900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->msg:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;
    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$2000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->received()J

    move-result-wide v4

    const/4 v6, 0x0

    # invokes: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->connected(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/cluster/ClusterNode;JZ)Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    invoke-static/range {v0 .. v6}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->access$2100(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/cluster/ClusterNode;JZ)Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    move-result-object v7

    .line 547
    .local v7, "client":Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$2200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$1900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$2200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 561
    .end local v7    # "client":Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v8

    .line 550
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send recovery handshake [rmtNode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$1900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->recoveryDesc:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$1700(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->release()V

    .line 556
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$2200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v0, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$1900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$2200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    iget-object v1, v1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v1, v1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$1900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;->this$2:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    invoke-static {v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->access$2200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method
