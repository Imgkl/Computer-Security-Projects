.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;
.super Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMessageWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

.field private final nodeId:Ljava/util/UUID;

.field private final sock:Ljava/net/Socket;

.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5181
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/net/Socket;Ljava/util/UUID;)V
    .locals 1
    .param p2, "sock"    # Ljava/net/Socket;
    .param p3, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 5195
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 5196
    const-string v0, "tcp-disco-client-message-worker"

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter;Ljava/lang/String;)V

    .line 5198
    iput-object p2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->sock:Ljava/net/Socket;

    .line 5199
    iput-object p3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    .line 5200
    return-void
.end method


# virtual methods
.method addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 3
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    .line 5211
    instance-of v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 5212
    check-cast v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    .line 5214
    .local v0, "hbMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;
    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->creatorNodeId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5215
    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->metrics()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage$MetricsSet;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    .line 5217
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->removeMetrics(Ljava/util/UUID;)V

    .line 5219
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->hasMetrics()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 5223
    .end local v0    # "hbMsg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 5224
    return-void
.end method

.method protected cleanup()V
    .locals 1

    .prologue
    .line 5260
    invoke-super {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiAdapter$MessageWorkerAdapter;->cleanup()V

    .line 5262
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->sock:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 5263
    return-void
.end method

.method metrics()Lorg/apache/ignite/cluster/ClusterMetrics;
    .locals 1

    .prologue
    .line 5206
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->metrics:Lorg/apache/ignite/cluster/ClusterMetrics;

    return-object v0
.end method

.method protected processMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    .locals 6
    .param p1, "msg"    # Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .prologue
    const/16 v5, 0x5d

    .line 5229
    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verified()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5244
    :catch_0
    move-exception v0

    .line 5245
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5246
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client connection failed [sock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->sock:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rmtNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 5249
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client connection failed [sock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->sock:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$7000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rmtNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5252
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$2000(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 5254
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->sock:Ljava/net/Socket;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 5256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 5231
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5232
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirecting message to client [sock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->sock:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$6800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rmtNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5236
    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->nodeId:Ljava/util/UUID;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3100(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 5238
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->sock:Ljava/net/Socket;

    invoke-virtual {p0, v1, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->writeToSocket(Ljava/net/Socket;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5241
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v1, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    goto :goto_1

    .line 5244
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 5241
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$ClientMessageWorker;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v2, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$3200(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    throw v1
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method
