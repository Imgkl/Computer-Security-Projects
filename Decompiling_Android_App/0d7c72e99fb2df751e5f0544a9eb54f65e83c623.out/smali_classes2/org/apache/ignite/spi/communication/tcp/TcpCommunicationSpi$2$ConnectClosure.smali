.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;",
            ">;"
        }
    .end annotation
.end field

.field private final msg:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

.field private final recoveryDesc:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

.field private final rmtNode:Lorg/apache/ignite/cluster/ClusterNode;

.field private final ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

.field final synthetic this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V
    .locals 0
    .param p2, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p3, "recoveryDesc"    # Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .param p4, "rmtNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p5, "msg"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p6, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .line 530
    iput-object p3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->recoveryDesc:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 531
    iput-object p4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;

    .line 532
    iput-object p5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->msg:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    .line 533
    iput-object p6, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 534
    return-void
.end method

.method static synthetic access$1700(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->recoveryDesc:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->msg:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 538
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    new-instance v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure$1;-><init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;)V

    .line 564
    .local v0, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v1, v1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    new-instance v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->recoveryDesc:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->receivedCount()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;-><init>(J)V

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sendSystem(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/lang/IgniteInClosure;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 574
    .end local v0    # "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    :goto_0
    return-void

    .line 568
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v1, v1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->this$1:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;

    iget-object v2, v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v2}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$900(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->rmtNode:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 497
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$2$ConnectClosure;->apply(Ljava/lang/Boolean;)V

    return-void
.end method
