.class Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "TcpDiscoverySpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartbeatsSender"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V
    .locals 3

    .prologue
    .line 2207
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    .line 2208
    invoke-static {p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$400(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/Ignite;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp-disco-hb-sender"

    iget-object v2, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 2210
    iget v0, p1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->threadPri:I

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->setPriority(I)V

    .line 2211
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;
    .param p2, "x1"    # Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$1;

    .prologue
    .line 2203
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;-><init>(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2216
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$500(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2217
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 2219
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2220
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Heartbeats sender has been started."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2222
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2223
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$600(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;->CONNECTED:Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoverySpiState;

    if-eq v1, v2, :cond_3

    .line 2224
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2225
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-object v1, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Stopping heartbeats sender (SPI is not connected to topology)."

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2238
    :cond_2
    return-void

    .line 2230
    :cond_3
    new-instance v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;

    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$700(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;-><init>(Ljava/util/UUID;)V

    .line 2232
    .local v0, "msg":Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$800(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/Ignite;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryHeartbeatMessage;->verify(Ljava/util/UUID;)V

    .line 2234
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    invoke-static {v1}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->access$900(Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;)Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$RingMessageWorker;->addMessage(Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;)V

    .line 2236
    iget-object v1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi$HeartbeatsSender;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;

    iget-wide v2, v1, Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpi;->hbFreq:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1
.end method
