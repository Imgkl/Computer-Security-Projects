.class Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpClientDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartbeatSender"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)V
    .locals 3

    .prologue
    .line 646
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    .line 647
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$800(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-client-disco-heartbeat-sender"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 648
    return-void
.end method


# virtual methods
.method protected body()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$300(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Ljava/net/Socket;

    move-result-object v2

    .line 654
    .local v2, "sock0":Ljava/net/Socket;
    if-nez v2, :cond_1

    .line 655
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 656
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Failed to start heartbeat sender, node is already disconnected."

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-wide v4, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->hbFreq:J

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V

    .line 665
    new-instance v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;-><init>(Ljava/util/UUID;)V

    .line 668
    .local v1, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->client(Z)V

    .line 670
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$SocketReader;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 673
    .end local v1    # "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;
    :catch_0
    move-exception v0

    .line 674
    .local v0, "ignored":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    iget-object v3, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$HeartbeatSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    iget-object v3, v3, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "Heartbeat sender was interrupted."

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
