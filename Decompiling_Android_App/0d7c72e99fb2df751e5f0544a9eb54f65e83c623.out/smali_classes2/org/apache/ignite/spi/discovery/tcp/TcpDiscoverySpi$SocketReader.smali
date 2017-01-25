.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketReader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile client:Z

.field private volatile nodeId:Ljava/util/UUID;

.field private final sock:Ljava/net/Socket;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4613
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/net/Socket;)V
    .locals 3
    .param p2, "sock"    # Ljava/net/Socket;

    .prologue
    .line 4628
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 4629
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-disco-sock-reader"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 4631
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    .line 4633
    iget v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->setPriority(I)V

    .line 4635
    iget-object v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onSocketReaderCreated()V

    .line 4636
    return-void
.end method

.method private nodeAlive(Ljava/util/UUID;)Z
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5051
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v0

    .line 5053
    .local v0, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    .line 5055
    .local v1, "nodeAlive":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 5056
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 5057
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v2

    .line 5059
    :goto_1
    monitor-exit v4

    .line 5062
    :cond_0
    return v1

    .end local v1    # "nodeAlive":Z
    :cond_1
    move v1, v3

    .line 5053
    goto :goto_0

    .restart local v1    # "nodeAlive":Z
    :cond_2
    move v1, v3

    .line 5057
    goto :goto_1

    .line 5059
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private processJoinRequestMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;)Z
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/16 v7, 0x5d

    const/4 v3, 0x1

    .line 5072
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5073
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->responded()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5075
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v2

    .line 5077
    .local v2, "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    sget-object v4, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v2, v4, :cond_3

    .line 5078
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    invoke-virtual {v4, v5, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V

    .line 5080
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5081
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Responded to join request message [msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5083
    :cond_2
    invoke-virtual {p1, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->responded(Z)V

    .line 5085
    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 5118
    :goto_0
    return v3

    .line 5090
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageProcessingStarted(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 5094
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 5096
    .local v1, "rmtAddr":Ljava/net/SocketAddress;
    sget-object v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v2, v3, :cond_7

    .line 5097
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v3

    if-gez v3, :cond_6

    .line 5100
    :cond_4
    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5109
    .local v0, "res":Ljava/lang/Integer;
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V

    .line 5111
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5112
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Responded to join request message [msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5114
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 5116
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v3, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageProcessingFinished(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 5118
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5103
    .end local v0    # "res":Ljava/lang/Integer;
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .restart local v0    # "res":Ljava/lang/Integer;
    goto :goto_1

    .line 5107
    .end local v0    # "res":Ljava/lang/Integer;
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .restart local v0    # "res":Ljava/lang/Integer;
    goto :goto_1
.end method


# virtual methods
.method protected body()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 4640
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v12

    .line 4647
    .local v12, "locNodeId":Ljava/util/UUID;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 4648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 4650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->getSoTimeout()I

    move-result v21

    .line 4652
    .local v21, "timeout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4654
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4656
    .local v11, "in":Ljava/io/InputStream;
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v4, v0, [B

    .line 4657
    .local v4, "buf":[B
    const/16 v17, 0x0

    .line 4659
    .local v17, "read":I
    :goto_0
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 4660
    array-length v0, v4

    move/from16 v23, v0

    sub-int v23, v23, v17

    move/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    .line 4662
    .local v16, "r":I
    if-ltz v16, :cond_0

    .line 4663
    add-int v17, v17, v16

    goto :goto_0

    .line 4665
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to read magic header (too few bytes received) [rmtAddr="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locAddr="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4670
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to read magic header (too few bytes received) [rmtAddr="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", locAddr="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x5d

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 5043
    .end local v4    # "buf":[B
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v16    # "r":I
    .end local v17    # "read":I
    .end local v21    # "timeout":I
    :goto_1
    return-void

    .line 4677
    .restart local v4    # "buf":[B
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v17    # "read":I
    .restart local v21    # "timeout":I
    :cond_4
    :try_start_1
    sget-object v23, Lorg/apache/ignite/internal/util/typedef/internal/U;->IGNITE_HEADER:[B

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_8

    .line 4678
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown connection detected (is some other software connecting to this Ignite port?) [rmtAddr="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locAddr="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4684
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown connection detected (is some other software connecting to this Ignite port?) [rmtAddr="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", locAddr="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x5d

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4692
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4694
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readMessage(Ljava/net/Socket;Ljava/io/InputStream;J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 4697
    .local v13, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    instance-of v0, v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingRequest;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 4698
    move-object v0, v13

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingRequest;

    move-object/from16 v18, v0

    .line 4700
    .local v18, "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingRequest;
    new-instance v19, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;-><init>(Ljava/util/UUID;)V

    .line 4702
    .local v19, "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingRequest;->clientNodeId()Ljava/util/UUID;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 4703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingRequest;->clientNodeId()Ljava/util/UUID;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;->clientExists(Z)V

    .line 4705
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4711
    .end local v18    # "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingRequest;
    .end local v19    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryPingResponse;
    :cond_c
    :try_start_3
    move-object v0, v13

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;

    move-object/from16 v18, v0

    .line 4713
    .local v18, "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;->creatorNodeId()Ljava/util/UUID;

    move-result-object v14

    .line 4714
    .local v14, "nodeId":Ljava/util/UUID;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;->client()Z

    move-result v5

    .line 4716
    .local v5, "client":Z
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    .line 4717
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    .line 4719
    new-instance v19, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v24

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-direct {v0, v12, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;-><init>(Ljava/util/UUID;J)V

    .line 4722
    .local v19, "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4726
    invoke-virtual {v12, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 4727
    sget-boolean v23, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->$assertionsDisabled:Z

    if-nez v23, :cond_12

    if-eqz v5, :cond_12

    new-instance v23, Ljava/lang/AssertionError;

    invoke-direct/range {v23 .. v23}, Ljava/lang/AssertionError;-><init>()V

    throw v23
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4755
    .end local v4    # "buf":[B
    .end local v5    # "client":Z
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v14    # "nodeId":Ljava/util/UUID;
    .end local v17    # "read":I
    .end local v18    # "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;
    .end local v19    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .end local v21    # "timeout":I
    :catch_0
    move-exception v8

    .line 4756
    .local v8, "e":Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught exception on handshake [err="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4759
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/io/ObjectStreamException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->isClosed()Z

    move-result v23

    if-nez v23, :cond_f

    .line 4760
    :cond_e
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacInvalidArgumentError(Ljava/lang/Exception;)Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 4761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to initialize connection [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]\n\t"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "On MAC OS you may have too many file descriptors open (simple restart usually solves the issue)"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v8, v1}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 4767
    :cond_f
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught exception on handshake [err="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4729
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "buf":[B
    .restart local v5    # "client":Z
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .restart local v14    # "nodeId":Ljava/util/UUID;
    .restart local v17    # "read":I
    .restart local v18    # "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;
    .restart local v19    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .restart local v21    # "timeout":I
    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 4730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Handshake request from local node: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5033
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4735
    :cond_16
    if-eqz v5, :cond_18

    .line 4736
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_17

    .line 4737
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Created client message worker [locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4740
    :cond_17
    new-instance v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1, v14}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/net/Socket;Ljava/util/UUID;)V

    .line 4742
    .local v6, "clientMsgWrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->start()V

    .line 4744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v14, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4747
    .end local v6    # "clientMsgWrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_19

    .line 4748
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Initialized connection with remote node [nodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", client="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4751
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 4752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Initialized connection with remote node [nodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", client="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4796
    .end local v18    # "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;
    :cond_1a
    :goto_3
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->isInterrupted()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v23

    if-nez v23, :cond_31

    .line 4798
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v23, v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal(Ljava/io/InputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    check-cast v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 4800
    .restart local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->destinationClientNodeId()Ljava/util/UUID;

    move-result-object v7

    .line 4802
    .local v7, "destClientNodeId":Ljava/util/UUID;
    if-eqz v7, :cond_2e

    .line 4803
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;

    .line 4805
    .local v22, "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    if-eqz v22, :cond_29

    .line 4806
    invoke-virtual {v13, v12}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->senderNodeId(Ljava/util/UUID;)V

    .line 4808
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4810
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 4982
    .end local v7    # "destClientNodeId":Ljava/util/UUID;
    .end local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v22    # "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    :catch_1
    move-exception v8

    .line 4983
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 4984
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught exception on message read [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4987
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught exception on message read [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4990
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->isInterrupted()Z

    move-result v23

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->isClosed()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v23

    if-eqz v23, :cond_3f

    .line 5033
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4764
    .end local v4    # "buf":[B
    .end local v5    # "client":Z
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v14    # "nodeId":Ljava/util/UUID;
    .end local v17    # "read":I
    .end local v19    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .end local v21    # "timeout":I
    .local v8, "e":Ljava/io/IOException;
    :cond_1f
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to initialize connection [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v8, v1}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 5033
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    move-object/from16 v24, v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_21

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_20

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Client connection failed [sock="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", locNodeId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", rmtNodeId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x5d

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v24

    .line 4771
    :catch_2
    move-exception v8

    .line 4772
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_22

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught exception on handshake [err="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 4775
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught exception on handshake [err="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4777
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/net/SocketTimeoutException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_26

    .line 4778
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Socket operation timed out on handshake (consider increasing \'networkTimeout\' configuration property) [netTimeout="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->netTimeout:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x5d

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v23 .. v25}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 5033
    :cond_23
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_25

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_24

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4782
    :cond_26
    const/16 v23, 0x1

    :try_start_c
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/lang/ClassNotFoundException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_27

    .line 4783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to read message due to ClassNotFoundException (make sure same versions of all classes are available on all nodes) [rmtAddr="

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, ", err="

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-class v23, Ljava/lang/ClassNotFoundException;

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v23

    check-cast v23, Ljava/lang/ClassNotFoundException;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v26, 0x5d

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 4789
    :cond_27
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/io/ObjectStreamException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->isClosed()Z

    move-result v23

    if-nez v23, :cond_23

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/io/IOException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_23

    .line 4791
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to initialize connection [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v8, v1}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 4812
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v4    # "buf":[B
    .restart local v5    # "client":Z
    .restart local v7    # "destClientNodeId":Ljava/util/UUID;
    .restart local v11    # "in":Ljava/io/InputStream;
    .restart local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .restart local v14    # "nodeId":Ljava/util/UUID;
    .restart local v17    # "read":I
    .restart local v19    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .restart local v21    # "timeout":I
    .restart local v22    # "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    :cond_29
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 4813
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Discarding routed message because client has already left: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 5009
    .end local v7    # "destClientNodeId":Ljava/util/UUID;
    .end local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v22    # "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    :catch_3
    move-exception v8

    .line 5010
    .local v8, "e":Ljava/io/IOException;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_2a

    .line 5011
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught exception on message read [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 5014
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->isInterrupted()Z

    move-result v23

    if-nez v23, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/Socket;->isClosed()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v23

    if-eqz v23, :cond_46

    .line 5033
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2d

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_2c

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4818
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "destClientNodeId":Ljava/util/UUID;
    .restart local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    :cond_2e
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->senderNodeId(Ljava/util/UUID;)V

    .line 4820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_2f

    .line 4821
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Message has been received: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4823
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4825
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v23

    if-eqz v23, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z

    move-result v23

    if-eqz v23, :cond_30

    .line 4826
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Message has been received: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V

    .line 4828
    :cond_30
    instance-of v0, v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;

    move/from16 v23, v0

    if-eqz v23, :cond_34

    .line 4829
    move-object v0, v13

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;

    move-object/from16 v18, v0

    .line 4831
    .local v18, "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->responded()Z

    move-result v23

    if-nez v23, :cond_3e

    .line 4832
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->processJoinRequestMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;)Z

    move-result v15

    .line 4834
    .local v15, "ok":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0
    :try_end_f
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v23, :cond_31

    if-nez v15, :cond_1a

    .line 5033
    .end local v7    # "destClientNodeId":Ljava/util/UUID;
    .end local v15    # "ok":Z
    .end local v18    # "req":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;
    :cond_31
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_33

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_32

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4841
    .restart local v7    # "destClientNodeId":Ljava/util/UUID;
    :cond_34
    :try_start_10
    instance-of v0, v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

    move/from16 v23, v0

    if-eqz v23, :cond_36

    .line 4842
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3e

    .line 4843
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v20

    .line 4845
    .local v20, "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    sget-object v23, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_35

    .line 4846
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V

    .line 4848
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_3

    .line 4853
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    const/16 v25, 0x64

    invoke-virtual/range {v23 .. v25}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V

    goto/16 :goto_5

    .line 4859
    .end local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :cond_36
    instance-of v0, v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;

    move/from16 v23, v0

    if-eqz v23, :cond_38

    .line 4861
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V

    .line 4863
    const/4 v10, 0x0

    .line 4865
    .local v10, "ignored":Z
    const/16 v20, 0x0

    .line 4867
    .restart local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24
    :try_end_10
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 4868
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v23, v0

    sget-object v25, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_37

    .line 4869
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    .line 4871
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    sget-object v25, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DUPLICATE_ID:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 4873
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 4880
    :goto_6
    monitor-exit v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 4882
    if-eqz v10, :cond_1a

    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 4883
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Duplicate ID message has been ignored [msg="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", spiState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_3

    .line 4876
    :cond_37
    const/4 v10, 0x1

    .line 4878
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v20, v0

    goto :goto_6

    .line 4880
    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    throw v23

    .line 4888
    .end local v10    # "ignored":Z
    .end local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :cond_38
    instance-of v0, v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    move/from16 v23, v0

    if-eqz v23, :cond_3a

    .line 4890
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V

    .line 4892
    const/4 v10, 0x0

    .line 4894
    .restart local v10    # "ignored":Z
    const/16 v20, 0x0

    .line 4896
    .restart local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24
    :try_end_14
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 4897
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v23, v0

    sget-object v25, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_39

    .line 4898
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    .line 4900
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    sget-object v25, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->AUTH_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 4902
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 4909
    :goto_7
    monitor-exit v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 4911
    if-eqz v10, :cond_1a

    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 4912
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Auth failed message has been ignored [msg="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", spiState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_3

    .line 4905
    :cond_39
    const/4 v10, 0x1

    .line 4907
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v20, v0

    goto :goto_7

    .line 4909
    :catchall_2
    move-exception v23

    monitor-exit v24
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    throw v23

    .line 4917
    .end local v10    # "ignored":Z
    .end local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :cond_3a
    instance-of v0, v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    move/from16 v23, v0

    if-eqz v23, :cond_3c

    .line 4919
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V

    .line 4921
    const/4 v10, 0x0

    .line 4923
    .restart local v10    # "ignored":Z
    const/16 v20, 0x0

    .line 4925
    .restart local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24
    :try_end_18
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 4926
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v23, v0

    sget-object v25, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3b

    .line 4927
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    .line 4929
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    sget-object v25, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CHECK_FAILED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 4931
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 4938
    :goto_8
    monitor-exit v24
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 4940
    if-eqz v10, :cond_1a

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 4941
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Check failed message has been ignored [msg="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", spiState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_3

    .line 4934
    :cond_3b
    const/4 v10, 0x1

    .line 4936
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v20, v0

    goto :goto_8

    .line 4938
    :catchall_3
    move-exception v23

    monitor-exit v24
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    throw v23

    .line 4946
    .end local v10    # "ignored":Z
    .end local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :cond_3c
    instance-of v0, v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryLoopbackProblemMessage;

    move/from16 v23, v0

    if-eqz v23, :cond_3e

    .line 4948
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V

    .line 4950
    const/4 v10, 0x0

    .line 4952
    .restart local v10    # "ignored":Z
    const/16 v20, 0x0

    .line 4954
    .restart local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24
    :try_end_1c
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 4955
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v23, v0

    sget-object v25, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3d

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/internal/util/lang/GridTuple;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/ignite/internal/util/lang/GridTuple;->set(Ljava/lang/Object;)V

    .line 4958
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    sget-object v25, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LOOPBACK_PROBLEM:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 4960
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 4967
    :goto_9
    monitor-exit v24
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 4969
    if-eqz v10, :cond_1a

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 4970
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Loopback problem message has been ignored [msg="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", spiState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_3

    .line 4963
    :cond_3d
    const/4 v10, 0x1

    .line 4965
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v20, v0

    goto :goto_9

    .line 4967
    :catchall_4
    move-exception v23

    monitor-exit v24
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    throw v23

    .line 4976
    .end local v10    # "ignored":Z
    .end local v20    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4979
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-nez v23, :cond_1a

    .line 4980
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->writeToSocket(Ljava/net/Socket;I)V
    :try_end_20
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_3

    .line 4993
    .end local v7    # "destClientNodeId":Ljava/util/UUID;
    .end local v13    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_3f
    const/16 v23, 0x1

    :try_start_21
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/lang/ClassNotFoundException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_40

    .line 4994
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Failed to read message due to ClassNotFoundException (make sure same versions of all classes are available on all nodes) [rmtNodeId="

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, ", err="

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-class v23, Ljava/lang/ClassNotFoundException;

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/ignite/internal/util/typedef/X;->cause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v23

    check-cast v23, Ljava/lang/ClassNotFoundException;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v26, 0x5d

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5000
    :cond_40
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/io/ObjectStreamException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/apache/ignite/IgniteCheckedException;->hasCause([Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeAlive(Ljava/util/UUID;)Z

    move-result v23

    if-eqz v23, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v23

    sget-object v24, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_45

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/io/IOException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_45

    :cond_41
    const/4 v9, 0x1

    .line 5003
    .local v9, "err":Z
    :goto_a
    if-eqz v9, :cond_42

    .line 5004
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to read message [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v8, v1}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 5033
    :cond_42
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_44

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_43

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 5000
    .end local v9    # "err":Z
    :cond_45
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 5018
    .local v8, "e":Ljava/io/IOException;
    :cond_46
    const/16 v23, 0x1

    :try_start_22
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, Ljava/io/ObjectStreamException;

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v23

    if-nez v23, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeAlive(Ljava/util/UUID;)Z

    move-result v23

    if-eqz v23, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v23

    sget-object v24, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4b

    :cond_47
    const/4 v9, 0x1

    .line 5021
    .restart local v9    # "err":Z
    :goto_b
    if-eqz v9, :cond_48

    .line 5022
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to send receipt on message [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v8, v1}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5025
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Caught exception on message read [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 5033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->client:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4a

    .line 5034
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v23

    if-eqz v23, :cond_49

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Client connection failed [sock="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", locNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", rmtNodeId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5d

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 5038
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Thread;

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5041
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 5018
    .end local v9    # "err":Z
    :cond_4b
    const/4 v9, 0x0

    goto/16 :goto_b
.end method

.method protected cleanup()V
    .locals 2

    .prologue
    .line 5131
    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiThread;->cleanup()V

    .line 5133
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 5135
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5136
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 5137
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5139
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onSocketReaderRemoved()V

    .line 5140
    return-void

    .line 5137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 5124
    invoke-super {p0}, Lorg/apache/ignite/spi/IgniteSpiThread;->interrupt()V

    .line 5126
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->sock:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 5127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket reader [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$SocketReader;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
