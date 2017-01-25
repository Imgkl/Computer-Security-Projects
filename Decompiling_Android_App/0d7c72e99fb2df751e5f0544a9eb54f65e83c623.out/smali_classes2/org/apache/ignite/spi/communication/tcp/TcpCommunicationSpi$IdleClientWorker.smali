.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleClientWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2164
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)V
    .locals 3

    .prologue
    .line 2168
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    .line 2169
    invoke-static {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3200(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nio-idle-client-collector"

    invoke-static {p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 2170
    return-void
.end method

.method private cleanupRecovery()V
    .locals 7

    .prologue
    .line 2245
    const/4 v3, 0x0

    .line 2247
    .local v3, "left":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;>;"
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2248
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;>;"
    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2251
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 2253
    .local v4, "recoverySnd":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->nodeAlive(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2254
    if-nez v3, :cond_2

    .line 2255
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "left":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2257
    .restart local v3    # "left":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2261
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;>;"
    .end local v4    # "recoverySnd":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :cond_3
    if-eqz v3, :cond_6

    .line 2262
    sget-boolean v5, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2264
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;

    .line 2265
    .local v2, "id":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;
    iget-object v5, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v5}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 2267
    .restart local v4    # "recoverySnd":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-eqz v4, :cond_5

    .line 2268
    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->onNodeLeft()V

    goto :goto_1

    .line 2271
    .end local v2    # "id":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;
    .end local v4    # "recoverySnd":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :cond_6
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2175
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_9

    .line 2176
    invoke-direct {p0}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->cleanupRecovery()V

    .line 2178
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2179
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/UUID;

    .line 2181
    .local v7, "nodeId":Ljava/util/UUID;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;

    .line 2183
    .local v0, "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v6

    .line 2185
    .local v6, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v6, :cond_2

    .line 2186
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2187
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Forcing close of non-existent node connection: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2189
    :cond_1
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->forceClose()V

    .line 2191
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 2196
    :cond_2
    const/4 v8, 0x0

    .line 2198
    .local v8, "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    instance-of v9, v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    if-eqz v9, :cond_4

    .line 2199
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    new-instance v10, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;-><init>(Ljava/util/UUID;JLorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    check-cast v8, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 2201
    .restart local v8    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->lastAcknowledged()J

    move-result-wide v10

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->received()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    .line 2202
    new-instance v3, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->received()J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;-><init>(J)V

    .line 2204
    .local v3, "msg":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2205
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Send recovery acknowledgement on timeout [rmtNode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", rcvCnt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;->received()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2208
    :cond_3
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$1300(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/internal/util/nio/GridNioServer;

    move-result-object v9

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;

    .end local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridTcpNioCommunicationClient;->session()Lorg/apache/ignite/internal/util/nio/GridNioSession;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lorg/apache/ignite/internal/util/nio/GridNioServer;->sendSystem(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/plugin/extensions/communication/Message;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 2210
    invoke-virtual {v3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;->received()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->lastAcknowledged(J)V

    goto/16 :goto_1

    .line 2216
    .end local v3    # "msg":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;
    .restart local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    :cond_4
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->getIdleTime()J

    move-result-wide v4

    .line 2218
    .local v4, "idleTime":J
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-ltz v9, :cond_0

    .line 2219
    if-eqz v8, :cond_5

    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->nodeAlive(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->messagesFutures()Ljava/util/Deque;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Deque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2222
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2223
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Node connection is idle, but there are unacknowledged messages, will wait: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2229
    :cond_5
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2230
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Closing idle node connection: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2232
    :cond_6
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->close()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;->closed()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2233
    :cond_7
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v7, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2237
    .end local v0    # "client":Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;>;"
    .end local v4    # "idleTime":J
    .end local v6    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v7    # "nodeId":Ljava/util/UUID;
    .end local v8    # "recovery":Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    :cond_8
    iget-object v9, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$IdleClientWorker;->this$0:Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-static {v9}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;->access$3400(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 2239
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    return-void
.end method
