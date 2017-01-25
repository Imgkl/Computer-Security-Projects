.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;
.super Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingMessageWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private forceSndPending:Z

.field private lastMsg:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

.field private next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

.field private final pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

.field private sock:Ljava/net/Socket;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2524
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V
    .locals 2

    .prologue
    .line 2543
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 2544
    const-string/jumbo v0, "tcp-disco-msg-worker"

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;Ljava/lang/String;)V

    .line 2530
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;)V

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    .line 2545
    return-void
.end method

.method private processClientReconnectMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;)V
    .locals 11
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

    .prologue
    const/16 v10, 0x5d

    .line 3461
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    .line 3463
    .local v1, "locNodeId":Ljava/util/UUID;
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->routerNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3465
    .local v0, "isLocalNodeRouter":Z
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->verified()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3466
    sget-boolean v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 3468
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->verify(Ljava/util/UUID;)V

    .line 3515
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3516
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 3517
    :cond_2
    return-void

    .line 3471
    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v3

    .line 3473
    .local v3, "nodeId":Ljava/util/UUID;
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v2

    .line 3475
    .local v2, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    sget-boolean v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 3477
    :cond_4
    if-eqz v2, :cond_9

    .line 3478
    sget-boolean v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 3480
    :cond_5
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->routerNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId(Ljava/util/UUID;)V

    .line 3481
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedClientHbs:I
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->aliveCheck(I)V

    .line 3483
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3484
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->lastMessageId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->messages(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/util/Collection;

    move-result-object v4

    .line 3487
    .local v4, "pending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    if-eqz v4, :cond_7

    .line 3488
    invoke-virtual {p1, v4}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->pendingMessages(Ljava/util/Collection;)V

    .line 3489
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;->success(Z)V

    .line 3504
    .end local v4    # "pending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    :cond_6
    :goto_1
    if-eqz v0, :cond_1

    .line 3505
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clientMsgWorkers:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;

    .line 3507
    .local v5, "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    if-eqz v5, :cond_a

    .line 3508
    invoke-virtual {v5, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0

    .line 3492
    .end local v5    # "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    .restart local v4    # "pending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    :cond_7
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3493
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing reconnecting client node because failed to restore pending messages [locNodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", clientNodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3496
    :cond_8
    new-instance v6, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order()J

    move-result-wide v8

    invoke-direct {v6, v1, v7, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;J)V

    invoke-direct {p0, v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processNodeFailedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;)V

    goto :goto_1

    .line 3501
    .end local v4    # "pending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;>;"
    :cond_9
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3502
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reconnecting client node is already failed [nodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 3509
    .restart local v5    # "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    :cond_a
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3510
    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to reconnect client node (disconnected during the process) [locNodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", clientNodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processCustomMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;)V
    .locals 9
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;

    .prologue
    .line 4472
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4473
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->verified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4474
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onRingMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4476
    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getLocalNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V

    invoke-virtual {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4509
    :cond_0
    :goto_0
    return-void

    .line 4481
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getLocalNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->verify(Ljava/util/UUID;)V

    .line 4482
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->topologyVersion(J)V

    .line 4485
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->verified()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4486
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->lsnr:Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;

    .line 4488
    .local v0, "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v8

    .line 4492
    .local v8, "spiState":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4493
    :try_start_0
    new-instance v6, Ljava/util/TreeMap;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 4494
    .local v6, "hist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4496
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->topologyVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 4498
    .local v5, "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-eqz v0, :cond_4

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-eq v8, v1, :cond_3

    sget-object v1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->DISCONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v8, v1, :cond_4

    .line 4499
    :cond_3
    const/16 v1, 0x12

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->topologyVersion()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;->message()Ljava/io/Serializable;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;->onDiscovery(IJLorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Ljava/util/Map;Ljava/io/Serializable;)V

    .line 4507
    .end local v0    # "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    .end local v5    # "snapshot":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v6    # "hist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    .end local v8    # "spiState":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4508
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0

    .line 4494
    .restart local v0    # "lsnr":Lorg/apache/ignite/spi/discovery/DiscoverySpiListener;
    .restart local v8    # "spiState":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private processDiscardMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    .prologue
    .line 4446
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4448
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;->msgId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    .line 4450
    .local v0, "msgId":Lorg/apache/ignite/lang/IgniteUuid;
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4452
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4453
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;->verifierNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4455
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;->verify(Ljava/util/UUID;)V

    .line 4461
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;->verified()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4462
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->discard(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 4464
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4465
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4466
    :cond_4
    return-void
.end method

.method private processHeartbeatMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;)V
    .locals 25
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    .prologue
    .line 4320
    sget-boolean v20, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v20, :cond_0

    if-nez p1, :cond_0

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 4322
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v13

    .line 4324
    .local v13, "locNodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v20

    if-nez v20, :cond_2

    .line 4325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Discarding heartbeat message issued by unknown node [msg="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ring="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v22, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4415
    :cond_1
    :goto_0
    return-void

    .line 4332
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Discarding heartbeat message issued by non-coordinator node: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 4339
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 4340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Discarding heartbeat message issued by local node (node is no more coordinator): "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4347
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->hasMetrics(Ljava/util/UUID;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 4348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Discarding heartbeat message that has made two passes: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4354
    :cond_5
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v18

    .line 4356
    .local v18, "tstamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v20

    sget-object v21, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 4357
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->hasMetrics()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 4358
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 4359
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;

    .line 4361
    .local v15, "metricsSet":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/UUID;

    invoke-virtual {v15}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->updateMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;J)V

    .line 4363
    invoke-virtual {v15}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->clientMetrics()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 4364
    .local v17, "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/UUID;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/cluster/ClusterMetrics;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->updateMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;J)V

    goto :goto_1

    .line 4369
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v15    # "metricsSet":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;
    .end local v17    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 4370
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v20

    if-eqz v20, :cond_9

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->hasMetrics(Ljava/util/UUID;)Z

    move-result v20

    if-nez v20, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v20

    sget-object v21, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 4373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->metricsProvider:Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/DiscoveryMetricsProvider;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->setMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V

    .line 4375
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clientMsgWorkers:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 4376
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/UUID;

    .line 4377
    .local v16, "nodeId":Ljava/util/UUID;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v14

    .line 4379
    .local v14, "metrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    if-eqz v14, :cond_a

    .line 4380
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1, v14}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->setClientMetrics(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;)V

    .line 4382
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->addClientNodeId(Ljava/util/UUID;)V

    goto :goto_2

    .line 4387
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "metrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    .end local v16    # "nodeId":Ljava/util/UUID;
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->removeMetrics(Ljava/util/UUID;)V

    .line 4389
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->clientNodeIds()Ljava/util/Collection;

    move-result-object v8

    .line 4391
    .local v8, "clientNodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->clientNodes()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 4392
    .local v7, "clientNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 4393
    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 4394
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedClientHbs:I
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->aliveCheck(I)V

    goto :goto_3

    .line 4396
    :cond_d
    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->decrementAliveCheck()I

    move-result v6

    .line 4398
    .local v6, "aliveCheck":I
    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 4399
    new-instance v20, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v21

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct {v0, v13, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processNodeFailedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;)V

    goto :goto_3

    .line 4407
    .end local v6    # "aliveCheck":I
    .end local v7    # "clientNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v8    # "clientNodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4408
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_0

    .line 4411
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime(J)V

    .line 4413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    const/16 v21, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v22, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v24, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    invoke-static/range {v20 .. v24}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    goto/16 :goto_0
.end method

.method private processJoinRequestMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;)V
    .locals 28
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;

    .prologue
    .line 3034
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 3036
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v4

    .line 3038
    .local v4, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    .line 3040
    .local v3, "locNodeId":Ljava/util/UUID;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->client()Z

    move-result v5

    if-nez v5, :cond_7

    .line 3041
    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v21, 0x1

    .line 3047
    .local v21, "rmtHostLoopback":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    move/from16 v0, v21

    if-eq v5, v0, :cond_7

    .line 3048
    if-eqz v21, :cond_4

    const-string v14, "remote"

    .line 3050
    .local v14, "firstNode":Ljava/lang/String;
    :goto_1
    if-eqz v21, :cond_5

    const-string v23, "local"

    .line 3052
    .local v23, "secondNode":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add node to topology because "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " node is configured to use loopback address, but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " node is not "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(consider changing \'localAddress\' configuration parameter) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[locNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3058
    .local v12, "errMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    invoke-static {v5, v6, v12}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3061
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3062
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3065
    :cond_1
    :try_start_0
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryLoopbackProblemMessage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->addresses()Ljava/util/Collection;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->hostNames()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryLoopbackProblemMessage;-><init>(Ljava/util/UUID;Ljava/util/Collection;Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3412
    .end local v12    # "errMsg":Ljava/lang/String;
    .end local v14    # "firstNode":Ljava/lang/String;
    .end local v21    # "rmtHostLoopback":Z
    .end local v23    # "secondNode":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 3041
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 3048
    .restart local v21    # "rmtHostLoopback":Z
    :cond_4
    const-string v14, "local"

    goto/16 :goto_1

    .line 3050
    .restart local v14    # "firstNode":Ljava/lang/String;
    :cond_5
    const-string v23, "remote"

    goto/16 :goto_2

    .line 3068
    .restart local v12    # "errMsg":Ljava/lang/String;
    .restart local v23    # "secondNode":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 3069
    .local v10, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3070
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send loopback problem message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3073
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send loopback problem message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v5, v6, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 3082
    .end local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v12    # "errMsg":Ljava/lang/String;
    .end local v14    # "firstNode":Ljava/lang/String;
    .end local v21    # "rmtHostLoopback":Z
    .end local v23    # "secondNode":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3083
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v13

    .line 3085
    .local v13, "existingNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v13, :cond_b

    .line 3086
    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 3087
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    invoke-static {v5, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3088
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-direct {v5, v3, v6, v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_3

    .line 3097
    :cond_8
    :try_start_1
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;

    invoke-direct {v5, v3, v13}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDuplicateIdMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_1
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3111
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Ignoring join request from node (duplicate ID) [node="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ", existingNode="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v26, 0x5d

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3100
    :catch_1
    move-exception v10

    .line 3101
    .restart local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3102
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send duplicate ID message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", existingNode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3106
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send duplicate ID message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", existingNode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v5, v6, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 3118
    .end local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3119
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring join request message since node is already in topology: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3124
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;
    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 3127
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->unmarshalCredentials(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    invoke-static {v5, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    move-result-object v9

    .line 3129
    .local v9, "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;
    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    move-result-object v5

    invoke-interface {v5, v4, v9}, Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;->authenticateNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)Lorg/apache/ignite/internal/processors/security/SecurityContext;

    move-result-object v25

    .line 3131
    .local v25, "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    if-nez v25, :cond_f

    .line 3133
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Authentication failed [nodeId="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ", addrs="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v26, 0x5d

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Authentication failed [nodeId="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", addrs="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x5d

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3141
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authentication failed [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", addrs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_5

    .line 3145
    :cond_c
    :try_start_3
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-direct {v5, v3, v6}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;-><init>(Ljava/util/UUID;Ljava/net/InetAddress;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_3
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_3

    .line 3147
    :catch_2
    move-exception v10

    .line 3148
    .restart local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3149
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send unauthenticated message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3152
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send unauthenticated message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v5, v6, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_3

    .line 3196
    .end local v9    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .end local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v25    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :catch_3
    move-exception v10

    .line 3197
    .local v10, "e":Ljava/lang/Exception;
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authentication failed [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", addrs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3200
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3201
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to authenticate node (will ignore join request) [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3204
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to authenticate node (will ignore join request) [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v5, v6, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 3160
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .restart local v25    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_f
    :try_start_5
    move-object/from16 v0, v25

    instance-of v5, v0, Ljava/io/Serializable;

    if-nez v5, :cond_11

    .line 3162
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Authentication subject is not Serializable [nodeId="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v26, ", addrs="

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v26, 0x5d

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Authentication subject is not Serializable [nodeId="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", addrs="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x5d

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v6, v7, v0}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3171
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authentication subject is not serializable [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", addrs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/apache/ignite/IgniteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3175
    :cond_10
    :try_start_6
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    invoke-direct {v5, v3, v6}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;-><init>(Ljava/util/UUID;Ljava/net/InetAddress;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_6
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/ignite/IgniteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 3177
    :catch_4
    move-exception v10

    .line 3178
    .local v10, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3179
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send unauthenticated message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3196
    .end local v9    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .end local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v25    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :catch_5
    move-exception v10

    goto/16 :goto_5

    .line 3188
    .restart local v9    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .restart local v25    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_11
    new-instance v8, Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->getAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3190
    .local v8, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "org.apache.ignite.security.subject"

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    invoke-virtual {v4, v8}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setAttributes(Ljava/util/Map;)V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 3212
    .end local v8    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .end local v25    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/apache/ignite/spi/IgniteSpiContext;->validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;

    move-result-object v11

    .line 3214
    .local v11, "err":Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    if-eqz v11, :cond_17

    .line 3215
    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v11}, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    invoke-static {v5, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v18

    .line 3217
    .local v18, "ping":Z
    :goto_6
    if-nez v18, :cond_14

    .line 3218
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3219
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting node has already left, need to wait for event. Will ignore join request for now since it will be recent [req="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3215
    .end local v18    # "ping":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v11}, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->nodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Ljava/util/UUID;)Z

    move-result v18

    goto :goto_6

    .line 3227
    .restart local v18    # "ping":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    invoke-virtual {v11}, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->message()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3230
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 3231
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v11}, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->message()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3234
    :cond_15
    :try_start_8
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    invoke-virtual {v11}, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;->sendMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_8
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    .line 3237
    :catch_6
    move-exception v10

    .line 3238
    .restart local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3239
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send hash ID resolver validation failed message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3242
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send hash ID resolver validation failed message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v5, v6, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 3251
    .end local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v18    # "ping":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const-string v6, "org.apache.ignite.build.ver"

    invoke-virtual {v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3252
    .local v15, "locBuildVer":Ljava/lang/String;
    const-string v5, "org.apache.ignite.build.ver"

    invoke-virtual {v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 3254
    .local v19, "rmtBuildVer":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 3256
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 3257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local node and remote node have different version numbers (node will not join, Ignite does not support rolling updates, so versions must be exactly the same) [locBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3265
    .restart local v12    # "errMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    invoke-static {v5, v6, v12}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3268
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3269
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3272
    :cond_18
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local node and remote node have different version numbers (node will not join, Ignite does not support rolling updates, so versions must be exactly the same) [locBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locPort="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discoveryPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeAddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3280
    .local v24, "sndMsg":Ljava/lang/String;
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    move-object/from16 v0, v24

    invoke-direct {v5, v3, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_9
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_3

    .line 3283
    .end local v24    # "sndMsg":Ljava/lang/String;
    :catch_7
    move-exception v10

    .line 3284
    .restart local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3285
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send version check failed message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3288
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send version check failed message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v5, v6, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 3296
    .end local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v12    # "errMsg":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const-string v6, "org.apache.ignite.compatible.vers"

    invoke-virtual {v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;

    .line 3297
    .local v16, "locCompatibleVers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v5, "org.apache.ignite.compatible.vers"

    invoke-virtual {v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 3299
    .local v20, "rmtCompatibleVers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 3300
    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local node\'s build version differs from remote node\'s, but they are compatible (will continue join process) [locBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3307
    .restart local v12    # "errMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    invoke-static {v5, v6, v12}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3310
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 3311
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3354
    .end local v12    # "errMsg":Ljava/lang/String;
    .end local v16    # "locCompatibleVers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v20    # "rmtCompatibleVers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    const-string v6, "org.apache.ignite.marshaller"

    invoke-virtual {v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 3355
    .local v17, "locMarsh":Ljava/lang/String;
    const-string v5, "org.apache.ignite.marshaller"

    invoke-virtual {v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3357
    .local v22, "rmtMarsh":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 3358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local node\'s marshaller differs from remote node\'s marshaller (to make sure all nodes in topology have identical marshaller, configure marshaller explicitly in configuration) [locMarshaller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtMarshaller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3366
    .restart local v12    # "errMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    invoke-static {v5, v6, v12}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3369
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 3370
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3373
    :cond_1d
    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local node\'s marshaller differs from remote node\'s marshaller (to make sure all nodes in topology have identical marshaller, configure marshaller explicitly in configuration) [locMarshaller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtMarshaller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locPort="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discoveryPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeAddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3381
    .restart local v24    # "sndMsg":Ljava/lang/String;
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    move-object/from16 v0, v24

    invoke-direct {v5, v3, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_a
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_3

    .line 3384
    .end local v24    # "sndMsg":Ljava/lang/String;
    :catch_8
    move-exception v10

    .line 3385
    .restart local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3386
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send marshaller check failed message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3389
    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send marshaller check failed message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v5, v6, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 3314
    .end local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v12    # "errMsg":Ljava/lang/String;
    .end local v17    # "locMarsh":Ljava/lang/String;
    .end local v22    # "rmtMarsh":Ljava/lang/String;
    .restart local v16    # "locCompatibleVers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v20    # "rmtCompatibleVers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local node\'s and remote node\'s build versions are not compatible (topologies built with different Ignite versions are supported in Enterprise version only) [locBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3322
    .restart local v12    # "errMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v6, 0x0

    invoke-static {v5, v6, v12}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3325
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 3326
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3329
    :cond_20
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local node\'s and remote node\'s build versions are not compatible (topologies built with different Ignite versions are supported in Enterprise version only)  [locBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtBuildVer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeAddrs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locPort="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->discoveryPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeAddr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rmtNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3337
    .restart local v24    # "sndMsg":Ljava/lang/String;
    new-instance v5, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;

    move-object/from16 v0, v24

    invoke-direct {v5, v3, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCheckFailedMessage;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_b
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_3

    .line 3340
    .end local v24    # "sndMsg":Ljava/lang/String;
    :catch_9
    move-exception v10

    .line 3341
    .restart local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3342
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send version check failed message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3345
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send version check failed message to node [node="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", err="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v5, v6, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 3398
    .end local v10    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .end local v12    # "errMsg":Ljava/lang/String;
    .end local v16    # "locCompatibleVers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v20    # "rmtCompatibleVers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v17    # "locMarsh":Ljava/lang/String;
    .restart local v22    # "rmtMarsh":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nextNodeOrder()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder(J)V

    .line 3400
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 3401
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v5, v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal order has been assigned to node: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3403
    :cond_23
    new-instance v2, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->discoveryData()Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-wide v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->gridStartTime:J

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Ljava/util/Map;J)V

    .line 3406
    .local v2, "nodeAddedMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;->client()Z

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->client(Z)V

    .line 3408
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;)V

    goto/16 :goto_3

    .line 3410
    .end local v2    # "nodeAddedMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
    .end local v11    # "err":Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .end local v13    # "existingNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v15    # "locBuildVer":Ljava/lang/String;
    .end local v17    # "locMarsh":Ljava/lang/String;
    .end local v19    # "rmtBuildVer":Ljava/lang/String;
    .end local v22    # "rmtMarsh":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3411
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_3
.end method

.method private processNodeAddFinishedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;)V
    .locals 14
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;

    .prologue
    .line 3736
    sget-boolean v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 3738
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->nodeId()Ljava/util/UUID;

    move-result-object v6

    .line 3740
    .local v6, "nodeId":Ljava/util/UUID;
    sget-boolean v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez v6, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 3742
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v5

    .line 3744
    .local v5, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-nez v5, :cond_3

    .line 3745
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3746
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Discarding node add finished message since node is not found [msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3856
    :cond_2
    :goto_0
    return-void

    .line 3752
    :cond_3
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3753
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Node to finish add: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3755
    :cond_4
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v3

    .line 3757
    .local v3, "locNodeCoord":Z
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v4

    .line 3759
    .local v4, "locNodeId":Ljava/util/UUID;
    if-eqz v3, :cond_7

    .line 3760
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->verified()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3761
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v7, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onRingMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 3763
    new-instance v7, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-direct {v7, v4, v10}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V

    invoke-virtual {p0, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0

    .line 3768
    :cond_5
    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_6

    .line 3769
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3770
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Discarding node add finished message since node has already been added [node="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3776
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->incrementTopologyVersion()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->topologyVersion(J)V

    .line 3778
    invoke-virtual {p1, v4}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->verify(Ljava/util/UUID;)V

    .line 3781
    :cond_7
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->topologyVersion()J

    move-result-wide v8

    .line 3783
    .local v8, "topVer":J
    const/4 v2, 0x0

    .line 3785
    .local v2, "fireEvt":Z
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->verified()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3786
    sget-boolean v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v7, :cond_8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_8

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid topology version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 3788
    :cond_8
    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-nez v7, :cond_9

    .line 3789
    invoke-virtual {v5, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order(J)V

    .line 3791
    :cond_9
    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3792
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible(Z)V

    .line 3794
    const/4 v2, 0x1

    .line 3798
    :cond_a
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->verified()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v4, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v7

    sget-object v10, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v7, v10, :cond_10

    if-eqz v2, :cond_10

    .line 3799
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onNodeJoined()V

    .line 3803
    sget-boolean v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v7, :cond_b

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v10

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-gtz v7, :cond_b

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid order [node="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", locNode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v11, v11, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ring="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 3806
    :cond_b
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->version()Lorg/apache/ignite/lang/IgniteProductVersion;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/ignite/lang/IgniteProductVersion;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3807
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNodeVer:Lorg/apache/ignite/lang/IgniteProductVersion;

    invoke-virtual {v5, v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->version(Lorg/apache/ignite/lang/IgniteProductVersion;)V

    .line 3809
    :cond_c
    if-nez v3, :cond_f

    .line 3810
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion(J)Z

    move-result v0

    .line 3812
    .local v0, "b":Z
    sget-boolean v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v7, :cond_d

    if-nez v0, :cond_d

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Topology version has not been updated: [ring="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", lastMsg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->lastMsg:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", spiState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 3815
    :cond_d
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3816
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Topology version has been updated: [ring="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3818
    :cond_e
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->lastMsg:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 3821
    .end local v0    # "b":Z
    :cond_f
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const/16 v10, 0xa

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    invoke-static {v7, v10, v8, v9, v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    .line 3824
    :try_start_0
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v7}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v7

    if-eqz v7, :cond_10

    if-eqz v3, :cond_10

    .line 3825
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-virtual {v5}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->registerAddresses(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3837
    :cond_10
    :goto_1
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;->verified()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v4, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v7

    sget-object v10, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v7, v10, :cond_13

    .line 3838
    sget-boolean v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v7, :cond_12

    if-nez v5, :cond_12

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 3827
    :catch_0
    move-exception v1

    .line 3828
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 3829
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v7, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to register new node address [node="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", err="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3832
    :cond_11
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to register new node address [node="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", err="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v7, v10, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 3840
    .end local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_12
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion(J)Z

    .line 3842
    invoke-virtual {v5, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->order(J)V

    .line 3844
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 3845
    :try_start_1
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    sget-object v11, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    iput-object v11, v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 3847
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 3848
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3851
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const/16 v10, 0xa

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v11, v11, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    invoke-static {v7, v10, v8, v9, v11}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    .line 3854
    :cond_13
    iget-object v7, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3855
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_0

    .line 3848
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method private processNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;)V
    .locals 24
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3529
    sget-boolean v18, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    if-nez p1, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 3531
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v14

    .line 3533
    .local v14, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    sget-boolean v18, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    if-nez v14, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 3535
    :cond_1
    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_3

    .line 3536
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3537
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Discarding node added message since local node\'s order is greater [node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", locNode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", msg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3728
    :cond_2
    :goto_0
    return-void

    .line 3543
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v12

    .line 3545
    .local v12, "locNodeId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 3546
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->verified()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onRingMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 3549
    new-instance v18, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processNodeAddFinishedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;)V

    .line 3551
    new-instance v18, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0

    .line 3556
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->verify(Ljava/util/UUID;)V

    .line 3559
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->verified()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 3560
    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->maxInternalOrder()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_7

    .line 3561
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 3562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Discarding node added message since new node\'s order is less than max order in ring [ring="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", locNode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", msg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3566
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3567
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Discarding node added message since new node\'s order is less than max order in ring [ring="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", locNode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", msg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3574
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    move-result-object v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;->isGlobalNodeAuthentication()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 3575
    const/4 v4, 0x1

    .line 3578
    .local v4, "authFailed":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->unmarshalCredentials(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    invoke-static {v0, v14}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    move-result-object v6

    .line 3580
    .local v6, "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    if-nez v6, :cond_c

    .line 3581
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 3582
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Skipping global authentication for node (security credentials not found, probably, due to coordinator has older version) [nodeId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", addrs="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", coord="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->coordinator()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3589
    :cond_8
    const/4 v4, 0x0

    .line 3620
    :cond_9
    :goto_1
    if-eqz v4, :cond_a

    .line 3622
    :try_start_1
    new-instance v18, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;-><init>(Ljava/util/UUID;Ljava/net/InetAddress;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_1
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3633
    :goto_2
    new-instance v18, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v0, v12, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 3639
    .end local v4    # "authFailed":Z
    .end local v6    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :cond_a
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->client()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 3640
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->maxMissedClientHbs:I
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->aliveCheck(I)V

    .line 3642
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->add(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v17

    .line 3644
    .local v17, "topChanged":Z
    if-eqz v17, :cond_14

    .line 3645
    sget-boolean v18, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v18, :cond_12

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v18

    if-eqz v18, :cond_12

    new-instance v18, Ljava/lang/AssertionError;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Added visible node [node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", locNode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 3592
    .end local v17    # "topChanged":Z
    .restart local v4    # "authFailed":Z
    .restart local v6    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->nodeAuth:Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14, v6}, Lorg/apache/ignite/spi/discovery/DiscoverySpiNodeAuthenticator;->authenticateNode(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)Lorg/apache/ignite/internal/processors/security/SecurityContext;

    move-result-object v15

    .line 3594
    .local v15, "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v19

    const-string v18, "org.apache.ignite.security.subject"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/security/SecurityContext;

    .line 3598
    .local v5, "coordSubj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/security/SecurityContext;->subject()Lorg/apache/ignite/plugin/security/GridSecuritySubject;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/plugin/security/GridSecuritySubject;->permissions()Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;

    move-result-object v19

    invoke-interface {v15}, Lorg/apache/ignite/internal/processors/security/SecurityContext;->subject()Lorg/apache/ignite/plugin/security/GridSecuritySubject;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/plugin/security/GridSecuritySubject;->permissions()Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;

    move-result-object v20

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->permissionsEqual(Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;)Z
    invoke-static/range {v18 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;Lorg/apache/ignite/plugin/security/GridSecurityPermissionSet;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 3600
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Authentication failed [nodeId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", addrs="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Authentication failed [nodeId="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/internal/U;->id8(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", addrs="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x5d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 3607
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3608
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Authentication failed [nodeId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", addrs="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addressesAsString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 3616
    .end local v5    # "coordSubj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .end local v6    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .end local v15    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 3617
    .local v9, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to verify node permissions consistency (will drop the node): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3620
    if-eqz v4, :cond_a

    .line 3622
    :try_start_4
    new-instance v18, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;-><init>(Ljava/util/UUID;Ljava/net/InetAddress;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_4
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3633
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_5
    new-instance v18, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v0, v12, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_3

    .line 3613
    .restart local v5    # "coordSubj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .restart local v6    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .restart local v15    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3624
    .end local v5    # "coordSubj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    .end local v15    # "subj":Lorg/apache/ignite/internal/processors/security/SecurityContext;
    :catch_1
    move-exception v9

    .line 3625
    .local v9, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 3626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send unauthenticated message to node [node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", err="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3629
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send unauthenticated message to node [node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", err="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 3624
    .end local v6    # "cred":Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .local v9, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 3625
    .local v9, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 3626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send unauthenticated message to node [node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", err="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3629
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to send unauthenticated message to node [node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", err="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 3620
    .end local v9    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :catchall_0
    move-exception v18

    if-eqz v4, :cond_10

    .line 3622
    :try_start_5
    new-instance v19, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locHost:Ljava/net/InetAddress;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAuthFailedMessage;-><init>(Ljava/util/UUID;Ljava/net/InetAddress;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_5
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3633
    :goto_6
    new-instance v19, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v20

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-direct {v0, v12, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    :cond_10
    throw v18

    .line 3624
    :catch_3
    move-exception v9

    .line 3625
    .restart local v9    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 3626
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to send unauthenticated message to node [node="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", err="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3629
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to send unauthenticated message to node [node="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", err="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v9}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 3647
    .end local v4    # "authFailed":Z
    .end local v9    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    .restart local v17    # "topChanged":Z
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->newNodeDiscoveryData()Ljava/util/Map;

    move-result-object v7

    .line 3649
    .local v7, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-eqz v7, :cond_13

    .line 3650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->exchange:Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v19

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v7}, Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;->onExchange(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Map;)V

    .line 3652
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->exchange:Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;->collect(Ljava/util/UUID;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->addDiscoveryData(Ljava/util/UUID;Ljava/util/Map;)V

    .line 3655
    .end local v7    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Added node to local ring [added="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", node="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", ring="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v20, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x5d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3660
    .end local v17    # "topChanged":Z
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->verified()Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 3664
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 3665
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v18, v0

    sget-object v20, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v20

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v22

    cmp-long v18, v20, v22

    if-eqz v18, :cond_1a

    .line 3667
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topology()Ljava/util/Collection;

    move-result-object v16

    .line 3669
    .local v16, "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    if-eqz v16, :cond_18

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_18

    .line 3670
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->gridStartTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->gridStartTime:J

    .line 3672
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 3674
    .local v13, "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible(Z)V

    goto :goto_7

    .line 3717
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v16    # "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v18

    .line 3677
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v16    # "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :cond_16
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v18, v0

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->attributes()Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setAttributes(Ljava/util/Map;)V

    .line 3679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible(Z)V

    .line 3682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v18

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->restoreTopology(Ljava/lang/Iterable;J)V

    .line 3684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 3685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Restored topology from node added message: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v21, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v21 .. v21}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3687
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->oldNodesDiscoveryData()Ljava/util/Map;

    move-result-object v8

    .line 3689
    .local v8, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/SortedMap;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/SortedMap;->clear()V

    .line 3690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->topHist:Ljava/util/SortedMap;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/SortedMap;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topologyHistory()Ljava/util/Map;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 3693
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->messages()Ljava/util/Collection;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->discardedMessageId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->reset(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 3696
    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->messages(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 3697
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topology(Ljava/util/Collection;)V

    .line 3698
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->topologyHistory(Ljava/util/Map;)V

    .line 3699
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->clearDiscoveryData()V

    .line 3717
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3720
    if-eqz v8, :cond_1c

    .line 3721
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 3722
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->exchange:Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;

    move-object/from16 v20, v0

    invoke-virtual {v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v21

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/UUID;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;->onExchange(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Map;)V

    goto :goto_8

    .line 3702
    .end local v8    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_18
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 3703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Discarding node added message with empty topology: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3705
    :cond_19
    monitor-exit v19

    goto/16 :goto_0

    .line 3709
    .end local v16    # "top":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Discarding node added message (this message has already been processed) [spiState="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", msg="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", locNode="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x5d

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3715
    :cond_1b
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 3726
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v18, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3727
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_0

    .line 3616
    .restart local v4    # "authFailed":Z
    :catch_4
    move-exception v18

    move-object/from16 v9, v18

    goto/16 :goto_4
.end method

.method private processNodeFailedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;)V
    .locals 18
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    .prologue
    .line 4055
    sget-boolean v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_0

    if-nez p1, :cond_0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 4057
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v9

    .line 4059
    .local v9, "sndId":Ljava/util/UUID;
    if-eqz v9, :cond_3

    .line 4060
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v12

    .line 4062
    .local v12, "sndNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-nez v12, :cond_2

    .line 4063
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4064
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Discarding node failed message sent from unknown node: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4190
    .end local v12    # "sndNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_1
    :goto_0
    return-void

    .line 4071
    .restart local v12    # "sndNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 4072
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 4073
    .local v3, "contains":Z
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4075
    if-eqz v3, :cond_3

    .line 4076
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4077
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Discarding node failed message sent from node which is about to fail: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 4073
    .end local v3    # "contains":Z
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 4084
    .end local v12    # "sndNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->failedNodeId()Ljava/util/UUID;

    move-result-object v8

    .line 4085
    .local v8, "nodeId":Ljava/util/UUID;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->order()J

    move-result-wide v10

    .line 4087
    .local v10, "order":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v7

    .line 4089
    .local v7, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v16

    cmp-long v13, v16, v10

    if-eqz v13, :cond_4

    .line 4090
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4091
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ignoring node failed message since node internal order does not match [msg="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", node="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4097
    :cond_4
    if-eqz v7, :cond_5

    .line 4098
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 4099
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4100
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4109
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v5

    .line 4111
    .local v5, "locNodeCoord":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v6

    .line 4113
    .local v6, "locNodeId":Ljava/util/UUID;
    if-eqz v5, :cond_7

    .line 4114
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->verified()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4115
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onRingMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4117
    new-instance v13, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v6, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_0

    .line 4100
    .end local v5    # "locNodeCoord":Z
    .end local v6    # "locNodeId":Ljava/util/UUID;
    :catchall_1
    move-exception v13

    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v13

    .line 4103
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4104
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Discarding node failed message since node was not found: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4122
    .restart local v5    # "locNodeCoord":Z
    .restart local v6    # "locNodeId":Ljava/util/UUID;
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->verify(Ljava/util/UUID;)V

    .line 4125
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->verified()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 4126
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v13

    invoke-virtual {v13, v8}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->removeNode(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v7

    .line 4128
    sget-boolean v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_8

    if-nez v7, :cond_8

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 4131
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v13

    if-nez v13, :cond_9

    .line 4132
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->clear()V

    .line 4136
    :cond_9
    if-eqz v5, :cond_d

    .line 4137
    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v13}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 4139
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-virtual {v7}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->unregisterAddresses(Ljava/util/Collection;)V
    :try_end_4
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4151
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->incrementTopologyVersion()J

    move-result-wide v14

    .line 4153
    .local v14, "topVer":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->topologyVersion(J)V

    .line 4171
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 4172
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4174
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4175
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4177
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const/16 v16, 0xc

    move/from16 v0, v16

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    invoke-static {v13, v0, v14, v15, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    .line 4179
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onNodeFailed()V

    .line 4182
    .end local v14    # "topVer":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 4183
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_0

    .line 4141
    :catch_0
    move-exception v4

    .line 4142
    .local v4, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 4143
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to unregister failed node address [node="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", err="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4146
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to unregister failed node address [node="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", err="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Lorg/apache/ignite/spi/IgniteSpiException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v13, v0, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 4156
    .end local v4    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;->topologyVersion()J

    move-result-wide v14

    .line 4158
    .restart local v14    # "topVer":J
    sget-boolean v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_e

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_e

    new-instance v13, Ljava/lang/AssertionError;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Topology version is empty for message: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 4160
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v13}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion(J)Z

    move-result v2

    .line 4162
    .local v2, "b":Z
    sget-boolean v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v13, :cond_f

    if-nez v2, :cond_f

    new-instance v13, Ljava/lang/AssertionError;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Topology version has not been updated: [ring="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", msg="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", lastMsg="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->lastMsg:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", spiState="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v17, v0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v13

    .line 4165
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 4166
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Topology version has been updated: [ring="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v17, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", msg="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4168
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->lastMsg:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    goto/16 :goto_2

    .line 4175
    .end local v2    # "b":Z
    :catchall_2
    move-exception v13

    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v13

    .line 4185
    .end local v14    # "topVer":J
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 4186
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v13, v13, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to send message across the ring (topology has no remote nodes): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4188
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    invoke-static {v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0
.end method

.method private processNodeLeftMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;)V
    .locals 13
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    .prologue
    .line 3864
    sget-boolean v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 3866
    :cond_0
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v6

    .line 3868
    .local v6, "locNodeId":Ljava/util/UUID;
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v3

    .line 3870
    .local v3, "leavingNodeId":Ljava/util/UUID;
    invoke-virtual {v6, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3871
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v10

    if-nez v10, :cond_2

    .line 3872
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3873
    :try_start_0
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3874
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v12, "Starting local node stop procedure."

    invoke-interface {v10, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3876
    :cond_1
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    sget-object v12, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->STOPPING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    iput-object v12, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 3878
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 3879
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3882
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->verified()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 3883
    :cond_3
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v10}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v10

    if-nez v10, :cond_4

    .line 3885
    :try_start_1
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v11, v11, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v11}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->unregisterAddresses(Ljava/util/Collection;)V
    :try_end_1
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3892
    :cond_4
    :goto_0
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3893
    :try_start_2
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    sget-object v12, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->STOPPING:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v10, v12, :cond_5

    .line 3894
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    sget-object v12, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->LEFT:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    iput-object v12, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    .line 3896
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 3898
    :cond_5
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4047
    :cond_6
    :goto_1
    return-void

    .line 3879
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 3887
    :catch_0
    move-exception v1

    .line 3888
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v11, "Failed to unregister local node address from IP finder."

    invoke-static {v10, v11, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3898
    .end local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 3903
    :cond_7
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_1

    .line 3908
    :cond_8
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v10

    if-nez v10, :cond_9

    .line 3909
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3910
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discarding node left message since sender node is not in topology: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 3915
    :cond_9
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v2

    .line 3917
    .local v2, "leavingNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v2, :cond_a

    .line 3918
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3919
    :try_start_5
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3920
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3929
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v5

    .line 3931
    .local v5, "locNodeCoord":Z
    if-eqz v5, :cond_c

    .line 3932
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->verified()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3933
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v10, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onRingMessageReceived(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 3935
    new-instance v10, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-direct {v10, v6, v11}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;)V

    invoke-virtual {p0, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_1

    .line 3920
    .end local v5    # "locNodeCoord":Z
    :catchall_2
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v10

    .line 3923
    :cond_a
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3924
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discarding node left message since node was not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3940
    .restart local v5    # "locNodeCoord":Z
    :cond_b
    invoke-virtual {p1, v6}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->verify(Ljava/util/UUID;)V

    .line 3943
    :cond_c
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->verified()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v6, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 3944
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->removeNode(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v4

    .line 3946
    .local v4, "leftNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    sget-boolean v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v10, :cond_d

    if-nez v4, :cond_d

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 3948
    :cond_d
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3949
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removed node from topology: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3952
    :cond_e
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v10

    if-nez v10, :cond_f

    .line 3953
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->clear()V

    .line 3957
    :cond_f
    if-eqz v5, :cond_14

    .line 3958
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->client()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-interface {v10}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->isShared()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 3960
    :try_start_7
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ipFinder:Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->socketAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/spi/discovery/tcp/ipfinder/TcpDiscoveryIpFinder;->unregisterAddresses(Ljava/util/Collection;)V
    :try_end_7
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_7 .. :try_end_7} :catch_1

    .line 3970
    :cond_10
    :goto_2
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->incrementTopologyVersion()J

    move-result-wide v8

    .line 3972
    .local v8, "topVer":J
    invoke-virtual {p1, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->topologyVersion(J)V

    .line 3990
    :goto_3
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->client()Z

    move-result v10

    if-eqz v10, :cond_18

    .line 3991
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clientMsgWorkers:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;

    .line 3993
    .local v7, "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    if-eqz v7, :cond_11

    .line 3994
    invoke-virtual {v7, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4020
    .end local v7    # "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    :cond_11
    :goto_4
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onNodeLeft()V

    .line 4022
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const/16 v11, 0xb

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    invoke-static {v10, v11, v8, v9, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    .line 4024
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4025
    :try_start_8
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4027
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->leavingNodes:Ljava/util/Collection;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4028
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 4031
    .end local v4    # "leftNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v8    # "topVer":J
    :cond_12
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 4033
    :try_start_9
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 4036
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    goto/16 :goto_1

    .line 3962
    .restart local v4    # "leftNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :catch_1
    move-exception v1

    .line 3963
    .restart local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 3964
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to unregister left node address: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3966
    :cond_13
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to unregister left node address: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v10, v11, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 3975
    .end local v1    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_14
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;->topologyVersion()J

    move-result-wide v8

    .line 3977
    .restart local v8    # "topVer":J
    sget-boolean v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v10, :cond_15

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_15

    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Topology version is empty for message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 3979
    :cond_15
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion(J)Z

    move-result v0

    .line 3981
    .local v0, "b":Z
    sget-boolean v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v10, :cond_16

    if-nez v0, :cond_16

    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Topology version has not been updated: [ring="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v12}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", msg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", lastMsg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->lastMsg:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", spiState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static {v12}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 3984
    :cond_16
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 3985
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Topology version has been updated: [ring="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v12}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", msg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3987
    :cond_17
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->lastMsg:Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    goto/16 :goto_3

    .line 3996
    .end local v0    # "b":Z
    :cond_18
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v4, v10}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    if-eqz v10, :cond_11

    .line 3998
    :try_start_a
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    invoke-virtual {p0, v10, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4000
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 4001
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sent verified node left message to leaving node: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 4012
    :cond_19
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    .line 4014
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 4016
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4

    .line 4003
    :catch_2
    move-exception v10

    move-object v1, v10

    .line 4004
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_b
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 4005
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to send verified node left message to leaving node [msg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", err="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4008
    :cond_1a
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to send verified node left message to leaving node [msg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", err="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v10, v11, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 4012
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    .line 4014
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 4016
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4

    .line 4012
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v10

    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    .line 4014
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 4016
    iget-object v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v10

    .line 4028
    :catchall_4
    move-exception v10

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v10

    .line 4036
    .end local v4    # "leftNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v8    # "topVer":J
    :catchall_5
    move-exception v10

    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    throw v10

    .line 4040
    :cond_1b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    .line 4042
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 4043
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v10, v10, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to send message across the ring (topology has no remote nodes): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4045
    :cond_1c
    iget-object v10, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 4003
    .restart local v4    # "leftNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .restart local v8    # "topVer":J
    :catch_3
    move-exception v10

    move-object v1, v10

    goto/16 :goto_5
.end method

.method private processStatusCheckMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;)V
    .locals 8
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x5d

    .line 4198
    sget-boolean v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 4200
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$5000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    .line 4202
    .local v1, "locNodeId":Ljava/util/UUID;
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->failedNodeId()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4203
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->failedNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4204
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4205
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Status check message discarded (suspect node is local node)."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4312
    :cond_1
    :goto_0
    return-void

    .line 4210
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4211
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4212
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Status check message discarded (local node is the sender of the status message)."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 4217
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v2

    if-nez v2, :cond_e

    .line 4218
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4219
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Status check message discarded (creator node is not in topology)."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 4225
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->isLocalNodeCoordinator()Z
    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4227
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4229
    invoke-virtual {p1, v6}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status(I)V

    .line 4231
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0

    .line 4235
    :cond_5
    invoke-virtual {p1, v7}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status(I)V

    .line 4238
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNode()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 4240
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4241
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Responded to status check message [recipient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4244
    :catch_0
    move-exception v0

    .line 4245
    .local v0, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    new-array v2, v6, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/net/SocketException;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/ignite/spi/IgniteSpiException;->hasCause([Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4246
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4247
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to respond to status check message (connection refused) [recipient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 4251
    :cond_6
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to respond to status check message (connection refused) [recipient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v2, v3, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 4255
    :cond_7
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNode()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v3

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    invoke-static {v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4257
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to respond to status check message [recipient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 4260
    :cond_8
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4261
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to respond to status check message (did the node stop?) [recipient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4271
    .end local v0    # "e":Lorg/apache/ignite/spi/IgniteSpiException;
    :cond_9
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-wide v4, v4, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbFreq:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 4273
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4274
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Status check message discarded (local node receives updates)."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4279
    :cond_a
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-eq v2, v3, :cond_b

    .line 4281
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4282
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Status check message discarded (local node is not connected to topology)."

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4287
    :cond_b
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->senderNodeId()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 4288
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiStateCopy()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-ne v2, v3, :cond_1

    .line 4291
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status()I

    move-result v2

    if-ne v2, v6, :cond_c

    .line 4292
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4293
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received OK status response from coordinator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4295
    :cond_c
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->status()I

    move-result v2

    if-ne v2, v7, :cond_d

    .line 4296
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Node is out of topology (probably, due to short-time network problems)."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 4298
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const/16 v3, 0xe

    iget-object v4, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion()J

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    invoke-static {v2, v3, v4, v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    goto/16 :goto_0

    .line 4302
    :cond_d
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4303
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, v2, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status value was not updated in status response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4310
    :cond_e
    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4311
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto/16 :goto_0
.end method

.method private redirectToClients(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z
    .locals 2
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 3007
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryRedirectToClient;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerPendingMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 3016
    sget-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3018
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ensured(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3019
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->add(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 3021
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onPendingMessageRegistered()V

    .line 3023
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3024
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending message has been registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 3026
    :cond_1
    return-void
.end method

.method private sendMessageAcrossRing(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 44
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 2614
    sget-boolean v37, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v37, :cond_0

    if-nez p1, :cond_0

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    .line 2616
    :cond_0
    sget-boolean v37, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v37, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v37

    if-nez v37, :cond_1

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    .line 2618
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onBeforeMessageSentAcrossRing(Ljava/io/Serializable;)V

    .line 2620
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->redirectToClients(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)Z

    move-result v37

    if-eqz v37, :cond_2

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clientMsgWorkers:Ljava/util/concurrent/ConcurrentMap;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;

    .line 2622
    .local v9, "clientMsgWorker":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0

    .line 2629
    .end local v9    # "clientMsgWorker":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v40

    monitor-enter v40

    .line 2630
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v14

    .line 2632
    .local v14, "failedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->spiState:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v35, v0

    .line 2633
    .local v35, "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    monitor-exit v40
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    const/4 v12, 0x0

    .line 2637
    .local v12, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    const/16 v33, 0x0

    .line 2639
    .local v33, "sent":Z
    const/16 v32, 0x1

    .line 2641
    .local v32, "searchNext":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v19

    .line 2644
    .local v19, "locNodeId":Ljava/util/UUID;
    :goto_1
    if-eqz v32, :cond_b

    .line 2645
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->nextNode(Ljava/util/Collection;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v22

    .line 2647
    .local v22, "newNext":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-nez v22, :cond_8

    .line 2648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_3

    .line 2649
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    const-string v40, "No next node in topology."

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2651
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 2652
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    const-string v40, "No next node in topology."

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V

    .line 2654
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->hasRemoteNodes()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 2655
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->senderNodeId(Ljava/util/UUID;)V

    .line 2657
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2979
    .end local v22    # "newNext":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v40

    monitor-enter v40

    .line 2980
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 2981
    monitor-exit v40
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 2983
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_3e

    .line 2984
    sget-object v37, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 2985
    if-nez v33, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_6

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Message has not been sent: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2989
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_7

    .line 2990
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Detected failed nodes: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2993
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v40

    monitor-enter v40

    .line 2994
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-interface {v0, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 2995
    monitor-exit v40
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 2997
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_3e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 2998
    .local v21, "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->msgWorker:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    move-result-object v37

    new-instance v40, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v21 .. v21}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    move-object/from16 v2, v41

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;J)V

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_3

    .line 2633
    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v14    # "failedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "locNodeId":Ljava/util/UUID;
    .end local v21    # "n":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .end local v32    # "searchNext":Z
    .end local v33    # "sent":Z
    .end local v35    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :catchall_0
    move-exception v37

    :try_start_3
    monitor-exit v40
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v37

    .line 2663
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v14    # "failedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;>;"
    .restart local v19    # "locNodeId":Ljava/util/UUID;
    .restart local v22    # "newNext":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .restart local v32    # "searchNext":Z
    .restart local v33    # "sent":Z
    .restart local v35    # "state":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_e

    .line 2664
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_9

    .line 2665
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "New next node [newNext="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", formerNext="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", ring="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v41, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", failedNodes="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2668
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 2669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "New next node [newNext="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", formerNext="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", ring="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v41, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", failedNodes="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V

    .line 2672
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2674
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    .line 2676
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 2684
    .end local v22    # "newNext":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    if-eqz v37, :cond_f

    const/16 v25, 0x1

    .line 2686
    .local v25, "nextNodeExists":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sameMacs(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v31

    .line 2688
    .local v31, "sameHost":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    move/from16 v2, v31

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getNodeAddresses(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Z)Ljava/util/LinkedHashSet;
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Z)Ljava/util/LinkedHashSet;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_c
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_37

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 2689
    .local v8, "addr":Ljava/net/InetSocketAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-wide v6, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ackTimeout:J

    .line 2691
    .local v6, "ackTimeout0":J
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->reconCnt:I
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)I

    move-result v37

    move/from16 v0, v16

    move/from16 v1, v37

    if-ge v0, v1, :cond_c

    .line 2692
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    if-nez v37, :cond_41

    .line 2693
    const/16 v25, 0x0

    .line 2695
    const/16 v36, 0x0

    .line 2697
    .local v36, "success":Z
    const/16 v28, 0x0

    .line 2701
    .local v28, "openSock":Z
    :try_start_4
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v38

    .line 2703
    .local v38, "tstamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->openSocket(Ljava/net/InetSocketAddress;)Ljava/net/Socket;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    .line 2705
    const/16 v28, 0x1

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    new-instance v40, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeRequest;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readMessage(Ljava/net/Socket;Ljava/io/InputStream;J)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;

    .line 2712
    .local v30, "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->creatorNodeId()Ljava/util/UUID;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_11

    .line 2713
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_d

    .line 2714
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Handshake response from local node: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2716
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2718
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2799
    if-nez v36, :cond_10

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2802
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    goto/16 :goto_6

    .line 2678
    .end local v6    # "ackTimeout0":J
    .end local v8    # "addr":Ljava/net/InetSocketAddress;
    .end local v16    # "i":I
    .end local v25    # "nextNodeExists":Z
    .end local v28    # "openSock":Z
    .end local v30    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .end local v31    # "sameHost":Z
    .end local v36    # "success":Z
    .end local v38    # "tstamp":J
    .restart local v22    # "newNext":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_b

    .line 2679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Next node remains the same [nextId="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", nextOrder="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2684
    .end local v22    # "newNext":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 2806
    .restart local v6    # "ackTimeout0":J
    .restart local v8    # "addr":Ljava/net/InetSocketAddress;
    .restart local v16    # "i":I
    .restart local v25    # "nextNodeExists":Z
    .restart local v28    # "openSock":Z
    .restart local v30    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .restart local v31    # "sameHost":Z
    .restart local v36    # "success":Z
    .restart local v38    # "tstamp":J
    :cond_10
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 2723
    :cond_11
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    move-object/from16 v37, v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v38

    move-object/from16 v0, v37

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onClientSocketInitialized(J)V

    .line 2725
    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->creatorNodeId()Ljava/util/UUID;

    move-result-object v23

    .line 2727
    .local v23, "nextId":Ljava/util/UUID;
    invoke-virtual/range {v30 .. v30}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;->order()J

    move-result-wide v26

    .line 2729
    .local v26, "nextOrder":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_15

    .line 2731
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_12

    .line 2732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to restore ring because next node ID received is not as expected [expectedId="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", rcvdId="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2735
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v37

    if-eqz v37, :cond_13

    .line 2736
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to restore ring because next node ID received is not as expected [expectedId="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", rcvdId="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2799
    :cond_13
    if-nez v36, :cond_14

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2802
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    goto/16 :goto_6

    .line 2806
    :cond_14
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 2743
    :cond_15
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v40

    cmp-long v37, v26, v40

    if-eqz v37, :cond_1a

    .line 2745
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    move/from16 v37, v0

    if-eqz v37, :cond_18

    move-object/from16 v0, p1

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;->node()Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_18

    const/16 v24, 0x1

    .line 2748
    .local v24, "nextNew":Z
    :goto_8
    if-nez v24, :cond_1a

    .line 2749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_16

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to restore ring because next node order received is not as expected [expected="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", rcvd="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", id="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2754
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v37

    if-eqz v37, :cond_17

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to restore ring because next node order received is not as expected [expected="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->internalOrder()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", rcvd="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", id="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2799
    :cond_17
    if-nez v36, :cond_19

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2802
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    goto/16 :goto_6

    .line 2745
    .end local v24    # "nextNew":Z
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 2806
    .restart local v24    # "nextNew":Z
    :cond_19
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 2763
    .end local v24    # "nextNew":Z
    :cond_1a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_1b

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Initialized connection with next node: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2766
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v37

    if-eqz v37, :cond_1c

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Initialized connection with next node: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2769
    :cond_1c
    const/4 v12, 0x0

    .line 2771
    const/16 v36, 0x1

    .line 2799
    if-nez v36, :cond_1f

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2802
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object v13, v12

    .line 2813
    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v23    # "nextId":Ljava/util/UUID;
    .end local v26    # "nextOrder":J
    .end local v28    # "openSock":Z
    .end local v30    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .end local v36    # "success":Z
    .end local v38    # "tstamp":J
    .local v13, "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :goto_9
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->mux:Ljava/lang/Object;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/lang/Object;

    move-result-object v40

    monitor-enter v40
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2814
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->failedNodes:Ljava/util/Collection;
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->size()I

    move-result v37

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v41

    move/from16 v0, v37

    move/from16 v1, v41

    if-ge v0, v1, :cond_2a

    const/4 v15, 0x1

    .line 2815
    .local v15, "failure":Z
    :goto_a
    monitor-exit v40
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2817
    :try_start_a
    sget-boolean v37, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v37, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    move/from16 v37, v0

    if-eqz v37, :cond_2b

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    move/from16 v37, v0

    if-nez v37, :cond_2b

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2897
    .end local v15    # "failure":Z
    :catch_0
    move-exception v37

    move-object/from16 v10, v37

    .line 2898
    .local v10, "e":Ljava/lang/Exception;
    :goto_b
    if-nez v13, :cond_3f

    .line 2899
    :try_start_b
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2901
    .end local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :goto_c
    :try_start_c
    invoke-interface {v12, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_1d

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to send message to next node [next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", err="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-static {v0, v1, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2907
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to send message to next node [next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2910
    instance-of v0, v10, Ljava/net/SocketTimeoutException;

    move/from16 v37, v0

    if-nez v37, :cond_1e

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v37, v0

    const/16 v40, 0x0

    const-class v41, Ljava/net/SocketTimeoutException;

    aput-object v41, v37, v40

    move-object/from16 v0, v37

    invoke-static {v10, v0}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v37

    if-eqz v37, :cond_39

    .line 2911
    :cond_1e
    const-wide/16 v40, 0x2

    mul-long v6, v6, v40

    .line 2913
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->checkAckTimeout(J)Z
    invoke-static {v0, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;J)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-result v37

    if-nez v37, :cond_39

    .line 2918
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    .line 2920
    if-nez v33, :cond_c

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2923
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_c

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Message has not been sent [next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", i="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2806
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v23    # "nextId":Ljava/util/UUID;
    .restart local v26    # "nextOrder":J
    .restart local v28    # "openSock":Z
    .restart local v30    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .restart local v36    # "success":Z
    .restart local v38    # "tstamp":J
    :cond_1f
    const/16 v25, 0x1

    move-object v13, v12

    .line 2807
    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    goto/16 :goto_9

    .line 2774
    .end local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v23    # "nextId":Ljava/util/UUID;
    .end local v26    # "nextOrder":J
    .end local v30    # "res":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHandshakeResponse;
    .end local v38    # "tstamp":J
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :catch_1
    move-exception v37

    move-object/from16 v10, v37

    .line 2775
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_d
    if-nez v12, :cond_20

    .line 2776
    :try_start_d
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    move-object v12, v13

    .line 2778
    .end local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_20
    invoke-interface {v12, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2780
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_21

    .line 2781
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to connect to next node [msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", err="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2783
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to connect to next node [msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", err="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->onException(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v10}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2785
    if-nez v28, :cond_23

    .line 2799
    if-nez v36, :cond_22

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2802
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    goto/16 :goto_6

    .line 2806
    :cond_22
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 2788
    :cond_23
    :try_start_e
    instance-of v0, v10, Ljava/net/SocketTimeoutException;

    move/from16 v37, v0

    if-nez v37, :cond_24

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v37, v0

    const/16 v40, 0x0

    const-class v41, Ljava/net/SocketTimeoutException;

    aput-object v41, v37, v40

    move-object/from16 v0, v37

    invoke-static {v10, v0}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v37

    if-eqz v37, :cond_26

    .line 2790
    :cond_24
    const-wide/16 v40, 0x2

    mul-long v6, v6, v40

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->checkAckTimeout(J)Z
    invoke-static {v0, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;J)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v37

    if-nez v37, :cond_26

    .line 2799
    if-nez v36, :cond_25

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2802
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    goto/16 :goto_6

    .line 2806
    :cond_25
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 2799
    :cond_26
    if-nez v36, :cond_28

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2802
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    .line 2691
    .end local v28    # "openSock":Z
    .end local v36    # "success":Z
    :cond_27
    :goto_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    .line 2806
    .restart local v28    # "openSock":Z
    .restart local v36    # "success":Z
    :cond_28
    const/16 v25, 0x1

    goto :goto_e

    .line 2799
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v37

    if-nez v36, :cond_29

    .line 2800
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2802
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    .line 2806
    :goto_f
    throw v37

    :cond_29
    const/16 v25, 0x1

    goto :goto_f

    .line 2814
    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v28    # "openSock":Z
    .end local v36    # "success":Z
    .restart local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_2a
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 2815
    :catchall_2
    move-exception v37

    :try_start_f
    monitor-exit v40
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v37

    .line 2897
    :catch_2
    move-exception v37

    move-object/from16 v10, v37

    goto/16 :goto_b

    .line 2819
    .restart local v15    # "failure":Z
    :cond_2b
    if-nez v15, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    move/from16 v37, v0

    if-eqz v37, :cond_34

    .line 2820
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_2d

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Pending messages will be sent [failure="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", forceSndPending="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2824
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v37

    if-eqz v37, :cond_2e

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Pending messages will be sent [failure="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", forceSndPending="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V

    .line 2828
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->access$2900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v37

    if-eqz v37, :cond_30

    const/16 v34, 0x1

    .line 2830
    .local v34, "skip":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->access$3000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Ljava/util/Queue;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_11
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_34

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .line 2831
    .local v29, "pendingMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    if-eqz v34, :cond_31

    .line 2832
    invoke-virtual/range {v29 .. v29}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->access$2900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2f

    .line 2833
    const/16 v34, 0x0

    goto :goto_11

    .line 2828
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v29    # "pendingMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v34    # "skip":Z
    :cond_30
    const/16 v34, 0x0

    goto :goto_10

    .line 2838
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v29    # "pendingMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .restart local v34    # "skip":Z
    :cond_31
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v38

    .line 2840
    .restart local v38    # "tstamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->access$3000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Ljava/util/Queue;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->access$2900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v42

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->prepareNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 2844
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 2847
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clearNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    move-object/from16 v37, v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageSent(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;J)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readReceipt(Ljava/net/Socket;J)I

    move-result v30

    .line 2854
    .local v30, "res":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_32

    .line 2855
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Pending message has been sent to next node [msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", pendingMsgId="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", res="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2859
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v37

    if-eqz v37, :cond_2f

    .line 2860
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Pending message has been sent to next node [msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", pendingMsgId="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", res="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto/16 :goto_11

    .line 2918
    .end local v15    # "failure":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v29    # "pendingMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v30    # "res":I
    .end local v34    # "skip":Z
    .end local v38    # "tstamp":J
    :catchall_3
    move-exception v37

    move-object v12, v13

    .end local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :goto_12
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    .line 2920
    if-nez v33, :cond_33

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2923
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v40

    if-eqz v40, :cond_33

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v40, v0

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Message has not been sent [next="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", msg="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", i="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v42, 0x5d

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-interface/range {v40 .. v41}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_33
    throw v37

    .line 2847
    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v15    # "failure":Z
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v29    # "pendingMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .restart local v34    # "skip":Z
    .restart local v38    # "tstamp":J
    :catchall_4
    move-exception v37

    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clearNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    throw v37

    .line 2866
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v29    # "pendingMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .end local v34    # "skip":Z
    .end local v38    # "tstamp":J
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->access$3000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Ljava/util/Queue;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->pendingMsgs:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;->access$2900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$PendingMessages;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v42

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->prepareNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 2869
    :try_start_14
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v38

    .line 2871
    .restart local v38    # "tstamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2873
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    move-object/from16 v37, v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v38

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageSent(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;J)V

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v6, v7}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->readReceipt(Ljava/net/Socket;J)I

    move-result v30

    .line 2877
    .restart local v30    # "res":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_35

    .line 2878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Message has been sent to next node [msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", res="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2882
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v37

    if-eqz v37, :cond_36

    .line 2883
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Message has been sent to next node [msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", res="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 2888
    :cond_36
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clearNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2891
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->registerPendingMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 2893
    const/16 v33, 0x1

    .line 2918
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    .line 2920
    if-nez v33, :cond_40

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2923
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_40

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Message has not been sent [next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", i="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    move-object v12, v13

    .line 2933
    .end local v6    # "ackTimeout0":J
    .end local v8    # "addr":Ljava/net/InetSocketAddress;
    .end local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v15    # "failure":Z
    .end local v16    # "i":I
    .end local v30    # "res":I
    .end local v38    # "tstamp":J
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_37
    :goto_13
    if-nez v33, :cond_5

    .line 2934
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_38

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2937
    sget-object v37, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_38

    .line 2938
    if-eqz v12, :cond_3a

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Failed to send message to next node [msg="

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v40, ", next="

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v40, 0x5d

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-static {v0, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->exceptionWithSuppressed(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v11

    .line 2945
    .local v11, "err":Ljava/lang/Exception;
    :goto_14
    if-eqz v25, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->pingNode(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3300(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v37

    if-eqz v37, :cond_3b

    .line 2946
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to send message to next node [msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-static {v0, v1, v11}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2954
    .end local v11    # "err":Ljava/lang/Exception;
    :cond_38
    :goto_15
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

    move/from16 v37, v0

    if-eqz v37, :cond_3d

    move-object/from16 v20, p1

    .line 2955
    check-cast v20, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

    .line 2957
    .local v20, "msg0":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v37

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;->failedNodeId()Ljava/util/UUID;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_3d

    .line 2958
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_5

    .line 2961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Discarding status check since next node has indeed failed [next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2888
    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v20    # "msg0":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;
    .restart local v6    # "ackTimeout0":J
    .restart local v8    # "addr":Ljava/net/InetSocketAddress;
    .restart local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v15    # "failure":Z
    .restart local v16    # "i":I
    :catchall_5
    move-exception v37

    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clearNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    throw v37
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 2918
    .end local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .end local v15    # "failure":Z
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_39
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->forceSndPending:Z

    .line 2920
    if-nez v33, :cond_27

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 2923
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->sock:Ljava/net/Socket;

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_27

    .line 2926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Message has not been sent [next="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->id()Ljava/util/UUID;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", msg="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ", i="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x5d

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 2938
    .end local v6    # "ackTimeout0":J
    .end local v8    # "addr":Ljava/net/InetSocketAddress;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "i":I
    :cond_3a
    const/4 v11, 0x0

    goto/16 :goto_14

    .line 2948
    .restart local v11    # "err":Ljava/lang/Exception;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v37

    if-eqz v37, :cond_38

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v40, v0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Failed to send message to next node [msg="

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v41, ", next="

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-object/from16 v41, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v41, ", errMsg="

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    if-eqz v11, :cond_3c

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v37

    :goto_16
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v41, 0x5d

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_3c
    const-string v37, "N/A"

    goto :goto_16

    .line 2969
    .end local v11    # "err":Ljava/lang/Exception;
    :cond_3d
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->next:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .line 2971
    const/16 v32, 0x1

    .line 2973
    const/4 v12, 0x0

    .line 2977
    goto/16 :goto_1

    .line 2981
    .end local v25    # "nextNodeExists":Z
    .end local v31    # "sameHost":Z
    :catchall_6
    move-exception v37

    :try_start_17
    monitor-exit v40
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    throw v37

    .line 2995
    :catchall_7
    move-exception v37

    :try_start_18
    monitor-exit v40
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    throw v37

    .line 2774
    .restart local v6    # "ackTimeout0":J
    .restart local v8    # "addr":Ljava/net/InetSocketAddress;
    .restart local v16    # "i":I
    .restart local v25    # "nextNodeExists":Z
    .restart local v28    # "openSock":Z
    .restart local v31    # "sameHost":Z
    .restart local v36    # "success":Z
    :catch_3
    move-exception v37

    move-object/from16 v10, v37

    goto/16 :goto_d

    .line 3000
    .end local v6    # "ackTimeout0":J
    .end local v8    # "addr":Ljava/net/InetSocketAddress;
    .end local v16    # "i":I
    .end local v25    # "nextNodeExists":Z
    .end local v28    # "openSock":Z
    .end local v31    # "sameHost":Z
    .end local v36    # "success":Z
    :cond_3e
    return-void

    .line 2918
    .restart local v6    # "ackTimeout0":J
    .restart local v8    # "addr":Ljava/net/InetSocketAddress;
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v16    # "i":I
    .restart local v25    # "nextNodeExists":Z
    .restart local v31    # "sameHost":Z
    :catchall_8
    move-exception v37

    goto/16 :goto_12

    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    :cond_3f
    move-object v12, v13

    .end local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    goto/16 :goto_c

    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v15    # "failure":Z
    .restart local v30    # "res":I
    .restart local v38    # "tstamp":J
    :cond_40
    move-object v12, v13

    .end local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    goto/16 :goto_13

    .end local v15    # "failure":Z
    .end local v30    # "res":I
    .end local v38    # "tstamp":J
    :cond_41
    move-object v13, v12

    .end local v12    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    .restart local v13    # "errs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Throwable;>;"
    goto/16 :goto_9
.end method

.method private trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 8
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    .param p2, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 3423
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3424
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v5}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->clientRouterNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v4

    .line 3426
    .local v4, "routerNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-nez v4, :cond_0

    .line 3427
    new-instance v5, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Router node for client does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3429
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->isClient()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 3431
    :cond_1
    invoke-direct {p0, v4, p2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->trySendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 3453
    .end local v4    # "routerNode":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    :cond_2
    return-void

    .line 3436
    :cond_3
    const/4 v2, 0x0

    .line 3438
    .local v2, "ex":Lorg/apache/ignite/spi/IgniteSpiException;
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v6, v6, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->locNode:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    invoke-static {v6, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sameMacs(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v6

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->getNodeAddresses(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Z)Ljava/util/LinkedHashSet;
    invoke-static {v5, p1, v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;Z)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 3440
    .local v0, "addr":Ljava/net/InetSocketAddress;
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const/4 v6, 0x0

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->sendMessageDirectly(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/net/InetSocketAddress;Ljava/net/Socket;)Ljava/lang/Integer;
    invoke-static {v5, p2, v0, v6}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/net/InetSocketAddress;Ljava/net/Socket;)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3442
    const/4 v2, 0x0

    .line 3451
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    :cond_4
    if-eqz v2, :cond_2

    .line 3452
    throw v2

    .line 3446
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v1

    .line 3447
    .local v1, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object v2, v1

    .line 3449
    goto :goto_0
.end method

.method private updateMetrics(Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterMetrics;J)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "metrics"    # Lorg/apache/ignite/cluster/ClusterMetrics;
    .param p3, "tstamp"    # J

    .prologue
    .line 4423
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4424
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4426
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->node(Ljava/util/UUID;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    move-result-object v0

    .line 4428
    .local v0, "node":Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;
    if-eqz v0, :cond_3

    .line 4429
    invoke-virtual {v0, p2}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->setMetrics(Lorg/apache/ignite/cluster/ClusterMetrics;)V

    .line 4431
    invoke-virtual {v0, p3, p4}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->lastUpdateTime(J)V

    .line 4433
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    const/16 v2, 0xd

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ring:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;
    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNodesRing;->topologyVersion()J

    move-result-wide v4

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->notifyDiscovery(IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V
    invoke-static {v1, v2, v4, v5, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$4600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;IJLorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)V

    .line 4437
    :cond_2
    :goto_0
    return-void

    .line 4435
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4436
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received metrics from unknown node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected processMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 5
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    const/16 v4, 0x5d

    .line 2551
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2552
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing message [cls="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2554
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugMode:Z
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2555
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing message [cls="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$1900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;)V

    .line 2557
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageProcessingStarted(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2559
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 2560
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processJoinRequestMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryJoinRequestMessage;)V

    .line 2604
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->stats:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryStatistics;->onMessageProcessingFinished(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2605
    return-void

    .line 2562
    :cond_3
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 2563
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processClientReconnectMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryClientReconnectMessage;)V

    goto :goto_0

    .line 2565
    :cond_4
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    if-eqz v1, :cond_5

    move-object v1, p1

    .line 2566
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processNodeAddedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddedMessage;)V

    goto :goto_0

    .line 2568
    :cond_5
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 2569
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processNodeAddFinishedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeAddFinishedMessage;)V

    goto :goto_0

    .line 2571
    :cond_6
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    if-eqz v1, :cond_7

    move-object v1, p1

    .line 2572
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processNodeLeftMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeLeftMessage;)V

    goto :goto_0

    .line 2574
    :cond_7
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    if-eqz v1, :cond_8

    move-object v1, p1

    .line 2575
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processNodeFailedMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryNodeFailedMessage;)V

    goto :goto_0

    .line 2577
    :cond_8
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    if-eqz v1, :cond_b

    .line 2578
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->client()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2579
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->clientMsgWorkers:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;

    .line 2581
    .local v0, "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    if-eqz v0, :cond_9

    .line 2582
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    # getter for: Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->ignite:Lorg/apache/ignite/Ignite;
    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verify(Ljava/util/UUID;)V

    .line 2584
    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_0

    .line 2586
    :cond_9
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2587
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received heartbeat message from unknown client node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "wrk":Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
    :cond_a
    move-object v1, p1

    .line 2590
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processHeartbeatMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;)V

    goto/16 :goto_0

    .line 2592
    :cond_b
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

    if-eqz v1, :cond_c

    move-object v1, p1

    .line 2593
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processStatusCheckMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryStatusCheckMessage;)V

    goto/16 :goto_0

    .line 2595
    :cond_c
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    if-eqz v1, :cond_d

    move-object v1, p1

    .line 2596
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processDiscardMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryDiscardMessage;)V

    goto/16 :goto_0

    .line 2598
    :cond_d
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;

    if-eqz v1, :cond_e

    move-object v1, p1

    .line 2599
    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;

    invoke-direct {p0, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->processCustomMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryCustomEventMessage;)V

    goto/16 :goto_0

    .line 2602
    :cond_e
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
