.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;
.super Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter",
        "<",
        "Lorg/apache/ignite/plugin/extensions/communication/Message;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 227
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioServerListenerAdapter;-><init>()V

    .line 497
    return-void
.end method

.method static synthetic access$2100(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/cluster/ClusterNode;JZ)Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .param p2, "x2"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p3, "x3"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "x4"    # J
    .param p6, "x5"    # Z

    .prologue
    .line 227
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->connected(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/cluster/ClusterNode;JZ)Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    move-result-object v0

    return-object v0
.end method

.method private connected(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/cluster/ClusterNode;JZ)Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    .locals 6
    .param p1, "recovery"    # Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .param p2, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p3, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "rcvCnt"    # J
    .param p6, "sndRes"    # Z

    .prologue
    .line 473
    invoke-virtual {p1, p4, p5}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->onHandshake(J)V

    .line 475
    invoke-interface {p2, p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->recoveryDescriptor(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;)V

    .line 477
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->resend(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 479
    if-eqz p6, :cond_0

    .line 480
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->receivedCount()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;-><init>(J)V

    invoke-virtual {v2, p2, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sendSystem(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 482
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected()V

    .line 484
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteLogger;)V

    .line 486
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {p3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 488
    .local v1, "oldClient":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    sget-boolean v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client already created [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recoveryDesc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 491
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onConnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 3
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 241
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->accepted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending local node ID to newly accepted session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 247
    :cond_1
    return-void
.end method

.method public onDisconnected(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "e"    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 250
    invoke-static {}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$300()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 252
    .local v0, "id":Ljava/util/UUID;
    if-eqz v0, :cond_2

    .line 253
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 255
    .local v3, "rmv":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    instance-of v4, v3, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->session()Lorg/apache/ignite/internal/util/nio/GridNioSession;

    move-result-object v4

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    invoke-interface {v3}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    .line 260
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$500(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 261
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->recoveryDescriptor()Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v2

    .line 263
    .local v2, "recoveryData":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-eqz v2, :cond_1

    .line 264
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->nodeAlive(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->messagesFutures()Ljava/util/Deque;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session was closed but there are unacknowledged messages, will try to reconnect [rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node()Lorg/apache/ignite/cluster/ClusterNode;

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

    .line 270
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$600(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryWorker;->addReconnectRequest(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;)V

    .line 279
    .end local v2    # "recoveryData":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$700(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/spi/communication/CommunicationListener;

    move-result-object v1

    .line 281
    .local v1, "lsnr0":Lorg/apache/ignite/spi/communication/CommunicationListener;, "Lorg/apache/ignite/spi/communication/CommunicationListener<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    if-eqz v1, :cond_2

    .line 282
    invoke-interface {v1, v0}, Lorg/apache/ignite/spi/communication/CommunicationListener;->onDisconnected(Ljava/util/UUID;)V

    .line 284
    .end local v1    # "lsnr0":Lorg/apache/ignite/spi/communication/CommunicationListener;, "Lorg/apache/ignite/spi/communication/CommunicationListener<Lorg/apache/ignite/plugin/extensions/communication/Message;>;"
    .end local v3    # "rmv":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_2
    return-void

    .line 274
    .restart local v2    # "recoveryData":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .restart local v3    # "rmv":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_3
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->onNodeLeft()V

    goto :goto_0
.end method

.method public bridge synthetic onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 227
    check-cast p2, Lorg/apache/ignite/plugin/extensions/communication/Message;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;)V

    return-void
.end method

.method public onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;)V
    .locals 30
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;

    .prologue
    .line 287
    invoke-static {}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$300()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/UUID;

    .line 289
    .local v28, "sndId":Ljava/util/UUID;
    if-nez v28, :cond_10

    .line 290
    sget-boolean v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->accepted()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 292
    :cond_0
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    if-eqz v4, :cond_2

    move-object/from16 v4, p2

    .line 293
    check-cast v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    # getter for: Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B
    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->access$800(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToUuid([BI)Ljava/util/UUID;

    move-result-object v28

    .line 300
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote node ID received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 303
    :cond_1
    invoke-static {}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$300()I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v4, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/UUID;

    .line 305
    .local v21, "old":Ljava/util/UUID;
    sget-boolean v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-eqz v21, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 295
    .end local v21    # "old":Ljava/util/UUID;
    :cond_2
    sget-boolean v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_3
    move-object/from16 v4, p2

    .line 297
    check-cast v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->nodeId()Ljava/util/UUID;

    move-result-object v28

    goto :goto_0

    .line 307
    .restart local v21    # "old":Ljava/util/UUID;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v8

    .line 309
    .local v8, "rmtNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v8, :cond_6

    .line 310
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 457
    .end local v8    # "rmtNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v21    # "old":Ljava/util/UUID;
    :cond_5
    :goto_1
    return-void

    .line 315
    .restart local v8    # "rmtNode":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v21    # "old":Ljava/util/UUID;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/spi/IgniteSpiContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v20

    .line 317
    .local v20, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 322
    .local v22, "oldClient":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    if-eqz v22, :cond_8

    .line 323
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    if-eqz v4, :cond_8

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received incoming connection when already connected to this node, rejecting [locNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 329
    :cond_7
    new-instance v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    const-wide/16 v12, -0x1

    invoke-direct {v4, v12, v13}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;-><init>(J)V

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_1

    .line 335
    :cond_8
    new-instance v10, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v10}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 337
    .local v10, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-interface {v4, v0, v10}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 339
    .local v23, "oldFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    sget-boolean v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->$assertionsDisabled:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/AssertionError;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_9
    move-object/from16 v9, p2

    .line 341
    check-cast v9, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    .line 343
    .local v9, "msg0":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4, v8}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v7

    .line 345
    .local v7, "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-nez v23, :cond_d

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "oldClient":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    check-cast v22, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 348
    .restart local v22    # "oldClient":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    if-eqz v22, :cond_b

    .line 349
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    if-eqz v4, :cond_b

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received incoming connection when already connected to this node, rejecting [locNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 355
    :cond_a
    new-instance v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    const-wide/16 v12, -0x1

    invoke-direct {v4, v12, v13}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;-><init>(J)V

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto/16 :goto_1

    .line 361
    :cond_b
    invoke-virtual {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->connectCount()J

    move-result-wide v12

    new-instance v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    invoke-virtual {v7, v12, v13, v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->tryReserve(JLorg/apache/ignite/lang/IgniteInClosure;)Z

    move-result v27

    .line 364
    .local v27, "reserved":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received incoming connection from remote node [rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reserved="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 368
    :cond_c
    if-eqz v27, :cond_5

    .line 370
    :try_start_0
    invoke-virtual {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->received()J

    move-result-wide v16

    const/16 v18, 0x1

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p1

    move-object v15, v8

    invoke-direct/range {v12 .. v18}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->connected(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/cluster/ClusterNode;JZ)Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    move-result-object v19

    .line 373
    .local v19, "client":Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5, v10}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v19    # "client":Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6, v10}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v4

    .line 381
    .end local v27    # "reserved":Z
    :cond_d
    move-object/from16 v0, v23

    instance-of v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ConnectFuture;

    if-eqz v4, :cond_f

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v4

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-gez v4, :cond_f

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received incoming connection from remote node while connecting to this node, rejecting [locNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeOrder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeOrder="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v8}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 389
    :cond_e
    new-instance v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    const-wide/16 v12, -0x1

    invoke-direct {v4, v12, v13}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;-><init>(J)V

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto/16 :goto_1

    .line 392
    :cond_f
    invoke-virtual {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->connectCount()J

    move-result-wide v12

    new-instance v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V

    invoke-virtual {v7, v12, v13, v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->tryReserve(JLorg/apache/ignite/lang/IgniteInClosure;)Z

    move-result v27

    .line 395
    .restart local v27    # "reserved":Z
    if-eqz v27, :cond_5

    .line 396
    invoke-virtual {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->received()J

    move-result-wide v16

    const/16 v18, 0x1

    move-object/from16 v12, p0

    move-object v13, v7

    move-object/from16 v14, p1

    move-object v15, v8

    invoke-direct/range {v12 .. v18}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->connected(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/cluster/ClusterNode;JZ)Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    move-result-object v19

    .line 399
    .restart local v19    # "client":Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 405
    .end local v7    # "recoveryDesc":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .end local v8    # "rmtNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v9    # "msg0":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;
    .end local v10    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    .end local v19    # "client":Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;
    .end local v20    # "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v21    # "old":Ljava/util/UUID;
    .end local v22    # "oldClient":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .end local v23    # "oldFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    .end local v27    # "reserved":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1100(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/jsr166/LongAdder8;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsr166/LongAdder8;->increment()V

    .line 407
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->recoveryDescriptor()Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    move-result-object v26

    .line 409
    .local v26, "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-eqz v26, :cond_14

    .line 410
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    if-eqz v4, :cond_12

    move-object/from16 v9, p2

    .line 411
    check-cast v9, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    .line 413
    .local v9, "msg0":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received recovery acknowledgement [rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rcvCnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;->received()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 417
    :cond_11
    invoke-virtual {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;->received()J

    move-result-wide v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->ackReceived(J)V

    goto/16 :goto_1

    .line 422
    .end local v9    # "msg0":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;
    :cond_12
    invoke-virtual/range {v26 .. v26}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->onReceived()J

    move-result-wide v24

    .line 424
    .local v24, "rcvCnt":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)I

    move-result v4

    int-to-long v4, v4

    rem-long v4, v24, v4

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-nez v4, :cond_14

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send recovery acknowledgement [rmtNode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rcvCnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 429
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    move-wide/from16 v0, v24

    invoke-direct {v5, v0, v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;-><init>(J)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sendSystem(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 431
    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->lastAcknowledged(J)V

    .line 438
    .end local v24    # "rcvCnt":J
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)I

    move-result v4

    if-lez v4, :cond_16

    .line 439
    invoke-static {}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1500()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;

    .line 441
    .local v29, "tracker":Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;
    if-nez v29, :cond_15

    .line 442
    invoke-static {}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1500()I

    move-result v4

    new-instance v29, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;

    .end local v29    # "tracker":Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)I

    move-result v5

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioSession;I)V

    .restart local v29    # "tracker":Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v4, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;

    .line 445
    .local v21, "old":Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;
    sget-boolean v4, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->$assertionsDisabled:Z

    if-nez v4, :cond_15

    if-eqz v21, :cond_15

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 448
    .end local v21    # "old":Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;
    :cond_15
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->onMessageReceived()V

    .line 450
    move-object/from16 v11, v29

    .line 455
    .end local v29    # "tracker":Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;
    .local v11, "c":Lorg/apache/ignite/lang/IgniteRunnable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v11}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->notifyListener(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/lang/IgniteRunnable;)V

    goto/16 :goto_1

    .line 453
    .end local v11    # "c":Lorg/apache/ignite/lang/IgniteRunnable;
    :cond_16
    invoke-static {}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1600()Lorg/apache/ignite/lang/IgniteRunnable;

    move-result-object v11

    .restart local v11    # "c":Lorg/apache/ignite/lang/IgniteRunnable;
    goto :goto_2
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 7
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    const/16 v6, 0x5d

    .line 229
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Communication SPI Session write timed out (consider increasing \'socketWriteTimeout\' configuration property) [remoteAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", writeTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$100(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing communication SPI session on write timeout [remoteAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", writeTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$100(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 237
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 238
    return-void
.end method
